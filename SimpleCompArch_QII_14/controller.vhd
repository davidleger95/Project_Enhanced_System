----------------------------------------------------------------------------
-- Simple Microprocessor Design (ESD Book Chapter 3)
-- Copyright 2001 Weijun Zhang
--
-- Controller (control logic plus state register)
-- VHDL FSM modeling
-- controller.vhd
----------------------------------------------------------------------------

library	ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use work.MP_lib.all;

entity controller is
port(	
	state_cpu : out std_logic_vector(11 downto 0);
	controller_en : in std_logic;
	clock:		in std_logic;
	rst:		in std_logic;
	IR_word:	in std_logic_vector(15 downto 0);
	RFs_ctrl:	out std_logic_vector(1 downto 0);
	RFwa_ctrl:	out std_logic_vector(3 downto 0);
	RFr1a_ctrl:	out std_logic_vector(3 downto 0);
	RFr2a_ctrl:	out std_logic_vector(3 downto 0);
	RFwe_ctrl:	out std_logic;
	RFr1e_ctrl:	out std_logic;
	RFr2e_ctrl:	out std_logic;						 
	ALUs_ctrl:	out std_logic_vector(1 downto 0);	 
	jmpen_ctrl:	out std_logic;
	PCinc_ctrl:	out std_logic;
	PCclr_ctrl:	out std_logic;
	IRld_ctrl:	out std_logic;
	Ms_ctrl:	out std_logic_vector(1 downto 0);
	Mre_ctrl:	out std_logic;
	Mwe_ctrl:	out std_logic;
	oe_ctrl:	out std_logic
);
end controller;

architecture fsm of controller is

  type state_type is (  sDelay, sDelay2, S0,S1,S1a,S1b,s1c,S2,S3,S3a,S3b,S4,S4a,S4b, s4c,S5,S5a,S5b,
			s5c,S6,S6a,S7,S7a,S7b,S8,S8a,S8b,S9,S9a,S9b,S10,S11,S11a,s11b, s13, s13a,s13b);
  signal state: state_type;
  signal nextState : state_type;
  signal numDelayCylcles : integer;
