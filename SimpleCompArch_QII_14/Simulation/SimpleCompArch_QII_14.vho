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

-- DATE "03/14/2016 14:34:05"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Cache IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	Mre : IN std_logic;
	Mwe : IN std_logic;
	address : IN std_logic_vector(11 DOWNTO 0);
	data_in : IN std_logic_vector(15 DOWNTO 0);
	data_out : OUT std_logic_vector(15 DOWNTO 0);
	delayReq : OUT std_logic
	);
END Cache;

-- Design Ports Information
-- reset	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_out[0]	=>  Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[1]	=>  Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[2]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[3]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[4]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[5]	=>  Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[6]	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[7]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[8]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[9]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[10]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[11]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[12]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[13]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[14]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_out[15]	=>  Location: PIN_N8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- delayReq	=>  Location: PIN_H7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- data_in[0]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_F5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[8]	=>  Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[9]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[10]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[11]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[12]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[13]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[14]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[15]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- address[5]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- address[6]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- address[7]	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- address[8]	=>  Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- address[9]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- address[10]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- address[11]	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- address[2]	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- address[3]	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- address[4]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- address[0]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- address[1]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Mre	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Mwe	=>  Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Cache IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_Mre : std_logic;
SIGNAL ww_Mwe : std_logic;
SIGNAL ww_address : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_data_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_data_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_delayReq : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \data_in[8]~input_o\ : std_logic;
SIGNAL \data_in[9]~input_o\ : std_logic;
SIGNAL \data_in[10]~input_o\ : std_logic;
SIGNAL \data_in[11]~input_o\ : std_logic;
SIGNAL \data_in[12]~input_o\ : std_logic;
SIGNAL \data_in[13]~input_o\ : std_logic;
SIGNAL \data_in[14]~input_o\ : std_logic;
SIGNAL \data_in[15]~input_o\ : std_logic;
SIGNAL \address[5]~input_o\ : std_logic;
SIGNAL \address[6]~input_o\ : std_logic;
SIGNAL \address[7]~input_o\ : std_logic;
SIGNAL \address[8]~input_o\ : std_logic;
SIGNAL \address[9]~input_o\ : std_logic;
SIGNAL \address[10]~input_o\ : std_logic;
SIGNAL \address[11]~input_o\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \address[3]~input_o\ : std_logic;
SIGNAL \address[4]~input_o\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \Mre~input_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \Mwe~input_o\ : std_logic;
SIGNAL \data_out[0]~output_o\ : std_logic;
SIGNAL \data_out[1]~output_o\ : std_logic;
SIGNAL \data_out[2]~output_o\ : std_logic;
SIGNAL \data_out[3]~output_o\ : std_logic;
SIGNAL \data_out[4]~output_o\ : std_logic;
SIGNAL \data_out[5]~output_o\ : std_logic;
SIGNAL \data_out[6]~output_o\ : std_logic;
SIGNAL \data_out[7]~output_o\ : std_logic;
SIGNAL \data_out[8]~output_o\ : std_logic;
SIGNAL \data_out[9]~output_o\ : std_logic;
SIGNAL \data_out[10]~output_o\ : std_logic;
SIGNAL \data_out[11]~output_o\ : std_logic;
SIGNAL \data_out[12]~output_o\ : std_logic;
SIGNAL \data_out[13]~output_o\ : std_logic;
SIGNAL \data_out[14]~output_o\ : std_logic;
SIGNAL \data_out[15]~output_o\ : std_logic;
SIGNAL \delayReq~output_o\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_Mre <= Mre;
ww_Mwe <= Mwe;
ww_address <= address;
ww_data_in <= data_in;
data_out <= ww_data_out;
delayReq <= ww_delayReq;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y49_N9
\data_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_out[0]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\data_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_out[1]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\data_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_out[2]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\data_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_out[3]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\data_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_out[4]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\data_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_out[5]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\data_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_out[6]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\data_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_out[7]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\data_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_out[8]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\data_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_out[9]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\data_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_out[10]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\data_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_out[11]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\data_out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_out[12]~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\data_out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_out[13]~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\data_out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_out[14]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\data_out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_out[15]~output_o\);

