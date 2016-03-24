------------------------------------------------------------------
-- Simple Computer Architecture
--
-- System composed of
-- 	CPU, Memory and output buffer
--    Sinals with the prefix "D_" are set for Debugging purpose only
-- SimpleCompArch.vhd
-------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;  
use ieee.numeric_std.all;			   
use work.MP_lib.all; 

entity SimpleCompArch is
port( sys_clk								:	in std_logic;
		  sys_rst							:	in std_logic;
		  sys_output						:	out std_logic_vector(15 downto 0);
		
		-- Debug signals from CPU: output for simulation purpose only	
		D_rfout_bus											: out std_logic_vector(15 downto 0);  
		D_RFwa, D_RFr1a, D_RFr2a				: out std_logic_vector(3 downto 0);
		D_RFwe, D_RFr1e, D_RFr2e				: out std_logic;
		D_RFs, D_ALUs										: out std_logic_vector(1 downto 0);
		D_PCld, D_jpz										: out std_logic;
		state_cpu            : out std_logic_vector(11 downto 0 ) ;
		-- end debug variables	

		-- Debug signals from Memory: output for simulation purpose only	
		cache_en_d : out std_logic;
		D_mdout_bus,D_mdin_bus					: out std_logic_vector(15 downto 0); 
		D_mem_addr											: out std_logic_vector(11 downto 0); 
		D_Mre,D_Mwe										: out std_logic ;
		controller_en_d : out std_logic;
		cont_state_d : out std_LOGIC_VECTOR(3 downto 0);
		cache_state_d : out std_logic_vector(3 downto 0);
		write_back_block : out std_LOGIC_VECTOR(63 downto 0);
		done_write_back_d : out std_logic;
		write_block_controller_sig : out std_logic;
		write_back_mem : out std_logic 
		-- end debug variables	
);
end SimpleCompArch;

architecture rtl of SimpleCompArch is
--Memory local variables												  							        							(ORIGIN	-> DEST)
	signal mdout_bus					: std_logic_vector(15 downto 0);  -- Mem data output 		(MEM  	-> CTLU)
	signal mdin_bus					: std_logic_vector(15 downto 0);  -- Mem data bus input 	(CTRLER	-> Mem)
	signal mem_addr					: std_logic_vector(11 downto 0);   -- Const. operand addr.(CTRLER	-> MEM)
	signal Mre								: std_logic;							 			 -- Mem. read enable  	(CTRLER	-> Mem) 
	signal Mwe								: std_logic;							 			 -- Mem. write enable 	(CTRLER	-> Mem)
	signal delayReq 	:std_logic;
	signal controller_en  : std_logic:='0';
	--System local variables
	signal oe							: std_logic;	
	signal done_write_back : std_logic;
	signal cache_en : std_logic:= '0';
begin

Unit1: CPU port map (sys_clk,sys_rst,mdout_bus,mdin_bus,mem_addr,Mre,Mwe,oe,controller_en, state_cpu,done_write_back,cache_en,
										D_rfout_bus,D_RFwa, D_RFr1a, D_RFr2a,D_RFwe, 			 				--Degug signals
										D_RFr1e, D_RFr2e,D_RFs, D_ALUs,D_PCld, D_jpz);	 						--Degug signals
																					
Unit2: Cache port map(	cache_en,sys_clk,sys_rst,Mre,Mwe,mem_addr,mdin_bus,mdout_bus, delayReq, controller_en, cont_state_d, cache_state_d,
							write_block_controller_sig, write_back_block,write_back_mem, done_write_back);
Unit3: obuf port map(oe, mdout_bus, sys_output);

-- Debug signals: output to upper level for simulation purpose only
	D_mdout_bus <= mdout_bus;	
	D_mdin_bus <= mdin_bus;
	D_mem_addr <= mem_addr; 
	D_Mre <= Mre;
	D_Mwe <= Mwe;
	controller_en_d <= controller_en;
	done_write_back_d <= done_write_back;
	cache_en_d <= cache_en;
-- end debug variables		
		
end rtl;