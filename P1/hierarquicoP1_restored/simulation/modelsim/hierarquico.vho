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

-- DATE "03/02/2017 22:16:34"

-- 
-- Device: Altera 5CEBA4F17C7 Package FBGA256
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
	saida : OUT std_logic_vector(7 DOWNTO 0);
	fim : OUT std_logic;
	s_m : OUT std_logic_vector(7 DOWNTO 0);
	saidaDisplay1 : OUT std_logic_vector(6 DOWNTO 0);
	saidaDisplay2 : OUT std_logic_vector(6 DOWNTO 0)
	);
END hierarquico;

-- Design Ports Information
-- saida[0]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[1]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[2]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[3]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[4]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[5]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[6]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[7]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fim	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_m[0]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_m[1]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_m[2]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_m[3]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_m[4]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_m[5]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_m[6]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_m[7]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay1[0]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay1[1]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay1[2]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay1[3]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay1[4]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay1[5]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay1[6]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay2[0]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay2[1]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay2[2]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay2[3]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay2[4]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay2[5]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay2[6]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iniciar	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zerar	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_saida : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_fim : std_logic;
SIGNAL ww_s_m : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_saidaDisplay1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_saidaDisplay2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \pulso~input_o\ : std_logic;
SIGNAL \iniciar~input_o\ : std_logic;
SIGNAL \zerar~input_o\ : std_logic;
SIGNAL \C1|Selector1~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \C1|Ereg.zera~q\ : std_logic;
SIGNAL \A1|C1|Eprox.EPRONTO~0_combout\ : std_logic;
SIGNAL \A1|C1|Ereg.EPRONTO~q\ : std_logic;
SIGNAL \C1|Ereg.medindo~q\ : std_logic;
SIGNAL \C1|Selector2~0_combout\ : std_logic;
SIGNAL \C1|Ereg.medindo~DUPLICATE_q\ : std_logic;
SIGNAL \C1|Eprox.registra~0_combout\ : std_logic;
SIGNAL \C1|Ereg.registra~DUPLICATE_q\ : std_logic;
SIGNAL \C1|Selector3~0_combout\ : std_logic;
SIGNAL \C1|Ereg.espera~q\ : std_logic;
SIGNAL \C1|Selector0~0_combout\ : std_logic;
SIGNAL \C1|Ereg.parado~q\ : std_logic;
SIGNAL \C1|Eprox.iniciado~0_combout\ : std_logic;
SIGNAL \C1|Ereg.iniciado~q\ : std_logic;
SIGNAL \A1|C1|Ereg.LIMPA~DUPLICATE_q\ : std_logic;
SIGNAL \A1|C1|Selector0~0_combout\ : std_logic;
SIGNAL \A1|C1|Ereg.INICIAL~q\ : std_logic;
SIGNAL \A1|C1|Eprox.CONTA~1_combout\ : std_logic;
SIGNAL \A1|C1|Ereg.CONTA~q\ : std_logic;
SIGNAL \A1|C1|Ereg.LIMPA~q\ : std_logic;
SIGNAL \A1|C1|Eprox.CONTA~0_combout\ : std_logic;
SIGNAL \A1|D1|IQ[1]~1_combout\ : std_logic;
SIGNAL \A1|D1|IQ[1]~DUPLICATE_q\ : std_logic;
SIGNAL \A1|D1|IQ[2]~2_combout\ : std_logic;
SIGNAL \A1|D1|IQ[3]~3_combout\ : std_logic;
SIGNAL \A1|D1|IQ[3]~DUPLICATE_q\ : std_logic;
SIGNAL \A1|D1|Equal0~0_combout\ : std_logic;
SIGNAL \A1|D1|IQ[0]~0_combout\ : std_logic;
SIGNAL \A1|D1|IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \C1|Ereg.registra~q\ : std_logic;
SIGNAL \R1|IQ[7]~0_combout\ : std_logic;
SIGNAL \R1|process_0~0_combout\ : std_logic;
SIGNAL \R1|IQ[1]~feeder_combout\ : std_logic;
SIGNAL \A1|D1|IQ[2]~DUPLICATE_q\ : std_logic;
SIGNAL \A1|D2|process_0~0_combout\ : std_logic;
SIGNAL \A1|D2|IQ[1]~1_combout\ : std_logic;
SIGNAL \A1|D2|IQ[1]~DUPLICATE_q\ : std_logic;
SIGNAL \A1|D2|IQ[2]~2_combout\ : std_logic;
SIGNAL \A1|D2|IQ[2]~DUPLICATE_q\ : std_logic;
SIGNAL \A1|D2|IQ[3]~3_combout\ : std_logic;
SIGNAL \A1|D2|Equal0~0_combout\ : std_logic;
SIGNAL \A1|D2|IQ[0]~0_combout\ : std_logic;
SIGNAL \A1|D2|IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \R1|IQ[4]~feeder_combout\ : std_logic;
SIGNAL \R1|IQ[6]~feeder_combout\ : std_logic;
SIGNAL \A1|D2|IQ[3]~DUPLICATE_q\ : std_logic;
SIGNAL \R1|IQ[7]~feeder_combout\ : std_logic;
SIGNAL \H1|Mux6~0_combout\ : std_logic;
SIGNAL \H1|Mux5~0_combout\ : std_logic;
SIGNAL \H1|Mux4~0_combout\ : std_logic;
SIGNAL \H1|Mux3~0_combout\ : std_logic;
SIGNAL \H1|Mux2~0_combout\ : std_logic;
SIGNAL \H1|Mux1~0_combout\ : std_logic;
SIGNAL \H1|Mux0~0_combout\ : std_logic;
SIGNAL \H2|Mux6~0_combout\ : std_logic;
SIGNAL \H2|Mux5~0_combout\ : std_logic;
SIGNAL \H2|Mux4~0_combout\ : std_logic;
SIGNAL \H2|Mux3~0_combout\ : std_logic;
SIGNAL \H2|Mux2~0_combout\ : std_logic;
SIGNAL \H2|Mux1~0_combout\ : std_logic;
SIGNAL \H2|Mux0~0_combout\ : std_logic;
SIGNAL \A1|D2|IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A1|D1|IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \R1|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \R1|IQ\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C1|ALT_INV_Ereg.medindo~DUPLICATE_q\ : std_logic;
SIGNAL \A1|C1|ALT_INV_Ereg.LIMPA~DUPLICATE_q\ : std_logic;
SIGNAL \C1|ALT_INV_Ereg.registra~DUPLICATE_q\ : std_logic;
SIGNAL \A1|D2|ALT_INV_IQ[3]~DUPLICATE_q\ : std_logic;
SIGNAL \A1|D2|ALT_INV_IQ[2]~DUPLICATE_q\ : std_logic;
SIGNAL \A1|D2|ALT_INV_IQ[1]~DUPLICATE_q\ : std_logic;
SIGNAL \A1|D2|ALT_INV_IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \A1|D1|ALT_INV_IQ[3]~DUPLICATE_q\ : std_logic;
SIGNAL \A1|D1|ALT_INV_IQ[1]~DUPLICATE_q\ : std_logic;
SIGNAL \A1|D1|ALT_INV_IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_pulso~input_o\ : std_logic;
SIGNAL \ALT_INV_zerar~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_iniciar~input_o\ : std_logic;
SIGNAL \C1|ALT_INV_Ereg.iniciado~q\ : std_logic;
SIGNAL \C1|ALT_INV_Ereg.parado~q\ : std_logic;
SIGNAL \A1|C1|ALT_INV_Ereg.EPRONTO~q\ : std_logic;
SIGNAL \C1|ALT_INV_Ereg.medindo~q\ : std_logic;
SIGNAL \A1|D2|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \A1|D2|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \A1|D1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \A1|C1|ALT_INV_Eprox.CONTA~0_combout\ : std_logic;
SIGNAL \A1|C1|ALT_INV_Ereg.LIMPA~q\ : std_logic;
SIGNAL \A1|C1|ALT_INV_Ereg.INICIAL~q\ : std_logic;
SIGNAL \A1|C1|ALT_INV_Ereg.CONTA~q\ : std_logic;
SIGNAL \C1|ALT_INV_Ereg.zera~q\ : std_logic;
SIGNAL \C1|ALT_INV_Ereg.registra~q\ : std_logic;
SIGNAL \H2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \H1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \A1|D2|ALT_INV_IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A1|D1|ALT_INV_IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C1|ALT_INV_Ereg.espera~q\ : std_logic;
SIGNAL \R1|ALT_INV_Q\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_iniciar <= iniciar;
ww_zerar <= zerar;
ww_pulso <= pulso;
saida <= ww_saida;
fim <= ww_fim;
s_m <= ww_s_m;
saidaDisplay1 <= ww_saidaDisplay1;
saidaDisplay2 <= ww_saidaDisplay2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\C1|ALT_INV_Ereg.medindo~DUPLICATE_q\ <= NOT \C1|Ereg.medindo~DUPLICATE_q\;
\A1|C1|ALT_INV_Ereg.LIMPA~DUPLICATE_q\ <= NOT \A1|C1|Ereg.LIMPA~DUPLICATE_q\;
\C1|ALT_INV_Ereg.registra~DUPLICATE_q\ <= NOT \C1|Ereg.registra~DUPLICATE_q\;
\A1|D2|ALT_INV_IQ[3]~DUPLICATE_q\ <= NOT \A1|D2|IQ[3]~DUPLICATE_q\;
\A1|D2|ALT_INV_IQ[2]~DUPLICATE_q\ <= NOT \A1|D2|IQ[2]~DUPLICATE_q\;
\A1|D2|ALT_INV_IQ[1]~DUPLICATE_q\ <= NOT \A1|D2|IQ[1]~DUPLICATE_q\;
\A1|D2|ALT_INV_IQ[0]~DUPLICATE_q\ <= NOT \A1|D2|IQ[0]~DUPLICATE_q\;
\A1|D1|ALT_INV_IQ[3]~DUPLICATE_q\ <= NOT \A1|D1|IQ[3]~DUPLICATE_q\;
\A1|D1|ALT_INV_IQ[1]~DUPLICATE_q\ <= NOT \A1|D1|IQ[1]~DUPLICATE_q\;
\A1|D1|ALT_INV_IQ[0]~DUPLICATE_q\ <= NOT \A1|D1|IQ[0]~DUPLICATE_q\;
\ALT_INV_pulso~input_o\ <= NOT \pulso~input_o\;
\ALT_INV_zerar~input_o\ <= NOT \zerar~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_iniciar~input_o\ <= NOT \iniciar~input_o\;
\C1|ALT_INV_Ereg.iniciado~q\ <= NOT \C1|Ereg.iniciado~q\;
\C1|ALT_INV_Ereg.parado~q\ <= NOT \C1|Ereg.parado~q\;
\A1|C1|ALT_INV_Ereg.EPRONTO~q\ <= NOT \A1|C1|Ereg.EPRONTO~q\;
\C1|ALT_INV_Ereg.medindo~q\ <= NOT \C1|Ereg.medindo~q\;
\A1|D2|ALT_INV_Equal0~0_combout\ <= NOT \A1|D2|Equal0~0_combout\;
\A1|D2|ALT_INV_process_0~0_combout\ <= NOT \A1|D2|process_0~0_combout\;
\A1|D1|ALT_INV_Equal0~0_combout\ <= NOT \A1|D1|Equal0~0_combout\;
\A1|C1|ALT_INV_Eprox.CONTA~0_combout\ <= NOT \A1|C1|Eprox.CONTA~0_combout\;
\A1|C1|ALT_INV_Ereg.LIMPA~q\ <= NOT \A1|C1|Ereg.LIMPA~q\;
\A1|C1|ALT_INV_Ereg.INICIAL~q\ <= NOT \A1|C1|Ereg.INICIAL~q\;
\A1|C1|ALT_INV_Ereg.CONTA~q\ <= NOT \A1|C1|Ereg.CONTA~q\;
\C1|ALT_INV_Ereg.zera~q\ <= NOT \C1|Ereg.zera~q\;
\C1|ALT_INV_Ereg.registra~q\ <= NOT \C1|Ereg.registra~q\;
\H2|ALT_INV_Mux6~0_combout\ <= NOT \H2|Mux6~0_combout\;
\H1|ALT_INV_Mux6~0_combout\ <= NOT \H1|Mux6~0_combout\;
\A1|D2|ALT_INV_IQ\(3) <= NOT \A1|D2|IQ\(3);
\A1|D2|ALT_INV_IQ\(2) <= NOT \A1|D2|IQ\(2);
\A1|D2|ALT_INV_IQ\(1) <= NOT \A1|D2|IQ\(1);
\A1|D2|ALT_INV_IQ\(0) <= NOT \A1|D2|IQ\(0);
\A1|D1|ALT_INV_IQ\(3) <= NOT \A1|D1|IQ\(3);
\A1|D1|ALT_INV_IQ\(2) <= NOT \A1|D1|IQ\(2);
\A1|D1|ALT_INV_IQ\(1) <= NOT \A1|D1|IQ\(1);
\A1|D1|ALT_INV_IQ\(0) <= NOT \A1|D1|IQ\(0);
\C1|ALT_INV_Ereg.espera~q\ <= NOT \C1|Ereg.espera~q\;
\R1|ALT_INV_Q\(7) <= NOT \R1|Q\(7);
\R1|ALT_INV_Q\(6) <= NOT \R1|Q\(6);
\R1|ALT_INV_Q\(5) <= NOT \R1|Q\(5);
\R1|ALT_INV_Q\(4) <= NOT \R1|Q\(4);
\R1|ALT_INV_Q\(3) <= NOT \R1|Q\(3);
\R1|ALT_INV_Q\(2) <= NOT \R1|Q\(2);
\R1|ALT_INV_Q\(1) <= NOT \R1|Q\(1);
\R1|ALT_INV_Q\(0) <= NOT \R1|Q\(0);

