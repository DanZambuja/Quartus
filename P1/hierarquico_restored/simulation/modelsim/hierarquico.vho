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

-- DATE "03/02/2017 22:08:34"

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

ENTITY 	hierarquico IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	iniciar : IN std_logic;
	zerar : IN std_logic;
	pulso : IN std_logic;
	medida : BUFFER std_logic_vector(3 DOWNTO 0);
	fim : BUFFER std_logic;
	s_medida : BUFFER std_logic_vector(3 DOWNTO 0);
	Sliga : BUFFER std_logic;
	Senable_r1 : BUFFER std_logic;
	Senable_r2 : BUFFER std_logic;
	Sreset_r1 : BUFFER std_logic;
	Sreset_r2 : BUFFER std_logic;
	saidaDisplay1 : BUFFER std_logic_vector(6 DOWNTO 0);
	saidaDisplay2 : BUFFER std_logic_vector(6 DOWNTO 0);
	saidaDisplay3 : BUFFER std_logic_vector(6 DOWNTO 0);
	soma : BUFFER std_logic_vector(3 DOWNTO 0);
	s_pronto : BUFFER std_logic;
	s_somador : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END hierarquico;

-- Design Ports Information
-- medida[0]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- medida[1]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- medida[2]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- medida[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fim	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_medida[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_medida[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_medida[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_medida[3]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sliga	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Senable_r1	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Senable_r2	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sreset_r1	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sreset_r2	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay1[0]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay1[1]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay1[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay1[3]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay1[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay1[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay1[6]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay2[0]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay2[1]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay2[2]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay2[3]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay2[4]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay2[5]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay2[6]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay3[0]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay3[1]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay3[2]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay3[3]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay3[4]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay3[5]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay3[6]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- soma[0]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- soma[1]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- soma[2]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- soma[3]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_pronto	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_somador[0]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_somador[1]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_somador[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_somador[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iniciar	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zerar	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hierarquico IS
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
SIGNAL ww_iniciar : std_logic;
SIGNAL ww_zerar : std_logic;
SIGNAL ww_pulso : std_logic;
SIGNAL ww_medida : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_fim : std_logic;
SIGNAL ww_s_medida : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Sliga : std_logic;
SIGNAL ww_Senable_r1 : std_logic;
SIGNAL ww_Senable_r2 : std_logic;
SIGNAL ww_Sreset_r1 : std_logic;
SIGNAL ww_Sreset_r2 : std_logic;
SIGNAL ww_saidaDisplay1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_saidaDisplay2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_saidaDisplay3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_soma : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_s_pronto : std_logic;
SIGNAL ww_s_somador : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \pulso~input_o\ : std_logic;
SIGNAL \iniciar~input_o\ : std_logic;
SIGNAL \zerar~input_o\ : std_logic;
SIGNAL \C1|Selector1~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \C1|Ereg.zera~q\ : std_logic;
SIGNAL \C1|Eprox.registra~0_combout\ : std_logic;
SIGNAL \C1|Ereg.registra~q\ : std_logic;
SIGNAL \C1|Ereg.soma~q\ : std_logic;
SIGNAL \C1|Ereg.esperasoma~q\ : std_logic;
SIGNAL \C1|Selector3~0_combout\ : std_logic;
SIGNAL \C1|Ereg.espera~q\ : std_logic;
SIGNAL \C1|Selector0~0_combout\ : std_logic;
SIGNAL \C1|Ereg.parado~q\ : std_logic;
SIGNAL \C1|Eprox.iniciado~0_combout\ : std_logic;
SIGNAL \C1|Ereg.iniciado~q\ : std_logic;
SIGNAL \C1|Selector2~0_combout\ : std_logic;
SIGNAL \C1|Ereg.medindo~q\ : std_logic;
SIGNAL \A1|C1|Ereg.INICIAL~q\ : std_logic;
SIGNAL \A1|C1|Selector0~0_combout\ : std_logic;
SIGNAL \A1|C1|Ereg.INICIAL~DUPLICATE_q\ : std_logic;
SIGNAL \A1|C1|Eprox.CONTA~0_combout\ : std_logic;
SIGNAL \A1|C1|Ereg.CONTA~q\ : std_logic;
SIGNAL \A1|C1|Eprox.EPRONTO~0_combout\ : std_logic;
SIGNAL \A1|C1|Ereg.EPRONTO~q\ : std_logic;
SIGNAL \A1|C1|Ereg.LIMPA~q\ : std_logic;
SIGNAL \A1|D2|IQ[3]~1_combout\ : std_logic;
SIGNAL \A1|D2|IQ~0_combout\ : std_logic;
SIGNAL \A1|D2|IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \R1|IQ[3]~0_combout\ : std_logic;
SIGNAL \R1|Q[0]~DUPLICATE_q\ : std_logic;
SIGNAL \A1|D2|IQ~2_combout\ : std_logic;
SIGNAL \A1|D2|IQ[1]~DUPLICATE_q\ : std_logic;
SIGNAL \R1|IQ[1]~feeder_combout\ : std_logic;
SIGNAL \A1|D2|IQ~3_combout\ : std_logic;
SIGNAL \A1|D2|IQ[2]~DUPLICATE_q\ : std_logic;
SIGNAL \R1|IQ[2]~feeder_combout\ : std_logic;
SIGNAL \A1|D2|IQ~4_combout\ : std_logic;
SIGNAL \A1|D2|IQ[3]~DUPLICATE_q\ : std_logic;
SIGNAL \C1|WideNor0~combout\ : std_logic;
SIGNAL \Ds_medida|Mux0~0_combout\ : std_logic;
SIGNAL \Ds_medida|Mux1~0_combout\ : std_logic;
SIGNAL \Ds_medida|Mux2~0_combout\ : std_logic;
SIGNAL \Ds_medida|Mux3~0_combout\ : std_logic;
SIGNAL \Ds_medida|Mux4~0_combout\ : std_logic;
SIGNAL \Ds_medida|Mux5~0_combout\ : std_logic;
SIGNAL \Ds_medida|Mux6~0_combout\ : std_logic;
SIGNAL \Dmedida|Mux0~0_combout\ : std_logic;
SIGNAL \Dmedida|Mux1~0_combout\ : std_logic;
SIGNAL \Dmedida|Mux2~0_combout\ : std_logic;
SIGNAL \Dmedida|Mux3~0_combout\ : std_logic;
SIGNAL \Dmedida|Mux4~0_combout\ : std_logic;
SIGNAL \Dmedida|Mux5~0_combout\ : std_logic;
SIGNAL \Dmedida|Mux6~0_combout\ : std_logic;
SIGNAL \R2|IQ[0]~0_combout\ : std_logic;
SIGNAL \S1|s1|_~1\ : std_logic;
SIGNAL \S1|s1|_~2\ : std_logic;
SIGNAL \S1|s1|_~7\ : std_logic;
SIGNAL \S1|s1|_~8\ : std_logic;
SIGNAL \S1|s1|_~14\ : std_logic;
SIGNAL \S1|s1|_~4\ : std_logic;
SIGNAL \S1|s1|_~5\ : std_logic;
SIGNAL \S1|s1|Cout~sumout\ : std_logic;
SIGNAL \S1|s2|_~1\ : std_logic;
SIGNAL \S1|s2|_~2\ : std_logic;
SIGNAL \R2|Q[2]~DUPLICATE_q\ : std_logic;
SIGNAL \S1|s1|_~13\ : std_logic;
SIGNAL \S1|s2|_~4\ : std_logic;
SIGNAL \S1|s2|_~5\ : std_logic;
SIGNAL \Dsoma|Mux0~0_combout\ : std_logic;
SIGNAL \Dsoma|Mux1~0_combout\ : std_logic;
SIGNAL \Dsoma|Mux2~0_combout\ : std_logic;
SIGNAL \Dsoma|Mux3~0_combout\ : std_logic;
SIGNAL \Dsoma|Mux4~0_combout\ : std_logic;
SIGNAL \Dsoma|Mux5~0_combout\ : std_logic;
SIGNAL \Dsoma|Mux6~0_combout\ : std_logic;
SIGNAL \R1|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \R2|IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \R1|IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \S1|s2|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \R2|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A1|D2|IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \S1|s1|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A1|C1|ALT_INV_Ereg.INICIAL~DUPLICATE_q\ : std_logic;
SIGNAL \R2|ALT_INV_Q[2]~DUPLICATE_q\ : std_logic;
SIGNAL \A1|D2|ALT_INV_IQ[3]~DUPLICATE_q\ : std_logic;
SIGNAL \A1|D2|ALT_INV_IQ[2]~DUPLICATE_q\ : std_logic;
SIGNAL \A1|D2|ALT_INV_IQ[1]~DUPLICATE_q\ : std_logic;
SIGNAL \A1|D2|ALT_INV_IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \R1|ALT_INV_Q[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_pulso~input_o\ : std_logic;
SIGNAL \ALT_INV_zerar~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_iniciar~input_o\ : std_logic;
SIGNAL \C1|ALT_INV_Ereg.parado~q\ : std_logic;
SIGNAL \A1|C1|ALT_INV_Ereg.CONTA~q\ : std_logic;
SIGNAL \A1|C1|ALT_INV_Ereg.LIMPA~q\ : std_logic;
SIGNAL \A1|C1|ALT_INV_Ereg.INICIAL~q\ : std_logic;
SIGNAL \A1|C1|ALT_INV_Ereg.EPRONTO~q\ : std_logic;
SIGNAL \Dsoma|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \R2|ALT_INV_Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Dmedida|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \Ds_medida|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \C1|ALT_INV_Ereg.zera~q\ : std_logic;
SIGNAL \C1|ALT_INV_Ereg.esperasoma~q\ : std_logic;
SIGNAL \C1|ALT_INV_Ereg.registra~q\ : std_logic;
SIGNAL \C1|ALT_INV_Ereg.medindo~q\ : std_logic;
SIGNAL \C1|ALT_INV_Ereg.iniciado~q\ : std_logic;
SIGNAL \A1|D2|ALT_INV_IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C1|ALT_INV_Ereg.espera~q\ : std_logic;
SIGNAL \R1|ALT_INV_Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \S1|s1|ALT_INV_S\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \S1|s1|ALT_INV_Cout~sumout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_iniciar <= iniciar;
ww_zerar <= zerar;
ww_pulso <= pulso;
medida <= ww_medida;
fim <= ww_fim;
s_medida <= ww_s_medida;
Sliga <= ww_Sliga;
Senable_r1 <= ww_Senable_r1;
Senable_r2 <= ww_Senable_r2;
Sreset_r1 <= ww_Sreset_r1;
Sreset_r2 <= ww_Sreset_r2;
saidaDisplay1 <= ww_saidaDisplay1;
saidaDisplay2 <= ww_saidaDisplay2;
saidaDisplay3 <= ww_saidaDisplay3;
soma <= ww_soma;
s_pronto <= ww_s_pronto;
s_somador <= ww_s_somador;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\A1|C1|ALT_INV_Ereg.INICIAL~DUPLICATE_q\ <= NOT \A1|C1|Ereg.INICIAL~DUPLICATE_q\;
\R2|ALT_INV_Q[2]~DUPLICATE_q\ <= NOT \R2|Q[2]~DUPLICATE_q\;
\A1|D2|ALT_INV_IQ[3]~DUPLICATE_q\ <= NOT \A1|D2|IQ[3]~DUPLICATE_q\;
\A1|D2|ALT_INV_IQ[2]~DUPLICATE_q\ <= NOT \A1|D2|IQ[2]~DUPLICATE_q\;
\A1|D2|ALT_INV_IQ[1]~DUPLICATE_q\ <= NOT \A1|D2|IQ[1]~DUPLICATE_q\;
\A1|D2|ALT_INV_IQ[0]~DUPLICATE_q\ <= NOT \A1|D2|IQ[0]~DUPLICATE_q\;
\R1|ALT_INV_Q[0]~DUPLICATE_q\ <= NOT \R1|Q[0]~DUPLICATE_q\;
\ALT_INV_pulso~input_o\ <= NOT \pulso~input_o\;
\ALT_INV_zerar~input_o\ <= NOT \zerar~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_iniciar~input_o\ <= NOT \iniciar~input_o\;
\C1|ALT_INV_Ereg.parado~q\ <= NOT \C1|Ereg.parado~q\;
\A1|C1|ALT_INV_Ereg.CONTA~q\ <= NOT \A1|C1|Ereg.CONTA~q\;
\A1|C1|ALT_INV_Ereg.LIMPA~q\ <= NOT \A1|C1|Ereg.LIMPA~q\;
\A1|C1|ALT_INV_Ereg.INICIAL~q\ <= NOT \A1|C1|Ereg.INICIAL~q\;
\A1|C1|ALT_INV_Ereg.EPRONTO~q\ <= NOT \A1|C1|Ereg.EPRONTO~q\;
\Dsoma|ALT_INV_Mux6~0_combout\ <= NOT \Dsoma|Mux6~0_combout\;
\R2|ALT_INV_Q\(3) <= NOT \R2|Q\(3);
\R2|ALT_INV_Q\(2) <= NOT \R2|Q\(2);
\R2|ALT_INV_Q\(1) <= NOT \R2|Q\(1);
\R2|ALT_INV_Q\(0) <= NOT \R2|Q\(0);
\Dmedida|ALT_INV_Mux6~0_combout\ <= NOT \Dmedida|Mux6~0_combout\;
\Ds_medida|ALT_INV_Mux6~0_combout\ <= NOT \Ds_medida|Mux6~0_combout\;
\C1|ALT_INV_Ereg.zera~q\ <= NOT \C1|Ereg.zera~q\;
\C1|ALT_INV_Ereg.esperasoma~q\ <= NOT \C1|Ereg.esperasoma~q\;
\C1|ALT_INV_Ereg.registra~q\ <= NOT \C1|Ereg.registra~q\;
\C1|ALT_INV_Ereg.medindo~q\ <= NOT \C1|Ereg.medindo~q\;
\C1|ALT_INV_Ereg.iniciado~q\ <= NOT \C1|Ereg.iniciado~q\;
\A1|D2|ALT_INV_IQ\(3) <= NOT \A1|D2|IQ\(3);
\A1|D2|ALT_INV_IQ\(2) <= NOT \A1|D2|IQ\(2);
\A1|D2|ALT_INV_IQ\(1) <= NOT \A1|D2|IQ\(1);
\A1|D2|ALT_INV_IQ\(0) <= NOT \A1|D2|IQ\(0);
\C1|ALT_INV_Ereg.espera~q\ <= NOT \C1|Ereg.espera~q\;
\R1|ALT_INV_Q\(3) <= NOT \R1|Q\(3);
\R1|ALT_INV_Q\(2) <= NOT \R1|Q\(2);
\R1|ALT_INV_Q\(1) <= NOT \R1|Q\(1);
\R1|ALT_INV_Q\(0) <= NOT \R1|Q\(0);
\S1|s1|ALT_INV_S\(2) <= NOT \S1|s1|S\(2);
\S1|s1|ALT_INV_Cout~sumout\ <= NOT \S1|s1|Cout~sumout\;
\S1|s1|ALT_INV_S\(1) <= NOT \S1|s1|S\(1);
\S1|s1|ALT_INV_S\(3) <= NOT \S1|s1|S\(3);

-- Location: IOOBUF_X52_Y45_N53
\medida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|Q[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_medida(0));

-- Location: IOOBUF_X50_Y45_N36
\medida[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|Q\(1),
	devoe => ww_devoe,
	o => ww_medida(1));

-- Location: IOOBUF_X50_Y45_N19
\medida[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|Q\(2),
	devoe => ww_devoe,
	o => ww_medida(2));

-- Location: IOOBUF_X46_Y45_N93
\medida[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|Q\(3),
	devoe => ww_devoe,
	o => ww_medida(3));

-- Location: IOOBUF_X38_Y45_N53
\fim~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|Ereg.espera~q\,
	devoe => ww_devoe,
	o => ww_fim);

-- Location: IOOBUF_X32_Y45_N93
\s_medida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|D2|IQ[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_s_medida(0));

-- Location: IOOBUF_X22_Y45_N36
\s_medida[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|D2|IQ[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_s_medida(1));

-- Location: IOOBUF_X36_Y45_N2
\s_medida[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|D2|IQ\(2),
	devoe => ww_devoe,
	o => ww_s_medida(2));

-- Location: IOOBUF_X34_Y45_N53
\s_medida[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|D2|IQ\(3),
	devoe => ww_devoe,
	o => ww_s_medida(3));

-- Location: IOOBUF_X44_Y45_N53
\Sliga~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|WideNor0~combout\,
	devoe => ww_devoe,
	o => ww_Sliga);

-- Location: IOOBUF_X38_Y45_N36
\Senable_r1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|Ereg.registra~q\,
	devoe => ww_devoe,
	o => ww_Senable_r1);

-- Location: IOOBUF_X42_Y45_N53
\Senable_r2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|Ereg.esperasoma~q\,
	devoe => ww_devoe,
	o => ww_Senable_r2);

-- Location: IOOBUF_X43_Y45_N36
\Sreset_r1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|Ereg.zera~q\,
	devoe => ww_devoe,
	o => ww_Sreset_r1);

-- Location: IOOBUF_X42_Y45_N19
\Sreset_r2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|Ereg.zera~q\,
	devoe => ww_devoe,
	o => ww_Sreset_r2);

-- Location: IOOBUF_X36_Y45_N36
\saidaDisplay1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Ds_medida|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay1(0));

-- Location: IOOBUF_X34_Y45_N36
\saidaDisplay1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Ds_medida|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay1(1));

-- Location: IOOBUF_X32_Y45_N59
\saidaDisplay1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Ds_medida|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay1(2));

-- Location: IOOBUF_X34_Y45_N2
\saidaDisplay1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Ds_medida|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay1(3));

-- Location: IOOBUF_X34_Y45_N19
\saidaDisplay1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Ds_medida|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay1(4));

