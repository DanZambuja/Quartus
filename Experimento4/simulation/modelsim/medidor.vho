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

-- DATE "02/03/2017 02:48:56"

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

ENTITY 	medidor IS
    PORT (
	CLOCK : IN std_logic;
	RESET : IN std_logic;
	liga : IN std_logic;
	sinal : IN std_logic;
	Q : OUT std_logic_vector(3 DOWNTO 0);
	RCO : OUT std_logic;
	pronto : OUT std_logic;
	estado : OUT std_logic_vector(3 DOWNTO 0);
	Depura : OUT IEEE.STD_LOGIC_ARITH.unsigned(3 DOWNTO 0)
	);
END medidor;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RCO	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pronto	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[0]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[1]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Depura[0]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Depura[1]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Depura[2]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Depura[3]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinal	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- liga	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF medidor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_liga : std_logic;
SIGNAL ww_sinal : std_logic;
SIGNAL ww_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_RCO : std_logic;
SIGNAL ww_pronto : std_logic;
SIGNAL ww_estado : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Depura : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \CLOCK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \liga~input_o\ : std_logic;
SIGNAL \sinal~input_o\ : std_logic;
SIGNAL \C1|Eprox.CONTA~0_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \C1|Ereg.CONTA~q\ : std_logic;
SIGNAL \C1|Eprox.EPRONTO~0_combout\ : std_logic;
SIGNAL \C1|Ereg.EPRONTO~q\ : std_logic;
SIGNAL \C1|Ereg.LIMPA~DUPLICATE_q\ : std_logic;
SIGNAL \C1|Selector0~0_combout\ : std_logic;
SIGNAL \C1|Ereg.INICIAL~q\ : std_logic;
SIGNAL \C1|Ereg.LIMPA~q\ : std_logic;
SIGNAL \C1|WideOr4~combout\ : std_logic;
SIGNAL \D2|IQ~0_combout\ : std_logic;
SIGNAL \D2|IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \D2|IQ~1_combout\ : std_logic;
SIGNAL \D2|IQ~2_combout\ : std_logic;
SIGNAL \D2|IQ~3_combout\ : std_logic;
SIGNAL \D2|RCO~combout\ : std_logic;
SIGNAL \C1|Selector2~0_combout\ : std_logic;
SIGNAL \C1|Ereg.ESPERA~q\ : std_logic;
SIGNAL \C1|estado\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \D2|IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C1|ALT_INV_Ereg.ESPERA~q\ : std_logic;
SIGNAL \C1|ALT_INV_WideOr4~combout\ : std_logic;
SIGNAL \C1|ALT_INV_Ereg.LIMPA~q\ : std_logic;
SIGNAL \C1|ALT_INV_Ereg.INICIAL~q\ : std_logic;
SIGNAL \C1|ALT_INV_Ereg.EPRONTO~q\ : std_logic;
SIGNAL \C1|ALT_INV_Ereg.CONTA~q\ : std_logic;
SIGNAL \D2|ALT_INV_IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C1|ALT_INV_Ereg.LIMPA~DUPLICATE_q\ : std_logic;
SIGNAL \D2|ALT_INV_IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_liga~input_o\ : std_logic;
SIGNAL \ALT_INV_RESET~input_o\ : std_logic;
SIGNAL \ALT_INV_sinal~input_o\ : std_logic;

BEGIN

ww_CLOCK <= CLOCK;
ww_RESET <= RESET;
ww_liga <= liga;
ww_sinal <= sinal;
Q <= ww_Q;
RCO <= ww_RCO;
pronto <= ww_pronto;
estado <= ww_estado;
Depura <= IEEE.STD_LOGIC_ARITH.UNSIGNED(ww_Depura);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\C1|ALT_INV_Ereg.ESPERA~q\ <= NOT \C1|Ereg.ESPERA~q\;
\C1|ALT_INV_WideOr4~combout\ <= NOT \C1|WideOr4~combout\;
\C1|ALT_INV_Ereg.LIMPA~q\ <= NOT \C1|Ereg.LIMPA~q\;
\C1|ALT_INV_Ereg.INICIAL~q\ <= NOT \C1|Ereg.INICIAL~q\;
\C1|ALT_INV_Ereg.EPRONTO~q\ <= NOT \C1|Ereg.EPRONTO~q\;
\C1|ALT_INV_Ereg.CONTA~q\ <= NOT \C1|Ereg.CONTA~q\;
\D2|ALT_INV_IQ\(3) <= NOT \D2|IQ\(3);
\D2|ALT_INV_IQ\(2) <= NOT \D2|IQ\(2);
\D2|ALT_INV_IQ\(1) <= NOT \D2|IQ\(1);
\D2|ALT_INV_IQ\(0) <= NOT \D2|IQ\(0);
\C1|ALT_INV_Ereg.LIMPA~DUPLICATE_q\ <= NOT \C1|Ereg.LIMPA~DUPLICATE_q\;
\D2|ALT_INV_IQ[0]~DUPLICATE_q\ <= NOT \D2|IQ[0]~DUPLICATE_q\;
\ALT_INV_liga~input_o\ <= NOT \liga~input_o\;
\ALT_INV_RESET~input_o\ <= NOT \RESET~input_o\;
\ALT_INV_sinal~input_o\ <= NOT \sinal~input_o\;

