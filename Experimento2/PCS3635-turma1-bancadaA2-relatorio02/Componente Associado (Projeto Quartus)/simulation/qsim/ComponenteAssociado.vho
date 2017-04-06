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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "01/23/2017 10:37:17"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

ENTITY 	ComponenteAssociado IS
    PORT (
	liga : IN std_logic;
	sinal : IN std_logic;
	RESET : IN std_logic;
	CLOCK : IN std_logic;
	D : IN IEEE.STD_LOGIC_ARITH.unsigned(3 DOWNTO 0);
	RCO : OUT std_logic;
	Q : OUT IEEE.STD_LOGIC_ARITH.unsigned(3 DOWNTO 0);
	ESTADO : OUT std_logic_vector(3 DOWNTO 0)
	);
END ComponenteAssociado;

-- Design Ports Information
-- RCO	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[0]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ESTADO[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ESTADO[1]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ESTADO[2]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ESTADO[3]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinal	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- liga	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ComponenteAssociado IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_liga : std_logic;
SIGNAL ww_sinal : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_D : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_RCO : std_logic;
SIGNAL ww_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ESTADO : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \CLOCK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \liga~input_o\ : std_logic;
SIGNAL \sinal~input_o\ : std_logic;
SIGNAL \U1|Selector6~0_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \U1|Ereg.LIMPA~q\ : std_logic;
SIGNAL \U1|Selector0~0_combout\ : std_logic;
SIGNAL \U1|Ereg.INICIAL~q\ : std_logic;
SIGNAL \U1|Eprox.CONTA~0_combout\ : std_logic;
SIGNAL \U1|Ereg.CONTA~q\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \U2|IQ~0_combout\ : std_logic;
SIGNAL \D[3]~input_o\ : std_logic;
SIGNAL \U2|IQ~3_combout\ : std_logic;
SIGNAL \D[2]~input_o\ : std_logic;
SIGNAL \U2|IQ~2_combout\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \U2|IQ~1_combout\ : std_logic;
SIGNAL \U2|RCO~combout\ : std_logic;
SIGNAL \U1|Selector1~0_combout\ : std_logic;
SIGNAL \U1|Ereg.LIGADO~q\ : std_logic;
SIGNAL \U1|Selector3~0_combout\ : std_logic;
SIGNAL \U1|Ereg.ESPERA~q\ : std_logic;
SIGNAL \U1|Selector6~1_combout\ : std_logic;
SIGNAL \U1|Selector2~0_combout\ : std_logic;
SIGNAL \U1|Selector5~0_combout\ : std_logic;
SIGNAL \U2|IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|estado\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|ALT_INV_Selector6~1_combout\ : std_logic;
SIGNAL \U2|ALT_INV_IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|ALT_INV_Ereg.CONTA~q\ : std_logic;
SIGNAL \U1|ALT_INV_Ereg.LIMPA~q\ : std_logic;
SIGNAL \U1|ALT_INV_Ereg.INICIAL~q\ : std_logic;
SIGNAL \U1|ALT_INV_Ereg.LIGADO~q\ : std_logic;
SIGNAL \U1|ALT_INV_Ereg.ESPERA~q\ : std_logic;
SIGNAL \U1|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \U1|ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \U1|ALT_INV_estado\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_D[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_D[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_RESET~input_o\ : std_logic;
SIGNAL \ALT_INV_sinal~input_o\ : std_logic;
SIGNAL \ALT_INV_liga~input_o\ : std_logic;

BEGIN

ww_liga <= liga;
ww_sinal <= sinal;
ww_RESET <= RESET;
ww_CLOCK <= CLOCK;
ww_D <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(D);
RCO <= ww_RCO;
Q <= IEEE.STD_LOGIC_ARITH.UNSIGNED(ww_Q);
ESTADO <= ww_ESTADO;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\U1|ALT_INV_Selector6~1_combout\ <= NOT \U1|Selector6~1_combout\;
\U2|ALT_INV_IQ\(0) <= NOT \U2|IQ\(0);
\U2|ALT_INV_IQ\(1) <= NOT \U2|IQ\(1);
\U2|ALT_INV_IQ\(2) <= NOT \U2|IQ\(2);
\U2|ALT_INV_IQ\(3) <= NOT \U2|IQ\(3);
\U1|ALT_INV_Ereg.CONTA~q\ <= NOT \U1|Ereg.CONTA~q\;
\U1|ALT_INV_Ereg.LIMPA~q\ <= NOT \U1|Ereg.LIMPA~q\;
\U1|ALT_INV_Ereg.INICIAL~q\ <= NOT \U1|Ereg.INICIAL~q\;
\U1|ALT_INV_Ereg.LIGADO~q\ <= NOT \U1|Ereg.LIGADO~q\;
\U1|ALT_INV_Ereg.ESPERA~q\ <= NOT \U1|Ereg.ESPERA~q\;
\U1|ALT_INV_Selector2~0_combout\ <= NOT \U1|Selector2~0_combout\;
\U1|ALT_INV_Selector5~0_combout\ <= NOT \U1|Selector5~0_combout\;
\U1|ALT_INV_estado\(0) <= NOT \U1|estado\(0);
\U1|ALT_INV_estado\(1) <= NOT \U1|estado\(1);
\U1|ALT_INV_estado\(2) <= NOT \U1|estado\(2);
\ALT_INV_D[0]~input_o\ <= NOT \D[0]~input_o\;
\ALT_INV_D[1]~input_o\ <= NOT \D[1]~input_o\;
\ALT_INV_D[2]~input_o\ <= NOT \D[2]~input_o\;
\ALT_INV_D[3]~input_o\ <= NOT \D[3]~input_o\;
\ALT_INV_RESET~input_o\ <= NOT \RESET~input_o\;
\ALT_INV_sinal~input_o\ <= NOT \sinal~input_o\;
\ALT_INV_liga~input_o\ <= NOT \liga~input_o\;

-- Location: IOOBUF_X54_Y19_N56
\RCO~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|RCO~combout\,
	devoe => ww_devoe,
	o => ww_RCO);

-- Location: IOOBUF_X54_Y18_N96
\Q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|IQ\(0),
	devoe => ww_devoe,
	o => ww_Q(0));

-- Location: IOOBUF_X54_Y19_N39
\Q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|IQ\(1),
	devoe => ww_devoe,
	o => ww_Q(1));