-- Location: IOOBUF_X36_Y45_N19
\saidaDisplay1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Ds_medida|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay1(5));

-- Location: IOOBUF_X32_Y45_N76
\saidaDisplay1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Ds_medida|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay1(6));

-- Location: IOOBUF_X52_Y45_N19
\saidaDisplay2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Dmedida|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay2(0));

-- Location: IOOBUF_X46_Y45_N76
\saidaDisplay2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Dmedida|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay2(1));

-- Location: IOOBUF_X48_Y45_N19
\saidaDisplay2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Dmedida|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay2(2));

-- Location: IOOBUF_X48_Y45_N36
\saidaDisplay2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Dmedida|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay2(3));

-- Location: IOOBUF_X46_Y45_N59
\saidaDisplay2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Dmedida|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay2(4));

-- Location: IOOBUF_X46_Y45_N42
\saidaDisplay2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Dmedida|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay2(5));

-- Location: IOOBUF_X44_Y45_N36
\saidaDisplay2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Dmedida|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay2(6));

-- Location: IOOBUF_X40_Y45_N42
\saidaDisplay3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Dsoma|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay3(0));

-- Location: IOOBUF_X40_Y45_N93
\saidaDisplay3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Dsoma|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay3(1));

-- Location: IOOBUF_X42_Y45_N2
\saidaDisplay3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Dsoma|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay3(2));

