-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "01/23/2017 10:37:16"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ComponenteAssociado
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ComponenteAssociado_vhd_vec_tst IS
END ComponenteAssociado_vhd_vec_tst;
ARCHITECTURE ComponenteAssociado_arch OF ComponenteAssociado_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK : STD_LOGIC;
SIGNAL D : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ESTADO : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL liga : STD_LOGIC;
SIGNAL Q : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL RCO : STD_LOGIC;
SIGNAL RESET : STD_LOGIC;
SIGNAL sinal : STD_LOGIC;
COMPONENT ComponenteAssociado
	PORT (
	CLOCK : IN STD_LOGIC;
	D : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	ESTADO : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	liga : IN STD_LOGIC;
	Q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	RCO : OUT STD_LOGIC;
	RESET : IN STD_LOGIC;
	sinal : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ComponenteAssociado
	PORT MAP (
-- list connections between master ports and signals
	CLOCK => CLOCK,
	D => D,
	ESTADO => ESTADO,
	liga => liga,
	Q => Q,
	RCO => RCO,
	RESET => RESET,
	sinal => sinal
	);

-- CLOCK
t_prcs_CLOCK: PROCESS
BEGIN
LOOP
	CLOCK <= '0';
	WAIT FOR 20000 ps;
	CLOCK <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLOCK;

-- RESET
t_prcs_RESET: PROCESS
BEGIN
	RESET <= '0';
	WAIT FOR 10000 ps;
	RESET <= '1';
	WAIT FOR 40000 ps;
	RESET <= '0';
WAIT;
END PROCESS t_prcs_RESET;

-- liga
t_prcs_liga: PROCESS
BEGIN
	liga <= '0';
	WAIT FOR 70000 ps;
	liga <= '1';
	WAIT FOR 20000 ps;
	liga <= '0';
WAIT;
END PROCESS t_prcs_liga;

-- sinal
t_prcs_sinal: PROCESS
BEGIN
	sinal <= '0';
	WAIT FOR 110000 ps;
	sinal <= '1';
	WAIT FOR 20000 ps;
	sinal <= '0';
	WAIT FOR 40000 ps;
	sinal <= '1';
	WAIT FOR 180000 ps;
	sinal <= '0';
WAIT;
END PROCESS t_prcs_sinal;
-- D[3]
t_prcs_D_3: PROCESS
BEGIN
	D(3) <= '0';
WAIT;
END PROCESS t_prcs_D_3;
-- D[2]
t_prcs_D_2: PROCESS
BEGIN
	D(2) <= '0';
WAIT;
END PROCESS t_prcs_D_2;
-- D[1]
t_prcs_D_1: PROCESS
BEGIN
	D(1) <= '0';
WAIT;
END PROCESS t_prcs_D_1;
-- D[0]
t_prcs_D_0: PROCESS
BEGIN
	D(0) <= '0';
WAIT;
END PROCESS t_prcs_D_0;
END ComponenteAssociado_arch;
