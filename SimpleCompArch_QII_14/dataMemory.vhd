library	ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 
use work.MP_lib.all;

entity DataMemory is
port ( 	

	readEnable : in std_logic;
	writeEnable: in std_logic;
	lineIndex: in std_logic_vector(2 downto 0);
	dataOut: out std_logic_vector(15 downto 0);
	dataIn: in std_logic_vector(15 downto 0);
	wordIndex: in std_logic_vector(1 downto 0);
	replaceBlock: in std_logic;
	data_block : in std_logic_vector(63 downto 0)
		);
		
end DataMemory;

architecture behav of DataMemory is

type data_array is array (0 to 7, 0 to 3) of std_logic_vector(15 downto 0);
signal memory1: data_array;
signal line_check: integer;
signal word_check: integer;


begin 

line_check <= to_integer(unsigned(lineIndex));
word_check <= to_integer(unsigned (wordIndex));

	read1: process(readEnable, lineIndex, replaceBlock, line_check, word_check)
	begin 

	if ((readEnable = '1') and (replaceBlock = '0')) then
		for i in 0 to 7 loop
			if ( i = line_check) then 
				for j in 0 to 3 loop 
				
					if (j = word_check) then 
						dataOut <= memory1(i, j);
					end if;
				end loop;
			end if;
		end loop;
	end if;	
	end process;
	
   write1: process(writeEnable, lineIndex, dataIn, line_check, word_check, replaceBlock)
	begin 
		if ((writeEnable ='1')and (replaceBlock = '0'))then 
			
			for i in 0 to 7 loop
			if ( i = line_check) then 
				
				for j in 0 to 3 loop 
				
					if (j = word_check) then 
						memory1(i, j) <= dataIn; 

					end if;
				end loop;
			end if;
		end loop;
		elsif (replaceBlock = '1') then 
			for i in 0 to 7 loop
				if(i = line_check) then	
					memory1(i, 0) <= data_block(15 downto 0);
					memory1(i, 1) <= data_block(31 downto 16);
					memory1(i, 2) <= data_block(47 downto 32);
					memory1(i, 3) <= data_block(63 downto 48);
				end if;
			end loop;
	end if;
	end process;
--	newBlock: process(replaceBlock, data_block, line_check)
--	begin 
--		if (replaceBlock = '1') then	
--			for i in 0 to 7 loop
--				if(i = line_check) then	
--					memory1(i, 0) <= data_block(15 downto 0);
--					memory1(i, 1) <= data_block(31 downto 16);
--					memory1(i, 2) <= data_block(47 downto 32);
--					memory1(i, 3) <= data_block(63 downto 48);
--				end if;
--			end loop;
--		end if;
--	end process;
					
end behav;
		
			
				
		
		
		
		
		
		
		