-- Location: IOOBUF_X0_Y18_N45
\Q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D2|IQ[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Q(0));

-- Location: IOOBUF_X0_Y21_N56
\Q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D2|IQ\(1),
	devoe => ww_devoe,
	o => ww_Q(1));

-- Location: IOOBUF_X0_Y19_N56
\Q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D2|IQ\(2),
	devoe => ww_devoe,
	o => ww_Q(2));

-- Location: IOOBUF_X0_Y18_N62
\Q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D2|IQ\(3),
	devoe => ww_devoe,
	o => ww_Q(3));

-- Location: IOOBUF_X0_Y20_N56
\RCO~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D2|RCO~combout\,
	devoe => ww_devoe,
	o => ww_RCO);

-- Location: IOOBUF_X0_Y19_N22
\pronto~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|Ereg.EPRONTO~q\,
	devoe => ww_devoe,
	o => ww_pronto);

-- Location: IOOBUF_X0_Y20_N22
\estado[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|ALT_INV_WideOr4~combout\,
	devoe => ww_devoe,
	o => ww_estado(0));

-- Location: IOOBUF_X0_Y19_N5
\estado[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|estado\(1),
	devoe => ww_devoe,
	o => ww_estado(1));

-- Location: IOOBUF_X0_Y20_N39
\estado[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|estado\(2),
	devoe => ww_devoe,
	o => ww_estado(2));

-- Location: IOOBUF_X22_Y45_N2
\estado[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_estado(3));

-- Location: IOOBUF_X0_Y18_N96
\Depura[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D2|IQ[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_Depura(0));

-- Location: IOOBUF_X0_Y21_N22
\Depura[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D2|IQ\(1),
	devoe => ww_devoe,
	o => ww_Depura(1));

-- Location: IOOBUF_X0_Y19_N39
\Depura[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D2|IQ\(2),
	devoe => ww_devoe,
	o => ww_Depura(2));

-- Location: IOOBUF_X0_Y18_N79
\Depura[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D2|IQ\(3),
	devoe => ww_devoe,
	o => ww_Depura(3));

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

-- Location: IOIBUF_X0_Y20_N4
\liga~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_liga,
	o => \liga~input_o\);

-- Location: IOIBUF_X0_Y21_N4
\sinal~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sinal,
	o => \sinal~input_o\);

-- Location: LABCELL_X1_Y20_N18
\C1|Eprox.CONTA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Eprox.CONTA~0_combout\ = ( !\C1|Ereg.LIMPA~DUPLICATE_q\ & ( (\sinal~input_o\ & (!\C1|Ereg.EPRONTO~q\ & \C1|Ereg.INICIAL~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sinal~input_o\,
	datac => \C1|ALT_INV_Ereg.EPRONTO~q\,
	datad => \C1|ALT_INV_Ereg.INICIAL~q\,
	dataf => \C1|ALT_INV_Ereg.LIMPA~DUPLICATE_q\,
	combout => \C1|Eprox.CONTA~0_combout\);

-- Location: IOIBUF_X0_Y21_N38
\RESET~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: FF_X1_Y20_N20
\C1|Ereg.CONTA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \C1|Eprox.CONTA~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|Ereg.CONTA~q\);

-- Location: LABCELL_X1_Y20_N27
\C1|Eprox.EPRONTO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Eprox.EPRONTO~0_combout\ = ( !\sinal~input_o\ & ( \C1|Ereg.CONTA~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_sinal~input_o\,
	dataf => \C1|ALT_INV_Ereg.CONTA~q\,
	combout => \C1|Eprox.EPRONTO~0_combout\);

-- Location: FF_X1_Y20_N29
\C1|Ereg.EPRONTO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \C1|Eprox.EPRONTO~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|Ereg.EPRONTO~q\);

-- Location: FF_X1_Y20_N58
\C1|Ereg.LIMPA~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \C1|Ereg.EPRONTO~q\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|Ereg.LIMPA~DUPLICATE_q\);

-- Location: LABCELL_X1_Y20_N9
\C1|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Selector0~0_combout\ = ( \C1|Ereg.LIMPA~DUPLICATE_q\ & ( \liga~input_o\ ) ) # ( !\C1|Ereg.LIMPA~DUPLICATE_q\ & ( (\C1|Ereg.INICIAL~q\) # (\liga~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_liga~input_o\,
	datad => \C1|ALT_INV_Ereg.INICIAL~q\,
	dataf => \C1|ALT_INV_Ereg.LIMPA~DUPLICATE_q\,
	combout => \C1|Selector0~0_combout\);

