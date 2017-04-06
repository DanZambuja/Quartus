-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"

-- DATE "02/01/2017 11:59:10"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SomadorBCD IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	vem_um : IN std_logic;
	vai_um : OUT std_logic;
	S : OUT std_logic_vector(3 DOWNTO 0);
	s_cout1 : OUT std_logic;
	s_soma1 : OUT std_logic_vector(3 DOWNTO 0)
	);
END SomadorBCD;

-- Design Ports Information
-- vai_um	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_cout1	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_soma1[0]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_soma1[1]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_soma1[2]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_soma1[3]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vem_um	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SomadorBCD IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_vem_um : std_logic;
SIGNAL ww_vai_um : std_logic;
SIGNAL ww_S : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_s_cout1 : std_logic;
SIGNAL ww_s_soma1 : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \vem_um~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \s1|_~13\ : std_logic;
SIGNAL \s1|_~14\ : std_logic;
SIGNAL \s1|_~7\ : std_logic;
SIGNAL \s1|_~8\ : std_logic;
SIGNAL \s1|_~10\ : std_logic;
SIGNAL \s1|_~11\ : std_logic;
SIGNAL \s1|_~4\ : std_logic;
SIGNAL \s1|_~5\ : std_logic;
SIGNAL \s1|Cout~sumout\ : std_logic;
SIGNAL \s_vai_um~0_combout\ : std_logic;
SIGNAL \s2|_~1\ : std_logic;
SIGNAL \s2|_~2\ : std_logic;
SIGNAL \s2|_~4\ : std_logic;
SIGNAL \s2|_~5\ : std_logic;
SIGNAL \s2|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \s1|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_vem_um~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \s1|ALT_INV_S\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \s1|ALT_INV_Cout~sumout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_vem_um <= vem_um;
vai_um <= ww_vai_um;
S <= ww_S;
s_cout1 <= ww_s_cout1;
s_soma1 <= ww_s_soma1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_vem_um~input_o\ <= NOT \vem_um~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\s1|ALT_INV_S\(2) <= NOT \s1|S\(2);
\s1|ALT_INV_S\(1) <= NOT \s1|S\(1);
\s1|ALT_INV_S\(3) <= NOT \s1|S\(3);
\s1|ALT_INV_Cout~sumout\ <= NOT \s1|Cout~sumout\;

-- Location: IOOBUF_X0_Y18_N45
\vai_um~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s_vai_um~0_combout\,
	devoe => ww_devoe,
	o => ww_vai_um);

-- Location: IOOBUF_X0_Y19_N22
\S[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s1|S\(0),
	devoe => ww_devoe,
	o => ww_S(0));

-- Location: IOOBUF_X0_Y21_N39
\S[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s2|S\(1),
	devoe => ww_devoe,
	o => ww_S(1));

-- Location: IOOBUF_X0_Y21_N5
\S[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s2|S\(2),
	devoe => ww_devoe,
	o => ww_S(2));

-- Location: IOOBUF_X10_Y0_N93
\S[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s2|S\(3),
	devoe => ww_devoe,
	o => ww_S(3));

-- Location: IOOBUF_X0_Y21_N56
\s_cout1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s1|Cout~sumout\,
	devoe => ww_devoe,
	o => ww_s_cout1);

-- Location: IOOBUF_X0_Y19_N5
\s_soma1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s1|S\(0),
	devoe => ww_devoe,
	o => ww_s_soma1(0));

-- Location: IOOBUF_X0_Y21_N22
\s_soma1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s1|S\(1),
	devoe => ww_devoe,
	o => ww_s_soma1(1));

-- Location: IOOBUF_X0_Y18_N96
\s_soma1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s1|S\(2),
	devoe => ww_devoe,
	o => ww_s_soma1(2));

-- Location: IOOBUF_X10_Y0_N76
\s_soma1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s1|S\(3),
	devoe => ww_devoe,
	o => ww_s_soma1(3));

-- Location: IOIBUF_X0_Y18_N78
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X0_Y18_N61
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X0_Y19_N38
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X0_Y20_N4
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X0_Y20_N38
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X0_Y20_N21
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X0_Y19_N55
\vem_um~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vem_um,
	o => \vem_um~input_o\);