-- Location: IOOBUF_X54_Y18_N79
\Q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|IQ\(2),
	devoe => ww_devoe,
	o => ww_Q(2));

-- Location: IOOBUF_X54_Y19_N5
\Q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|IQ\(3),
	devoe => ww_devoe,
	o => ww_Q(3));

-- Location: IOOBUF_X54_Y21_N56
\ESTADO[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|estado\(0),
	devoe => ww_devoe,
	o => ww_ESTADO(0));

-- Location: IOOBUF_X54_Y20_N22
\ESTADO[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|estado\(1),
	devoe => ww_devoe,
	o => ww_ESTADO(1));

-- Location: IOOBUF_X54_Y20_N56
\ESTADO[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|estado\(2),
	devoe => ww_devoe,
	o => ww_ESTADO(2));

-- Location: IOOBUF_X0_Y19_N56
\ESTADO[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ESTADO(3));

-- Location: IOIBUF_X54_Y18_N61
\CLOCK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK,
	o => \CLOCK~input_o\);

-- Location: CLKCTRL_G10
\CLOCK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK~input_o\,
	outclk => \CLOCK~inputCLKENA0_outclk\);

-- Location: IOIBUF_X54_Y19_N21
\liga~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_liga,
	o => \liga~input_o\);

-- Location: IOIBUF_X54_Y21_N4
\sinal~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sinal,
	o => \sinal~input_o\);

-- Location: LABCELL_X53_Y19_N39
\U1|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Selector6~0_combout\ = ( \U1|Ereg.CONTA~q\ & ( !\sinal~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sinal~input_o\,
	dataf => \U1|ALT_INV_Ereg.CONTA~q\,
	combout => \U1|Selector6~0_combout\);

-- Location: IOIBUF_X54_Y17_N21
\RESET~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: FF_X53_Y19_N41
\U1|Ereg.LIMPA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U1|Selector6~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Ereg.LIMPA~q\);

-- Location: LABCELL_X53_Y19_N9
\U1|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Selector0~0_combout\ = ( \U1|Ereg.LIMPA~q\ & ( \liga~input_o\ ) ) # ( !\U1|Ereg.LIMPA~q\ & ( (\U1|Ereg.INICIAL~q\) # (\liga~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_liga~input_o\,
	datad => \U1|ALT_INV_Ereg.INICIAL~q\,
	dataf => \U1|ALT_INV_Ereg.LIMPA~q\,
	combout => \U1|Selector0~0_combout\);

-- Location: FF_X53_Y19_N11
\U1|Ereg.INICIAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U1|Selector0~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Ereg.INICIAL~q\);

