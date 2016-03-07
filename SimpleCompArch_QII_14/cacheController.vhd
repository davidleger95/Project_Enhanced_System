library	ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 
use work.MP_lib.all;

entity CacheController is
port ( 	
		MreIn					:	in STD_LOGIC;
		MweIn					:	in STD_LOGIC;
		addressIN			:	in STD_LOGIC_VECTOR(11 downto 0);
		addressOUT			:  out STD_LOGIC_VECTOR (11 downto 0);
		data_in				:  in STD_LOGIC_VECTOR(15 downto 0);
		data_out_cpu		:  out STD_LOGIC_VECTOR(15 downto 0);
		replaceStatusIn   :  in std_logic; 
		replaceStatusOut  :  out std_logic;
		data_block_in     :  in std_logic_vector(63 downto 0);
		address_block_in  :  in std_logic_vector(11 downto 0)
		);
		
end CacheController;

architecture behav of CacheController is
signal read_data : std_logic; 
signal write_data : std_logic;
signal write_tag : std_logic;
signal write_block: std_logic;
signal write_DBlock: std_logic_vector(63 downto 0);
signal tempDataIn : std_logic_vector(15 downto 0);
signal tempDataOut : std_logic_vector(15 downto 0);
signal tagIndex: std_logic_vector(6 downto 0);
signal lineIndex: std_logic_vector(2 downto 0);
signal wordIndex: std_logic_vector(1 downto 0);
signal hit: STD_LOGIC; 

			
--signal replaceStatus : std_logic;



begin 
tagIndex <= addressIN(11 downto 5);
lineIndex <= addressIN(4 downto 2);
wordIndex <= addressIN (1 downto 0);
write_tag <= '0';
write_block<='0';

unit1 : lineMemory port map(tagIndex, hit, lineIndex, write_tag);
unit2 : dataMemory port map(read_data,write_data, lineIndex, tempDataOut, tempDataIn, wordIndex, write_block, write_DBlock);

read: process(MreIn, replaceStatusIn, hit, tempDataOut)
	begin 
		if ((MreIn ='1') and (replaceStatusIn = '0')) then 	
			if (hit ='1' ) then 
				--read_data <= '1';
				--write_data<= '0';
				data_out_cpu <= tempDataOut;
				--replaceStatusOut <= '0';
			end if;
		end if;
	end process;

write: process(MweIn, replaceStatusIn, hit, data_in)
	begin 
		if ((MweIn ='1') and (replaceStatusIn = '0')) then 

			if (hit ='1' ) then 
				--read_data <= '0';
				--write_data <='1';
				tempDataIn <= data_in;
				--ReplaceStatusOut <= '0';
			end if;
		end if;
	end process;	
elseprocess : process(hit, addressIN)
		begin 
		if (hit = '0') then
				addressOUT <= addressIN; 
				replaceStatusOut <= '1';
		end if;
		end process;
replaceBlock: process(replaceStatusIn, address_block_in, data_block_in )
		begin 
			If (replaceStatusIn ='1' ) then 
				write_tag <='1';
--				tagIndex <= address_block_in(11 downto 5);
--				lineIndex <= address_block_in(4 downto 2);
				write_block <= '1';
				write_DBlock <= data_block_in;
				
			end if; 
			write_tag <= '0';
			write_block <='0';
		end process;
end behav; 
			
			
			