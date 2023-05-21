-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.1 Build 917 02/14/2023 SC Lite Edition"

-- DATE "05/22/2023 00:10:00"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	eq3 IS
    PORT (
	a : IN std_logic;
	b : IN std_logic;
	e : IN std_logic;
	q : OUT std_logic_vector(3 DOWNTO 0)
	);
END eq3;

-- Design Ports Information
-- q[0]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF eq3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_q : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \e~input_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \q~0_combout\ : std_logic;
SIGNAL \q~1_combout\ : std_logic;
SIGNAL \q~2_combout\ : std_logic;
SIGNAL \q~3_combout\ : std_logic;
SIGNAL \ALT_INV_e~input_o\ : std_logic;
SIGNAL \ALT_INV_a~input_o\ : std_logic;
SIGNAL \ALT_INV_b~input_o\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_e <= e;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_e~input_o\ <= NOT \e~input_o\;
\ALT_INV_a~input_o\ <= NOT \a~input_o\;
\ALT_INV_b~input_o\ <= NOT \b~input_o\;

-- Location: IOOBUF_X89_Y37_N22
\q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q~0_combout\,
	devoe => ww_devoe,
	o => ww_q(0));

-- Location: IOOBUF_X89_Y37_N5
\q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q~1_combout\,
	devoe => ww_devoe,
	o => ww_q(1));

-- Location: IOOBUF_X89_Y35_N79
\q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q~2_combout\,
	devoe => ww_devoe,
	o => ww_q(2));

-- Location: IOOBUF_X89_Y37_N39
\q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q~3_combout\,
	devoe => ww_devoe,
	o => ww_q(3));

-- Location: IOIBUF_X89_Y38_N21
\a~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: IOIBUF_X89_Y37_N55
\e~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e,
	o => \e~input_o\);

-- Location: IOIBUF_X89_Y38_N55
\b~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: LABCELL_X88_Y37_N0
\q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~0_combout\ = ( \e~input_o\ & ( \b~input_o\ & ( \a~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a~input_o\,
	datae => \ALT_INV_e~input_o\,
	dataf => \ALT_INV_b~input_o\,
	combout => \q~0_combout\);

-- Location: LABCELL_X88_Y37_N9
\q~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~1_combout\ = ( \e~input_o\ & ( !\b~input_o\ & ( \a~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a~input_o\,
	datae => \ALT_INV_e~input_o\,
	dataf => \ALT_INV_b~input_o\,
	combout => \q~1_combout\);

-- Location: LABCELL_X88_Y37_N12
\q~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~2_combout\ = ( \e~input_o\ & ( \b~input_o\ & ( !\a~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a~input_o\,
	datae => \ALT_INV_e~input_o\,
	dataf => \ALT_INV_b~input_o\,
	combout => \q~2_combout\);

-- Location: LABCELL_X88_Y37_N21
\q~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \q~3_combout\ = ( \e~input_o\ & ( !\b~input_o\ & ( !\a~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_a~input_o\,
	datae => \ALT_INV_e~input_o\,
	dataf => \ALT_INV_b~input_o\,
	combout => \q~3_combout\);

-- Location: LABCELL_X83_Y73_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