-- Location: IOOBUF_X40_Y45_N59
\saidaDisplay3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Dsoma|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay3(3));

-- Location: IOOBUF_X40_Y45_N76
\saidaDisplay3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Dsoma|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay3(4));

-- Location: IOOBUF_X38_Y45_N2
\saidaDisplay3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Dsoma|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay3(5));

-- Location: IOOBUF_X50_Y45_N2
\saidaDisplay3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Dsoma|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay3(6));

-- Location: IOOBUF_X43_Y45_N19
\soma[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R2|Q\(0),
	devoe => ww_devoe,
	o => ww_soma(0));

-- Location: IOOBUF_X43_Y45_N2
\soma[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R2|Q\(1),
	devoe => ww_devoe,
	o => ww_soma(1));

-- Location: IOOBUF_X43_Y45_N53
\soma[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R2|Q[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_soma(2));

-- Location: IOOBUF_X42_Y45_N36
\soma[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R2|Q\(3),
	devoe => ww_devoe,
	o => ww_soma(3));

-- Location: IOOBUF_X38_Y45_N19
\s_pronto~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|C1|Ereg.EPRONTO~q\,
	devoe => ww_devoe,
	o => ww_s_pronto);

-- Location: IOOBUF_X50_Y45_N53
\s_somador[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S1|s1|S\(0),
	devoe => ww_devoe,
	o => ww_s_somador(0));

-- Location: IOOBUF_X48_Y45_N2
\s_somador[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S1|s2|S\(1),
	devoe => ww_devoe,
	o => ww_s_somador(1));

-- Location: IOOBUF_X52_Y45_N36
\s_somador[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S1|s2|S\(2),
	devoe => ww_devoe,
	o => ww_s_somador(2));

-- Location: IOOBUF_X48_Y45_N53
\s_somador[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \S1|s2|S\(3),
	devoe => ww_devoe,
	o => ww_s_somador(3));

-- Location: IOIBUF_X44_Y45_N1
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G12
\clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock~input_o\,
	outclk => \clock~inputCLKENA0_outclk\);

-- Location: IOIBUF_X44_Y45_N18
\pulso~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pulso,
	o => \pulso~input_o\);

-- Location: IOIBUF_X33_Y0_N41
\iniciar~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iniciar,
	o => \iniciar~input_o\);

-- Location: IOIBUF_X33_Y0_N75
\zerar~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_zerar,
	o => \zerar~input_o\);

-- Location: LABCELL_X40_Y44_N42
\C1|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Selector1~0_combout\ = ( \C1|Ereg.zera~q\ & ( \C1|Ereg.parado~q\ & ( (\zerar~input_o\ & !\iniciar~input_o\) ) ) ) # ( \C1|Ereg.zera~q\ & ( !\C1|Ereg.parado~q\ & ( (\zerar~input_o\ & !\iniciar~input_o\) ) ) ) # ( !\C1|Ereg.zera~q\ & ( 
-- !\C1|Ereg.parado~q\ & ( (\zerar~input_o\ & !\iniciar~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zerar~input_o\,
	datac => \ALT_INV_iniciar~input_o\,
	datae => \C1|ALT_INV_Ereg.zera~q\,
	dataf => \C1|ALT_INV_Ereg.parado~q\,
	combout => \C1|Selector1~0_combout\);

-- Location: IOIBUF_X36_Y45_N52
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X40_Y44_N44
\C1|Ereg.zera\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \C1|Selector1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|Ereg.zera~q\);

-- Location: LABCELL_X40_Y44_N33
\C1|Eprox.registra~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Eprox.registra~0_combout\ = ( \C1|Ereg.medindo~q\ & ( \A1|C1|Ereg.EPRONTO~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \A1|C1|ALT_INV_Ereg.EPRONTO~q\,
	dataf => \C1|ALT_INV_Ereg.medindo~q\,
	combout => \C1|Eprox.registra~0_combout\);

-- Location: FF_X40_Y44_N35
\C1|Ereg.registra\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \C1|Eprox.registra~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|Ereg.registra~q\);

-- Location: FF_X40_Y44_N53
\C1|Ereg.soma\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \C1|Ereg.registra~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|Ereg.soma~q\);

-- Location: FF_X40_Y44_N50
\C1|Ereg.esperasoma\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \C1|Ereg.soma~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|Ereg.esperasoma~q\);

-- Location: LABCELL_X40_Y44_N36
\C1|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Selector3~0_combout\ = ( \C1|Ereg.espera~q\ & ( \C1|Ereg.esperasoma~q\ ) ) # ( !\C1|Ereg.espera~q\ & ( \C1|Ereg.esperasoma~q\ ) ) # ( \C1|Ereg.espera~q\ & ( !\C1|Ereg.esperasoma~q\ & ( \iniciar~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_iniciar~input_o\,
	datae => \C1|ALT_INV_Ereg.espera~q\,
	dataf => \C1|ALT_INV_Ereg.esperasoma~q\,
	combout => \C1|Selector3~0_combout\);

-- Location: FF_X40_Y44_N38
\C1|Ereg.espera\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \C1|Selector3~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|Ereg.espera~q\);

-- Location: LABCELL_X40_Y44_N57
\C1|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Selector0~0_combout\ = ( \C1|Ereg.parado~q\ & ( \C1|Ereg.espera~q\ & ( (!\C1|Ereg.zera~q\ & \iniciar~input_o\) ) ) ) # ( !\C1|Ereg.parado~q\ & ( \C1|Ereg.espera~q\ & ( (!\C1|Ereg.zera~q\ & \iniciar~input_o\) ) ) ) # ( \C1|Ereg.parado~q\ & ( 
-- !\C1|Ereg.espera~q\ & ( (!\C1|Ereg.zera~q\) # ((\zerar~input_o\ & !\iniciar~input_o\)) ) ) ) # ( !\C1|Ereg.parado~q\ & ( !\C1|Ereg.espera~q\ & ( (!\iniciar~input_o\ & (\zerar~input_o\)) # (\iniciar~input_o\ & ((!\C1|Ereg.zera~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111110000111101011111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zerar~input_o\,
	datac => \C1|ALT_INV_Ereg.zera~q\,
	datad => \ALT_INV_iniciar~input_o\,
	datae => \C1|ALT_INV_Ereg.parado~q\,
	dataf => \C1|ALT_INV_Ereg.espera~q\,
	combout => \C1|Selector0~0_combout\);

