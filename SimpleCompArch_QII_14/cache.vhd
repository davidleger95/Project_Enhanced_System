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
		data_out				:	out STD_LOGIC_VECTOR(15 downto 0);
		delayReq				: out std_logic
		-----debug signals----
		
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
signal replaceStatusIn: STD_LOGIC:= '0';
signal replaceStatusOut: std_logic; 


begin 
 
	Unit1: CacheController port map(clock,reset,Mre, Mwe, address, address_mem, data_in, data_out_cpu, replaceStatusIn, replaceStatusOut, data_block_in, address_block_in, delayReq);
	Unit2: MainMemory2 port map(clock,reset, Mre_mem, Mwe_mem, address_mem, dataIn, data_out_mem);


	data_out <= data_out_cpu;

	replaceBlock: process(clock, replaceStatusOut, replaceStatusIn, data_out_mem, data_out_cpu)
	begin 
		if (replaceStatusOut = '1') then 
			
		Mre_mem <= '1';
		replaceStatusIn <= '1';
		data_block_in <= data_out_mem;
		--data_out <= data_out_cpu;
		end if;
		replaceStatusIn <= '0';
		--data_out <= data_out_cpu;
		end process;
end behav;
		
				
				
		
		
		
		
		
		
		
		
		
		
		
		