-- Location: IOOBUF_X0_Y68_N16
\delayReq~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \delayReq~output_o\);

-- Location: IOIBUF_X0_Y69_N8
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X0_Y68_N1
\data_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: IOIBUF_X0_Y68_N8
\data_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: IOIBUF_X0_Y67_N15
\data_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: IOIBUF_X0_Y67_N22
\data_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: IOIBUF_X0_Y66_N15
\data_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: IOIBUF_X0_Y66_N22
\data_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: IOIBUF_X0_Y65_N15
\data_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: IOIBUF_X0_Y64_N1
\data_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: IOIBUF_X0_Y63_N15
\data_in[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(8),
	o => \data_in[8]~input_o\);

-- Location: IOIBUF_X0_Y63_N22
\data_in[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(9),
	o => \data_in[9]~input_o\);

-- Location: IOIBUF_X0_Y62_N15
\data_in[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(10),
	o => \data_in[10]~input_o\);

-- Location: IOIBUF_X0_Y62_N22
\data_in[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(11),
	o => \data_in[11]~input_o\);

-- Location: IOIBUF_X0_Y61_N22
\data_in[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(12),
	o => \data_in[12]~input_o\);

-- Location: IOIBUF_X0_Y60_N15
\data_in[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(13),
	o => \data_in[13]~input_o\);

-- Location: IOIBUF_X0_Y59_N15
\data_in[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(14),
	o => \data_in[14]~input_o\);

-- Location: IOIBUF_X0_Y59_N22
\data_in[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(15),
	o => \data_in[15]~input_o\);

-- Location: IOIBUF_X0_Y57_N15
\address[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(5),
	o => \address[5]~input_o\);

-- Location: IOIBUF_X0_Y57_N22
\address[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(6),
	o => \address[6]~input_o\);

-- Location: IOIBUF_X0_Y55_N8
\address[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(7),
	o => \address[7]~input_o\);

-- Location: IOIBUF_X0_Y55_N15
\address[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(8),
	o => \address[8]~input_o\);

-- Location: IOIBUF_X0_Y55_N22
\address[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(9),
	o => \address[9]~input_o\);

-- Location: IOIBUF_X0_Y54_N8
\address[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(10),
	o => \address[10]~input_o\);

-- Location: IOIBUF_X0_Y53_N1
\address[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(11),
	o => \address[11]~input_o\);

-- Location: IOIBUF_X0_Y53_N8
\address[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

-- Location: IOIBUF_X0_Y52_N1
\address[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(3),
	o => \address[3]~input_o\);

-- Location: IOIBUF_X0_Y52_N15
\address[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(4),
	o => \address[4]~input_o\);

-- Location: IOIBUF_X0_Y52_N22
\address[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

-- Location: IOIBUF_X0_Y51_N15
\address[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

-- Location: IOIBUF_X0_Y50_N15
\Mre~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mre,
	o => \Mre~input_o\);

-- Location: IOIBUF_X0_Y50_N22
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: IOIBUF_X0_Y49_N1
\Mwe~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mwe,
	o => \Mwe~input_o\);

ww_data_out(0) <= \data_out[0]~output_o\;

ww_data_out(1) <= \data_out[1]~output_o\;

ww_data_out(2) <= \data_out[2]~output_o\;

ww_data_out(3) <= \data_out[3]~output_o\;

ww_data_out(4) <= \data_out[4]~output_o\;

ww_data_out(5) <= \data_out[5]~output_o\;

ww_data_out(6) <= \data_out[6]~output_o\;

ww_data_out(7) <= \data_out[7]~output_o\;

ww_data_out(8) <= \data_out[8]~output_o\;

ww_data_out(9) <= \data_out[9]~output_o\;

ww_data_out(10) <= \data_out[10]~output_o\;

ww_data_out(11) <= \data_out[11]~output_o\;

ww_data_out(12) <= \data_out[12]~output_o\;

ww_data_out(13) <= \data_out[13]~output_o\;

ww_data_out(14) <= \data_out[14]~output_o\;

ww_data_out(15) <= \data_out[15]~output_o\;

ww_delayReq <= \delayReq~output_o\;
END structure;