-- Location: FF_X40_Y44_N59
\C1|Ereg.parado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \C1|Selector0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|Ereg.parado~q\);

-- Location: LABCELL_X40_Y44_N21
\C1|Eprox.iniciado~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Eprox.iniciado~0_combout\ = ( \iniciar~input_o\ & ( !\C1|Ereg.parado~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_iniciar~input_o\,
	dataf => \C1|ALT_INV_Ereg.parado~q\,
	combout => \C1|Eprox.iniciado~0_combout\);

-- Location: FF_X40_Y44_N23
\C1|Ereg.iniciado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \C1|Eprox.iniciado~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|Ereg.iniciado~q\);

-- Location: LABCELL_X40_Y44_N15
\C1|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Selector2~0_combout\ = ( \C1|Ereg.medindo~q\ & ( \A1|C1|Ereg.EPRONTO~q\ & ( \C1|Ereg.iniciado~q\ ) ) ) # ( !\C1|Ereg.medindo~q\ & ( \A1|C1|Ereg.EPRONTO~q\ & ( \C1|Ereg.iniciado~q\ ) ) ) # ( \C1|Ereg.medindo~q\ & ( !\A1|C1|Ereg.EPRONTO~q\ ) ) # ( 
-- !\C1|Ereg.medindo~q\ & ( !\A1|C1|Ereg.EPRONTO~q\ & ( \C1|Ereg.iniciado~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \C1|ALT_INV_Ereg.iniciado~q\,
	datae => \C1|ALT_INV_Ereg.medindo~q\,
	dataf => \A1|C1|ALT_INV_Ereg.EPRONTO~q\,
	combout => \C1|Selector2~0_combout\);

-- Location: FF_X40_Y44_N16
\C1|Ereg.medindo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \C1|Selector2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|Ereg.medindo~q\);

-- Location: FF_X39_Y44_N14
\A1|C1|Ereg.INICIAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \A1|C1|Selector0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|C1|Ereg.INICIAL~q\);

-- Location: LABCELL_X39_Y44_N12
\A1|C1|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|C1|Selector0~0_combout\ = ( \A1|C1|Ereg.LIMPA~q\ & ( (\C1|Ereg.iniciado~q\) # (\C1|Ereg.medindo~q\) ) ) # ( !\A1|C1|Ereg.LIMPA~q\ & ( ((\A1|C1|Ereg.INICIAL~q\) # (\C1|Ereg.iniciado~q\)) # (\C1|Ereg.medindo~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111111010111111111111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_Ereg.medindo~q\,
	datac => \C1|ALT_INV_Ereg.iniciado~q\,
	datad => \A1|C1|ALT_INV_Ereg.INICIAL~q\,
	dataf => \A1|C1|ALT_INV_Ereg.LIMPA~q\,
	combout => \A1|C1|Selector0~0_combout\);

-- Location: FF_X39_Y44_N13
\A1|C1|Ereg.INICIAL~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \A1|C1|Selector0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|C1|Ereg.INICIAL~DUPLICATE_q\);

-- Location: LABCELL_X39_Y44_N57
\A1|C1|Eprox.CONTA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|C1|Eprox.CONTA~0_combout\ = ( \A1|C1|Ereg.INICIAL~DUPLICATE_q\ & ( (\pulso~input_o\ & (!\A1|C1|Ereg.EPRONTO~q\ & !\A1|C1|Ereg.LIMPA~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pulso~input_o\,
	datac => \A1|C1|ALT_INV_Ereg.EPRONTO~q\,
	datad => \A1|C1|ALT_INV_Ereg.LIMPA~q\,
	dataf => \A1|C1|ALT_INV_Ereg.INICIAL~DUPLICATE_q\,
	combout => \A1|C1|Eprox.CONTA~0_combout\);

-- Location: FF_X39_Y44_N59
\A1|C1|Ereg.CONTA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \A1|C1|Eprox.CONTA~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|C1|Ereg.CONTA~q\);

-- Location: LABCELL_X39_Y44_N6
\A1|C1|Eprox.EPRONTO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|C1|Eprox.EPRONTO~0_combout\ = (!\pulso~input_o\ & \A1|C1|Ereg.CONTA~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_pulso~input_o\,
	datad => \A1|C1|ALT_INV_Ereg.CONTA~q\,
	combout => \A1|C1|Eprox.EPRONTO~0_combout\);

-- Location: FF_X39_Y44_N8
\A1|C1|Ereg.EPRONTO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \A1|C1|Eprox.EPRONTO~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|C1|Ereg.EPRONTO~q\);

-- Location: FF_X39_Y44_N56
\A1|C1|Ereg.LIMPA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \A1|C1|Ereg.EPRONTO~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|C1|Ereg.LIMPA~q\);