-- Location: FF_X1_Y20_N11
\C1|Ereg.INICIAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \C1|Selector0~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|Ereg.INICIAL~q\);

-- Location: FF_X1_Y20_N59
\C1|Ereg.LIMPA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	asdata => \C1|Ereg.EPRONTO~q\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|Ereg.LIMPA~q\);

-- Location: LABCELL_X1_Y20_N36
\C1|WideOr4\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|WideOr4~combout\ = ( \C1|Ereg.INICIAL~q\ & ( (\C1|Ereg.LIMPA~q\) # (\C1|Ereg.CONTA~q\) ) ) # ( !\C1|Ereg.INICIAL~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C1|ALT_INV_Ereg.CONTA~q\,
	datad => \C1|ALT_INV_Ereg.LIMPA~q\,
	dataf => \C1|ALT_INV_Ereg.INICIAL~q\,
	combout => \C1|WideOr4~combout\);

-- Location: FF_X1_Y20_N31
\D2|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \D2|IQ~0_combout\,
	ena => \C1|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|IQ\(0));

-- Location: LABCELL_X1_Y20_N30
\D2|IQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|IQ~0_combout\ = ( !\C1|Ereg.LIMPA~DUPLICATE_q\ & ( (\C1|Ereg.INICIAL~q\ & !\D2|IQ\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|ALT_INV_Ereg.INICIAL~q\,
	datad => \D2|ALT_INV_IQ\(0),
	dataf => \C1|ALT_INV_Ereg.LIMPA~DUPLICATE_q\,
	combout => \D2|IQ~0_combout\);

-- Location: FF_X1_Y20_N32
\D2|IQ[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \D2|IQ~0_combout\,
	ena => \C1|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|IQ[0]~DUPLICATE_q\);

-- Location: LABCELL_X1_Y20_N33
\D2|IQ~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|IQ~1_combout\ = ( \D2|IQ\(0) & ( (\C1|Ereg.INICIAL~q\ & (!\C1|Ereg.LIMPA~DUPLICATE_q\ & !\D2|IQ\(1))) ) ) # ( !\D2|IQ\(0) & ( (\C1|Ereg.INICIAL~q\ & (!\C1|Ereg.LIMPA~DUPLICATE_q\ & \D2|IQ\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|ALT_INV_Ereg.INICIAL~q\,
	datac => \C1|ALT_INV_Ereg.LIMPA~DUPLICATE_q\,
	datad => \D2|ALT_INV_IQ\(1),
	dataf => \D2|ALT_INV_IQ\(0),
	combout => \D2|IQ~1_combout\);

-- Location: FF_X1_Y20_N35
\D2|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \D2|IQ~1_combout\,
	ena => \C1|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|IQ\(1));

-- Location: LABCELL_X1_Y20_N12
\D2|IQ~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|IQ~2_combout\ = ( \D2|IQ\(2) & ( \D2|IQ\(0) & ( (!\C1|Ereg.LIMPA~DUPLICATE_q\ & (!\D2|IQ\(1) & \C1|Ereg.INICIAL~q\)) ) ) ) # ( !\D2|IQ\(2) & ( \D2|IQ\(0) & ( (!\C1|Ereg.LIMPA~DUPLICATE_q\ & (\D2|IQ\(1) & \C1|Ereg.INICIAL~q\)) ) ) ) # ( \D2|IQ\(2) & ( 
-- !\D2|IQ\(0) & ( (!\C1|Ereg.LIMPA~DUPLICATE_q\ & \C1|Ereg.INICIAL~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000011000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|ALT_INV_Ereg.LIMPA~DUPLICATE_q\,
	datac => \D2|ALT_INV_IQ\(1),
	datad => \C1|ALT_INV_Ereg.INICIAL~q\,
	datae => \D2|ALT_INV_IQ\(2),
	dataf => \D2|ALT_INV_IQ\(0),
	combout => \D2|IQ~2_combout\);

-- Location: FF_X1_Y20_N13
\D2|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \D2|IQ~2_combout\,
	ena => \C1|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|IQ\(2));

