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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/22/2023 00:09:54"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          eq3
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY eq3_vhd_vec_tst IS
END eq3_vhd_vec_tst;
ARCHITECTURE eq3_arch OF eq3_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL e : STD_LOGIC;
SIGNAL q : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT eq3
	PORT (
	a : IN STD_LOGIC;
	b : IN STD_LOGIC;
	e : IN STD_LOGIC;
	q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : eq3
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	e => e,
	q => q
	);

-- e
t_prcs_e: PROCESS
BEGIN
LOOP
	e <= '0';
	WAIT FOR 4000000 ps;
	e <= '1';
	WAIT FOR 4000000 ps;
	IF (NOW >= 8000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_e;

-- a
t_prcs_a: PROCESS
BEGIN
LOOP
	a <= '0';
	WAIT FOR 2000000 ps;
	a <= '1';
	WAIT FOR 2000000 ps;
	IF (NOW >= 8000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_a;

-- b
t_prcs_b: PROCESS
BEGIN
LOOP
	b <= '0';
	WAIT FOR 1000000 ps;
	b <= '1';
	WAIT FOR 1000000 ps;
	IF (NOW >= 8000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_b;
END eq3_arch;