-- Location: IOOBUF_X24_Y0_N53
\saida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|Q\(0),
	devoe => ww_devoe,
	o => ww_saida(0));

-- Location: IOOBUF_X23_Y0_N76
\saida[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|Q\(1),
	devoe => ww_devoe,
	o => ww_saida(1));

-- Location: IOOBUF_X24_Y0_N19
\saida[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|Q\(2),
	devoe => ww_devoe,
	o => ww_saida(2));

-- Location: IOOBUF_X23_Y0_N59
\saida[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|Q\(3),
	devoe => ww_devoe,
	o => ww_saida(3));

-- Location: IOOBUF_X24_Y0_N2
\saida[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|Q\(4),
	devoe => ww_devoe,
	o => ww_saida(4));

-- Location: IOOBUF_X14_Y0_N19
\saida[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|Q\(5),
	devoe => ww_devoe,
	o => ww_saida(5));

-- Location: IOOBUF_X23_Y0_N93
\saida[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|Q\(6),
	devoe => ww_devoe,
	o => ww_saida(6));

-- Location: IOOBUF_X23_Y0_N42
\saida[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|Q\(7),
	devoe => ww_devoe,
	o => ww_saida(7));

-- Location: IOOBUF_X11_Y0_N19
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

-- Location: IOOBUF_X12_Y0_N2
\s_m[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|D1|IQ\(0),
	devoe => ww_devoe,
	o => ww_s_m(0));