-- Location: LABCELL_X1_Y20_N48
\D2|IQ~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|IQ~3_combout\ = ( \D2|IQ\(3) & ( \D2|IQ\(2) & ( (!\C1|Ereg.LIMPA~DUPLICATE_q\ & (\C1|Ereg.INICIAL~q\ & ((!\D2|IQ\(1)) # (!\D2|IQ[0]~DUPLICATE_q\)))) ) ) ) # ( !\D2|IQ\(3) & ( \D2|IQ\(2) & ( (!\C1|Ereg.LIMPA~DUPLICATE_q\ & (\C1|Ereg.INICIAL~q\ & 
-- (\D2|IQ\(1) & \D2|IQ[0]~DUPLICATE_q\))) ) ) ) # ( \D2|IQ\(3) & ( !\D2|IQ\(2) & ( (!\C1|Ereg.LIMPA~DUPLICATE_q\ & \C1|Ereg.INICIAL~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000100010001000000000000000100010001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_Ereg.LIMPA~DUPLICATE_q\,
	datab => \C1|ALT_INV_Ereg.INICIAL~q\,
	datac => \D2|ALT_INV_IQ\(1),
	datad => \D2|ALT_INV_IQ[0]~DUPLICATE_q\,
	datae => \D2|ALT_INV_IQ\(3),
	dataf => \D2|ALT_INV_IQ\(2),
	combout => \D2|IQ~3_combout\);

-- Location: FF_X1_Y20_N50
\D2|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \D2|IQ~3_combout\,
	ena => \C1|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D2|IQ\(3));

-- Location: LABCELL_X1_Y20_N6
\D2|RCO\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|RCO~combout\ = ( \D2|IQ\(2) & ( (\D2|IQ\(3) & (\C1|Ereg.CONTA~q\ & (\D2|IQ\(0) & \D2|IQ\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D2|ALT_INV_IQ\(3),
	datab => \C1|ALT_INV_Ereg.CONTA~q\,
	datac => \D2|ALT_INV_IQ\(0),
	datad => \D2|ALT_INV_IQ\(1),
	dataf => \D2|ALT_INV_IQ\(2),
	combout => \D2|RCO~combout\);

-- Location: LABCELL_X1_Y20_N42
\C1|estado[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|estado\(1) = ( \C1|Ereg.EPRONTO~q\ & ( \C1|Ereg.CONTA~q\ ) ) # ( !\C1|Ereg.EPRONTO~q\ & ( \C1|Ereg.CONTA~q\ ) ) # ( \C1|Ereg.EPRONTO~q\ & ( !\C1|Ereg.CONTA~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \C1|ALT_INV_Ereg.EPRONTO~q\,
	dataf => \C1|ALT_INV_Ereg.CONTA~q\,
	combout => \C1|estado\(1));

-- Location: LABCELL_X1_Y20_N39
\C1|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Selector2~0_combout\ = ( \C1|Ereg.LIMPA~DUPLICATE_q\ & ( ((!\sinal~input_o\ & \C1|Ereg.ESPERA~q\)) # (\liga~input_o\) ) ) # ( !\C1|Ereg.LIMPA~DUPLICATE_q\ & ( (!\sinal~input_o\ & \C1|Ereg.ESPERA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001111101011110000111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sinal~input_o\,
	datac => \ALT_INV_liga~input_o\,
	datad => \C1|ALT_INV_Ereg.ESPERA~q\,
	dataf => \C1|ALT_INV_Ereg.LIMPA~DUPLICATE_q\,
	combout => \C1|Selector2~0_combout\);

-- Location: FF_X1_Y20_N40
\C1|Ereg.ESPERA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputCLKENA0_outclk\,
	d => \C1|Selector2~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|Ereg.ESPERA~q\);

-- Location: LABCELL_X1_Y20_N54
\C1|estado[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|estado\(2) = ( \C1|Ereg.ESPERA~q\ & ( \C1|Ereg.LIMPA~DUPLICATE_q\ ) ) # ( !\C1|Ereg.ESPERA~q\ & ( \C1|Ereg.LIMPA~DUPLICATE_q\ ) ) # ( \C1|Ereg.ESPERA~q\ & ( !\C1|Ereg.LIMPA~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \C1|ALT_INV_Ereg.ESPERA~q\,
	dataf => \C1|ALT_INV_Ereg.LIMPA~DUPLICATE_q\,
	combout => \C1|estado\(2));

-- Location: LABCELL_X53_Y3_N3
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


