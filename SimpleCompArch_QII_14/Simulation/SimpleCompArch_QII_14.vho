-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.0.2 Build 209 09/17/2014 SJ Full Version"

-- DATE "03/07/2016 17:38:32"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SimpleCompArch IS
    PORT (
	sys_clk : IN std_logic;
	sys_rst : IN std_logic;
	sys_output : OUT std_logic_vector(15 DOWNTO 0);
	D_rfout_bus : OUT std_logic_vector(15 DOWNTO 0);
	D_RFwa : OUT std_logic_vector(3 DOWNTO 0);
	D_RFr1a : OUT std_logic_vector(3 DOWNTO 0);
	D_RFr2a : OUT std_logic_vector(3 DOWNTO 0);
	D_RFwe : OUT std_logic;
	D_RFr1e : OUT std_logic;
	D_RFr2e : OUT std_logic;
	D_RFs : OUT std_logic_vector(1 DOWNTO 0);
	D_ALUs : OUT std_logic_vector(1 DOWNTO 0);
	D_PCld : OUT std_logic;
	D_jpz : OUT std_logic;
	D_mdout_bus : OUT std_logic_vector(15 DOWNTO 0);
	D_mdin_bus : OUT std_logic_vector(15 DOWNTO 0);
	D_mem_addr : OUT std_logic_vector(11 DOWNTO 0);
	D_Mre : OUT std_logic;
	D_Mwe : OUT std_logic
	);
END SimpleCompArch;

-- Design Ports Information
-- sys_output[0]	=>  Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sys_output[1]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sys_output[2]	=>  Location: PIN_A25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sys_output[3]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sys_output[4]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sys_output[5]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sys_output[6]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sys_output[7]	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sys_output[8]	=>  Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sys_output[9]	=>  Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sys_output[10]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sys_output[11]	=>  Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sys_output[12]	=>  Location: PIN_E28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sys_output[13]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sys_output[14]	=>  Location: PIN_AE28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sys_output[15]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_rfout_bus[0]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_rfout_bus[1]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_rfout_bus[2]	=>  Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_rfout_bus[3]	=>  Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_rfout_bus[4]	=>  Location: PIN_V5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_rfout_bus[5]	=>  Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_rfout_bus[6]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_rfout_bus[7]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_rfout_bus[8]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_rfout_bus[9]	=>  Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_rfout_bus[10]	=>  Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_rfout_bus[11]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_rfout_bus[12]	=>  Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_rfout_bus[13]	=>  Location: PIN_AH25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_rfout_bus[14]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_rfout_bus[15]	=>  Location: PIN_AG26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_RFwa[0]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_RFwa[1]	=>  Location: PIN_C26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_RFwa[2]	=>  Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_RFwa[3]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_RFr1a[0]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_RFr1a[1]	=>  Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_RFr1a[2]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_RFr1a[3]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_RFr2a[0]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_RFr2a[1]	=>  Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_RFr2a[2]	=>  Location: PIN_AH21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_RFr2a[3]	=>  Location: PIN_D24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_RFwe	=>  Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_RFr1e	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_RFr2e	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_RFs[0]	=>  Location: PIN_AB6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_RFs[1]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_ALUs[0]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_ALUs[1]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_PCld	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_jpz	=>  Location: PIN_AG11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdout_bus[0]	=>  Location: PIN_AC2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdout_bus[1]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdout_bus[2]	=>  Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdout_bus[3]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdout_bus[4]	=>  Location: PIN_AB7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdout_bus[5]	=>  Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdout_bus[6]	=>  Location: PIN_M26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdout_bus[7]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdout_bus[8]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdout_bus[9]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdout_bus[10]	=>  Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdout_bus[11]	=>  Location: PIN_AC3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdout_bus[12]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdout_bus[13]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdout_bus[14]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdout_bus[15]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdin_bus[0]	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdin_bus[1]	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdin_bus[2]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdin_bus[3]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdin_bus[4]	=>  Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdin_bus[5]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdin_bus[6]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdin_bus[7]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdin_bus[8]	=>  Location: PIN_T26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdin_bus[9]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdin_bus[10]	=>  Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdin_bus[11]	=>  Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdin_bus[12]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdin_bus[13]	=>  Location: PIN_AG7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdin_bus[14]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mdin_bus[15]	=>  Location: PIN_L27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mem_addr[0]	=>  Location: PIN_AH3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mem_addr[1]	=>  Location: PIN_AD7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mem_addr[2]	=>  Location: PIN_AG3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mem_addr[3]	=>  Location: PIN_AE5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mem_addr[4]	=>  Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mem_addr[5]	=>  Location: PIN_AF5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mem_addr[6]	=>  Location: PIN_AF4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mem_addr[7]	=>  Location: PIN_AD4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mem_addr[8]	=>  Location: PIN_AF6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mem_addr[9]	=>  Location: PIN_AF3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mem_addr[10]	=>  Location: PIN_AF2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_mem_addr[11]	=>  Location: PIN_AC5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_Mre	=>  Location: PIN_AC4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- D_Mwe	=>  Location: PIN_AB27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sys_clk	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sys_rst	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF SimpleCompArch IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sys_clk : std_logic;
SIGNAL ww_sys_rst : std_logic;
SIGNAL ww_sys_output : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_D_rfout_bus : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_D_RFwa : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_D_RFr1a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_D_RFr2a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_D_RFwe : std_logic;
SIGNAL ww_D_RFr1e : std_logic;
SIGNAL ww_D_RFr2e : std_logic;
SIGNAL ww_D_RFs : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_D_ALUs : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_D_PCld : std_logic;
SIGNAL ww_D_jpz : std_logic;
SIGNAL ww_D_mdout_bus : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_D_mdin_bus : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_D_mem_addr : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_D_Mre : std_logic;
SIGNAL ww_D_Mwe : std_logic;
SIGNAL \sys_rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Unit1|Unit0|U0|PCclr_ctrl~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sys_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sys_output[0]~output_o\ : std_logic;
SIGNAL \sys_output[1]~output_o\ : std_logic;
SIGNAL \sys_output[2]~output_o\ : std_logic;
SIGNAL \sys_output[3]~output_o\ : std_logic;
SIGNAL \sys_output[4]~output_o\ : std_logic;
SIGNAL \sys_output[5]~output_o\ : std_logic;
SIGNAL \sys_output[6]~output_o\ : std_logic;
SIGNAL \sys_output[7]~output_o\ : std_logic;
SIGNAL \sys_output[8]~output_o\ : std_logic;
SIGNAL \sys_output[9]~output_o\ : std_logic;
SIGNAL \sys_output[10]~output_o\ : std_logic;
SIGNAL \sys_output[11]~output_o\ : std_logic;
SIGNAL \sys_output[12]~output_o\ : std_logic;
SIGNAL \sys_output[13]~output_o\ : std_logic;
SIGNAL \sys_output[14]~output_o\ : std_logic;
SIGNAL \sys_output[15]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[0]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[1]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[2]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[3]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[4]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[5]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[6]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[7]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[8]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[9]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[10]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[11]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[12]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[13]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[14]~output_o\ : std_logic;
SIGNAL \D_rfout_bus[15]~output_o\ : std_logic;
SIGNAL \D_RFwa[0]~output_o\ : std_logic;
SIGNAL \D_RFwa[1]~output_o\ : std_logic;
SIGNAL \D_RFwa[2]~output_o\ : std_logic;
SIGNAL \D_RFwa[3]~output_o\ : std_logic;
SIGNAL \D_RFr1a[0]~output_o\ : std_logic;
SIGNAL \D_RFr1a[1]~output_o\ : std_logic;
SIGNAL \D_RFr1a[2]~output_o\ : std_logic;
SIGNAL \D_RFr1a[3]~output_o\ : std_logic;
SIGNAL \D_RFr2a[0]~output_o\ : std_logic;
SIGNAL \D_RFr2a[1]~output_o\ : std_logic;
SIGNAL \D_RFr2a[2]~output_o\ : std_logic;
SIGNAL \D_RFr2a[3]~output_o\ : std_logic;
SIGNAL \D_RFwe~output_o\ : std_logic;
SIGNAL \D_RFr1e~output_o\ : std_logic;
SIGNAL \D_RFr2e~output_o\ : std_logic;
SIGNAL \D_RFs[0]~output_o\ : std_logic;
SIGNAL \D_RFs[1]~output_o\ : std_logic;
SIGNAL \D_ALUs[0]~output_o\ : std_logic;
SIGNAL \D_ALUs[1]~output_o\ : std_logic;
SIGNAL \D_PCld~output_o\ : std_logic;
SIGNAL \D_jpz~output_o\ : std_logic;
SIGNAL \D_mdout_bus[0]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[1]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[2]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[3]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[4]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[5]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[6]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[7]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[8]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[9]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[10]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[11]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[12]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[13]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[14]~output_o\ : std_logic;
SIGNAL \D_mdout_bus[15]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[0]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[1]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[2]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[3]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[4]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[5]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[6]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[7]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[8]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[9]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[10]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[11]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[12]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[13]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[14]~output_o\ : std_logic;
SIGNAL \D_mdin_bus[15]~output_o\ : std_logic;
SIGNAL \D_mem_addr[0]~output_o\ : std_logic;
SIGNAL \D_mem_addr[1]~output_o\ : std_logic;
SIGNAL \D_mem_addr[2]~output_o\ : std_logic;
SIGNAL \D_mem_addr[3]~output_o\ : std_logic;
SIGNAL \D_mem_addr[4]~output_o\ : std_logic;
SIGNAL \D_mem_addr[5]~output_o\ : std_logic;
SIGNAL \D_mem_addr[6]~output_o\ : std_logic;
SIGNAL \D_mem_addr[7]~output_o\ : std_logic;
SIGNAL \D_mem_addr[8]~output_o\ : std_logic;
SIGNAL \D_mem_addr[9]~output_o\ : std_logic;
SIGNAL \D_mem_addr[10]~output_o\ : std_logic;
SIGNAL \D_mem_addr[11]~output_o\ : std_logic;
SIGNAL \D_Mre~output_o\ : std_logic;
SIGNAL \D_Mwe~output_o\ : std_logic;
SIGNAL \sys_clk~input_o\ : std_logic;
SIGNAL \sys_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S0~feeder_combout\ : std_logic;
SIGNAL \sys_rst~input_o\ : std_logic;
SIGNAL \sys_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S0~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector0~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S1~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S1a~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S1b~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S2~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S3~feeder_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S3~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S3a~feeder_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S3a~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S3b~feeder_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|state.S3b~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector5~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|RFwe_ctrl~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|RFs_ctrl[0]~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector9~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[0]~12_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|PCclr_ctrl~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|PCclr_ctrl~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|PCclr_ctrl~clkctrl_outclk\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector2~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|PCinc_ctrl~q\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector8~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U3|Mux15~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[0]~13\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[1]~14_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U3|Mux14~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[1]~15\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[2]~16_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U3|Mux13~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[2]~17\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[3]~18_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U3|Mux12~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[3]~19\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[4]~20_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U3|Mux11~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[4]~21\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[5]~22_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U3|Mux10~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[5]~23\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[6]~24_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U3|Mux9~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[6]~25\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[7]~26_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U3|Mux8~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[7]~27\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[8]~28_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U3|Mux7~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[8]~29\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[9]~30_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U3|Mux6~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[9]~31\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[10]~32_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U3|Mux5~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[10]~33\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC[11]~34_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U3|Mux4~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector4~0_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Selector4~1_combout\ : std_logic;
SIGNAL \Unit1|Unit0|U0|Mre_ctrl~q\ : std_logic;
SIGNAL \Unit1|Unit0|U1|tmp_PC\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Unit1|Unit0|U0|RFs_ctrl\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Unit1|Unit0|U0|Ms_ctrl\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_sys_rst~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_sys_clk <= sys_clk;
ww_sys_rst <= sys_rst;
sys_output <= ww_sys_output;
D_rfout_bus <= ww_D_rfout_bus;
D_RFwa <= ww_D_RFwa;
D_RFr1a <= ww_D_RFr1a;
D_RFr2a <= ww_D_RFr2a;
D_RFwe <= ww_D_RFwe;
D_RFr1e <= ww_D_RFr1e;
D_RFr2e <= ww_D_RFr2e;
D_RFs <= ww_D_RFs;
D_ALUs <= ww_D_ALUs;
D_PCld <= ww_D_PCld;
D_jpz <= ww_D_jpz;
D_mdout_bus <= ww_D_mdout_bus;
D_mdin_bus <= ww_D_mdin_bus;
D_mem_addr <= ww_D_mem_addr;
D_Mre <= ww_D_Mre;
D_Mwe <= ww_D_Mwe;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\sys_rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sys_rst~input_o\);