-- Location: IOOBUF_X10_Y0_N42
\s_m[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|D1|IQ\(1),
	devoe => ww_devoe,
	o => ww_s_m(1));

-- Location: IOOBUF_X12_Y0_N19
\s_m[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|D1|IQ\(2),
	devoe => ww_devoe,
	o => ww_s_m(2));

-- Location: IOOBUF_X12_Y0_N36
\s_m[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|D1|IQ[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_s_m(3));

-- Location: IOOBUF_X14_Y0_N53
\s_m[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|D2|IQ[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_s_m(4));

-- Location: IOOBUF_X12_Y0_N53
\s_m[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|D2|IQ[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_s_m(5));

-- Location: IOOBUF_X10_Y0_N76
\s_m[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|D2|IQ\(2),
	devoe => ww_devoe,
	o => ww_s_m(6));

-- Location: IOOBUF_X10_Y0_N59
\s_m[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \A1|D2|IQ[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_s_m(7));

-- Location: IOOBUF_X25_Y0_N53
\saidaDisplay1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H1|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay1(0));

-- Location: IOOBUF_X25_Y0_N36
\saidaDisplay1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay1(1));

-- Location: IOOBUF_X29_Y0_N19
\saidaDisplay1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay1(2));

-- Location: IOOBUF_X33_Y0_N93
\saidaDisplay1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay1(3));

-- Location: IOOBUF_X29_Y0_N36
\saidaDisplay1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay1(4));

-- Location: IOOBUF_X11_Y0_N2
\saidaDisplay1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay1(5));

-- Location: IOOBUF_X14_Y0_N2
\saidaDisplay1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay1(6));

-- Location: IOOBUF_X25_Y0_N2
\saidaDisplay2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay2(0));

-- Location: IOOBUF_X29_Y0_N2
\saidaDisplay2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay2(1));

-- Location: IOOBUF_X24_Y0_N36
\saidaDisplay2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay2(2));

-- Location: IOOBUF_X11_Y0_N36
\saidaDisplay2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay2(3));

-- Location: IOOBUF_X33_Y0_N76
\saidaDisplay2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay2(4));

-- Location: IOOBUF_X33_Y0_N59
\saidaDisplay2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay2(5));

-- Location: IOOBUF_X11_Y0_N53
\saidaDisplay2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay2(6));

-- Location: IOIBUF_X54_Y18_N61
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G9
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

-- Location: IOIBUF_X10_Y0_N92
\pulso~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pulso,
	o => \pulso~input_o\);

-- Location: IOIBUF_X29_Y0_N52
\iniciar~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iniciar,
	o => \iniciar~input_o\);

-- Location: IOIBUF_X25_Y0_N18
\zerar~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_zerar,
	o => \zerar~input_o\);

-- Location: LABCELL_X14_Y2_N57
\C1|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Selector1~0_combout\ = ( \C1|Ereg.parado~q\ & ( (\zerar~input_o\ & (!\iniciar~input_o\ & \C1|Ereg.zera~q\)) ) ) # ( !\C1|Ereg.parado~q\ & ( (\zerar~input_o\ & !\iniciar~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010000000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zerar~input_o\,
	datab => \ALT_INV_iniciar~input_o\,
	datad => \C1|ALT_INV_Ereg.zera~q\,
	dataf => \C1|ALT_INV_Ereg.parado~q\,
	combout => \C1|Selector1~0_combout\);

-- Location: IOIBUF_X14_Y0_N35
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X14_Y2_N59
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

-- Location: MLABCELL_X13_Y2_N54
\A1|C1|Eprox.EPRONTO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|C1|Eprox.EPRONTO~0_combout\ = (!\pulso~input_o\ & \A1|C1|Ereg.CONTA~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pulso~input_o\,
	datad => \A1|C1|ALT_INV_Ereg.CONTA~q\,
	combout => \A1|C1|Eprox.EPRONTO~0_combout\);

-- Location: FF_X13_Y2_N56
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

-- Location: FF_X13_Y2_N5
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

-- Location: MLABCELL_X13_Y2_N3
\C1|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Selector2~0_combout\ = ( \C1|Ereg.iniciado~q\ ) # ( !\C1|Ereg.iniciado~q\ & ( (!\A1|C1|Ereg.EPRONTO~q\ & \C1|Ereg.medindo~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|C1|ALT_INV_Ereg.EPRONTO~q\,
	datad => \C1|ALT_INV_Ereg.medindo~q\,
	dataf => \C1|ALT_INV_Ereg.iniciado~q\,
	combout => \C1|Selector2~0_combout\);

-- Location: FF_X13_Y2_N4
\C1|Ereg.medindo~DUPLICATE\ : dffeas
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
	q => \C1|Ereg.medindo~DUPLICATE_q\);