-- Location: IOIBUF_X10_Y0_N58
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X0_Y20_N55
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LABCELL_X1_Y19_N30
\s1|S[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \s1|S\(0) = SUM(( !\vem_um~input_o\ $ (!\A[0]~input_o\ $ (\B[0]~input_o\)) ) + ( !VCC ) + ( !VCC ))
-- \s1|_~13\ = CARRY(( !\vem_um~input_o\ $ (!\A[0]~input_o\ $ (\B[0]~input_o\)) ) + ( !VCC ) + ( !VCC ))
-- \s1|_~14\ = SHARE((!\vem_um~input_o\ & (\A[0]~input_o\ & \B[0]~input_o\)) # (\vem_um~input_o\ & ((\B[0]~input_o\) # (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_vem_um~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	cin => GND,
	sharein => GND,
	sumout => \s1|S\(0),
	cout => \s1|_~13\,
	shareout => \s1|_~14\);

-- Location: LABCELL_X1_Y19_N33
\s1|S[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \s1|S\(1) = SUM(( !\A[1]~input_o\ $ (!\B[1]~input_o\) ) + ( \s1|_~14\ ) + ( \s1|_~13\ ))
-- \s1|_~7\ = CARRY(( !\A[1]~input_o\ $ (!\B[1]~input_o\) ) + ( \s1|_~14\ ) + ( \s1|_~13\ ))
-- \s1|_~8\ = SHARE((\A[1]~input_o\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	cin => \s1|_~13\,
	sharein => \s1|_~14\,
	sumout => \s1|S\(1),
	cout => \s1|_~7\,
	shareout => \s1|_~8\);

-- Location: LABCELL_X1_Y19_N36
\s1|S[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \s1|S\(2) = SUM(( !\A[2]~input_o\ $ (!\B[2]~input_o\) ) + ( \s1|_~8\ ) + ( \s1|_~7\ ))
-- \s1|_~10\ = CARRY(( !\A[2]~input_o\ $ (!\B[2]~input_o\) ) + ( \s1|_~8\ ) + ( \s1|_~7\ ))
-- \s1|_~11\ = SHARE((\A[2]~input_o\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	cin => \s1|_~7\,
	sharein => \s1|_~8\,
	sumout => \s1|S\(2),
	cout => \s1|_~10\,
	shareout => \s1|_~11\);

-- Location: LABCELL_X1_Y19_N39
\s1|S[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \s1|S\(3) = SUM(( !\B[3]~input_o\ $ (!\A[3]~input_o\) ) + ( \s1|_~11\ ) + ( \s1|_~10\ ))
-- \s1|_~4\ = CARRY(( !\B[3]~input_o\ $ (!\A[3]~input_o\) ) + ( \s1|_~11\ ) + ( \s1|_~10\ ))
-- \s1|_~5\ = SHARE((\B[3]~input_o\ & \A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	cin => \s1|_~10\,
	sharein => \s1|_~11\,
	sumout => \s1|S\(3),
	cout => \s1|_~4\,
	shareout => \s1|_~5\);

-- Location: LABCELL_X1_Y19_N42
\s1|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \s1|Cout~sumout\ = SUM(( GND ) + ( \s1|_~5\ ) + ( \s1|_~4\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \s1|_~4\,
	sharein => \s1|_~5\,
	sumout => \s1|Cout~sumout\);

-- Location: LABCELL_X1_Y19_N12
\s_vai_um~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \s_vai_um~0_combout\ = ( \s1|S\(2) & ( (\s1|S\(3)) # (\s1|Cout~sumout\) ) ) # ( !\s1|S\(2) & ( ((\s1|S\(1) & \s1|S\(3))) # (\s1|Cout~sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111111001100111111111100110011001111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \s1|ALT_INV_Cout~sumout\,
	datac => \s1|ALT_INV_S\(1),
	datad => \s1|ALT_INV_S\(3),
	datae => \s1|ALT_INV_S\(2),
	combout => \s_vai_um~0_combout\);

-- Location: LABCELL_X1_Y19_N0
\s2|S[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \s2|S\(1) = SUM(( (!\s1|S\(1) & (((\s1|S\(3) & \s1|S\(2))) # (\s1|Cout~sumout\))) # (\s1|S\(1) & (!\s1|S\(3) & ((!\s1|Cout~sumout\)))) ) + ( !VCC ) + ( !VCC ))
-- \s2|_~1\ = CARRY(( (!\s1|S\(1) & (((\s1|S\(3) & \s1|S\(2))) # (\s1|Cout~sumout\))) # (\s1|S\(1) & (!\s1|S\(3) & ((!\s1|Cout~sumout\)))) ) + ( !VCC ) + ( !VCC ))
-- \s2|_~2\ = SHARE((\s1|S\(1) & ((\s1|Cout~sumout\) # (\s1|S\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010101010100000000000000000100011010101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \s1|ALT_INV_S\(1),
	datab => \s1|ALT_INV_S\(3),
	datac => \s1|ALT_INV_S\(2),
	datad => \s1|ALT_INV_Cout~sumout\,
	cin => GND,
	sharein => GND,
	sumout => \s2|S\(1),
	cout => \s2|_~1\,
	shareout => \s2|_~2\);

-- Location: LABCELL_X1_Y19_N3
\s2|S[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \s2|S\(2) = SUM(( (!\s1|S\(3) & ((!\s1|Cout~sumout\ $ (!\s1|S\(2))))) # (\s1|S\(3) & (!\s1|S\(2) & ((\s1|Cout~sumout\) # (\s1|S\(1))))) ) + ( \s2|_~2\ ) + ( \s2|_~1\ ))
-- \s2|_~4\ = CARRY(( (!\s1|S\(3) & ((!\s1|Cout~sumout\ $ (!\s1|S\(2))))) # (\s1|S\(3) & (!\s1|S\(2) & ((\s1|Cout~sumout\) # (\s1|S\(1))))) ) + ( \s2|_~2\ ) + ( \s2|_~1\ ))
-- \s2|_~5\ = SHARE((\s1|S\(2) & ((\s1|Cout~sumout\) # (\s1|S\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011111100000000000000000001111111000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \s1|ALT_INV_S\(1),
	datab => \s1|ALT_INV_S\(3),
	datac => \s1|ALT_INV_Cout~sumout\,
	datad => \s1|ALT_INV_S\(2),
	cin => \s2|_~1\,
	sharein => \s2|_~2\,
	sumout => \s2|S\(2),
	cout => \s2|_~4\,
	shareout => \s2|_~5\);

-- Location: LABCELL_X1_Y19_N6
\s2|S[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \s2|S\(3) = SUM(( \s1|S\(3) ) + ( \s2|_~5\ ) + ( \s2|_~4\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \s1|ALT_INV_S\(3),
	cin => \s2|_~4\,
	sharein => \s2|_~5\,
	sumout => \s2|S\(3));

-- Location: LABCELL_X29_Y29_N3
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