-- Location: LABCELL_X39_Y44_N54
\A1|D2|IQ[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|D2|IQ[3]~1_combout\ = ( \A1|C1|Ereg.INICIAL~DUPLICATE_q\ & ( (\A1|C1|Ereg.LIMPA~q\) # (\A1|C1|Ereg.CONTA~q\) ) ) # ( !\A1|C1|Ereg.INICIAL~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \A1|C1|ALT_INV_Ereg.CONTA~q\,
	datad => \A1|C1|ALT_INV_Ereg.LIMPA~q\,
	dataf => \A1|C1|ALT_INV_Ereg.INICIAL~DUPLICATE_q\,
	combout => \A1|D2|IQ[3]~1_combout\);

-- Location: FF_X39_Y44_N26
\A1|D2|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \A1|D2|IQ~0_combout\,
	ena => \A1|D2|IQ[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|D2|IQ\(0));

-- Location: LABCELL_X39_Y44_N24
\A1|D2|IQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|D2|IQ~0_combout\ = ( \A1|C1|Ereg.INICIAL~DUPLICATE_q\ & ( (!\A1|C1|Ereg.LIMPA~q\ & !\A1|D2|IQ\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \A1|C1|ALT_INV_Ereg.LIMPA~q\,
	datad => \A1|D2|ALT_INV_IQ\(0),
	dataf => \A1|C1|ALT_INV_Ereg.INICIAL~DUPLICATE_q\,
	combout => \A1|D2|IQ~0_combout\);

-- Location: FF_X39_Y44_N25
\A1|D2|IQ[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \A1|D2|IQ~0_combout\,
	ena => \A1|D2|IQ[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|D2|IQ[0]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y44_N30
\R1|IQ[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|IQ[3]~0_combout\ = ( \C1|Ereg.registra~q\ & ( !\C1|Ereg.zera~q\ ) ) # ( !\C1|Ereg.registra~q\ & ( \C1|Ereg.zera~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|ALT_INV_Ereg.zera~q\,
	dataf => \C1|ALT_INV_Ereg.registra~q\,
	combout => \R1|IQ[3]~0_combout\);

-- Location: FF_X39_Y44_N1
\R1|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \A1|D2|IQ[0]~DUPLICATE_q\,
	sclr => \C1|Ereg.zera~q\,
	sload => VCC,
	ena => \R1|IQ[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|IQ\(0));

-- Location: FF_X44_Y44_N22
\R1|Q[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R1|IQ\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|Q[0]~DUPLICATE_q\);

-- Location: FF_X39_Y44_N23
\A1|D2|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \A1|D2|IQ~2_combout\,
	ena => \A1|D2|IQ[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|D2|IQ\(1));

-- Location: LABCELL_X39_Y44_N21
\A1|D2|IQ~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|D2|IQ~2_combout\ = ( \A1|D2|IQ[0]~DUPLICATE_q\ & ( (!\A1|C1|Ereg.LIMPA~q\ & (\A1|C1|Ereg.INICIAL~q\ & !\A1|D2|IQ\(1))) ) ) # ( !\A1|D2|IQ[0]~DUPLICATE_q\ & ( (!\A1|C1|Ereg.LIMPA~q\ & (\A1|C1|Ereg.INICIAL~q\ & \A1|D2|IQ\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|C1|ALT_INV_Ereg.LIMPA~q\,
	datac => \A1|C1|ALT_INV_Ereg.INICIAL~q\,
	datad => \A1|D2|ALT_INV_IQ\(1),
	dataf => \A1|D2|ALT_INV_IQ[0]~DUPLICATE_q\,
	combout => \A1|D2|IQ~2_combout\);

-- Location: FF_X39_Y44_N22
\A1|D2|IQ[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \A1|D2|IQ~2_combout\,
	ena => \A1|D2|IQ[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|D2|IQ[1]~DUPLICATE_q\);

-- Location: LABCELL_X39_Y44_N30
\R1|IQ[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|IQ[1]~feeder_combout\ = ( \A1|D2|IQ[1]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \A1|D2|ALT_INV_IQ[1]~DUPLICATE_q\,
	combout => \R1|IQ[1]~feeder_combout\);

-- Location: FF_X39_Y44_N31
\R1|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R1|IQ[1]~feeder_combout\,
	sclr => \C1|Ereg.zera~q\,
	ena => \R1|IQ[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|IQ\(1));

-- Location: FF_X44_Y44_N56
\R1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R1|IQ\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|Q\(1));

-- Location: FF_X39_Y44_N19
\A1|D2|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \A1|D2|IQ~3_combout\,
	ena => \A1|D2|IQ[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|D2|IQ\(2));

-- Location: LABCELL_X39_Y44_N18
\A1|D2|IQ~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|D2|IQ~3_combout\ = ( \A1|D2|IQ[1]~DUPLICATE_q\ & ( (!\A1|C1|Ereg.LIMPA~q\ & (\A1|C1|Ereg.INICIAL~q\ & (!\A1|D2|IQ\(0) $ (!\A1|D2|IQ\(2))))) ) ) # ( !\A1|D2|IQ[1]~DUPLICATE_q\ & ( (!\A1|C1|Ereg.LIMPA~q\ & (\A1|C1|Ereg.INICIAL~q\ & \A1|D2|IQ\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000010001000000000001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|C1|ALT_INV_Ereg.LIMPA~q\,
	datab => \A1|C1|ALT_INV_Ereg.INICIAL~q\,
	datac => \A1|D2|ALT_INV_IQ\(0),
	datad => \A1|D2|ALT_INV_IQ\(2),
	dataf => \A1|D2|ALT_INV_IQ[1]~DUPLICATE_q\,
	combout => \A1|D2|IQ~3_combout\);

-- Location: FF_X39_Y44_N20
\A1|D2|IQ[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \A1|D2|IQ~3_combout\,
	ena => \A1|D2|IQ[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|D2|IQ[2]~DUPLICATE_q\);

-- Location: LABCELL_X39_Y44_N33
\R1|IQ[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|IQ[2]~feeder_combout\ = ( \A1|D2|IQ[2]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \A1|D2|ALT_INV_IQ[2]~DUPLICATE_q\,
	combout => \R1|IQ[2]~feeder_combout\);

-- Location: FF_X39_Y44_N34
\R1|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R1|IQ[2]~feeder_combout\,
	sclr => \C1|Ereg.zera~q\,
	ena => \R1|IQ[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|IQ\(2));

-- Location: FF_X44_Y44_N53
\R1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R1|IQ\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|Q\(2));

-- Location: FF_X39_Y44_N37
\A1|D2|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \A1|D2|IQ~4_combout\,
	ena => \A1|D2|IQ[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|D2|IQ\(3));

-- Location: LABCELL_X39_Y44_N36
\A1|D2|IQ~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|D2|IQ~4_combout\ = ( \A1|D2|IQ\(3) & ( \A1|D2|IQ[2]~DUPLICATE_q\ & ( (\A1|C1|Ereg.INICIAL~DUPLICATE_q\ & (!\A1|C1|Ereg.LIMPA~q\ & ((!\A1|D2|IQ\(0)) # (!\A1|D2|IQ\(1))))) ) ) ) # ( !\A1|D2|IQ\(3) & ( \A1|D2|IQ[2]~DUPLICATE_q\ & ( (\A1|D2|IQ\(0) & 
-- (\A1|C1|Ereg.INICIAL~DUPLICATE_q\ & (\A1|D2|IQ\(1) & !\A1|C1|Ereg.LIMPA~q\))) ) ) ) # ( \A1|D2|IQ\(3) & ( !\A1|D2|IQ[2]~DUPLICATE_q\ & ( (\A1|C1|Ereg.INICIAL~DUPLICATE_q\ & !\A1|C1|Ereg.LIMPA~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000000000000001000000000011001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|D2|ALT_INV_IQ\(0),
	datab => \A1|C1|ALT_INV_Ereg.INICIAL~DUPLICATE_q\,
	datac => \A1|D2|ALT_INV_IQ\(1),
	datad => \A1|C1|ALT_INV_Ereg.LIMPA~q\,
	datae => \A1|D2|ALT_INV_IQ\(3),
	dataf => \A1|D2|ALT_INV_IQ[2]~DUPLICATE_q\,
	combout => \A1|D2|IQ~4_combout\);

-- Location: FF_X39_Y44_N38
\A1|D2|IQ[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \A1|D2|IQ~4_combout\,
	ena => \A1|D2|IQ[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|D2|IQ[3]~DUPLICATE_q\);

-- Location: FF_X39_Y44_N4
\R1|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \A1|D2|IQ[3]~DUPLICATE_q\,
	sclr => \C1|Ereg.zera~q\,
	sload => VCC,
	ena => \R1|IQ[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|IQ\(3));

-- Location: FF_X44_Y44_N17
\R1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R1|IQ\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|Q\(3));

-- Location: LABCELL_X39_Y44_N3
\C1|WideNor0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|WideNor0~combout\ = (\C1|Ereg.iniciado~q\) # (\C1|Ereg.medindo~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_Ereg.medindo~q\,
	datad => \C1|ALT_INV_Ereg.iniciado~q\,
	combout => \C1|WideNor0~combout\);

-- Location: LABCELL_X39_Y44_N27
\Ds_medida|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ds_medida|Mux0~0_combout\ = ( \A1|D2|IQ[2]~DUPLICATE_q\ & ( (!\A1|D2|IQ[1]~DUPLICATE_q\ & (!\A1|D2|IQ[0]~DUPLICATE_q\ $ (\A1|D2|IQ[3]~DUPLICATE_q\))) ) ) # ( !\A1|D2|IQ[2]~DUPLICATE_q\ & ( (\A1|D2|IQ[0]~DUPLICATE_q\ & (!\A1|D2|IQ[1]~DUPLICATE_q\ $ 
-- (\A1|D2|IQ[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000011000011000000001111000000000011001100000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \A1|D2|ALT_INV_IQ[1]~DUPLICATE_q\,
	datac => \A1|D2|ALT_INV_IQ[0]~DUPLICATE_q\,
	datad => \A1|D2|ALT_INV_IQ[3]~DUPLICATE_q\,
	dataf => \A1|D2|ALT_INV_IQ[2]~DUPLICATE_q\,
	combout => \Ds_medida|Mux0~0_combout\);

-- Location: LABCELL_X39_Y44_N9
\Ds_medida|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ds_medida|Mux1~0_combout\ = ( \A1|D2|IQ[1]~DUPLICATE_q\ & ( (!\A1|D2|IQ[0]~DUPLICATE_q\ & (\A1|D2|IQ[2]~DUPLICATE_q\)) # (\A1|D2|IQ[0]~DUPLICATE_q\ & ((\A1|D2|IQ[3]~DUPLICATE_q\))) ) ) # ( !\A1|D2|IQ[1]~DUPLICATE_q\ & ( (\A1|D2|IQ[2]~DUPLICATE_q\ & 
-- (!\A1|D2|IQ[0]~DUPLICATE_q\ $ (!\A1|D2|IQ[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000001010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|D2|ALT_INV_IQ[2]~DUPLICATE_q\,
	datac => \A1|D2|ALT_INV_IQ[0]~DUPLICATE_q\,
	datad => \A1|D2|ALT_INV_IQ[3]~DUPLICATE_q\,
	dataf => \A1|D2|ALT_INV_IQ[1]~DUPLICATE_q\,
	combout => \Ds_medida|Mux1~0_combout\);

-- Location: LABCELL_X39_Y44_N48
\Ds_medida|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ds_medida|Mux2~0_combout\ = ( \A1|D2|IQ\(0) & ( (\A1|D2|IQ[2]~DUPLICATE_q\ & (\A1|D2|IQ[1]~DUPLICATE_q\ & \A1|D2|IQ[3]~DUPLICATE_q\)) ) ) # ( !\A1|D2|IQ\(0) & ( (!\A1|D2|IQ[2]~DUPLICATE_q\ & (\A1|D2|IQ[1]~DUPLICATE_q\ & !\A1|D2|IQ[3]~DUPLICATE_q\)) # 
-- (\A1|D2|IQ[2]~DUPLICATE_q\ & ((\A1|D2|IQ[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010100100101001001010010010100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|D2|ALT_INV_IQ[2]~DUPLICATE_q\,
	datab => \A1|D2|ALT_INV_IQ[1]~DUPLICATE_q\,
	datac => \A1|D2|ALT_INV_IQ[3]~DUPLICATE_q\,
	dataf => \A1|D2|ALT_INV_IQ\(0),
	combout => \Ds_medida|Mux2~0_combout\);

-- Location: LABCELL_X39_Y44_N51
\Ds_medida|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ds_medida|Mux3~0_combout\ = ( \A1|D2|IQ\(0) & ( (!\A1|D2|IQ[2]~DUPLICATE_q\ & (!\A1|D2|IQ[1]~DUPLICATE_q\ & !\A1|D2|IQ[3]~DUPLICATE_q\)) # (\A1|D2|IQ[2]~DUPLICATE_q\ & (\A1|D2|IQ[1]~DUPLICATE_q\)) ) ) # ( !\A1|D2|IQ\(0) & ( (!\A1|D2|IQ[2]~DUPLICATE_q\ & 
-- (\A1|D2|IQ[1]~DUPLICATE_q\ & \A1|D2|IQ[3]~DUPLICATE_q\)) # (\A1|D2|IQ[2]~DUPLICATE_q\ & (!\A1|D2|IQ[1]~DUPLICATE_q\ & !\A1|D2|IQ[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001010010100000000101010100101000001011010010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|D2|ALT_INV_IQ[2]~DUPLICATE_q\,
	datac => \A1|D2|ALT_INV_IQ[1]~DUPLICATE_q\,
	datad => \A1|D2|ALT_INV_IQ[3]~DUPLICATE_q\,
	dataf => \A1|D2|ALT_INV_IQ\(0),
	combout => \Ds_medida|Mux3~0_combout\);

-- Location: LABCELL_X39_Y44_N42
\Ds_medida|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ds_medida|Mux4~0_combout\ = ( \A1|D2|IQ[1]~DUPLICATE_q\ & ( (\A1|D2|IQ\(0) & !\A1|D2|IQ[3]~DUPLICATE_q\) ) ) # ( !\A1|D2|IQ[1]~DUPLICATE_q\ & ( (!\A1|D2|IQ[2]~DUPLICATE_q\ & (\A1|D2|IQ\(0))) # (\A1|D2|IQ[2]~DUPLICATE_q\ & ((!\A1|D2|IQ[3]~DUPLICATE_q\))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100001010010111110000101000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|D2|ALT_INV_IQ[2]~DUPLICATE_q\,
	datac => \A1|D2|ALT_INV_IQ\(0),
	datad => \A1|D2|ALT_INV_IQ[3]~DUPLICATE_q\,
	dataf => \A1|D2|ALT_INV_IQ[1]~DUPLICATE_q\,
	combout => \Ds_medida|Mux4~0_combout\);

-- Location: LABCELL_X39_Y44_N45
\Ds_medida|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ds_medida|Mux5~0_combout\ = ( \A1|D2|IQ[1]~DUPLICATE_q\ & ( (!\A1|D2|IQ[2]~DUPLICATE_q\ & !\A1|D2|IQ[3]~DUPLICATE_q\) ) ) # ( !\A1|D2|IQ[1]~DUPLICATE_q\ & ( (\A1|D2|IQ[0]~DUPLICATE_q\ & (!\A1|D2|IQ[2]~DUPLICATE_q\ $ (\A1|D2|IQ[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000101000010100000010110101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|D2|ALT_INV_IQ[2]~DUPLICATE_q\,
	datac => \A1|D2|ALT_INV_IQ[0]~DUPLICATE_q\,
	datad => \A1|D2|ALT_INV_IQ[3]~DUPLICATE_q\,
	dataf => \A1|D2|ALT_INV_IQ[1]~DUPLICATE_q\,
	combout => \Ds_medida|Mux5~0_combout\);

-- Location: LABCELL_X39_Y44_N15
\Ds_medida|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ds_medida|Mux6~0_combout\ = ( \A1|D2|IQ[2]~DUPLICATE_q\ & ( (!\A1|D2|IQ[1]~DUPLICATE_q\ & ((!\A1|D2|IQ[3]~DUPLICATE_q\) # (\A1|D2|IQ[0]~DUPLICATE_q\))) # (\A1|D2|IQ[1]~DUPLICATE_q\ & ((!\A1|D2|IQ[0]~DUPLICATE_q\) # (\A1|D2|IQ[3]~DUPLICATE_q\))) ) ) # ( 
-- !\A1|D2|IQ[2]~DUPLICATE_q\ & ( (\A1|D2|IQ[3]~DUPLICATE_q\) # (\A1|D2|IQ[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111111111100001111111111110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \A1|D2|ALT_INV_IQ[1]~DUPLICATE_q\,
	datac => \A1|D2|ALT_INV_IQ[0]~DUPLICATE_q\,
	datad => \A1|D2|ALT_INV_IQ[3]~DUPLICATE_q\,
	dataf => \A1|D2|ALT_INV_IQ[2]~DUPLICATE_q\,
	combout => \Ds_medida|Mux6~0_combout\);

-- Location: LABCELL_X44_Y44_N15
\Dmedida|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Dmedida|Mux0~0_combout\ = ( \R1|Q\(2) & ( (!\R1|Q\(1) & (!\R1|Q[0]~DUPLICATE_q\ $ (\R1|Q\(3)))) ) ) # ( !\R1|Q\(2) & ( (\R1|Q[0]~DUPLICATE_q\ & (!\R1|Q\(1) $ (\R1|Q\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000011001100000000001111000000001100001100000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \R1|ALT_INV_Q[0]~DUPLICATE_q\,
	datac => \R1|ALT_INV_Q\(1),
	datad => \R1|ALT_INV_Q\(3),
	dataf => \R1|ALT_INV_Q\(2),
	combout => \Dmedida|Mux0~0_combout\);

-- Location: LABCELL_X44_Y44_N54
\Dmedida|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Dmedida|Mux1~0_combout\ = ( \R1|Q\(2) & ( (!\R1|Q[0]~DUPLICATE_q\ & ((\R1|Q\(1)) # (\R1|Q\(3)))) # (\R1|Q[0]~DUPLICATE_q\ & (!\R1|Q\(3) $ (\R1|Q\(1)))) ) ) # ( !\R1|Q\(2) & ( (\R1|Q[0]~DUPLICATE_q\ & (\R1|Q\(3) & \R1|Q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101100110101110110110011010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q[0]~DUPLICATE_q\,
	datab => \R1|ALT_INV_Q\(3),
	datad => \R1|ALT_INV_Q\(1),
	dataf => \R1|ALT_INV_Q\(2),
	combout => \Dmedida|Mux1~0_combout\);

-- Location: LABCELL_X44_Y44_N27
\Dmedida|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Dmedida|Mux2~0_combout\ = ( \R1|Q\(1) & ( (!\R1|Q\(2) & (!\R1|Q[0]~DUPLICATE_q\ & !\R1|Q\(3))) # (\R1|Q\(2) & ((\R1|Q\(3)))) ) ) # ( !\R1|Q\(1) & ( (\R1|Q\(2) & (!\R1|Q[0]~DUPLICATE_q\ & \R1|Q\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100100001011000010100000100000001001000010110000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(2),
	datab => \R1|ALT_INV_Q[0]~DUPLICATE_q\,
	datac => \R1|ALT_INV_Q\(3),
	datae => \R1|ALT_INV_Q\(1),
	combout => \Dmedida|Mux2~0_combout\);

-- Location: LABCELL_X44_Y44_N12
\Dmedida|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Dmedida|Mux3~0_combout\ = ( \R1|Q\(1) & ( (!\R1|Q\(2) & (!\R1|Q[0]~DUPLICATE_q\ & \R1|Q\(3))) # (\R1|Q\(2) & (\R1|Q[0]~DUPLICATE_q\)) ) ) # ( !\R1|Q\(1) & ( (!\R1|Q\(3) & (!\R1|Q\(2) $ (!\R1|Q[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011000000110000000011001000110010001100100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(2),
	datab => \R1|ALT_INV_Q[0]~DUPLICATE_q\,
	datac => \R1|ALT_INV_Q\(3),
	dataf => \R1|ALT_INV_Q\(1),
	combout => \Dmedida|Mux3~0_combout\);

-- Location: LABCELL_X44_Y44_N48
\Dmedida|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Dmedida|Mux4~0_combout\ = (!\R1|Q\(1) & ((!\R1|Q\(2) & ((\R1|Q[0]~DUPLICATE_q\))) # (\R1|Q\(2) & (!\R1|Q\(3))))) # (\R1|Q\(1) & (!\R1|Q\(3) & ((\R1|Q[0]~DUPLICATE_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(3),
	datab => \R1|ALT_INV_Q\(1),
	datac => \R1|ALT_INV_Q\(2),
	datad => \R1|ALT_INV_Q[0]~DUPLICATE_q\,
	combout => \Dmedida|Mux4~0_combout\);

-- Location: LABCELL_X44_Y44_N51
\Dmedida|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Dmedida|Mux5~0_combout\ = (!\R1|Q\(1) & (\R1|Q[0]~DUPLICATE_q\ & (!\R1|Q\(3) $ (\R1|Q\(2))))) # (\R1|Q\(1) & (!\R1|Q\(3) & ((!\R1|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000000100001010100000010000101010000001000010101000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(3),
	datab => \R1|ALT_INV_Q\(1),
	datac => \R1|ALT_INV_Q[0]~DUPLICATE_q\,
	datad => \R1|ALT_INV_Q\(2),
	combout => \Dmedida|Mux5~0_combout\);

-- Location: LABCELL_X44_Y44_N57
\Dmedida|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Dmedida|Mux6~0_combout\ = ( \R1|Q\(2) & ( (!\R1|Q[0]~DUPLICATE_q\ & ((!\R1|Q\(3)) # (\R1|Q\(1)))) # (\R1|Q[0]~DUPLICATE_q\ & ((!\R1|Q\(1)) # (\R1|Q\(3)))) ) ) # ( !\R1|Q\(2) & ( (\R1|Q\(1)) # (\R1|Q\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111110101101011111111010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q[0]~DUPLICATE_q\,
	datac => \R1|ALT_INV_Q\(3),
	datad => \R1|ALT_INV_Q\(1),
	dataf => \R1|ALT_INV_Q\(2),
	combout => \Dmedida|Mux6~0_combout\);

-- Location: FF_X44_Y44_N23
\R1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R1|IQ\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|Q\(0));

-- Location: LABCELL_X44_Y44_N30
\S1|s1|S[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1|s1|S\(0) = SUM(( !\R2|Q\(0) $ (!\R1|Q\(0)) ) + ( !VCC ) + ( !VCC ))
-- \S1|s1|_~1\ = CARRY(( !\R2|Q\(0) $ (!\R1|Q\(0)) ) + ( !VCC ) + ( !VCC ))
-- \S1|s1|_~2\ = SHARE((\R2|Q\(0) & \R1|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \R2|ALT_INV_Q\(0),
	datad => \R1|ALT_INV_Q\(0),
	cin => GND,
	sharein => GND,
	sumout => \S1|s1|S\(0),
	cout => \S1|s1|_~1\,
	shareout => \S1|s1|_~2\);

-- Location: LABCELL_X40_Y44_N48
\R2|IQ[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R2|IQ[0]~0_combout\ = ( \C1|Ereg.esperasoma~q\ & ( !\C1|Ereg.zera~q\ ) ) # ( !\C1|Ereg.esperasoma~q\ & ( \C1|Ereg.zera~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110000110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|ALT_INV_Ereg.zera~q\,
	datae => \C1|ALT_INV_Ereg.esperasoma~q\,
	combout => \R2|IQ[0]~0_combout\);

-- Location: FF_X44_Y44_N46
\R2|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \S1|s1|S\(0),
	sclr => \C1|Ereg.zera~q\,
	sload => VCC,
	ena => \R2|IQ[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|IQ\(0));

-- Location: FF_X44_Y44_N50
\R2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R2|IQ\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|Q\(0));

-- Location: LABCELL_X44_Y44_N33
\S1|s1|S[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1|s1|S\(1) = SUM(( !\R2|Q\(1) $ (!\R1|Q\(1)) ) + ( \S1|s1|_~2\ ) + ( \S1|s1|_~1\ ))
-- \S1|s1|_~7\ = CARRY(( !\R2|Q\(1) $ (!\R1|Q\(1)) ) + ( \S1|s1|_~2\ ) + ( \S1|s1|_~1\ ))
-- \S1|s1|_~8\ = SHARE((\R2|Q\(1) & \R1|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \R2|ALT_INV_Q\(1),
	datad => \R1|ALT_INV_Q\(1),
	cin => \S1|s1|_~1\,
	sharein => \S1|s1|_~2\,
	sumout => \S1|s1|S\(1),
	cout => \S1|s1|_~7\,
	shareout => \S1|s1|_~8\);

-- Location: LABCELL_X44_Y44_N36
\S1|s1|S[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1|s1|S\(2) = SUM(( !\R2|Q[2]~DUPLICATE_q\ $ (!\R1|Q\(2)) ) + ( \S1|s1|_~8\ ) + ( \S1|s1|_~7\ ))
-- \S1|s1|_~13\ = CARRY(( !\R2|Q[2]~DUPLICATE_q\ $ (!\R1|Q\(2)) ) + ( \S1|s1|_~8\ ) + ( \S1|s1|_~7\ ))
-- \S1|s1|_~14\ = SHARE((\R2|Q[2]~DUPLICATE_q\ & \R1|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \R2|ALT_INV_Q[2]~DUPLICATE_q\,
	datac => \R1|ALT_INV_Q\(2),
	cin => \S1|s1|_~7\,
	sharein => \S1|s1|_~8\,
	sumout => \S1|s1|S\(2),
	cout => \S1|s1|_~13\,
	shareout => \S1|s1|_~14\);

-- Location: LABCELL_X44_Y44_N39
\S1|s1|S[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1|s1|S\(3) = SUM(( !\R1|Q\(3) $ (!\R2|Q\(3)) ) + ( \S1|s1|_~14\ ) + ( \S1|s1|_~13\ ))
-- \S1|s1|_~4\ = CARRY(( !\R1|Q\(3) $ (!\R2|Q\(3)) ) + ( \S1|s1|_~14\ ) + ( \S1|s1|_~13\ ))
-- \S1|s1|_~5\ = SHARE((\R1|Q\(3) & \R2|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \R1|ALT_INV_Q\(3),
	datad => \R2|ALT_INV_Q\(3),
	cin => \S1|s1|_~13\,
	sharein => \S1|s1|_~14\,
	sumout => \S1|s1|S\(3),
	cout => \S1|s1|_~4\,
	shareout => \S1|s1|_~5\);

-- Location: LABCELL_X44_Y44_N42
\S1|s1|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1|s1|Cout~sumout\ = SUM(( GND ) + ( \S1|s1|_~5\ ) + ( \S1|s1|_~4\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \S1|s1|_~4\,
	sharein => \S1|s1|_~5\,
	sumout => \S1|s1|Cout~sumout\);

-- Location: LABCELL_X44_Y44_N0
\S1|s2|S[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1|s2|S\(1) = SUM(( (!\S1|s1|S\(1) & (((\S1|s1|S\(3) & \S1|s1|S\(2))) # (\S1|s1|Cout~sumout\))) # (\S1|s1|S\(1) & (!\S1|s1|S\(3) & ((!\S1|s1|Cout~sumout\)))) ) + ( !VCC ) + ( !VCC ))
-- \S1|s2|_~1\ = CARRY(( (!\S1|s1|S\(1) & (((\S1|s1|S\(3) & \S1|s1|S\(2))) # (\S1|s1|Cout~sumout\))) # (\S1|s1|S\(1) & (!\S1|s1|S\(3) & ((!\S1|s1|Cout~sumout\)))) ) + ( !VCC ) + ( !VCC ))
-- \S1|s2|_~2\ = SHARE((\S1|s1|S\(1) & ((\S1|s1|Cout~sumout\) # (\S1|s1|S\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010101010100000000000000000100011010101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \S1|s1|ALT_INV_S\(1),
	datab => \S1|s1|ALT_INV_S\(3),
	datac => \S1|s1|ALT_INV_S\(2),
	datad => \S1|s1|ALT_INV_Cout~sumout\,
	cin => GND,
	sharein => GND,
	sumout => \S1|s2|S\(1),
	cout => \S1|s2|_~1\,
	shareout => \S1|s2|_~2\);

-- Location: FF_X44_Y44_N2
\R2|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \S1|s2|S\(1),
	sclr => \C1|Ereg.zera~q\,
	ena => \R2|IQ[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|IQ\(1));

-- Location: FF_X44_Y44_N14
\R2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R2|IQ\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|Q\(1));

-- Location: LABCELL_X44_Y44_N3
\S1|s2|S[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1|s2|S\(2) = SUM(( (!\S1|s1|S\(3) & ((!\S1|s1|Cout~sumout\ $ (!\S1|s1|S\(2))))) # (\S1|s1|S\(3) & (!\S1|s1|S\(2) & ((\S1|s1|Cout~sumout\) # (\S1|s1|S\(1))))) ) + ( \S1|s2|_~2\ ) + ( \S1|s2|_~1\ ))
-- \S1|s2|_~4\ = CARRY(( (!\S1|s1|S\(3) & ((!\S1|s1|Cout~sumout\ $ (!\S1|s1|S\(2))))) # (\S1|s1|S\(3) & (!\S1|s1|S\(2) & ((\S1|s1|Cout~sumout\) # (\S1|s1|S\(1))))) ) + ( \S1|s2|_~2\ ) + ( \S1|s2|_~1\ ))
-- \S1|s2|_~5\ = SHARE((\S1|s1|S\(2) & ((\S1|s1|Cout~sumout\) # (\S1|s1|S\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011111100000000000000000001111111000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \S1|s1|ALT_INV_S\(1),
	datab => \S1|s1|ALT_INV_S\(3),
	datac => \S1|s1|ALT_INV_Cout~sumout\,
	datad => \S1|s1|ALT_INV_S\(2),
	cin => \S1|s2|_~1\,
	sharein => \S1|s2|_~2\,
	sumout => \S1|s2|S\(2),
	cout => \S1|s2|_~4\,
	shareout => \S1|s2|_~5\);

-- Location: FF_X44_Y44_N5
\R2|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \S1|s2|S\(2),
	sclr => \C1|Ereg.zera~q\,
	ena => \R2|IQ[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|IQ\(2));

-- Location: FF_X44_Y44_N26
\R2|Q[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R2|IQ\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|Q[2]~DUPLICATE_q\);

-- Location: LABCELL_X44_Y44_N6
\S1|s2|S[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \S1|s2|S\(3) = SUM(( \S1|s1|S\(3) ) + ( \S1|s2|_~5\ ) + ( \S1|s2|_~4\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \S1|s1|ALT_INV_S\(3),
	cin => \S1|s2|_~4\,
	sharein => \S1|s2|_~5\,
	sumout => \S1|s2|S\(3));

-- Location: FF_X44_Y44_N8
\R2|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \S1|s2|S\(3),
	sclr => \C1|Ereg.zera~q\,
	ena => \R2|IQ[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|IQ\(3));

-- Location: FF_X44_Y44_N20
\R2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R2|IQ\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|Q\(3));

-- Location: LABCELL_X40_Y44_N27
\Dsoma|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Dsoma|Mux0~0_combout\ = ( \R2|Q\(0) & ( (!\R2|Q\(3) & (!\R2|Q[2]~DUPLICATE_q\ & !\R2|Q\(1))) # (\R2|Q\(3) & (!\R2|Q[2]~DUPLICATE_q\ $ (!\R2|Q\(1)))) ) ) # ( !\R2|Q\(0) & ( (!\R2|Q\(3) & (\R2|Q[2]~DUPLICATE_q\ & !\R2|Q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000010100101010100001010010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2|ALT_INV_Q\(3),
	datac => \R2|ALT_INV_Q[2]~DUPLICATE_q\,
	datad => \R2|ALT_INV_Q\(1),
	dataf => \R2|ALT_INV_Q\(0),
	combout => \Dsoma|Mux0~0_combout\);

-- Location: LABCELL_X40_Y44_N24
\Dsoma|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Dsoma|Mux1~0_combout\ = ( \R2|Q\(0) & ( (!\R2|Q\(1) & (\R2|Q[2]~DUPLICATE_q\ & !\R2|Q\(3))) # (\R2|Q\(1) & ((\R2|Q\(3)))) ) ) # ( !\R2|Q\(0) & ( (\R2|Q[2]~DUPLICATE_q\ & ((\R2|Q\(3)) # (\R2|Q\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001100110000000011110011000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \R2|ALT_INV_Q[2]~DUPLICATE_q\,
	datac => \R2|ALT_INV_Q\(1),
	datad => \R2|ALT_INV_Q\(3),
	dataf => \R2|ALT_INV_Q\(0),
	combout => \Dsoma|Mux1~0_combout\);

-- Location: LABCELL_X40_Y44_N6
\Dsoma|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Dsoma|Mux2~0_combout\ = ( \R2|Q\(0) & ( (\R2|Q\(3) & (\R2|Q[2]~DUPLICATE_q\ & \R2|Q\(1))) ) ) # ( !\R2|Q\(0) & ( (!\R2|Q\(3) & (!\R2|Q[2]~DUPLICATE_q\ & \R2|Q\(1))) # (\R2|Q\(3) & (\R2|Q[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110100101000001011010010100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2|ALT_INV_Q\(3),
	datac => \R2|ALT_INV_Q[2]~DUPLICATE_q\,
	datad => \R2|ALT_INV_Q\(1),
	dataf => \R2|ALT_INV_Q\(0),
	combout => \Dsoma|Mux2~0_combout\);

-- Location: LABCELL_X40_Y44_N9
\Dsoma|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Dsoma|Mux3~0_combout\ = ( \R2|Q\(0) & ( (!\R2|Q[2]~DUPLICATE_q\ & (!\R2|Q\(3) & !\R2|Q\(1))) # (\R2|Q[2]~DUPLICATE_q\ & ((\R2|Q\(1)))) ) ) # ( !\R2|Q\(0) & ( (!\R2|Q\(3) & (\R2|Q[2]~DUPLICATE_q\ & !\R2|Q\(1))) # (\R2|Q\(3) & (!\R2|Q[2]~DUPLICATE_q\ & 
-- \R2|Q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001010000000010100101000010100000000011111010000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2|ALT_INV_Q\(3),
	datac => \R2|ALT_INV_Q[2]~DUPLICATE_q\,
	datad => \R2|ALT_INV_Q\(1),
	dataf => \R2|ALT_INV_Q\(0),
	combout => \Dsoma|Mux3~0_combout\);

-- Location: LABCELL_X40_Y44_N0
\Dsoma|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Dsoma|Mux4~0_combout\ = ( \R2|Q\(0) & ( (!\R2|Q\(3)) # ((!\R2|Q[2]~DUPLICATE_q\ & !\R2|Q\(1))) ) ) # ( !\R2|Q\(0) & ( (\R2|Q[2]~DUPLICATE_q\ & (!\R2|Q\(1) & !\R2|Q\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000011111111110000001111111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \R2|ALT_INV_Q[2]~DUPLICATE_q\,
	datac => \R2|ALT_INV_Q\(1),
	datad => \R2|ALT_INV_Q\(3),
	dataf => \R2|ALT_INV_Q\(0),
	combout => \Dsoma|Mux4~0_combout\);

-- Location: LABCELL_X40_Y44_N3
\Dsoma|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Dsoma|Mux5~0_combout\ = ( \R2|Q\(0) & ( (!\R2|Q\(3) & (!\R2|Q[2]~DUPLICATE_q\)) # (\R2|Q\(3) & (\R2|Q[2]~DUPLICATE_q\ & !\R2|Q\(1))) ) ) # ( !\R2|Q\(0) & ( (!\R2|Q\(3) & (!\R2|Q[2]~DUPLICATE_q\ & \R2|Q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000010100101101000001010010110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2|ALT_INV_Q\(3),
	datac => \R2|ALT_INV_Q[2]~DUPLICATE_q\,
	datad => \R2|ALT_INV_Q\(1),
	dataf => \R2|ALT_INV_Q\(0),
	combout => \Dsoma|Mux5~0_combout\);

-- Location: FF_X44_Y44_N25
\R2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R2|IQ\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2|Q\(2));

-- Location: LABCELL_X44_Y44_N18
\Dsoma|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Dsoma|Mux6~0_combout\ = ( \R2|Q\(3) & ( ((!\R2|Q\(2)) # (\R2|Q\(0))) # (\R2|Q\(1)) ) ) # ( !\R2|Q\(3) & ( (!\R2|Q\(1) & (\R2|Q\(2))) # (\R2|Q\(1) & ((!\R2|Q\(2)) # (!\R2|Q\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011001110110110111111101111101110110011101101101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R2|ALT_INV_Q\(1),
	datab => \R2|ALT_INV_Q\(2),
	datac => \R2|ALT_INV_Q\(0),
	datae => \R2|ALT_INV_Q\(3),
	combout => \Dsoma|Mux6~0_combout\);

-- Location: LABCELL_X39_Y29_N0
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