-- Location: LABCELL_X14_Y2_N54
\C1|Eprox.registra~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Eprox.registra~0_combout\ = ( \C1|Ereg.medindo~DUPLICATE_q\ & ( \A1|C1|Ereg.EPRONTO~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \A1|C1|ALT_INV_Ereg.EPRONTO~q\,
	dataf => \C1|ALT_INV_Ereg.medindo~DUPLICATE_q\,
	combout => \C1|Eprox.registra~0_combout\);

-- Location: FF_X14_Y2_N55
\C1|Ereg.registra~DUPLICATE\ : dffeas
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
	q => \C1|Ereg.registra~DUPLICATE_q\);

-- Location: LABCELL_X14_Y2_N51
\C1|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Selector3~0_combout\ = ((\iniciar~input_o\ & \C1|Ereg.espera~q\)) # (\C1|Ereg.registra~DUPLICATE_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111111001100110011111100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|ALT_INV_Ereg.registra~DUPLICATE_q\,
	datac => \ALT_INV_iniciar~input_o\,
	datad => \C1|ALT_INV_Ereg.espera~q\,
	combout => \C1|Selector3~0_combout\);

-- Location: FF_X14_Y2_N53
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

-- Location: LABCELL_X14_Y2_N15
\C1|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Selector0~0_combout\ = ( !\C1|Ereg.zera~q\ & ( \C1|Ereg.espera~q\ & ( \iniciar~input_o\ ) ) ) # ( \C1|Ereg.zera~q\ & ( !\C1|Ereg.espera~q\ & ( (\zerar~input_o\ & !\iniciar~input_o\) ) ) ) # ( !\C1|Ereg.zera~q\ & ( !\C1|Ereg.espera~q\ & ( 
-- ((\C1|Ereg.parado~q\) # (\iniciar~input_o\)) # (\zerar~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011111111111010001000100010000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zerar~input_o\,
	datab => \ALT_INV_iniciar~input_o\,
	datad => \C1|ALT_INV_Ereg.parado~q\,
	datae => \C1|ALT_INV_Ereg.zera~q\,
	dataf => \C1|ALT_INV_Ereg.espera~q\,
	combout => \C1|Selector0~0_combout\);

-- Location: FF_X14_Y2_N50
\C1|Ereg.parado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \C1|Selector0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|Ereg.parado~q\);

-- Location: MLABCELL_X13_Y2_N48
\C1|Eprox.iniciado~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Eprox.iniciado~0_combout\ = (\iniciar~input_o\ & !\C1|Ereg.parado~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_iniciar~input_o\,
	datad => \C1|ALT_INV_Ereg.parado~q\,
	combout => \C1|Eprox.iniciado~0_combout\);

-- Location: FF_X13_Y2_N50
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

-- Location: FF_X13_Y2_N19
\A1|C1|Ereg.LIMPA~DUPLICATE\ : dffeas
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
	q => \A1|C1|Ereg.LIMPA~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y2_N21
\A1|C1|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|C1|Selector0~0_combout\ = ( \A1|C1|Ereg.INICIAL~q\ & ( \A1|C1|Ereg.LIMPA~DUPLICATE_q\ & ( (\C1|Ereg.medindo~q\) # (\C1|Ereg.iniciado~q\) ) ) ) # ( !\A1|C1|Ereg.INICIAL~q\ & ( \A1|C1|Ereg.LIMPA~DUPLICATE_q\ & ( (\C1|Ereg.medindo~q\) # 
-- (\C1|Ereg.iniciado~q\) ) ) ) # ( \A1|C1|Ereg.INICIAL~q\ & ( !\A1|C1|Ereg.LIMPA~DUPLICATE_q\ ) ) # ( !\A1|C1|Ereg.INICIAL~q\ & ( !\A1|C1|Ereg.LIMPA~DUPLICATE_q\ & ( (\C1|Ereg.medindo~q\) # (\C1|Ereg.iniciado~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111111111111111111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_Ereg.iniciado~q\,
	datad => \C1|ALT_INV_Ereg.medindo~q\,
	datae => \A1|C1|ALT_INV_Ereg.INICIAL~q\,
	dataf => \A1|C1|ALT_INV_Ereg.LIMPA~DUPLICATE_q\,
	combout => \A1|C1|Selector0~0_combout\);

-- Location: FF_X13_Y2_N23
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