begin
  process(clock, rst, IR_word)
    variable OPCODE: std_logic_vector(3 downto 0);
	 
  begin
    if rst='1' then			   
	Ms_ctrl <= "10";
  	PCclr_ctrl <= '1';		  	-- Reset State
	PCinc_ctrl <= '0';
	IRld_ctrl <= '0';
	RFs_ctrl <= "00";		
	Rfwe_ctrl <= '0';
	Mre_ctrl <= '0';
	Mwe_ctrl <= '0';					
	jmpen_ctrl <= '0';		
	oe_ctrl <= '0';
	state <= S0;

    elsif (clock'event and clock='1') then
	case state is 
		when sDelay => 
			state_cpu <= x"BBB";
			PCinc_ctrl <= '0';
			if (controller_en = '0') then 
				state <= nextState;
			end if;
			
		when sDelay2 => 
			state_cpu <= x"AAA";
			numDelayCylcles <= numDelayCylcles -1;
			if (numDelayCylcles = 0) then 
				state <= nextState;
			end if;
			
	  when S0 =>	PCclr_ctrl <= '0';	-- Reset State	
			state <= S1;	
			state_cpu <= x"000";
	  when S1 =>	PCinc_ctrl <= '0';	
			IRld_ctrl <= '1'; -- Fetch Instruction
			Mre_ctrl <= '1';  
			RFwe_ctrl <= '0'; 
			RFr1e_ctrl <= '0'; 
			RFr2e_ctrl <= '0'; 
			Ms_ctrl <= "10";
			Mwe_ctrl <= '0';
			jmpen_ctrl <= '0';
			oe_ctrl <= '0';
			state_cpu <= x"001";
			
			state <= sDelay2;
			nextState <= s1a;
			numDelayCylcles <= 2;
--			state <= s1a;
	  when S1a =>
				state_cpu <= x"01A";
	        
	        Mre_ctrl <= '0';
			  
	  		state <= sDelay;
		   nextState <= S1b;			-- Fetch end ...
--			state <= s1b;
	  when S1b => 
			IRld_ctrl <= '0';
	      PCinc_ctrl <= '1';  
		   state <= S1c;
			state_cpu <= x"01b";
			
		when s1c => 
			PCinc_ctrl <= '0';
			state <= s2;
	  		state_cpu <= x"01c";		
	  when S2 =>	OPCODE := IR_word(15 downto 12);
			  case OPCODE is
			    when mov1 => 	state <= S3;
			    when mov2 => 	state <= S4;
			    when mov3 => 	state <= S5;
			    when mov4 => 	state <= S6;
			    when add =>  	state <= S7;
			    when subt =>	state <= S8;
			    when jz =>		state <= S9;
			    when halt =>	state <= S10; 
			    when readm => 	state <= S11;
				 when mov5 => state <=s13;
			    when others => 	state <= S1;
			    end case;
				state_cpu <= x"002";	
				
	  when S3 =>	RFwa_ctrl <= IR_word(11 downto 8);	
			RFs_ctrl <= "01";  -- RF[rn] <= mem[direct]
			Ms_ctrl <= "01";
			Mre_ctrl <= '1';
			Mwe_ctrl <= '0';
			state_cpu <= x"003";
			
			state <= sDelay2;
			nextState <= s3a;
			numDelayCylcles <= 2;
--			state<= s3a;
	  when S3a =>   RFwe_ctrl <= '1'; 
	        Mre_ctrl <= '0'; 
			  state_cpu <= x"03a";
			  
			state <= sDelay;
		   nextState <= S3b;	
--			state <= s3b;

	  when S3b =>
			RFwe_ctrl <= '0';
			state <= S1;
			state_cpu <= x"03b";
--		when s3 => 
--			RFwe_ctrl <= '0';
			
	  when S4 =>	RFr1a_ctrl <= IR_word(11 downto 8);	
			RFr1e_ctrl <= '1'; -- mem[direct] <= RF[rn]			
			Ms_ctrl <= "01";
			ALUs_ctrl <= "00";	  
			IRld_ctrl <= '0';
			state <= S4a;			-- read value from RF
			state_cpu <= x"004";
	  when S4a =>   Mre_ctrl <= '0';
			Mwe_ctrl <= '1';
			state_cpu <= x"04a";
			
			state <= sDelay2;
			nextState <= s4b;
			numDelayCylcles <= 2;      -- write into memory
--			state <= s4b;
	  when S4b =>   				  
			Mwe_ctrl <= '0';
			state_cpu <= x"04b";
			
			state <= sDelay;
		   nextState <= S4C;
--			state <= s1;
		when 	s4c => 
			Ms_ctrl <= "10";
			state <= S1;
			state_cpu <= x"04c";
			
	  when S5 =>	RFr1a_ctrl <= IR_word(11 downto 8);	
			RFr1e_ctrl <= '1'; -- mem[RF[rn]] <= RF[rm]
			Ms_ctrl <= "00";
			ALUs_ctrl <= "01";
			RFr2a_ctrl <= IR_word(7 downto 4); 
			RFr2e_ctrl <= '1'; -- set addr.& data
			state <= S5a;
			state_cpu <= x"005";
			
	  when S5a =>   Mre_ctrl <= '0';			
			Mwe_ctrl <= '1'; -- write into memory
			state_cpu <= x"05a";
			
			state <= sDelay2;
			nextState <= s5b;
			numDelayCylcles <= 2;
--			state <= s5b;

	  when S5b => 	
			Mwe_ctrl <= '0';
			state_cpu <= x"05b";
			
			state <= sDelay;
		   nextState <= S5c;	
--			state <= s1;
		when s5c => 
			Ms_ctrl <= "10";-- return
			state_cpu <= x"05c";
			state <= s1;
			
--					
	  when S6 =>	RFwa_ctrl <= IR_word(11 downto 8);	
			RFwe_ctrl <= '1'; -- RF[rn] <= imm.
			RFs_ctrl <= "10";
			IRld_ctrl <= '0';
			state <= S6a;
			state_cpu <= x"006";
			
	  when S6a =>   state <= S1;
			state_cpu <= x"06a";
			
	  when S7 =>	RFr1a_ctrl <= IR_word(11 downto 8);	
			RFr1e_ctrl <= '1'; -- RF[rn] <= RF[rn] + RF[rm]
			RFr2e_ctrl <= '1'; 
			RFr2a_ctrl <= IR_word(7 downto 4);
 			ALUs_ctrl <= "10";
			state <= S7a;
			state_cpu <= x"007";
			
	  when S7a =>   RFr1e_ctrl <= '0';
			RFr2e_ctrl <= '0';
			RFs_ctrl <= "00";
			RFwa_ctrl <= IR_word(11 downto 8);
			RFwe_ctrl <= '1';
			state <= S7b;
			state_cpu <= x"07a";
			
	  when S7b =>   state <= S1;
					state_cpu <= x"07b";
					
	  when S8 =>	RFr1a_ctrl <= IR_word(11 downto 8);	
			RFr1e_ctrl <= '1'; -- RF[rn] <= RF[rn] - RF[rm]
			RFr2a_ctrl <= IR_word(7 downto 4);
			RFr2e_ctrl <= '1';  
			ALUs_ctrl <= "11";
			state <= S8a;
			state_cpu <= x"008";
			
	  when S8a =>   RFr1e_ctrl <= '0';
			RFr2e_ctrl <= '0';
			RFs_ctrl <= "00";
			RFwa_ctrl <= IR_word(11 downto 8);
			RFwe_ctrl <= '1';
			state <= S8b;
			state_cpu <= x"08a";
			
	  when S8b =>   state <= S1;
			state_cpu <= x"08b";
			
	  when S9 =>	jmpen_ctrl <= '1';
			RFr1a_ctrl <= IR_word(11 downto 8);	
			RFr1e_ctrl <= '1'; -- jz if R[rn] = 0
			ALUs_ctrl <= "00";
			state <= S9a;
			state_cpu <= x"009";
	  when S9a =>   state <= S9b;
				state_cpu <= x"09a";
				
	  when S9b =>   jmpen_ctrl <= '0';
	        state <= S1;
			  state_cpu <= x"09b";
			  
	  when S10 =>	state <= S10; -- halt
				state_cpu <= x"010";
				
	  when S11 =>   Ms_ctrl <= "01";
			state_cpu <= x"011";
			Mre_ctrl <= '1'; -- read memory
			Mwe_ctrl <= '0';
			
			state <= sDelay2;
			nextState <= s11a;
			numDelayCylcles <= 2;
--			state <= s11a;
	  when S11a =>  
			state_cpu <= x"11a";
			Mre_ctrl <= '0';
			state <= sDelay;
		   nextState <= S11b;	
--			state <= s1;
	when  s11b =>
			oe_ctrl <= '1'; 
			state_cpu <= x"11b";
			state <= s1;
--	
		when S13 =>
			state_cpu <=x"013";
			RFwe_ctrl <= '0';
			RFr1a_ctrl <= IR_word(11 downto 8); -- address stored in R1
			RFr1e_ctrl <= '1'; -- enable port for reading
			Ms_ctrl <= "00";
			RFs_ctrl <= "01";
			state <= S13a;

		when S13a =>
			state_cpu <=x"13A";
			RFr1e_ctrl <= '0';
			Mre_ctrl <= '1';
			RFwa_ctrl <= IR_word(7 downto 4);
			state<= sDelay2;
			nextState<= s13b;
			numDelayCylcles <= 2;
			
		when S13b =>
			state_cpu <=x"13b";
			RFwe_ctrl <= '1';
			Mre_ctrl <= '0';
			state <= sDelay;
			nextState <= s1;
			
	  when others =>
	end case;
    end if;
  end process;
end fsm;