\Unit1|Unit0|U0|PCclr_ctrl~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Unit1|Unit0|U0|PCclr_ctrl~q\);

\sys_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sys_clk~input_o\);
\ALT_INV_sys_rst~inputclkctrl_outclk\ <= NOT \sys_rst~inputclkctrl_outclk\;

-- Location: IOOBUF_X115_Y24_N2
\sys_output[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sys_output[0]~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\sys_output[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sys_output[1]~output_o\);

-- Location: IOOBUF_X109_Y73_N9
\sys_output[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sys_output[2]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\sys_output[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sys_output[3]~output_o\);

-- Location: IOOBUF_X0_Y62_N23
\sys_output[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sys_output[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\sys_output[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sys_output[5]~output_o\);

-- Location: IOOBUF_X107_Y0_N2
\sys_output[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sys_output[6]~output_o\);

-- Location: IOOBUF_X105_Y73_N9
\sys_output[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sys_output[7]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\sys_output[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sys_output[8]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\sys_output[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sys_output[9]~output_o\);

-- Location: IOOBUF_X115_Y10_N9
\sys_output[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sys_output[10]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\sys_output[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sys_output[11]~output_o\);

-- Location: IOOBUF_X115_Y57_N23
\sys_output[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sys_output[12]~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\sys_output[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sys_output[13]~output_o\);

-- Location: IOOBUF_X115_Y11_N2
\sys_output[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sys_output[14]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\sys_output[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sys_output[15]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\D_rfout_bus[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_rfout_bus[0]~output_o\);

-- Location: IOOBUF_X5_Y73_N23
\D_rfout_bus[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_rfout_bus[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\D_rfout_bus[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_rfout_bus[2]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\D_rfout_bus[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_rfout_bus[3]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\D_rfout_bus[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_rfout_bus[4]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\D_rfout_bus[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_rfout_bus[5]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\D_rfout_bus[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_rfout_bus[6]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\D_rfout_bus[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_rfout_bus[7]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\D_rfout_bus[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_rfout_bus[8]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\D_rfout_bus[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_rfout_bus[9]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\D_rfout_bus[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_rfout_bus[10]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\D_rfout_bus[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_rfout_bus[11]~output_o\);

-- Location: IOOBUF_X5_Y73_N9
\D_rfout_bus[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_rfout_bus[12]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\D_rfout_bus[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_rfout_bus[13]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\D_rfout_bus[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_rfout_bus[14]~output_o\);

-- Location: IOOBUF_X113_Y0_N9
\D_rfout_bus[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_rfout_bus[15]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\D_RFwa[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_RFwa[0]~output_o\);

-- Location: IOOBUF_X113_Y73_N2
\D_RFwa[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_RFwa[1]~output_o\);

-- Location: IOOBUF_X115_Y51_N2
\D_RFwa[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_RFwa[2]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\D_RFwa[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_RFwa[3]~output_o\);

-- Location: IOOBUF_X115_Y5_N16
\D_RFr1a[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_RFr1a[0]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\D_RFr1a[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_RFr1a[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\D_RFr1a[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_RFr1a[2]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\D_RFr1a[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_RFr1a[3]~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\D_RFr2a[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_RFr2a[0]~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\D_RFr2a[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_RFr2a[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\D_RFr2a[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_RFr2a[2]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\D_RFr2a[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_RFr2a[3]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\D_RFwe~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U0|RFwe_ctrl~q\,
	devoe => ww_devoe,
	o => \D_RFwe~output_o\);

-- Location: IOOBUF_X0_Y57_N23
\D_RFr1e~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_RFr1e~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\D_RFr2e~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_RFr2e~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\D_RFs[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U0|RFs_ctrl\(0),
	devoe => ww_devoe,
	o => \D_RFs[0]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\D_RFs[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_RFs[1]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\D_ALUs[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_ALUs[0]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\D_ALUs[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_ALUs[1]~output_o\);

-- Location: IOOBUF_X96_Y73_N23
\D_PCld~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_PCld~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\D_jpz~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_jpz~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\D_mdout_bus[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_mdout_bus[0]~output_o\);

-- Location: IOOBUF_X102_Y0_N16
\D_mdout_bus[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_mdout_bus[1]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\D_mdout_bus[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_mdout_bus[2]~output_o\);

-- Location: IOOBUF_X109_Y0_N9
\D_mdout_bus[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_mdout_bus[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\D_mdout_bus[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_mdout_bus[4]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\D_mdout_bus[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_mdout_bus[5]~output_o\);

-- Location: IOOBUF_X115_Y46_N2
\D_mdout_bus[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_mdout_bus[6]~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\D_mdout_bus[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_mdout_bus[7]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\D_mdout_bus[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_mdout_bus[8]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\D_mdout_bus[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_mdout_bus[9]~output_o\);

-- Location: IOOBUF_X115_Y69_N23
\D_mdout_bus[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_mdout_bus[10]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\D_mdout_bus[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_mdout_bus[11]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\D_mdout_bus[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_mdout_bus[12]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\D_mdout_bus[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_mdout_bus[13]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\D_mdout_bus[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_mdout_bus[14]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\D_mdout_bus[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_mdout_bus[15]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\D_mdin_bus[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_mdin_bus[0]~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\D_mdin_bus[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_mdin_bus[1]~output_o\);

-- Location: IOOBUF_X96_Y0_N9
\D_mdin_bus[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_mdin_bus[2]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\D_mdin_bus[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_mdin_bus[3]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\D_mdin_bus[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_mdin_bus[4]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\D_mdin_bus[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_mdin_bus[5]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\D_mdin_bus[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_mdin_bus[6]~output_o\);

-- Location: IOOBUF_X11_Y73_N2
\D_mdin_bus[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_mdin_bus[7]~output_o\);

-- Location: IOOBUF_X115_Y31_N9
\D_mdin_bus[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_mdin_bus[8]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\D_mdin_bus[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_mdin_bus[9]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\D_mdin_bus[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_mdin_bus[10]~output_o\);

-- Location: IOOBUF_X115_Y63_N2
\D_mdin_bus[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_mdin_bus[11]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\D_mdin_bus[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_mdin_bus[12]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\D_mdin_bus[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_mdin_bus[13]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\D_mdin_bus[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_mdin_bus[14]~output_o\);

-- Location: IOOBUF_X115_Y48_N9
\D_mdin_bus[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_mdin_bus[15]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\D_mem_addr[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U3|Mux15~0_combout\,
	devoe => ww_devoe,
	o => \D_mem_addr[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\D_mem_addr[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U3|Mux14~0_combout\,
	devoe => ww_devoe,
	o => \D_mem_addr[1]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\D_mem_addr[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U3|Mux13~0_combout\,
	devoe => ww_devoe,
	o => \D_mem_addr[2]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\D_mem_addr[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U3|Mux12~0_combout\,
	devoe => ww_devoe,
	o => \D_mem_addr[3]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\D_mem_addr[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U3|Mux11~0_combout\,
	devoe => ww_devoe,
	o => \D_mem_addr[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\D_mem_addr[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U3|Mux10~0_combout\,
	devoe => ww_devoe,
	o => \D_mem_addr[5]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\D_mem_addr[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U3|Mux9~0_combout\,
	devoe => ww_devoe,
	o => \D_mem_addr[6]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\D_mem_addr[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U3|Mux8~0_combout\,
	devoe => ww_devoe,
	o => \D_mem_addr[7]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\D_mem_addr[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U3|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \D_mem_addr[8]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\D_mem_addr[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \D_mem_addr[9]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\D_mem_addr[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \D_mem_addr[10]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\D_mem_addr[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \D_mem_addr[11]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\D_Mre~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Unit1|Unit0|U0|Mre_ctrl~q\,
	devoe => ww_devoe,
	o => \D_Mre~output_o\);

-- Location: IOOBUF_X115_Y18_N9
\D_Mwe~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \D_Mwe~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\sys_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sys_clk,
	o => \sys_clk~input_o\);

-- Location: CLKCTRL_G2
\sys_clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sys_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sys_clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y4_N24
\Unit1|Unit0|U0|state.S0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|state.S0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Unit1|Unit0|U0|state.S0~feeder_combout\);

-- Location: IOIBUF_X0_Y36_N15
\sys_rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sys_rst,
	o => \sys_rst~input_o\);

-- Location: CLKCTRL_G4
\sys_rst~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sys_rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sys_rst~inputclkctrl_outclk\);

-- Location: FF_X1_Y4_N25
\Unit1|Unit0|U0|state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|state.S0~feeder_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|state.S0~q\);

-- Location: LCCOMB_X1_Y4_N12
\Unit1|Unit0|U0|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector0~0_combout\ = (\Unit1|Unit0|U0|state.S3b~q\) # (!\Unit1|Unit0|U0|state.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U0|state.S0~q\,
	datac => \Unit1|Unit0|U0|state.S3b~q\,
	combout => \Unit1|Unit0|U0|Selector0~0_combout\);

-- Location: FF_X1_Y4_N13
\Unit1|Unit0|U0|state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|Selector0~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|state.S1~q\);

-- Location: FF_X1_Y4_N23
\Unit1|Unit0|U0|state.S1a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit0|U0|state.S1~q\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|state.S1a~q\);

-- Location: FF_X1_Y4_N5
\Unit1|Unit0|U0|state.S1b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit0|U0|state.S1a~q\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|state.S1b~q\);

-- Location: FF_X1_Y4_N11
\Unit1|Unit0|U0|state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \Unit1|Unit0|U0|state.S1b~q\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|state.S2~q\);

-- Location: LCCOMB_X1_Y4_N0
\Unit1|Unit0|U0|state.S3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|state.S3~feeder_combout\ = \Unit1|Unit0|U0|state.S2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|Unit0|U0|state.S2~q\,
	combout => \Unit1|Unit0|U0|state.S3~feeder_combout\);

-- Location: FF_X1_Y4_N1
\Unit1|Unit0|U0|state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|state.S3~feeder_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|state.S3~q\);

-- Location: LCCOMB_X1_Y4_N2
\Unit1|Unit0|U0|state.S3a~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|state.S3a~feeder_combout\ = \Unit1|Unit0|U0|state.S3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|Unit0|U0|state.S3~q\,
	combout => \Unit1|Unit0|U0|state.S3a~feeder_combout\);

-- Location: FF_X1_Y4_N3
\Unit1|Unit0|U0|state.S3a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|state.S3a~feeder_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|state.S3a~q\);

-- Location: LCCOMB_X1_Y4_N30
\Unit1|Unit0|U0|state.S3b~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|state.S3b~feeder_combout\ = \Unit1|Unit0|U0|state.S3a~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Unit1|Unit0|U0|state.S3a~q\,
	combout => \Unit1|Unit0|U0|state.S3b~feeder_combout\);

-- Location: FF_X1_Y4_N31
\Unit1|Unit0|U0|state.S3b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|state.S3b~feeder_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|state.S3b~q\);

-- Location: LCCOMB_X1_Y4_N8
\Unit1|Unit0|U0|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector5~0_combout\ = (\Unit1|Unit0|U0|state.S3a~q\) # ((!\Unit1|Unit0|U0|state.S3b~q\ & (\Unit1|Unit0|U0|RFwe_ctrl~q\ & !\Unit1|Unit0|U0|state.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|state.S3b~q\,
	datab => \Unit1|Unit0|U0|state.S3a~q\,
	datac => \Unit1|Unit0|U0|RFwe_ctrl~q\,
	datad => \Unit1|Unit0|U0|state.S1~q\,
	combout => \Unit1|Unit0|U0|Selector5~0_combout\);

-- Location: FF_X1_Y4_N9
\Unit1|Unit0|U0|RFwe_ctrl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|Selector5~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|RFwe_ctrl~q\);

-- Location: LCCOMB_X1_Y4_N18
\Unit1|Unit0|U0|RFs_ctrl[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|RFs_ctrl[0]~0_combout\ = (\Unit1|Unit0|U0|RFs_ctrl\(0)) # (\Unit1|Unit0|U0|state.S3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|Unit0|U0|RFs_ctrl\(0),
	datad => \Unit1|Unit0|U0|state.S3~q\,
	combout => \Unit1|Unit0|U0|RFs_ctrl[0]~0_combout\);

-- Location: FF_X1_Y4_N19
\Unit1|Unit0|U0|RFs_ctrl[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|RFs_ctrl[0]~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|RFs_ctrl\(0));

-- Location: LCCOMB_X1_Y4_N14
\Unit1|Unit0|U0|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector9~0_combout\ = (\Unit1|Unit0|U0|state.S3~q\) # ((\Unit1|Unit0|U0|Ms_ctrl\(0) & !\Unit1|Unit0|U0|state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U0|state.S3~q\,
	datac => \Unit1|Unit0|U0|Ms_ctrl\(0),
	datad => \Unit1|Unit0|U0|state.S1~q\,
	combout => \Unit1|Unit0|U0|Selector9~0_combout\);

-- Location: FF_X1_Y4_N15
\Unit1|Unit0|U0|Ms_ctrl[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|Selector9~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|Ms_ctrl\(0));

-- Location: LCCOMB_X3_Y2_N4
\Unit1|Unit0|U1|tmp_PC[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U1|tmp_PC[0]~12_combout\ = \Unit1|Unit0|U1|tmp_PC\(0) $ (VCC)
-- \Unit1|Unit0|U1|tmp_PC[0]~13\ = CARRY(\Unit1|Unit0|U1|tmp_PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U1|tmp_PC\(0),
	datad => VCC,
	combout => \Unit1|Unit0|U1|tmp_PC[0]~12_combout\,
	cout => \Unit1|Unit0|U1|tmp_PC[0]~13\);

-- Location: LCCOMB_X1_Y4_N26
\Unit1|Unit0|U0|PCclr_ctrl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|PCclr_ctrl~0_combout\ = (\Unit1|Unit0|U0|PCclr_ctrl~q\) # (!\Unit1|Unit0|U0|state.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Unit1|Unit0|U0|PCclr_ctrl~q\,
	datad => \Unit1|Unit0|U0|state.S0~q\,
	combout => \Unit1|Unit0|U0|PCclr_ctrl~0_combout\);

-- Location: FF_X1_Y4_N27
\Unit1|Unit0|U0|PCclr_ctrl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|PCclr_ctrl~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|PCclr_ctrl~q\);

-- Location: CLKCTRL_G3
\Unit1|Unit0|U0|PCclr_ctrl~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Unit1|Unit0|U0|PCclr_ctrl~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Unit1|Unit0|U0|PCclr_ctrl~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y4_N20
\Unit1|Unit0|U0|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector2~0_combout\ = (\Unit1|Unit0|U0|state.S1a~q\) # ((!\Unit1|Unit0|U0|state.S1~q\ & (\Unit1|Unit0|U0|PCinc_ctrl~q\ & !\Unit1|Unit0|U0|state.S1b~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|state.S1a~q\,
	datab => \Unit1|Unit0|U0|state.S1~q\,
	datac => \Unit1|Unit0|U0|PCinc_ctrl~q\,
	datad => \Unit1|Unit0|U0|state.S1b~q\,
	combout => \Unit1|Unit0|U0|Selector2~0_combout\);

-- Location: FF_X1_Y4_N21
\Unit1|Unit0|U0|PCinc_ctrl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|Selector2~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|PCinc_ctrl~q\);

-- Location: FF_X3_Y2_N5
\Unit1|Unit0|U1|tmp_PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U1|tmp_PC[0]~12_combout\,
	clrn => \Unit1|Unit0|U0|PCclr_ctrl~clkctrl_outclk\,
	ena => \Unit1|Unit0|U0|PCinc_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U1|tmp_PC\(0));

-- Location: LCCOMB_X1_Y4_N28
\Unit1|Unit0|U0|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector8~0_combout\ = (!\Unit1|Unit0|U0|state.S1~q\ & ((\Unit1|Unit0|U0|state.S3~q\) # (\Unit1|Unit0|U0|Ms_ctrl\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U0|state.S3~q\,
	datac => \Unit1|Unit0|U0|Ms_ctrl\(1),
	datad => \Unit1|Unit0|U0|state.S1~q\,
	combout => \Unit1|Unit0|U0|Selector8~0_combout\);

-- Location: FF_X1_Y4_N29
\Unit1|Unit0|U0|Ms_ctrl[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|Selector8~0_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|Ms_ctrl\(1));

-- Location: LCCOMB_X4_Y2_N24
\Unit1|Unit0|U3|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U3|Mux15~0_combout\ = (!\Unit1|Unit0|U0|Ms_ctrl\(0) & (\Unit1|Unit0|U1|tmp_PC\(0) & !\Unit1|Unit0|U0|Ms_ctrl\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|Ms_ctrl\(0),
	datac => \Unit1|Unit0|U1|tmp_PC\(0),
	datad => \Unit1|Unit0|U0|Ms_ctrl\(1),
	combout => \Unit1|Unit0|U3|Mux15~0_combout\);

-- Location: LCCOMB_X3_Y2_N6
\Unit1|Unit0|U1|tmp_PC[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U1|tmp_PC[1]~14_combout\ = (\Unit1|Unit0|U1|tmp_PC\(1) & (!\Unit1|Unit0|U1|tmp_PC[0]~13\)) # (!\Unit1|Unit0|U1|tmp_PC\(1) & ((\Unit1|Unit0|U1|tmp_PC[0]~13\) # (GND)))
-- \Unit1|Unit0|U1|tmp_PC[1]~15\ = CARRY((!\Unit1|Unit0|U1|tmp_PC[0]~13\) # (!\Unit1|Unit0|U1|tmp_PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U1|tmp_PC\(1),
	datad => VCC,
	cin => \Unit1|Unit0|U1|tmp_PC[0]~13\,
	combout => \Unit1|Unit0|U1|tmp_PC[1]~14_combout\,
	cout => \Unit1|Unit0|U1|tmp_PC[1]~15\);

-- Location: FF_X3_Y2_N7
\Unit1|Unit0|U1|tmp_PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U1|tmp_PC[1]~14_combout\,
	clrn => \Unit1|Unit0|U0|PCclr_ctrl~clkctrl_outclk\,
	ena => \Unit1|Unit0|U0|PCinc_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U1|tmp_PC\(1));

-- Location: LCCOMB_X4_Y2_N26
\Unit1|Unit0|U3|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U3|Mux14~0_combout\ = (!\Unit1|Unit0|U0|Ms_ctrl\(0) & (\Unit1|Unit0|U1|tmp_PC\(1) & !\Unit1|Unit0|U0|Ms_ctrl\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|Ms_ctrl\(0),
	datac => \Unit1|Unit0|U1|tmp_PC\(1),
	datad => \Unit1|Unit0|U0|Ms_ctrl\(1),
	combout => \Unit1|Unit0|U3|Mux14~0_combout\);

-- Location: LCCOMB_X3_Y2_N8
\Unit1|Unit0|U1|tmp_PC[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U1|tmp_PC[2]~16_combout\ = (\Unit1|Unit0|U1|tmp_PC\(2) & (\Unit1|Unit0|U1|tmp_PC[1]~15\ $ (GND))) # (!\Unit1|Unit0|U1|tmp_PC\(2) & (!\Unit1|Unit0|U1|tmp_PC[1]~15\ & VCC))
-- \Unit1|Unit0|U1|tmp_PC[2]~17\ = CARRY((\Unit1|Unit0|U1|tmp_PC\(2) & !\Unit1|Unit0|U1|tmp_PC[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U1|tmp_PC\(2),
	datad => VCC,
	cin => \Unit1|Unit0|U1|tmp_PC[1]~15\,
	combout => \Unit1|Unit0|U1|tmp_PC[2]~16_combout\,
	cout => \Unit1|Unit0|U1|tmp_PC[2]~17\);

-- Location: FF_X3_Y2_N9
\Unit1|Unit0|U1|tmp_PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U1|tmp_PC[2]~16_combout\,
	clrn => \Unit1|Unit0|U0|PCclr_ctrl~clkctrl_outclk\,
	ena => \Unit1|Unit0|U0|PCinc_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U1|tmp_PC\(2));

-- Location: LCCOMB_X3_Y2_N0
\Unit1|Unit0|U3|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U3|Mux13~0_combout\ = (!\Unit1|Unit0|U0|Ms_ctrl\(0) & (\Unit1|Unit0|U1|tmp_PC\(2) & !\Unit1|Unit0|U0|Ms_ctrl\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U0|Ms_ctrl\(0),
	datac => \Unit1|Unit0|U1|tmp_PC\(2),
	datad => \Unit1|Unit0|U0|Ms_ctrl\(1),
	combout => \Unit1|Unit0|U3|Mux13~0_combout\);

-- Location: LCCOMB_X3_Y2_N10
\Unit1|Unit0|U1|tmp_PC[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U1|tmp_PC[3]~18_combout\ = (\Unit1|Unit0|U1|tmp_PC\(3) & (!\Unit1|Unit0|U1|tmp_PC[2]~17\)) # (!\Unit1|Unit0|U1|tmp_PC\(3) & ((\Unit1|Unit0|U1|tmp_PC[2]~17\) # (GND)))
-- \Unit1|Unit0|U1|tmp_PC[3]~19\ = CARRY((!\Unit1|Unit0|U1|tmp_PC[2]~17\) # (!\Unit1|Unit0|U1|tmp_PC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U1|tmp_PC\(3),
	datad => VCC,
	cin => \Unit1|Unit0|U1|tmp_PC[2]~17\,
	combout => \Unit1|Unit0|U1|tmp_PC[3]~18_combout\,
	cout => \Unit1|Unit0|U1|tmp_PC[3]~19\);

-- Location: FF_X3_Y2_N11
\Unit1|Unit0|U1|tmp_PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U1|tmp_PC[3]~18_combout\,
	clrn => \Unit1|Unit0|U0|PCclr_ctrl~clkctrl_outclk\,
	ena => \Unit1|Unit0|U0|PCinc_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U1|tmp_PC\(3));

-- Location: LCCOMB_X4_Y2_N28
\Unit1|Unit0|U3|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U3|Mux12~0_combout\ = (!\Unit1|Unit0|U0|Ms_ctrl\(1) & (!\Unit1|Unit0|U0|Ms_ctrl\(0) & \Unit1|Unit0|U1|tmp_PC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|Ms_ctrl\(1),
	datac => \Unit1|Unit0|U0|Ms_ctrl\(0),
	datad => \Unit1|Unit0|U1|tmp_PC\(3),
	combout => \Unit1|Unit0|U3|Mux12~0_combout\);

-- Location: LCCOMB_X3_Y2_N12
\Unit1|Unit0|U1|tmp_PC[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U1|tmp_PC[4]~20_combout\ = (\Unit1|Unit0|U1|tmp_PC\(4) & (\Unit1|Unit0|U1|tmp_PC[3]~19\ $ (GND))) # (!\Unit1|Unit0|U1|tmp_PC\(4) & (!\Unit1|Unit0|U1|tmp_PC[3]~19\ & VCC))
-- \Unit1|Unit0|U1|tmp_PC[4]~21\ = CARRY((\Unit1|Unit0|U1|tmp_PC\(4) & !\Unit1|Unit0|U1|tmp_PC[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U1|tmp_PC\(4),
	datad => VCC,
	cin => \Unit1|Unit0|U1|tmp_PC[3]~19\,
	combout => \Unit1|Unit0|U1|tmp_PC[4]~20_combout\,
	cout => \Unit1|Unit0|U1|tmp_PC[4]~21\);

-- Location: FF_X3_Y2_N13
\Unit1|Unit0|U1|tmp_PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U1|tmp_PC[4]~20_combout\,
	clrn => \Unit1|Unit0|U0|PCclr_ctrl~clkctrl_outclk\,
	ena => \Unit1|Unit0|U0|PCinc_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U1|tmp_PC\(4));

-- Location: LCCOMB_X3_Y2_N2
\Unit1|Unit0|U3|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U3|Mux11~0_combout\ = (!\Unit1|Unit0|U0|Ms_ctrl\(1) & (!\Unit1|Unit0|U0|Ms_ctrl\(0) & \Unit1|Unit0|U1|tmp_PC\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|Ms_ctrl\(1),
	datac => \Unit1|Unit0|U0|Ms_ctrl\(0),
	datad => \Unit1|Unit0|U1|tmp_PC\(4),
	combout => \Unit1|Unit0|U3|Mux11~0_combout\);

-- Location: LCCOMB_X3_Y2_N14
\Unit1|Unit0|U1|tmp_PC[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U1|tmp_PC[5]~22_combout\ = (\Unit1|Unit0|U1|tmp_PC\(5) & (!\Unit1|Unit0|U1|tmp_PC[4]~21\)) # (!\Unit1|Unit0|U1|tmp_PC\(5) & ((\Unit1|Unit0|U1|tmp_PC[4]~21\) # (GND)))
-- \Unit1|Unit0|U1|tmp_PC[5]~23\ = CARRY((!\Unit1|Unit0|U1|tmp_PC[4]~21\) # (!\Unit1|Unit0|U1|tmp_PC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U1|tmp_PC\(5),
	datad => VCC,
	cin => \Unit1|Unit0|U1|tmp_PC[4]~21\,
	combout => \Unit1|Unit0|U1|tmp_PC[5]~22_combout\,
	cout => \Unit1|Unit0|U1|tmp_PC[5]~23\);

-- Location: FF_X3_Y2_N15
\Unit1|Unit0|U1|tmp_PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U1|tmp_PC[5]~22_combout\,
	clrn => \Unit1|Unit0|U0|PCclr_ctrl~clkctrl_outclk\,
	ena => \Unit1|Unit0|U0|PCinc_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U1|tmp_PC\(5));

-- Location: LCCOMB_X4_Y2_N22
\Unit1|Unit0|U3|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U3|Mux10~0_combout\ = (!\Unit1|Unit0|U0|Ms_ctrl\(1) & (!\Unit1|Unit0|U0|Ms_ctrl\(0) & \Unit1|Unit0|U1|tmp_PC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|Ms_ctrl\(1),
	datac => \Unit1|Unit0|U0|Ms_ctrl\(0),
	datad => \Unit1|Unit0|U1|tmp_PC\(5),
	combout => \Unit1|Unit0|U3|Mux10~0_combout\);

-- Location: LCCOMB_X3_Y2_N16
\Unit1|Unit0|U1|tmp_PC[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U1|tmp_PC[6]~24_combout\ = (\Unit1|Unit0|U1|tmp_PC\(6) & (\Unit1|Unit0|U1|tmp_PC[5]~23\ $ (GND))) # (!\Unit1|Unit0|U1|tmp_PC\(6) & (!\Unit1|Unit0|U1|tmp_PC[5]~23\ & VCC))
-- \Unit1|Unit0|U1|tmp_PC[6]~25\ = CARRY((\Unit1|Unit0|U1|tmp_PC\(6) & !\Unit1|Unit0|U1|tmp_PC[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U1|tmp_PC\(6),
	datad => VCC,
	cin => \Unit1|Unit0|U1|tmp_PC[5]~23\,
	combout => \Unit1|Unit0|U1|tmp_PC[6]~24_combout\,
	cout => \Unit1|Unit0|U1|tmp_PC[6]~25\);

-- Location: FF_X3_Y2_N17
\Unit1|Unit0|U1|tmp_PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U1|tmp_PC[6]~24_combout\,
	clrn => \Unit1|Unit0|U0|PCclr_ctrl~clkctrl_outclk\,
	ena => \Unit1|Unit0|U0|PCinc_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U1|tmp_PC\(6));

-- Location: LCCOMB_X3_Y2_N28
\Unit1|Unit0|U3|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U3|Mux9~0_combout\ = (!\Unit1|Unit0|U0|Ms_ctrl\(1) & (!\Unit1|Unit0|U0|Ms_ctrl\(0) & \Unit1|Unit0|U1|tmp_PC\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|Ms_ctrl\(1),
	datac => \Unit1|Unit0|U0|Ms_ctrl\(0),
	datad => \Unit1|Unit0|U1|tmp_PC\(6),
	combout => \Unit1|Unit0|U3|Mux9~0_combout\);

-- Location: LCCOMB_X3_Y2_N18
\Unit1|Unit0|U1|tmp_PC[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U1|tmp_PC[7]~26_combout\ = (\Unit1|Unit0|U1|tmp_PC\(7) & (!\Unit1|Unit0|U1|tmp_PC[6]~25\)) # (!\Unit1|Unit0|U1|tmp_PC\(7) & ((\Unit1|Unit0|U1|tmp_PC[6]~25\) # (GND)))
-- \Unit1|Unit0|U1|tmp_PC[7]~27\ = CARRY((!\Unit1|Unit0|U1|tmp_PC[6]~25\) # (!\Unit1|Unit0|U1|tmp_PC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U1|tmp_PC\(7),
	datad => VCC,
	cin => \Unit1|Unit0|U1|tmp_PC[6]~25\,
	combout => \Unit1|Unit0|U1|tmp_PC[7]~26_combout\,
	cout => \Unit1|Unit0|U1|tmp_PC[7]~27\);

-- Location: FF_X3_Y2_N19
\Unit1|Unit0|U1|tmp_PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U1|tmp_PC[7]~26_combout\,
	clrn => \Unit1|Unit0|U0|PCclr_ctrl~clkctrl_outclk\,
	ena => \Unit1|Unit0|U0|PCinc_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U1|tmp_PC\(7));

-- Location: LCCOMB_X3_Y2_N30
\Unit1|Unit0|U3|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U3|Mux8~0_combout\ = (!\Unit1|Unit0|U0|Ms_ctrl\(1) & (!\Unit1|Unit0|U0|Ms_ctrl\(0) & \Unit1|Unit0|U1|tmp_PC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|Ms_ctrl\(1),
	datac => \Unit1|Unit0|U0|Ms_ctrl\(0),
	datad => \Unit1|Unit0|U1|tmp_PC\(7),
	combout => \Unit1|Unit0|U3|Mux8~0_combout\);

-- Location: LCCOMB_X3_Y2_N20
\Unit1|Unit0|U1|tmp_PC[8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U1|tmp_PC[8]~28_combout\ = (\Unit1|Unit0|U1|tmp_PC\(8) & (\Unit1|Unit0|U1|tmp_PC[7]~27\ $ (GND))) # (!\Unit1|Unit0|U1|tmp_PC\(8) & (!\Unit1|Unit0|U1|tmp_PC[7]~27\ & VCC))
-- \Unit1|Unit0|U1|tmp_PC[8]~29\ = CARRY((\Unit1|Unit0|U1|tmp_PC\(8) & !\Unit1|Unit0|U1|tmp_PC[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U1|tmp_PC\(8),
	datad => VCC,
	cin => \Unit1|Unit0|U1|tmp_PC[7]~27\,
	combout => \Unit1|Unit0|U1|tmp_PC[8]~28_combout\,
	cout => \Unit1|Unit0|U1|tmp_PC[8]~29\);

-- Location: FF_X3_Y2_N21
\Unit1|Unit0|U1|tmp_PC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U1|tmp_PC[8]~28_combout\,
	clrn => \Unit1|Unit0|U0|PCclr_ctrl~clkctrl_outclk\,
	ena => \Unit1|Unit0|U0|PCinc_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U1|tmp_PC\(8));

-- Location: LCCOMB_X4_Y2_N16
\Unit1|Unit0|U3|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U3|Mux7~0_combout\ = (!\Unit1|Unit0|U0|Ms_ctrl\(1) & (!\Unit1|Unit0|U0|Ms_ctrl\(0) & \Unit1|Unit0|U1|tmp_PC\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|Ms_ctrl\(1),
	datac => \Unit1|Unit0|U0|Ms_ctrl\(0),
	datad => \Unit1|Unit0|U1|tmp_PC\(8),
	combout => \Unit1|Unit0|U3|Mux7~0_combout\);

-- Location: LCCOMB_X3_Y2_N22
\Unit1|Unit0|U1|tmp_PC[9]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U1|tmp_PC[9]~30_combout\ = (\Unit1|Unit0|U1|tmp_PC\(9) & (!\Unit1|Unit0|U1|tmp_PC[8]~29\)) # (!\Unit1|Unit0|U1|tmp_PC\(9) & ((\Unit1|Unit0|U1|tmp_PC[8]~29\) # (GND)))
-- \Unit1|Unit0|U1|tmp_PC[9]~31\ = CARRY((!\Unit1|Unit0|U1|tmp_PC[8]~29\) # (!\Unit1|Unit0|U1|tmp_PC\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U1|tmp_PC\(9),
	datad => VCC,
	cin => \Unit1|Unit0|U1|tmp_PC[8]~29\,
	combout => \Unit1|Unit0|U1|tmp_PC[9]~30_combout\,
	cout => \Unit1|Unit0|U1|tmp_PC[9]~31\);

-- Location: FF_X3_Y2_N23
\Unit1|Unit0|U1|tmp_PC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U1|tmp_PC[9]~30_combout\,
	clrn => \Unit1|Unit0|U0|PCclr_ctrl~clkctrl_outclk\,
	ena => \Unit1|Unit0|U0|PCinc_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U1|tmp_PC\(9));

-- Location: LCCOMB_X4_Y2_N18
\Unit1|Unit0|U3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U3|Mux6~0_combout\ = (!\Unit1|Unit0|U0|Ms_ctrl\(1) & (!\Unit1|Unit0|U0|Ms_ctrl\(0) & \Unit1|Unit0|U1|tmp_PC\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|Ms_ctrl\(1),
	datac => \Unit1|Unit0|U0|Ms_ctrl\(0),
	datad => \Unit1|Unit0|U1|tmp_PC\(9),
	combout => \Unit1|Unit0|U3|Mux6~0_combout\);

-- Location: LCCOMB_X3_Y2_N24
\Unit1|Unit0|U1|tmp_PC[10]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U1|tmp_PC[10]~32_combout\ = (\Unit1|Unit0|U1|tmp_PC\(10) & (\Unit1|Unit0|U1|tmp_PC[9]~31\ $ (GND))) # (!\Unit1|Unit0|U1|tmp_PC\(10) & (!\Unit1|Unit0|U1|tmp_PC[9]~31\ & VCC))
-- \Unit1|Unit0|U1|tmp_PC[10]~33\ = CARRY((\Unit1|Unit0|U1|tmp_PC\(10) & !\Unit1|Unit0|U1|tmp_PC[9]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U1|tmp_PC\(10),
	datad => VCC,
	cin => \Unit1|Unit0|U1|tmp_PC[9]~31\,
	combout => \Unit1|Unit0|U1|tmp_PC[10]~32_combout\,
	cout => \Unit1|Unit0|U1|tmp_PC[10]~33\);

-- Location: FF_X3_Y2_N25
\Unit1|Unit0|U1|tmp_PC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U1|tmp_PC[10]~32_combout\,
	clrn => \Unit1|Unit0|U0|PCclr_ctrl~clkctrl_outclk\,
	ena => \Unit1|Unit0|U0|PCinc_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U1|tmp_PC\(10));

-- Location: LCCOMB_X4_Y2_N12
\Unit1|Unit0|U3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U3|Mux5~0_combout\ = (!\Unit1|Unit0|U0|Ms_ctrl\(1) & (!\Unit1|Unit0|U0|Ms_ctrl\(0) & \Unit1|Unit0|U1|tmp_PC\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|Ms_ctrl\(1),
	datac => \Unit1|Unit0|U0|Ms_ctrl\(0),
	datad => \Unit1|Unit0|U1|tmp_PC\(10),
	combout => \Unit1|Unit0|U3|Mux5~0_combout\);

-- Location: LCCOMB_X3_Y2_N26
\Unit1|Unit0|U1|tmp_PC[11]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U1|tmp_PC[11]~34_combout\ = \Unit1|Unit0|U1|tmp_PC\(11) $ (\Unit1|Unit0|U1|tmp_PC[10]~33\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U1|tmp_PC\(11),
	cin => \Unit1|Unit0|U1|tmp_PC[10]~33\,
	combout => \Unit1|Unit0|U1|tmp_PC[11]~34_combout\);

-- Location: FF_X3_Y2_N27
\Unit1|Unit0|U1|tmp_PC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U1|tmp_PC[11]~34_combout\,
	clrn => \Unit1|Unit0|U0|PCclr_ctrl~clkctrl_outclk\,
	ena => \Unit1|Unit0|U0|PCinc_ctrl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U1|tmp_PC\(11));

-- Location: LCCOMB_X4_Y2_N6
\Unit1|Unit0|U3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U3|Mux4~0_combout\ = (!\Unit1|Unit0|U0|Ms_ctrl\(0) & (\Unit1|Unit0|U1|tmp_PC\(11) & !\Unit1|Unit0|U0|Ms_ctrl\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|Ms_ctrl\(0),
	datac => \Unit1|Unit0|U1|tmp_PC\(11),
	datad => \Unit1|Unit0|U0|Ms_ctrl\(1),
	combout => \Unit1|Unit0|U3|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y4_N22
\Unit1|Unit0|U0|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector4~0_combout\ = (\Unit1|Unit0|U0|state.S1~q\) # ((!\Unit1|Unit0|U0|state.S3a~q\ & (!\Unit1|Unit0|U0|state.S1a~q\ & \Unit1|Unit0|U0|Mre_ctrl~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Unit1|Unit0|U0|state.S1~q\,
	datab => \Unit1|Unit0|U0|state.S3a~q\,
	datac => \Unit1|Unit0|U0|state.S1a~q\,
	datad => \Unit1|Unit0|U0|Mre_ctrl~q\,
	combout => \Unit1|Unit0|U0|Selector4~0_combout\);

-- Location: LCCOMB_X1_Y4_N16
\Unit1|Unit0|U0|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Unit1|Unit0|U0|Selector4~1_combout\ = (\Unit1|Unit0|U0|state.S3~q\) # (\Unit1|Unit0|U0|Selector4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Unit1|Unit0|U0|state.S3~q\,
	datad => \Unit1|Unit0|U0|Selector4~0_combout\,
	combout => \Unit1|Unit0|U0|Selector4~1_combout\);

-- Location: FF_X1_Y4_N17
\Unit1|Unit0|U0|Mre_ctrl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Unit1|Unit0|U0|Selector4~1_combout\,
	clrn => \ALT_INV_sys_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Unit1|Unit0|U0|Mre_ctrl~q\);

ww_sys_output(0) <= \sys_output[0]~output_o\;

ww_sys_output(1) <= \sys_output[1]~output_o\;

ww_sys_output(2) <= \sys_output[2]~output_o\;

ww_sys_output(3) <= \sys_output[3]~output_o\;

ww_sys_output(4) <= \sys_output[4]~output_o\;

ww_sys_output(5) <= \sys_output[5]~output_o\;

ww_sys_output(6) <= \sys_output[6]~output_o\;

ww_sys_output(7) <= \sys_output[7]~output_o\;

ww_sys_output(8) <= \sys_output[8]~output_o\;

ww_sys_output(9) <= \sys_output[9]~output_o\;

ww_sys_output(10) <= \sys_output[10]~output_o\;

ww_sys_output(11) <= \sys_output[11]~output_o\;

ww_sys_output(12) <= \sys_output[12]~output_o\;

ww_sys_output(13) <= \sys_output[13]~output_o\;

ww_sys_output(14) <= \sys_output[14]~output_o\;

ww_sys_output(15) <= \sys_output[15]~output_o\;

ww_D_rfout_bus(0) <= \D_rfout_bus[0]~output_o\;

ww_D_rfout_bus(1) <= \D_rfout_bus[1]~output_o\;

ww_D_rfout_bus(2) <= \D_rfout_bus[2]~output_o\;

ww_D_rfout_bus(3) <= \D_rfout_bus[3]~output_o\;

ww_D_rfout_bus(4) <= \D_rfout_bus[4]~output_o\;

ww_D_rfout_bus(5) <= \D_rfout_bus[5]~output_o\;

ww_D_rfout_bus(6) <= \D_rfout_bus[6]~output_o\;

ww_D_rfout_bus(7) <= \D_rfout_bus[7]~output_o\;

ww_D_rfout_bus(8) <= \D_rfout_bus[8]~output_o\;

ww_D_rfout_bus(9) <= \D_rfout_bus[9]~output_o\;

ww_D_rfout_bus(10) <= \D_rfout_bus[10]~output_o\;

ww_D_rfout_bus(11) <= \D_rfout_bus[11]~output_o\;

ww_D_rfout_bus(12) <= \D_rfout_bus[12]~output_o\;

ww_D_rfout_bus(13) <= \D_rfout_bus[13]~output_o\;

ww_D_rfout_bus(14) <= \D_rfout_bus[14]~output_o\;

ww_D_rfout_bus(15) <= \D_rfout_bus[15]~output_o\;

ww_D_RFwa(0) <= \D_RFwa[0]~output_o\;

ww_D_RFwa(1) <= \D_RFwa[1]~output_o\;

ww_D_RFwa(2) <= \D_RFwa[2]~output_o\;

ww_D_RFwa(3) <= \D_RFwa[3]~output_o\;

ww_D_RFr1a(0) <= \D_RFr1a[0]~output_o\;

ww_D_RFr1a(1) <= \D_RFr1a[1]~output_o\;

ww_D_RFr1a(2) <= \D_RFr1a[2]~output_o\;

ww_D_RFr1a(3) <= \D_RFr1a[3]~output_o\;

ww_D_RFr2a(0) <= \D_RFr2a[0]~output_o\;

ww_D_RFr2a(1) <= \D_RFr2a[1]~output_o\;

ww_D_RFr2a(2) <= \D_RFr2a[2]~output_o\;

ww_D_RFr2a(3) <= \D_RFr2a[3]~output_o\;

ww_D_RFwe <= \D_RFwe~output_o\;

ww_D_RFr1e <= \D_RFr1e~output_o\;

ww_D_RFr2e <= \D_RFr2e~output_o\;

ww_D_RFs(0) <= \D_RFs[0]~output_o\;

ww_D_RFs(1) <= \D_RFs[1]~output_o\;

ww_D_ALUs(0) <= \D_ALUs[0]~output_o\;

ww_D_ALUs(1) <= \D_ALUs[1]~output_o\;

ww_D_PCld <= \D_PCld~output_o\;

ww_D_jpz <= \D_jpz~output_o\;

ww_D_mdout_bus(0) <= \D_mdout_bus[0]~output_o\;

ww_D_mdout_bus(1) <= \D_mdout_bus[1]~output_o\;

ww_D_mdout_bus(2) <= \D_mdout_bus[2]~output_o\;

ww_D_mdout_bus(3) <= \D_mdout_bus[3]~output_o\;

ww_D_mdout_bus(4) <= \D_mdout_bus[4]~output_o\;

ww_D_mdout_bus(5) <= \D_mdout_bus[5]~output_o\;

ww_D_mdout_bus(6) <= \D_mdout_bus[6]~output_o\;

ww_D_mdout_bus(7) <= \D_mdout_bus[7]~output_o\;

ww_D_mdout_bus(8) <= \D_mdout_bus[8]~output_o\;

ww_D_mdout_bus(9) <= \D_mdout_bus[9]~output_o\;

ww_D_mdout_bus(10) <= \D_mdout_bus[10]~output_o\;

ww_D_mdout_bus(11) <= \D_mdout_bus[11]~output_o\;

ww_D_mdout_bus(12) <= \D_mdout_bus[12]~output_o\;

ww_D_mdout_bus(13) <= \D_mdout_bus[13]~output_o\;

ww_D_mdout_bus(14) <= \D_mdout_bus[14]~output_o\;

ww_D_mdout_bus(15) <= \D_mdout_bus[15]~output_o\;

ww_D_mdin_bus(0) <= \D_mdin_bus[0]~output_o\;

ww_D_mdin_bus(1) <= \D_mdin_bus[1]~output_o\;

ww_D_mdin_bus(2) <= \D_mdin_bus[2]~output_o\;

ww_D_mdin_bus(3) <= \D_mdin_bus[3]~output_o\;

ww_D_mdin_bus(4) <= \D_mdin_bus[4]~output_o\;

ww_D_mdin_bus(5) <= \D_mdin_bus[5]~output_o\;

ww_D_mdin_bus(6) <= \D_mdin_bus[6]~output_o\;

ww_D_mdin_bus(7) <= \D_mdin_bus[7]~output_o\;

ww_D_mdin_bus(8) <= \D_mdin_bus[8]~output_o\;

ww_D_mdin_bus(9) <= \D_mdin_bus[9]~output_o\;

ww_D_mdin_bus(10) <= \D_mdin_bus[10]~output_o\;

ww_D_mdin_bus(11) <= \D_mdin_bus[11]~output_o\;

ww_D_mdin_bus(12) <= \D_mdin_bus[12]~output_o\;

ww_D_mdin_bus(13) <= \D_mdin_bus[13]~output_o\;

ww_D_mdin_bus(14) <= \D_mdin_bus[14]~output_o\;

ww_D_mdin_bus(15) <= \D_mdin_bus[15]~output_o\;

ww_D_mem_addr(0) <= \D_mem_addr[0]~output_o\;

ww_D_mem_addr(1) <= \D_mem_addr[1]~output_o\;

ww_D_mem_addr(2) <= \D_mem_addr[2]~output_o\;

ww_D_mem_addr(3) <= \D_mem_addr[3]~output_o\;

ww_D_mem_addr(4) <= \D_mem_addr[4]~output_o\;

ww_D_mem_addr(5) <= \D_mem_addr[5]~output_o\;

ww_D_mem_addr(6) <= \D_mem_addr[6]~output_o\;

ww_D_mem_addr(7) <= \D_mem_addr[7]~output_o\;

ww_D_mem_addr(8) <= \D_mem_addr[8]~output_o\;

ww_D_mem_addr(9) <= \D_mem_addr[9]~output_o\;

ww_D_mem_addr(10) <= \D_mem_addr[10]~output_o\;

ww_D_mem_addr(11) <= \D_mem_addr[11]~output_o\;

ww_D_Mre <= \D_Mre~output_o\;

ww_D_Mwe <= \D_Mwe~output_o\;
END structure;