-- Location: MLABCELL_X13_Y2_N0
\A1|C1|Eprox.CONTA~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|C1|Eprox.CONTA~1_combout\ = ( !\A1|C1|Ereg.LIMPA~DUPLICATE_q\ & ( (\pulso~input_o\ & (\A1|C1|Ereg.INICIAL~q\ & !\A1|C1|Ereg.EPRONTO~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_pulso~input_o\,
	datac => \A1|C1|ALT_INV_Ereg.INICIAL~q\,
	datad => \A1|C1|ALT_INV_Ereg.EPRONTO~q\,
	dataf => \A1|C1|ALT_INV_Ereg.LIMPA~DUPLICATE_q\,
	combout => \A1|C1|Eprox.CONTA~1_combout\);

-- Location: FF_X13_Y2_N2
\A1|C1|Ereg.CONTA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \A1|C1|Eprox.CONTA~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|C1|Ereg.CONTA~q\);

-- Location: FF_X13_Y2_N20
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

-- Location: MLABCELL_X13_Y2_N39
\A1|C1|Eprox.CONTA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|C1|Eprox.CONTA~0_combout\ = ( !\A1|C1|Ereg.LIMPA~q\ & ( \A1|C1|Ereg.INICIAL~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \A1|C1|ALT_INV_Ereg.INICIAL~q\,
	dataf => \A1|C1|ALT_INV_Ereg.LIMPA~q\,
	combout => \A1|C1|Eprox.CONTA~0_combout\);

-- Location: FF_X13_Y2_N14
\A1|D1|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \A1|D1|IQ[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|D1|IQ\(0));

-- Location: FF_X13_Y2_N10
\A1|D1|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \A1|D1|IQ[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|D1|IQ\(1));

-- Location: MLABCELL_X13_Y2_N9
\A1|D1|IQ[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|D1|IQ[1]~1_combout\ = ( \A1|D1|Equal0~0_combout\ & ( (\A1|C1|Eprox.CONTA~0_combout\ & (!\A1|D1|IQ\(0) $ (\A1|D1|IQ\(1)))) ) ) # ( !\A1|D1|Equal0~0_combout\ & ( (\A1|C1|Eprox.CONTA~0_combout\ & (!\A1|D1|IQ\(1) $ (((!\A1|C1|Ereg.CONTA~q\) # 
-- (!\A1|D1|IQ\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001110000000010000111000001100000000110000110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|C1|ALT_INV_Ereg.CONTA~q\,
	datab => \A1|D1|ALT_INV_IQ\(0),
	datac => \A1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datad => \A1|D1|ALT_INV_IQ\(1),
	dataf => \A1|D1|ALT_INV_Equal0~0_combout\,
	combout => \A1|D1|IQ[1]~1_combout\);

-- Location: FF_X13_Y2_N11
\A1|D1|IQ[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \A1|D1|IQ[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|D1|IQ[1]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y2_N36
\A1|D1|IQ[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|D1|IQ[2]~2_combout\ = ( \A1|D1|IQ[0]~DUPLICATE_q\ & ( (\A1|C1|Eprox.CONTA~0_combout\ & (!\A1|D1|IQ\(2) $ (((!\A1|C1|Ereg.CONTA~q\) # (!\A1|D1|IQ[1]~DUPLICATE_q\))))) ) ) # ( !\A1|D1|IQ[0]~DUPLICATE_q\ & ( (\A1|C1|Eprox.CONTA~0_combout\ & 
-- \A1|D1|IQ\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000001000011100000000100001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|C1|ALT_INV_Ereg.CONTA~q\,
	datab => \A1|D1|ALT_INV_IQ[1]~DUPLICATE_q\,
	datac => \A1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datad => \A1|D1|ALT_INV_IQ\(2),
	dataf => \A1|D1|ALT_INV_IQ[0]~DUPLICATE_q\,
	combout => \A1|D1|IQ[2]~2_combout\);

-- Location: FF_X13_Y2_N38
\A1|D1|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \A1|D1|IQ[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|D1|IQ\(2));

-- Location: FF_X13_Y2_N31
\A1|D1|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \A1|D1|IQ[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|D1|IQ\(3));

-- Location: MLABCELL_X13_Y2_N30
\A1|D1|IQ[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|D1|IQ[3]~3_combout\ = ( \A1|D1|IQ\(3) & ( \A1|D1|IQ[0]~DUPLICATE_q\ & ( (\A1|C1|Eprox.CONTA~0_combout\ & ((!\A1|D1|IQ\(2) & ((\A1|D1|IQ[1]~DUPLICATE_q\))) # (\A1|D1|IQ\(2) & ((!\A1|C1|Ereg.CONTA~q\) # (!\A1|D1|IQ[1]~DUPLICATE_q\))))) ) ) ) # ( 
-- !\A1|D1|IQ\(3) & ( \A1|D1|IQ[0]~DUPLICATE_q\ & ( (\A1|C1|Ereg.CONTA~q\ & (\A1|C1|Eprox.CONTA~0_combout\ & (\A1|D1|IQ\(2) & \A1|D1|IQ[1]~DUPLICATE_q\))) ) ) ) # ( \A1|D1|IQ\(3) & ( !\A1|D1|IQ[0]~DUPLICATE_q\ & ( \A1|C1|Eprox.CONTA~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000010000001100110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|C1|ALT_INV_Ereg.CONTA~q\,
	datab => \A1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datac => \A1|D1|ALT_INV_IQ\(2),
	datad => \A1|D1|ALT_INV_IQ[1]~DUPLICATE_q\,
	datae => \A1|D1|ALT_INV_IQ\(3),
	dataf => \A1|D1|ALT_INV_IQ[0]~DUPLICATE_q\,
	combout => \A1|D1|IQ[3]~3_combout\);

-- Location: FF_X13_Y2_N32
\A1|D1|IQ[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \A1|D1|IQ[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|D1|IQ[3]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y2_N6
\A1|D1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|D1|Equal0~0_combout\ = ( \A1|D1|IQ[3]~DUPLICATE_q\ & ( (\A1|D1|IQ\(0) & (!\A1|D1|IQ\(2) & !\A1|D1|IQ\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \A1|D1|ALT_INV_IQ\(0),
	datac => \A1|D1|ALT_INV_IQ\(2),
	datad => \A1|D1|ALT_INV_IQ\(1),
	dataf => \A1|D1|ALT_INV_IQ[3]~DUPLICATE_q\,
	combout => \A1|D1|Equal0~0_combout\);

-- Location: MLABCELL_X13_Y2_N12
\A1|D1|IQ[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|D1|IQ[0]~0_combout\ = ( \A1|D1|Equal0~0_combout\ & ( (\A1|C1|Eprox.CONTA~0_combout\ & !\A1|D1|IQ\(0)) ) ) # ( !\A1|D1|Equal0~0_combout\ & ( (\A1|C1|Eprox.CONTA~0_combout\ & (!\A1|C1|Ereg.CONTA~q\ $ (!\A1|D1|IQ\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|C1|ALT_INV_Ereg.CONTA~q\,
	datab => \A1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datad => \A1|D1|ALT_INV_IQ\(0),
	dataf => \A1|D1|ALT_INV_Equal0~0_combout\,
	combout => \A1|D1|IQ[0]~0_combout\);

-- Location: FF_X13_Y2_N13
\A1|D1|IQ[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \A1|D1|IQ[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|D1|IQ[0]~DUPLICATE_q\);

-- Location: FF_X14_Y2_N56
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

-- Location: LABCELL_X14_Y2_N21
\R1|IQ[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|IQ[7]~0_combout\ = ( \C1|Ereg.registra~q\ & ( \C1|Ereg.espera~q\ & ( !\C1|Ereg.zera~q\ ) ) ) # ( !\C1|Ereg.registra~q\ & ( \C1|Ereg.espera~q\ & ( !\C1|Ereg.zera~q\ ) ) ) # ( \C1|Ereg.registra~q\ & ( !\C1|Ereg.espera~q\ & ( !\C1|Ereg.zera~q\ ) ) ) # ( 
-- !\C1|Ereg.registra~q\ & ( !\C1|Ereg.espera~q\ & ( \C1|Ereg.zera~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C1|ALT_INV_Ereg.zera~q\,
	datae => \C1|ALT_INV_Ereg.registra~q\,
	dataf => \C1|ALT_INV_Ereg.espera~q\,
	combout => \R1|IQ[7]~0_combout\);

-- Location: FF_X14_Y2_N44
\R1|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \A1|D1|IQ[0]~DUPLICATE_q\,
	sclr => \C1|Ereg.zera~q\,
	sload => VCC,
	ena => \R1|IQ[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|IQ\(0));

-- Location: LABCELL_X14_Y2_N36
\R1|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|process_0~0_combout\ = ( \C1|Ereg.espera~q\ ) # ( !\C1|Ereg.espera~q\ & ( (\C1|Ereg.zera~q\) # (\C1|Ereg.registra~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C1|ALT_INV_Ereg.registra~q\,
	datad => \C1|ALT_INV_Ereg.zera~q\,
	dataf => \C1|ALT_INV_Ereg.espera~q\,
	combout => \R1|process_0~0_combout\);

-- Location: FF_X14_Y2_N5
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
	ena => \R1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|Q\(0));

-- Location: LABCELL_X14_Y2_N45
\R1|IQ[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|IQ[1]~feeder_combout\ = ( \A1|D1|IQ\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \A1|D1|ALT_INV_IQ\(1),
	combout => \R1|IQ[1]~feeder_combout\);

-- Location: FF_X14_Y2_N46
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
	ena => \R1|IQ[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|IQ\(1));

-- Location: FF_X14_Y2_N26
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
	ena => \R1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|Q\(1));

-- Location: FF_X13_Y2_N37
\A1|D1|IQ[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \A1|D1|IQ[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|D1|IQ[2]~DUPLICATE_q\);

-- Location: FF_X14_Y2_N14
\R1|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \A1|D1|IQ[2]~DUPLICATE_q\,
	sclr => \C1|Ereg.zera~q\,
	sload => VCC,
	ena => \R1|IQ[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|IQ\(2));

-- Location: FF_X14_Y2_N23
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
	ena => \R1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|Q\(2));

-- Location: FF_X14_Y2_N16
\R1|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \A1|D1|IQ\(3),
	sclr => \C1|Ereg.zera~q\,
	sload => VCC,
	ena => \R1|IQ[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|IQ\(3));

-- Location: FF_X14_Y2_N41
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
	ena => \R1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|Q\(3));

-- Location: MLABCELL_X13_Y2_N51
\A1|D2|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|D2|process_0~0_combout\ = ( !\A1|D1|IQ[1]~DUPLICATE_q\ & ( (\A1|C1|Ereg.CONTA~q\ & (\A1|D1|IQ[3]~DUPLICATE_q\ & (\A1|D1|IQ\(0) & !\A1|D1|IQ\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|C1|ALT_INV_Ereg.CONTA~q\,
	datab => \A1|D1|ALT_INV_IQ[3]~DUPLICATE_q\,
	datac => \A1|D1|ALT_INV_IQ\(0),
	datad => \A1|D1|ALT_INV_IQ\(2),
	dataf => \A1|D1|ALT_INV_IQ[1]~DUPLICATE_q\,
	combout => \A1|D2|process_0~0_combout\);

-- Location: FF_X13_Y2_N17
\A1|D2|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \A1|D2|IQ[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|D2|IQ\(0));

-- Location: MLABCELL_X13_Y2_N27
\A1|D2|IQ[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|D2|IQ[1]~1_combout\ = ( \A1|C1|Eprox.CONTA~0_combout\ & ( !\A1|D2|IQ\(1) $ (((!\A1|D2|IQ\(0) & ((!\A1|D2|Equal0~0_combout\))) # (\A1|D2|IQ\(0) & ((!\A1|D2|process_0~0_combout\) # (\A1|D2|Equal0~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000011100111000110001110011100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|D2|ALT_INV_process_0~0_combout\,
	datab => \A1|D2|ALT_INV_IQ\(0),
	datac => \A1|D2|ALT_INV_Equal0~0_combout\,
	datad => \A1|D2|ALT_INV_IQ\(1),
	dataf => \A1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	combout => \A1|D2|IQ[1]~1_combout\);

-- Location: FF_X13_Y2_N29
\A1|D2|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \A1|D2|IQ[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|D2|IQ\(1));

-- Location: FF_X13_Y2_N26
\A1|D2|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \A1|D2|IQ[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|D2|IQ\(2));

-- Location: FF_X13_Y2_N28
\A1|D2|IQ[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \A1|D2|IQ[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|D2|IQ[1]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y2_N24
\A1|D2|IQ[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|D2|IQ[2]~2_combout\ = ( \A1|D2|IQ[1]~DUPLICATE_q\ & ( (\A1|C1|Eprox.CONTA~0_combout\ & (!\A1|D2|IQ\(2) $ (((!\A1|D2|process_0~0_combout\) # (!\A1|D2|IQ\(0)))))) ) ) # ( !\A1|D2|IQ[1]~DUPLICATE_q\ & ( (\A1|C1|Eprox.CONTA~0_combout\ & \A1|D2|IQ\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000001000011100000000100001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|D2|ALT_INV_process_0~0_combout\,
	datab => \A1|D2|ALT_INV_IQ\(0),
	datac => \A1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datad => \A1|D2|ALT_INV_IQ\(2),
	dataf => \A1|D2|ALT_INV_IQ[1]~DUPLICATE_q\,
	combout => \A1|D2|IQ[2]~2_combout\);

-- Location: FF_X13_Y2_N25
\A1|D2|IQ[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \A1|D2|IQ[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|D2|IQ[2]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y2_N42
\A1|D2|IQ[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|D2|IQ[3]~3_combout\ = ( \A1|D2|IQ\(3) & ( \A1|D2|IQ[2]~DUPLICATE_q\ & ( (\A1|C1|Eprox.CONTA~0_combout\ & ((!\A1|D2|process_0~0_combout\) # ((!\A1|D2|IQ\(1)) # (!\A1|D2|IQ\(0))))) ) ) ) # ( !\A1|D2|IQ\(3) & ( \A1|D2|IQ[2]~DUPLICATE_q\ & ( 
-- (\A1|D2|process_0~0_combout\ & (\A1|C1|Eprox.CONTA~0_combout\ & (\A1|D2|IQ\(1) & \A1|D2|IQ\(0)))) ) ) ) # ( \A1|D2|IQ\(3) & ( !\A1|D2|IQ[2]~DUPLICATE_q\ & ( (\A1|C1|Eprox.CONTA~0_combout\ & ((!\A1|D2|IQ\(0)) # (\A1|D2|IQ\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000001100000000000000010011001100110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A1|D2|ALT_INV_process_0~0_combout\,
	datab => \A1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datac => \A1|D2|ALT_INV_IQ\(1),
	datad => \A1|D2|ALT_INV_IQ\(0),
	datae => \A1|D2|ALT_INV_IQ\(3),
	dataf => \A1|D2|ALT_INV_IQ[2]~DUPLICATE_q\,
	combout => \A1|D2|IQ[3]~3_combout\);

-- Location: FF_X13_Y2_N44
\A1|D2|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \A1|D2|IQ[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|D2|IQ\(3));

-- Location: MLABCELL_X13_Y2_N57
\A1|D2|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|D2|Equal0~0_combout\ = ( !\A1|D2|IQ\(2) & ( (\A1|D2|IQ\(3) & (\A1|D2|IQ\(0) & !\A1|D2|IQ\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \A1|D2|ALT_INV_IQ\(3),
	datac => \A1|D2|ALT_INV_IQ\(0),
	datad => \A1|D2|ALT_INV_IQ\(1),
	dataf => \A1|D2|ALT_INV_IQ\(2),
	combout => \A1|D2|Equal0~0_combout\);

-- Location: MLABCELL_X13_Y2_N15
\A1|D2|IQ[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \A1|D2|IQ[0]~0_combout\ = ( \A1|D2|process_0~0_combout\ & ( (\A1|C1|Eprox.CONTA~0_combout\ & !\A1|D2|IQ\(0)) ) ) # ( !\A1|D2|process_0~0_combout\ & ( (\A1|C1|Eprox.CONTA~0_combout\ & (!\A1|D2|Equal0~0_combout\ $ (!\A1|D2|IQ\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \A1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datac => \A1|D2|ALT_INV_Equal0~0_combout\,
	datad => \A1|D2|ALT_INV_IQ\(0),
	dataf => \A1|D2|ALT_INV_process_0~0_combout\,
	combout => \A1|D2|IQ[0]~0_combout\);

-- Location: FF_X13_Y2_N16
\A1|D2|IQ[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \A1|D2|IQ[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|D2|IQ[0]~DUPLICATE_q\);

-- Location: LABCELL_X14_Y2_N9
\R1|IQ[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|IQ[4]~feeder_combout\ = ( \A1|D2|IQ[0]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \A1|D2|ALT_INV_IQ[0]~DUPLICATE_q\,
	combout => \R1|IQ[4]~feeder_combout\);

-- Location: FF_X14_Y2_N10
\R1|IQ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R1|IQ[4]~feeder_combout\,
	sclr => \C1|Ereg.zera~q\,
	ena => \R1|IQ[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|IQ\(4));

-- Location: FF_X14_Y2_N1
\R1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R1|IQ\(4),
	sload => VCC,
	ena => \R1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|Q\(4));

-- Location: FF_X14_Y2_N8
\R1|IQ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \A1|D2|IQ[1]~DUPLICATE_q\,
	sclr => \C1|Ereg.zera~q\,
	sload => VCC,
	ena => \R1|IQ[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|IQ\(5));

-- Location: FF_X14_Y2_N38
\R1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R1|IQ\(5),
	sload => VCC,
	ena => \R1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|Q\(5));

-- Location: LABCELL_X14_Y2_N30
\R1|IQ[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|IQ[6]~feeder_combout\ = ( \A1|D2|IQ[2]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \A1|D2|ALT_INV_IQ[2]~DUPLICATE_q\,
	combout => \R1|IQ[6]~feeder_combout\);

-- Location: FF_X14_Y2_N31
\R1|IQ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R1|IQ[6]~feeder_combout\,
	sclr => \C1|Ereg.zera~q\,
	ena => \R1|IQ[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|IQ\(6));

-- Location: FF_X14_Y2_N19
\R1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R1|IQ\(6),
	sload => VCC,
	ena => \R1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|Q\(6));

-- Location: FF_X13_Y2_N43
\A1|D2|IQ[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \A1|D2|IQ[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|D2|IQ[3]~DUPLICATE_q\);

-- Location: LABCELL_X14_Y2_N33
\R1|IQ[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|IQ[7]~feeder_combout\ = ( \A1|D2|IQ[3]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \A1|D2|ALT_INV_IQ[3]~DUPLICATE_q\,
	combout => \R1|IQ[7]~feeder_combout\);

-- Location: FF_X14_Y2_N34
\R1|IQ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R1|IQ[7]~feeder_combout\,
	sclr => \C1|Ereg.zera~q\,
	ena => \R1|IQ[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|IQ\(7));

-- Location: FF_X14_Y2_N28
\R1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R1|IQ\(7),
	sload => VCC,
	ena => \R1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|Q\(7));

-- Location: LABCELL_X16_Y2_N15
\H1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H1|Mux6~0_combout\ = ( \R1|Q\(0) & ( (!\R1|Q\(1) $ (!\R1|Q\(2))) # (\R1|Q\(3)) ) ) # ( !\R1|Q\(0) & ( (!\R1|Q\(3) $ (!\R1|Q\(2))) # (\R1|Q\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111101101111011011110110111101101111101011111010111110101111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(3),
	datab => \R1|ALT_INV_Q\(1),
	datac => \R1|ALT_INV_Q\(2),
	dataf => \R1|ALT_INV_Q\(0),
	combout => \H1|Mux6~0_combout\);

-- Location: LABCELL_X16_Y2_N18
\H1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H1|Mux5~0_combout\ = ( \R1|Q\(0) & ( (!\R1|Q\(2) & (!\R1|Q\(3))) # (\R1|Q\(2) & (\R1|Q\(3) & !\R1|Q\(1))) ) ) # ( !\R1|Q\(0) & ( (!\R1|Q\(2) & (!\R1|Q\(3) & \R1|Q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011000011110000001100001111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \R1|ALT_INV_Q\(2),
	datac => \R1|ALT_INV_Q\(3),
	datad => \R1|ALT_INV_Q\(1),
	dataf => \R1|ALT_INV_Q\(0),
	combout => \H1|Mux5~0_combout\);

-- Location: LABCELL_X16_Y2_N27
\H1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H1|Mux4~0_combout\ = ( \R1|Q\(0) & ( (!\R1|Q\(3)) # ((!\R1|Q\(1) & !\R1|Q\(2))) ) ) # ( !\R1|Q\(0) & ( (!\R1|Q\(3) & (!\R1|Q\(1) & \R1|Q\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100011101010111010101110101011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(3),
	datab => \R1|ALT_INV_Q\(1),
	datac => \R1|ALT_INV_Q\(2),
	dataf => \R1|ALT_INV_Q\(0),
	combout => \H1|Mux4~0_combout\);

-- Location: LABCELL_X16_Y2_N57
\H1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H1|Mux3~0_combout\ = ( \R1|Q\(0) & ( (!\R1|Q\(1) & (!\R1|Q\(3) & !\R1|Q\(2))) # (\R1|Q\(1) & ((\R1|Q\(2)))) ) ) # ( !\R1|Q\(0) & ( (!\R1|Q\(3) & (!\R1|Q\(1) & \R1|Q\(2))) # (\R1|Q\(3) & (\R1|Q\(1) & !\R1|Q\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100000011000000110000001100010000011100000111000001110000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(3),
	datab => \R1|ALT_INV_Q\(1),
	datac => \R1|ALT_INV_Q\(2),
	dataf => \R1|ALT_INV_Q\(0),
	combout => \H1|Mux3~0_combout\);

-- Location: LABCELL_X16_Y2_N0
\H1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H1|Mux2~0_combout\ = ( \R1|Q\(0) & ( (\R1|Q\(2) & (\R1|Q\(3) & \R1|Q\(1))) ) ) # ( !\R1|Q\(0) & ( (!\R1|Q\(2) & (!\R1|Q\(3) & \R1|Q\(1))) # (\R1|Q\(2) & (\R1|Q\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111000011000000111100001100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \R1|ALT_INV_Q\(2),
	datac => \R1|ALT_INV_Q\(3),
	datad => \R1|ALT_INV_Q\(1),
	dataf => \R1|ALT_INV_Q\(0),
	combout => \H1|Mux2~0_combout\);

-- Location: LABCELL_X14_Y2_N48
\H1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H1|Mux1~0_combout\ = ( \R1|Q\(3) & ( (!\R1|Q\(0) & (\R1|Q\(2))) # (\R1|Q\(0) & ((\R1|Q\(1)))) ) ) # ( !\R1|Q\(3) & ( (\R1|Q\(2) & (!\R1|Q\(0) $ (!\R1|Q\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000001010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(2),
	datac => \R1|ALT_INV_Q\(0),
	datad => \R1|ALT_INV_Q\(1),
	dataf => \R1|ALT_INV_Q\(3),
	combout => \H1|Mux1~0_combout\);

-- Location: LABCELL_X14_Y2_N39
\H1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H1|Mux0~0_combout\ = (!\R1|Q\(2) & (\R1|Q\(0) & (!\R1|Q\(1) $ (\R1|Q\(3))))) # (\R1|Q\(2) & (!\R1|Q\(1) & (!\R1|Q\(0) $ (\R1|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100000000110010010000000011001001000000001100100100000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(2),
	datab => \R1|ALT_INV_Q\(1),
	datac => \R1|ALT_INV_Q\(0),
	datad => \R1|ALT_INV_Q\(3),
	combout => \H1|Mux0~0_combout\);

-- Location: LABCELL_X16_Y2_N6
\H2|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H2|Mux6~0_combout\ = ( \R1|Q\(6) & ( (!\R1|Q\(7) & ((!\R1|Q\(5)) # (!\R1|Q\(4)))) # (\R1|Q\(7) & ((\R1|Q\(4)) # (\R1|Q\(5)))) ) ) # ( !\R1|Q\(6) & ( (\R1|Q\(5)) # (\R1|Q\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111101111011011110101110111011101111011110110111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(7),
	datab => \R1|ALT_INV_Q\(5),
	datac => \R1|ALT_INV_Q\(4),
	datae => \R1|ALT_INV_Q\(6),
	combout => \H2|Mux6~0_combout\);

-- Location: LABCELL_X16_Y2_N39
\H2|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H2|Mux5~0_combout\ = ( \R1|Q\(4) & ( (!\R1|Q\(7) & ((!\R1|Q\(6)))) # (\R1|Q\(7) & (!\R1|Q\(5) & \R1|Q\(6))) ) ) # ( !\R1|Q\(4) & ( (!\R1|Q\(7) & (\R1|Q\(5) & !\R1|Q\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000101001001010010000100000001000001010010010100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(7),
	datab => \R1|ALT_INV_Q\(5),
	datac => \R1|ALT_INV_Q\(6),
	datae => \R1|ALT_INV_Q\(4),
	combout => \H2|Mux5~0_combout\);

-- Location: LABCELL_X16_Y2_N30
\H2|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H2|Mux4~0_combout\ = ( \R1|Q\(6) & ( (!\R1|Q\(7) & ((!\R1|Q\(5)) # (\R1|Q\(4)))) ) ) # ( !\R1|Q\(6) & ( (\R1|Q\(4) & ((!\R1|Q\(7)) # (!\R1|Q\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110100010101000101000001110000011101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(7),
	datab => \R1|ALT_INV_Q\(5),
	datac => \R1|ALT_INV_Q\(4),
	datae => \R1|ALT_INV_Q\(6),
	combout => \H2|Mux4~0_combout\);

-- Location: LABCELL_X14_Y2_N3
\H2|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H2|Mux3~0_combout\ = ( \R1|Q\(4) & ( (!\R1|Q\(5) & (!\R1|Q\(7) & !\R1|Q\(6))) # (\R1|Q\(5) & ((\R1|Q\(6)))) ) ) # ( !\R1|Q\(4) & ( (!\R1|Q\(5) & (!\R1|Q\(7) & \R1|Q\(6))) # (\R1|Q\(5) & (\R1|Q\(7) & !\R1|Q\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110001000100010000101010100010001100010001000100001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(5),
	datab => \R1|ALT_INV_Q\(7),
	datad => \R1|ALT_INV_Q\(6),
	datae => \R1|ALT_INV_Q\(4),
	combout => \H2|Mux3~0_combout\);

-- Location: LABCELL_X16_Y2_N48
\H2|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H2|Mux2~0_combout\ = ( \R1|Q\(6) & ( (\R1|Q\(7) & ((!\R1|Q\(4)) # (\R1|Q\(5)))) ) ) # ( !\R1|Q\(6) & ( (!\R1|Q\(7) & (\R1|Q\(5) & !\R1|Q\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000010100010101000100100000001000000101000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(7),
	datab => \R1|ALT_INV_Q\(5),
	datac => \R1|ALT_INV_Q\(4),
	datae => \R1|ALT_INV_Q\(6),
	combout => \H2|Mux2~0_combout\);

-- Location: LABCELL_X16_Y2_N45
\H2|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H2|Mux1~0_combout\ = ( \R1|Q\(4) & ( (!\R1|Q\(7) & (!\R1|Q\(5) & \R1|Q\(6))) # (\R1|Q\(7) & (\R1|Q\(5))) ) ) # ( !\R1|Q\(4) & ( (\R1|Q\(6) & ((\R1|Q\(5)) # (\R1|Q\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000110010001100100000111000001110001100100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(7),
	datab => \R1|ALT_INV_Q\(5),
	datac => \R1|ALT_INV_Q\(6),
	datae => \R1|ALT_INV_Q\(4),
	combout => \H2|Mux1~0_combout\);

-- Location: LABCELL_X14_Y2_N24
\H2|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H2|Mux0~0_combout\ = ( \R1|Q\(6) & ( \R1|Q\(7) & ( (\R1|Q\(4) & !\R1|Q\(5)) ) ) ) # ( !\R1|Q\(6) & ( \R1|Q\(7) & ( (\R1|Q\(4) & \R1|Q\(5)) ) ) ) # ( \R1|Q\(6) & ( !\R1|Q\(7) & ( (!\R1|Q\(4) & !\R1|Q\(5)) ) ) ) # ( !\R1|Q\(6) & ( !\R1|Q\(7) & ( (\R1|Q\(4) 
-- & !\R1|Q\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000101000001010000000000101000001010101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(4),
	datac => \R1|ALT_INV_Q\(5),
	datae => \R1|ALT_INV_Q\(6),
	dataf => \R1|ALT_INV_Q\(7),
	combout => \H2|Mux0~0_combout\);

-- Location: LABCELL_X39_Y26_N3
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