-- Location: LABCELL_X53_Y19_N48
\U1|Eprox.CONTA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Eprox.CONTA~0_combout\ = ( \sinal~input_o\ & ( !\U1|Ereg.LIMPA~q\ & ( \U1|Ereg.INICIAL~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|ALT_INV_Ereg.INICIAL~q\,
	datae => \ALT_INV_sinal~input_o\,
	dataf => \U1|ALT_INV_Ereg.LIMPA~q\,
	combout => \U1|Eprox.CONTA~0_combout\);

-- Location: FF_X53_Y19_N50
\U1|Ereg.CONTA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U1|Eprox.CONTA~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Ereg.CONTA~q\);

-- Location: IOIBUF_X54_Y17_N4
\D[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(0),
	o => \D[0]~input_o\);

-- Location: LABCELL_X53_Y19_N57
\U2|IQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|IQ~0_combout\ = ( \U1|Ereg.INICIAL~q\ & ( (\D[0]~input_o\ & !\U1|Ereg.LIMPA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_D[0]~input_o\,
	datac => \U1|ALT_INV_Ereg.LIMPA~q\,
	dataf => \U1|ALT_INV_Ereg.INICIAL~q\,
	combout => \U2|IQ~0_combout\);

-- Location: FF_X53_Y19_N59
\U2|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U2|IQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|IQ\(0));

-- Location: IOIBUF_X54_Y20_N38
\D[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(3),
	o => \D[3]~input_o\);

-- Location: LABCELL_X53_Y19_N18
\U2|IQ~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|IQ~3_combout\ = ( !\U1|Ereg.LIMPA~q\ & ( (\U1|Ereg.INICIAL~q\ & \D[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|ALT_INV_Ereg.INICIAL~q\,
	datac => \ALT_INV_D[3]~input_o\,
	dataf => \U1|ALT_INV_Ereg.LIMPA~q\,
	combout => \U2|IQ~3_combout\);

-- Location: FF_X53_Y19_N20
\U2|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U2|IQ~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|IQ\(3));

-- Location: IOIBUF_X54_Y18_N44
\D[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(2),
	o => \D[2]~input_o\);

-- Location: LABCELL_X53_Y19_N45
\U2|IQ~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|IQ~2_combout\ = ( \U1|Ereg.INICIAL~q\ & ( (!\U1|Ereg.LIMPA~q\ & \D[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_Ereg.LIMPA~q\,
	datad => \ALT_INV_D[2]~input_o\,
	dataf => \U1|ALT_INV_Ereg.INICIAL~q\,
	combout => \U2|IQ~2_combout\);

-- Location: FF_X53_Y19_N47
\U2|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U2|IQ~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|IQ\(2));

-- Location: IOIBUF_X54_Y17_N55
\D[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(1),
	o => \D[1]~input_o\);

-- Location: LABCELL_X53_Y19_N42
\U2|IQ~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|IQ~1_combout\ = ( \U1|Ereg.INICIAL~q\ & ( (!\U1|Ereg.LIMPA~q\ & \D[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|ALT_INV_Ereg.LIMPA~q\,
	datac => \ALT_INV_D[1]~input_o\,
	dataf => \U1|ALT_INV_Ereg.INICIAL~q\,
	combout => \U2|IQ~1_combout\);

-- Location: FF_X53_Y19_N44
\U2|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U2|IQ~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|IQ\(1));

-- Location: LABCELL_X53_Y19_N6
\U2|RCO\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|RCO~combout\ = ( \U2|IQ\(1) & ( (\U1|Ereg.CONTA~q\ & (\U2|IQ\(0) & (\U2|IQ\(3) & \U2|IQ\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_Ereg.CONTA~q\,
	datab => \U2|ALT_INV_IQ\(0),
	datac => \U2|ALT_INV_IQ\(3),
	datad => \U2|ALT_INV_IQ\(2),
	dataf => \U2|ALT_INV_IQ\(1),
	combout => \U2|RCO~combout\);

-- Location: LABCELL_X53_Y19_N0
\U1|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Selector1~0_combout\ = ( \U1|Ereg.LIGADO~q\ & ( \U1|Ereg.INICIAL~q\ & ( !\sinal~input_o\ ) ) ) # ( \U1|Ereg.LIGADO~q\ & ( !\U1|Ereg.INICIAL~q\ & ( (!\sinal~input_o\) # (\liga~input_o\) ) ) ) # ( !\U1|Ereg.LIGADO~q\ & ( !\U1|Ereg.INICIAL~q\ & ( 
-- \liga~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111100111111001100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_liga~input_o\,
	datac => \ALT_INV_sinal~input_o\,
	datae => \U1|ALT_INV_Ereg.LIGADO~q\,
	dataf => \U1|ALT_INV_Ereg.INICIAL~q\,
	combout => \U1|Selector1~0_combout\);

-- Location: FF_X53_Y19_N2
\U1|Ereg.LIGADO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U1|Selector1~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Ereg.LIGADO~q\);

-- Location: LABCELL_X53_Y19_N24
\U1|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Selector3~0_combout\ = ( \U1|Ereg.LIMPA~q\ & ( ((!\sinal~input_o\ & \U1|Ereg.ESPERA~q\)) # (\liga~input_o\) ) ) # ( !\U1|Ereg.LIMPA~q\ & ( (!\sinal~input_o\ & \U1|Ereg.ESPERA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000001010101111101010101010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_liga~input_o\,
	datac => \ALT_INV_sinal~input_o\,
	datad => \U1|ALT_INV_Ereg.ESPERA~q\,
	dataf => \U1|ALT_INV_Ereg.LIMPA~q\,
	combout => \U1|Selector3~0_combout\);

-- Location: FF_X53_Y19_N26
\U1|Ereg.ESPERA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \U1|Selector3~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Ereg.ESPERA~q\);

-- Location: LABCELL_X53_Y19_N12
\U1|Selector6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Selector6~1_combout\ = ( !\sinal~input_o\ & ( ((\liga~input_o\ & ((!\U1|Ereg.INICIAL~q\) # ((\U1|Ereg.LIMPA~q\))))) # (\U1|Ereg.CONTA~q\) ) ) # ( \sinal~input_o\ & ( (((\liga~input_o\ & ((!\U1|Ereg.INICIAL~q\) # (\U1|Ereg.LIMPA~q\)))) # 
-- (\U1|Ereg.ESPERA~q\)) # (\U1|Ereg.LIGADO~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100111101011111010011110101111101001111010111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_liga~input_o\,
	datab => \U1|ALT_INV_Ereg.INICIAL~q\,
	datac => \U1|ALT_INV_Ereg.LIGADO~q\,
	datad => \U1|ALT_INV_Ereg.LIMPA~q\,
	datae => \ALT_INV_sinal~input_o\,
	dataf => \U1|ALT_INV_Ereg.ESPERA~q\,
	datag => \U1|ALT_INV_Ereg.CONTA~q\,
	combout => \U1|Selector6~1_combout\);

-- Location: LABCELL_X53_Y19_N33
\U1|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Selector2~0_combout\ = ( \U1|Ereg.LIGADO~q\ & ( \U1|Ereg.LIMPA~q\ ) ) # ( !\U1|Ereg.LIGADO~q\ & ( \U1|Ereg.LIMPA~q\ ) ) # ( \U1|Ereg.LIGADO~q\ & ( !\U1|Ereg.LIMPA~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \U1|ALT_INV_Ereg.LIGADO~q\,
	dataf => \U1|ALT_INV_Ereg.LIMPA~q\,
	combout => \U1|Selector2~0_combout\);

-- Location: LABCELL_X53_Y19_N36
\U1|estado[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|estado\(0) = ( \U1|Selector2~0_combout\ & ( (\U1|estado\(0)) # (\U1|Selector6~1_combout\) ) ) # ( !\U1|Selector2~0_combout\ & ( (!\U1|Selector6~1_combout\ & \U1|estado\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|ALT_INV_Selector6~1_combout\,
	datad => \U1|ALT_INV_estado\(0),
	dataf => \U1|ALT_INV_Selector2~0_combout\,
	combout => \U1|estado\(0));

-- Location: LABCELL_X53_Y19_N54
\U1|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Selector5~0_combout\ = ( \U1|Ereg.CONTA~q\ ) # ( !\U1|Ereg.CONTA~q\ & ( \U1|Ereg.LIMPA~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|ALT_INV_Ereg.LIMPA~q\,
	dataf => \U1|ALT_INV_Ereg.CONTA~q\,
	combout => \U1|Selector5~0_combout\);

-- Location: LABCELL_X53_Y19_N21
\U1|estado[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|estado\(1) = ( \U1|Selector5~0_combout\ & ( (\U1|estado\(1)) # (\U1|Selector6~1_combout\) ) ) # ( !\U1|Selector5~0_combout\ & ( (!\U1|Selector6~1_combout\ & \U1|estado\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_Selector6~1_combout\,
	datad => \U1|ALT_INV_estado\(1),
	dataf => \U1|ALT_INV_Selector5~0_combout\,
	combout => \U1|estado\(1));

-- Location: LABCELL_X53_Y19_N27
\U1|estado[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|estado\(2) = ( \U1|Selector6~1_combout\ & ( \U1|Ereg.ESPERA~q\ ) ) # ( !\U1|Selector6~1_combout\ & ( \U1|estado\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|ALT_INV_Ereg.ESPERA~q\,
	datad => \U1|ALT_INV_estado\(2),
	dataf => \U1|ALT_INV_Selector6~1_combout\,
	combout => \U1|estado\(2));

-- Location: LABCELL_X14_Y17_N0
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


