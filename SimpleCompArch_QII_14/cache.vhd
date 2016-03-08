library	ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.all; 
use work.MP_lib.all;

entity Cache is
port ( 	
		clock					: 	in STD_LOGIC;
		reset					:  in STD_LOGIC;
		Mre					:	in STD_LOGIC;
		Mwe					:	in STD_LOGIC;
		address				:	in STD_LOGIC_VECTOR(11 downto 0);
		data_in				:	in STD_LOGIC_VECTOR(15 downto 0);
		data_out				:	out STD_LOGIC_VECTOR(15 downto 0)
		);
		
end Cache;

architecture behav of Cache is
signal MreIn : std_logic;
signal MweIn : std_logic;

signal Mre_mem: std_logic;
signal Mwe_mem: std_logic;
--signal addressIn: std_LOGIC_VECTOR(11 downto 0);

signal dataIn : std_logic_vector(63 downto 0);
signal data_out_cpu : std_logic_vector(15 downto 0);
signal data_out_mem : std_logic_vector(63 downto 0);
signal address_mem: std_logic_vector(11 downto 0);
signal data_block_in: std_logic_vector(63 downto 0);
signal address_block_in : std_logic_vector(11 downto 0);
signal replaceStatusIn: STD_LOGIC;
signal replaceStatusOut: std_logic; 


begin 
 
	Unit1: CacheController port map(MreIn, MweIn, address, address_mem, data_in, data_out_cpu, replaceStatusIn, replaceStatusOut, data_block_in, address_block_in);
	Unit2: MainMemory2 port map(clock,reset, Mre_mem, Mwe_mem, address_mem, dataIn, data_out_mem);

	read: process (clock, Mre, Mwe, MreIn, address)
	begin 
		if (rising_edge(clock)) then 
			if ((Mre = '1') AND (Mwe = '0')) then
				MreIn <= Mre ; 
				--addressIn <= address;
				--replaceStatusIn <= '0';
				
			end if;
		end if;
		data_out <= data_out_cpu;
	end process;
	
	write: process(clock, Mwe, Mre, address, replaceStatusIn ) 
	begin 
		if (rising_edge(clock)) then 
			if ((Mwe = '1') and (Mre = '0')) then 
				MweIn <= Mwe; 
				--addressIn <= address;
				--replaceStatusIn <='0';
			end if;
		end if;
	end process;
	
	replaceBlock: process(clock, replaceStatusOut, replaceStatusIn, data_out_mem, data_out_cpu)
	begin 
		if (replaceStatusOut = '1') then 
			if (rising_edge(clock)) then 
				Mre_mem <= '1';
				
			end if;
		replaceStatusIn <= '1';
		data_block_in <= data_out_mem;
		--data_out <= data_out_cpu;
		end if;
		replaceStatusIn <= '0';
		--data_out <= data_out_cpu;
		end process;
end behav;
		
				
				
		
		
		
		
		
		
		
		
		
		
		
		