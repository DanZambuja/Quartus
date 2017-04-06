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

-- DATE "04/06/2017 03:05:00"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
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
	saida : BUFFER std_logic_vector(15 DOWNTO 0);
	fim : BUFFER std_logic;
	sig_resetr : BUFFER std_logic;
	sig_enabler : BUFFER std_logic;
	sig_liga : BUFFER std_logic;
	sig_medida : BUFFER std_logic_vector(15 DOWNTO 0);
	saidaDisplay : BUFFER std_logic_vector(27 DOWNTO 0)
	);
END hierarquico;

-- Design Ports Information
-- saida[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[1]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[2]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[3]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[4]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[5]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[6]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[7]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[8]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[9]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[10]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[11]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[12]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[13]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[14]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[15]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fim	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_resetr	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_enabler	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_liga	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_medida[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_medida[1]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_medida[2]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_medida[3]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_medida[4]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_medida[5]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_medida[6]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_medida[7]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_medida[8]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_medida[9]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_medida[10]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_medida[11]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_medida[12]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_medida[13]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_medida[14]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_medida[15]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[0]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[1]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[2]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[3]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[4]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[5]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[6]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[7]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[8]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[9]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[10]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[11]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[12]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[13]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[14]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[15]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[16]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[17]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[18]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[19]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[20]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[21]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[22]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[23]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[24]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[25]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[26]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[27]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iniciar	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zerar	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_saida : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_fim : std_logic;
SIGNAL ww_sig_resetr : std_logic;
SIGNAL ww_sig_enabler : std_logic;
SIGNAL ww_sig_liga : std_logic;
SIGNAL ww_sig_medida : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_saidaDisplay : std_logic_vector(27 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \pulso~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \M1|C1|Ereg.LIMPA~DUPLICATE_q\ : std_logic;
SIGNAL \M1|C1|Eprox.CONTA~1_combout\ : std_logic;
SIGNAL \M1|C1|Ereg.CONTA~q\ : std_logic;
SIGNAL \M1|C1|Eprox.EPRONTO~0_combout\ : std_logic;
SIGNAL \M1|C1|Ereg.EPRONTO~q\ : std_logic;
SIGNAL \iniciar~input_o\ : std_logic;
SIGNAL \zerar~input_o\ : std_logic;
SIGNAL \C1|Selector1~0_combout\ : std_logic;
SIGNAL \C1|Ereg.zera~feeder_combout\ : std_logic;
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
SIGNAL \M1|C1|Ereg.LIMPA~q\ : std_logic;
SIGNAL \M1|C1|Selector0~0_combout\ : std_logic;
SIGNAL \M1|C1|Ereg.INICIAL~q\ : std_logic;
SIGNAL \M1|D1|IC_1|Qout[0]~reg0_q\ : std_logic;
SIGNAL \M1|C1|Eprox.CONTA~0_combout\ : std_logic;
SIGNAL \M1|D1|IC_1|Qout[3]~reg0_q\ : std_logic;
SIGNAL \M1|D1|IC_1|Qout[3]~2_combout\ : std_logic;
SIGNAL \M1|D1|IC_1|Qout[1]~reg0_q\ : std_logic;
SIGNAL \M1|D1|IC_1|Qout~1_combout\ : std_logic;
SIGNAL \M1|D1|IC_1|Qout[1]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \M1|D1|IC_1|Qout~3_combout\ : std_logic;
SIGNAL \M1|D1|IC_1|Qout[2]~reg0_q\ : std_logic;
SIGNAL \M1|D1|IC_1|Qout[3]~4_combout\ : std_logic;
SIGNAL \M1|D1|IC_1|Qout[3]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \M1|D1|IC_1|Qout[0]~0_combout\ : std_logic;
SIGNAL \M1|D1|IC_1|Qout[0]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \R1|IQ[0]~feeder_combout\ : std_logic;
SIGNAL \C1|Ereg.esperasoma~DUPLICATE_q\ : std_logic;
SIGNAL \R1|IQ[15]~0_combout\ : std_logic;
SIGNAL \C1|Ereg.registra~DUPLICATE_q\ : std_logic;
SIGNAL \R1|process_0~0_combout\ : std_logic;
SIGNAL \R1|IQ[3]~feeder_combout\ : std_logic;
SIGNAL \M1|D1|IC_2|Qout[3]~0_combout\ : std_logic;
SIGNAL \M1|D1|IC_2|Qout[0]~reg0_q\ : std_logic;
SIGNAL \M1|D1|IC_2|Qout[2]~3_combout\ : std_logic;
SIGNAL \M1|D1|IC_2|Qout[1]~reg0_q\ : std_logic;
SIGNAL \M1|D1|IC_2|Qout~2_combout\ : std_logic;
SIGNAL \M1|D1|IC_2|Qout[1]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \M1|D1|IC_2|Qout~4_combout\ : std_logic;
SIGNAL \M1|D1|IC_2|Qout[2]~reg0_q\ : std_logic;
SIGNAL \M1|D1|IC_2|Add0~0_combout\ : std_logic;
SIGNAL \M1|D1|IC_2|Qout[3]~5_combout\ : std_logic;
SIGNAL \M1|D1|IC_2|Qout[3]~reg0_q\ : std_logic;
SIGNAL \M1|D1|ClrN2~0_combout\ : std_logic;
SIGNAL \M1|D1|IC_2|Qout[0]~1_combout\ : std_logic;
SIGNAL \M1|D1|IC_2|Qout[0]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \R1|IQ[6]~feeder_combout\ : std_logic;
SIGNAL \M1|D1|IC_2|Qout[3]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \M1|D1|ClrN3~0_combout\ : std_logic;
SIGNAL \M1|D1|IC_3|Qout[3]~2_combout\ : std_logic;
SIGNAL \M1|D1|IC_3|Qout[1]~reg0_q\ : std_logic;
SIGNAL \M1|D1|IC_3|Qout~1_combout\ : std_logic;
SIGNAL \M1|D1|IC_3|Qout[1]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \M1|D1|IC_3|Qout~3_combout\ : std_logic;
SIGNAL \M1|D1|IC_3|Qout[2]~reg0_q\ : std_logic;
SIGNAL \M1|D1|IC_3|Add0~0_combout\ : std_logic;
SIGNAL \M1|D1|IC_3|Qout[3]~4_combout\ : std_logic;
SIGNAL \M1|D1|IC_3|Qout[3]~reg0_q\ : std_logic;
SIGNAL \M1|D1|IC_3|Qout[0]~0_combout\ : std_logic;
SIGNAL \M1|D1|IC_3|Qout[0]~reg0_q\ : std_logic;
SIGNAL \R1|IQ[9]~feeder_combout\ : std_logic;
SIGNAL \R1|Q[10]~feeder_combout\ : std_logic;
SIGNAL \M1|D1|IC_3|Qout[3]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \M1|D1|IC_4|Qout[0]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \M1|D1|IC_4|Qout[3]~reg0_q\ : std_logic;
SIGNAL \M1|D1|IC_4|Qout[1]~2_combout\ : std_logic;
SIGNAL \M1|D1|IC_4|Qout[1]~reg0_q\ : std_logic;
SIGNAL \M1|D1|IC_4|Qout~1_combout\ : std_logic;
SIGNAL \M1|D1|IC_4|Qout[1]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \M1|D1|IC_4|Qout~3_combout\ : std_logic;
SIGNAL \M1|D1|IC_4|Qout[2]~reg0_q\ : std_logic;
SIGNAL \M1|D1|IC_4|Add0~0_combout\ : std_logic;
SIGNAL \M1|D1|IC_4|Qout[3]~4_combout\ : std_logic;
SIGNAL \M1|D1|IC_4|Qout[3]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \M1|D1|IC_4|Qout[0]~0_combout\ : std_logic;
SIGNAL \M1|D1|IC_4|Qout[0]~reg0_q\ : std_logic;
SIGNAL \R1|Q[12]~feeder_combout\ : std_logic;
SIGNAL \R1|Q[12]~DUPLICATE_q\ : std_logic;
SIGNAL \R1|IQ[13]~feeder_combout\ : std_logic;
SIGNAL \R1|Q[13]~feeder_combout\ : std_logic;
SIGNAL \R1|IQ[14]~feeder_combout\ : std_logic;
SIGNAL \R1|Q[14]~feeder_combout\ : std_logic;
SIGNAL \R1|Q[14]~DUPLICATE_q\ : std_logic;
SIGNAL \R1|Q[15]~feeder_combout\ : std_logic;
SIGNAL \C1|WideNor1~combout\ : std_logic;
SIGNAL \C1|WideNor0~combout\ : std_logic;
SIGNAL \D4|Mux6~0_combout\ : std_logic;
SIGNAL \D4|Mux5~0_combout\ : std_logic;
SIGNAL \D4|Mux4~0_combout\ : std_logic;
SIGNAL \D4|Mux3~0_combout\ : std_logic;
SIGNAL \D4|Mux2~0_combout\ : std_logic;
SIGNAL \D4|Mux1~0_combout\ : std_logic;
SIGNAL \D4|Mux0~0_combout\ : std_logic;
SIGNAL \D3|Mux6~0_combout\ : std_logic;
SIGNAL \D3|Mux5~0_combout\ : std_logic;
SIGNAL \D3|Mux4~0_combout\ : std_logic;
SIGNAL \D3|Mux3~0_combout\ : std_logic;
SIGNAL \D3|Mux2~0_combout\ : std_logic;
SIGNAL \D3|Mux1~0_combout\ : std_logic;
SIGNAL \D3|Mux0~0_combout\ : std_logic;
SIGNAL \D2|Mux6~0_combout\ : std_logic;
SIGNAL \D2|Mux5~0_combout\ : std_logic;
SIGNAL \D2|Mux4~0_combout\ : std_logic;
SIGNAL \D2|Mux3~0_combout\ : std_logic;
SIGNAL \D2|Mux2~0_combout\ : std_logic;
SIGNAL \D2|Mux1~0_combout\ : std_logic;
SIGNAL \D2|Mux0~0_combout\ : std_logic;
SIGNAL \D1|Mux6~0_combout\ : std_logic;
SIGNAL \D1|Mux5~0_combout\ : std_logic;
SIGNAL \D1|Mux4~0_combout\ : std_logic;
SIGNAL \D1|Mux3~0_combout\ : std_logic;
SIGNAL \D1|Mux2~0_combout\ : std_logic;
SIGNAL \D1|Mux1~0_combout\ : std_logic;
SIGNAL \D1|Mux0~0_combout\ : std_logic;
SIGNAL \R1|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \R1|IQ\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \M1|C1|ALT_INV_Ereg.LIMPA~DUPLICATE_q\ : std_logic;
SIGNAL \M1|D1|IC_4|ALT_INV_Qout[3]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \M1|D1|IC_4|ALT_INV_Qout[1]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \M1|D1|IC_4|ALT_INV_Qout[0]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \M1|D1|IC_3|ALT_INV_Qout[1]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \M1|D1|IC_2|ALT_INV_Qout[3]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \M1|D1|IC_2|ALT_INV_Qout[1]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \M1|D1|IC_2|ALT_INV_Qout[0]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \M1|D1|IC_1|ALT_INV_Qout[3]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \M1|D1|IC_1|ALT_INV_Qout[1]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \M1|D1|IC_1|ALT_INV_Qout[0]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \C1|ALT_INV_Ereg.esperasoma~DUPLICATE_q\ : std_logic;
SIGNAL \C1|ALT_INV_Ereg.registra~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_pulso~input_o\ : std_logic;
SIGNAL \ALT_INV_zerar~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_iniciar~input_o\ : std_logic;
SIGNAL \M1|D1|IC_4|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \M1|D1|IC_3|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \M1|D1|ALT_INV_ClrN3~0_combout\ : std_logic;
SIGNAL \M1|D1|IC_2|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \M1|D1|IC_2|ALT_INV_Qout[3]~0_combout\ : std_logic;
SIGNAL \M1|D1|ALT_INV_ClrN2~0_combout\ : std_logic;
SIGNAL \M1|C1|ALT_INV_Eprox.CONTA~0_combout\ : std_logic;
SIGNAL \M1|C1|ALT_INV_Ereg.LIMPA~q\ : std_logic;
SIGNAL \M1|C1|ALT_INV_Ereg.INICIAL~q\ : std_logic;
SIGNAL \M1|C1|ALT_INV_Ereg.CONTA~q\ : std_logic;
SIGNAL \M1|C1|ALT_INV_Ereg.EPRONTO~q\ : std_logic;
SIGNAL \C1|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \C1|ALT_INV_Ereg.parado~q\ : std_logic;
SIGNAL \D1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \D2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \D3|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \D4|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \M1|D1|IC_4|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \M1|D1|IC_4|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \M1|D1|IC_4|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \M1|D1|IC_4|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \M1|D1|IC_3|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \M1|D1|IC_3|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \M1|D1|IC_3|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \M1|D1|IC_3|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \M1|D1|IC_2|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \M1|D1|IC_2|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \M1|D1|IC_2|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \M1|D1|IC_2|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \M1|D1|IC_1|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \M1|D1|IC_1|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \M1|D1|IC_1|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \M1|D1|IC_1|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \C1|ALT_INV_Ereg.medindo~q\ : std_logic;
SIGNAL \C1|ALT_INV_Ereg.iniciado~q\ : std_logic;
SIGNAL \C1|ALT_INV_Ereg.esperasoma~q\ : std_logic;
SIGNAL \C1|ALT_INV_Ereg.registra~q\ : std_logic;
SIGNAL \C1|ALT_INV_Ereg.zera~q\ : std_logic;
SIGNAL \C1|ALT_INV_Ereg.espera~q\ : std_logic;
SIGNAL \R1|ALT_INV_Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \R1|ALT_INV_IQ\ : std_logic_vector(15 DOWNTO 10);

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_iniciar <= iniciar;
ww_zerar <= zerar;
ww_pulso <= pulso;
saida <= ww_saida;
fim <= ww_fim;
sig_resetr <= ww_sig_resetr;
sig_enabler <= ww_sig_enabler;
sig_liga <= ww_sig_liga;
sig_medida <= ww_sig_medida;
saidaDisplay <= ww_saidaDisplay;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\M1|C1|ALT_INV_Ereg.LIMPA~DUPLICATE_q\ <= NOT \M1|C1|Ereg.LIMPA~DUPLICATE_q\;
\M1|D1|IC_4|ALT_INV_Qout[3]~reg0DUPLICATE_q\ <= NOT \M1|D1|IC_4|Qout[3]~reg0DUPLICATE_q\;
\M1|D1|IC_4|ALT_INV_Qout[1]~reg0DUPLICATE_q\ <= NOT \M1|D1|IC_4|Qout[1]~reg0DUPLICATE_q\;
\M1|D1|IC_4|ALT_INV_Qout[0]~reg0DUPLICATE_q\ <= NOT \M1|D1|IC_4|Qout[0]~reg0DUPLICATE_q\;
\M1|D1|IC_3|ALT_INV_Qout[1]~reg0DUPLICATE_q\ <= NOT \M1|D1|IC_3|Qout[1]~reg0DUPLICATE_q\;
\M1|D1|IC_2|ALT_INV_Qout[3]~reg0DUPLICATE_q\ <= NOT \M1|D1|IC_2|Qout[3]~reg0DUPLICATE_q\;
\M1|D1|IC_2|ALT_INV_Qout[1]~reg0DUPLICATE_q\ <= NOT \M1|D1|IC_2|Qout[1]~reg0DUPLICATE_q\;
\M1|D1|IC_2|ALT_INV_Qout[0]~reg0DUPLICATE_q\ <= NOT \M1|D1|IC_2|Qout[0]~reg0DUPLICATE_q\;
\M1|D1|IC_1|ALT_INV_Qout[3]~reg0DUPLICATE_q\ <= NOT \M1|D1|IC_1|Qout[3]~reg0DUPLICATE_q\;
\M1|D1|IC_1|ALT_INV_Qout[1]~reg0DUPLICATE_q\ <= NOT \M1|D1|IC_1|Qout[1]~reg0DUPLICATE_q\;
\M1|D1|IC_1|ALT_INV_Qout[0]~reg0DUPLICATE_q\ <= NOT \M1|D1|IC_1|Qout[0]~reg0DUPLICATE_q\;
\C1|ALT_INV_Ereg.esperasoma~DUPLICATE_q\ <= NOT \C1|Ereg.esperasoma~DUPLICATE_q\;
\C1|ALT_INV_Ereg.registra~DUPLICATE_q\ <= NOT \C1|Ereg.registra~DUPLICATE_q\;
\ALT_INV_pulso~input_o\ <= NOT \pulso~input_o\;
\ALT_INV_zerar~input_o\ <= NOT \zerar~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_iniciar~input_o\ <= NOT \iniciar~input_o\;
\M1|D1|IC_4|ALT_INV_Add0~0_combout\ <= NOT \M1|D1|IC_4|Add0~0_combout\;
\M1|D1|IC_3|ALT_INV_Add0~0_combout\ <= NOT \M1|D1|IC_3|Add0~0_combout\;
\M1|D1|ALT_INV_ClrN3~0_combout\ <= NOT \M1|D1|ClrN3~0_combout\;
\M1|D1|IC_2|ALT_INV_Add0~0_combout\ <= NOT \M1|D1|IC_2|Add0~0_combout\;
\M1|D1|IC_2|ALT_INV_Qout[3]~0_combout\ <= NOT \M1|D1|IC_2|Qout[3]~0_combout\;
\M1|D1|ALT_INV_ClrN2~0_combout\ <= NOT \M1|D1|ClrN2~0_combout\;
\M1|C1|ALT_INV_Eprox.CONTA~0_combout\ <= NOT \M1|C1|Eprox.CONTA~0_combout\;
\M1|C1|ALT_INV_Ereg.LIMPA~q\ <= NOT \M1|C1|Ereg.LIMPA~q\;
\M1|C1|ALT_INV_Ereg.INICIAL~q\ <= NOT \M1|C1|Ereg.INICIAL~q\;
\M1|C1|ALT_INV_Ereg.CONTA~q\ <= NOT \M1|C1|Ereg.CONTA~q\;
\M1|C1|ALT_INV_Ereg.EPRONTO~q\ <= NOT \M1|C1|Ereg.EPRONTO~q\;
\C1|ALT_INV_Selector1~0_combout\ <= NOT \C1|Selector1~0_combout\;
\C1|ALT_INV_Ereg.parado~q\ <= NOT \C1|Ereg.parado~q\;
\D1|ALT_INV_Mux6~0_combout\ <= NOT \D1|Mux6~0_combout\;
\D2|ALT_INV_Mux6~0_combout\ <= NOT \D2|Mux6~0_combout\;
\D3|ALT_INV_Mux6~0_combout\ <= NOT \D3|Mux6~0_combout\;
\D4|ALT_INV_Mux6~0_combout\ <= NOT \D4|Mux6~0_combout\;
\M1|D1|IC_4|ALT_INV_Qout[3]~reg0_q\ <= NOT \M1|D1|IC_4|Qout[3]~reg0_q\;
\M1|D1|IC_4|ALT_INV_Qout[2]~reg0_q\ <= NOT \M1|D1|IC_4|Qout[2]~reg0_q\;
\M1|D1|IC_4|ALT_INV_Qout[1]~reg0_q\ <= NOT \M1|D1|IC_4|Qout[1]~reg0_q\;
\M1|D1|IC_4|ALT_INV_Qout[0]~reg0_q\ <= NOT \M1|D1|IC_4|Qout[0]~reg0_q\;
\M1|D1|IC_3|ALT_INV_Qout[3]~reg0_q\ <= NOT \M1|D1|IC_3|Qout[3]~reg0_q\;
\M1|D1|IC_3|ALT_INV_Qout[2]~reg0_q\ <= NOT \M1|D1|IC_3|Qout[2]~reg0_q\;
\M1|D1|IC_3|ALT_INV_Qout[1]~reg0_q\ <= NOT \M1|D1|IC_3|Qout[1]~reg0_q\;
\M1|D1|IC_3|ALT_INV_Qout[0]~reg0_q\ <= NOT \M1|D1|IC_3|Qout[0]~reg0_q\;
\M1|D1|IC_2|ALT_INV_Qout[3]~reg0_q\ <= NOT \M1|D1|IC_2|Qout[3]~reg0_q\;
\M1|D1|IC_2|ALT_INV_Qout[2]~reg0_q\ <= NOT \M1|D1|IC_2|Qout[2]~reg0_q\;
\M1|D1|IC_2|ALT_INV_Qout[1]~reg0_q\ <= NOT \M1|D1|IC_2|Qout[1]~reg0_q\;
\M1|D1|IC_2|ALT_INV_Qout[0]~reg0_q\ <= NOT \M1|D1|IC_2|Qout[0]~reg0_q\;
\M1|D1|IC_1|ALT_INV_Qout[3]~reg0_q\ <= NOT \M1|D1|IC_1|Qout[3]~reg0_q\;
\M1|D1|IC_1|ALT_INV_Qout[2]~reg0_q\ <= NOT \M1|D1|IC_1|Qout[2]~reg0_q\;
\M1|D1|IC_1|ALT_INV_Qout[1]~reg0_q\ <= NOT \M1|D1|IC_1|Qout[1]~reg0_q\;
\M1|D1|IC_1|ALT_INV_Qout[0]~reg0_q\ <= NOT \M1|D1|IC_1|Qout[0]~reg0_q\;
\C1|ALT_INV_Ereg.medindo~q\ <= NOT \C1|Ereg.medindo~q\;
\C1|ALT_INV_Ereg.iniciado~q\ <= NOT \C1|Ereg.iniciado~q\;
\C1|ALT_INV_Ereg.esperasoma~q\ <= NOT \C1|Ereg.esperasoma~q\;
\C1|ALT_INV_Ereg.registra~q\ <= NOT \C1|Ereg.registra~q\;
\C1|ALT_INV_Ereg.zera~q\ <= NOT \C1|Ereg.zera~q\;
\C1|ALT_INV_Ereg.espera~q\ <= NOT \C1|Ereg.espera~q\;
\R1|ALT_INV_Q\(15) <= NOT \R1|Q\(15);
\R1|ALT_INV_Q\(14) <= NOT \R1|Q\(14);
\R1|ALT_INV_Q\(13) <= NOT \R1|Q\(13);
\R1|ALT_INV_Q\(12) <= NOT \R1|Q\(12);
\R1|ALT_INV_Q\(11) <= NOT \R1|Q\(11);
\R1|ALT_INV_Q\(10) <= NOT \R1|Q\(10);
\R1|ALT_INV_Q\(9) <= NOT \R1|Q\(9);
\R1|ALT_INV_Q\(8) <= NOT \R1|Q\(8);
\R1|ALT_INV_Q\(7) <= NOT \R1|Q\(7);
\R1|ALT_INV_Q\(6) <= NOT \R1|Q\(6);
\R1|ALT_INV_Q\(5) <= NOT \R1|Q\(5);
\R1|ALT_INV_Q\(4) <= NOT \R1|Q\(4);
\R1|ALT_INV_Q\(3) <= NOT \R1|Q\(3);
\R1|ALT_INV_Q\(2) <= NOT \R1|Q\(2);
\R1|ALT_INV_Q\(1) <= NOT \R1|Q\(1);
\R1|ALT_INV_Q\(0) <= NOT \R1|Q\(0);
\R1|ALT_INV_IQ\(15) <= NOT \R1|IQ\(15);
\R1|ALT_INV_IQ\(14) <= NOT \R1|IQ\(14);
\R1|ALT_INV_IQ\(13) <= NOT \R1|IQ\(13);
\R1|ALT_INV_IQ\(12) <= NOT \R1|IQ\(12);
\R1|ALT_INV_IQ\(10) <= NOT \R1|IQ\(10);

-- Location: IOOBUF_X50_Y0_N42
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

-- Location: IOOBUF_X50_Y0_N93
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

-- Location: IOOBUF_X36_Y0_N19
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

-- Location: IOOBUF_X56_Y0_N2
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

-- Location: IOOBUF_X58_Y0_N93
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

-- Location: IOOBUF_X58_Y0_N59
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

-- Location: IOOBUF_X62_Y0_N2
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

-- Location: IOOBUF_X54_Y0_N36
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

-- Location: IOOBUF_X58_Y0_N42
\saida[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|Q\(8),
	devoe => ww_devoe,
	o => ww_saida(8));

-- Location: IOOBUF_X52_Y0_N53
\saida[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|Q\(9),
	devoe => ww_devoe,
	o => ww_saida(9));

-- Location: IOOBUF_X60_Y0_N19
\saida[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|Q\(10),
	devoe => ww_devoe,
	o => ww_saida(10));

-- Location: IOOBUF_X60_Y0_N36
\saida[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|Q\(11),
	devoe => ww_devoe,
	o => ww_saida(11));

-- Location: IOOBUF_X54_Y0_N19
\saida[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|Q[12]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_saida(12));

-- Location: IOOBUF_X72_Y0_N53
\saida[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|Q\(13),
	devoe => ww_devoe,
	o => ww_saida(13));

-- Location: IOOBUF_X60_Y0_N2
\saida[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|Q[14]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_saida(14));

-- Location: IOOBUF_X38_Y0_N2
\saida[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|Q\(15),
	devoe => ww_devoe,
	o => ww_saida(15));

-- Location: IOOBUF_X72_Y0_N2
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

-- Location: IOOBUF_X62_Y0_N19
\sig_resetr~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|Ereg.zera~q\,
	devoe => ww_devoe,
	o => ww_sig_resetr);

-- Location: IOOBUF_X40_Y0_N53
\sig_enabler~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|WideNor1~combout\,
	devoe => ww_devoe,
	o => ww_sig_enabler);

-- Location: IOOBUF_X66_Y0_N93
\sig_liga~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|WideNor0~combout\,
	devoe => ww_devoe,
	o => ww_sig_liga);

-- Location: IOOBUF_X70_Y0_N36
\sig_medida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \M1|D1|IC_1|Qout[0]~reg0DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_sig_medida(0));

-- Location: IOOBUF_X72_Y0_N19
\sig_medida[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \M1|D1|IC_1|Qout[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_sig_medida(1));

-- Location: IOOBUF_X68_Y0_N53
\sig_medida[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \M1|D1|IC_1|Qout[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_sig_medida(2));

-- Location: IOOBUF_X68_Y0_N19
\sig_medida[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \M1|D1|IC_1|Qout[3]~reg0DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_sig_medida(3));

-- Location: IOOBUF_X64_Y0_N36
\sig_medida[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \M1|D1|IC_2|Qout[0]~reg0DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_sig_medida(4));

-- Location: IOOBUF_X66_Y0_N42
\sig_medida[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \M1|D1|IC_2|Qout[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_sig_medida(5));

-- Location: IOOBUF_X64_Y0_N19
\sig_medida[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \M1|D1|IC_2|Qout[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_sig_medida(6));

-- Location: IOOBUF_X70_Y0_N53
\sig_medida[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \M1|D1|IC_2|Qout[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_sig_medida(7));

-- Location: IOOBUF_X70_Y0_N2
\sig_medida[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \M1|D1|IC_3|Qout[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_sig_medida(8));

-- Location: IOOBUF_X66_Y0_N76
\sig_medida[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \M1|D1|IC_3|Qout[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_sig_medida(9));

-- Location: IOOBUF_X89_Y4_N79
\sig_medida[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \M1|D1|IC_3|Qout[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_sig_medida(10));

-- Location: IOOBUF_X64_Y0_N2
\sig_medida[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \M1|D1|IC_3|Qout[3]~reg0DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_sig_medida(11));

-- Location: IOOBUF_X64_Y0_N53
\sig_medida[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \M1|D1|IC_4|Qout[0]~reg0DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_sig_medida(12));

-- Location: IOOBUF_X70_Y0_N19
\sig_medida[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \M1|D1|IC_4|Qout[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_sig_medida(13));

-- Location: IOOBUF_X89_Y4_N62
\sig_medida[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \M1|D1|IC_4|Qout[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_sig_medida(14));

-- Location: IOOBUF_X89_Y4_N96
\sig_medida[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \M1|D1|IC_4|Qout[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_sig_medida(15));

-- Location: IOOBUF_X66_Y0_N59
\saidaDisplay[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D4|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay(0));

-- Location: IOOBUF_X38_Y0_N19
\saidaDisplay[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay(1));

-- Location: IOOBUF_X32_Y0_N19
\saidaDisplay[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay(2));

-- Location: IOOBUF_X60_Y0_N53
\saidaDisplay[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay(3));

-- Location: IOOBUF_X38_Y0_N36
\saidaDisplay[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay(4));

-- Location: IOOBUF_X62_Y0_N36
\saidaDisplay[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay(5));

-- Location: IOOBUF_X72_Y0_N36
\saidaDisplay[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D4|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay(6));

-- Location: IOOBUF_X36_Y0_N53
\saidaDisplay[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D3|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay(7));

-- Location: IOOBUF_X56_Y0_N36
\saidaDisplay[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay(8));

-- Location: IOOBUF_X40_Y0_N19
\saidaDisplay[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay(9));

-- Location: IOOBUF_X50_Y0_N76
\saidaDisplay[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay(10));

-- Location: IOOBUF_X56_Y0_N19
\saidaDisplay[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay(11));

-- Location: IOOBUF_X36_Y0_N2
\saidaDisplay[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay(12));

-- Location: IOOBUF_X38_Y0_N53
\saidaDisplay[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D3|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay(13));

-- Location: IOOBUF_X58_Y0_N76
\saidaDisplay[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay(14));

-- Location: IOOBUF_X40_Y0_N36
\saidaDisplay[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay(15));

-- Location: IOOBUF_X54_Y0_N53
\saidaDisplay[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay(16));

-- Location: IOOBUF_X50_Y0_N59
\saidaDisplay[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay(17));

-- Location: IOOBUF_X34_Y0_N59
\saidaDisplay[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay(18));

-- Location: IOOBUF_X54_Y0_N2
\saidaDisplay[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay(19));

-- Location: IOOBUF_X56_Y0_N53
\saidaDisplay[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay(20));

-- Location: IOOBUF_X52_Y0_N36
\saidaDisplay[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay(21));

-- Location: IOOBUF_X36_Y0_N36
\saidaDisplay[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay(22));

-- Location: IOOBUF_X34_Y0_N42
\saidaDisplay[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay(23));

-- Location: IOOBUF_X40_Y0_N2
\saidaDisplay[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay(24));

-- Location: IOOBUF_X34_Y0_N93
\saidaDisplay[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay(25));

-- Location: IOOBUF_X52_Y0_N19
\saidaDisplay[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay(26));

-- Location: IOOBUF_X52_Y0_N2
\saidaDisplay[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \D1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_saidaDisplay(27));

-- Location: IOIBUF_X89_Y35_N61
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G10
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

-- Location: IOIBUF_X68_Y0_N1
\pulso~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pulso,
	o => \pulso~input_o\);

-- Location: IOIBUF_X62_Y0_N52
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X62_Y3_N10
\M1|C1|Ereg.LIMPA~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \M1|C1|Ereg.EPRONTO~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|C1|Ereg.LIMPA~DUPLICATE_q\);

-- Location: LABCELL_X62_Y3_N48
\M1|C1|Eprox.CONTA~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|C1|Eprox.CONTA~1_combout\ = ( !\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & ( (!\M1|C1|Ereg.EPRONTO~q\ & (\M1|C1|Ereg.INICIAL~q\ & \pulso~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|C1|ALT_INV_Ereg.EPRONTO~q\,
	datac => \M1|C1|ALT_INV_Ereg.INICIAL~q\,
	datad => \ALT_INV_pulso~input_o\,
	dataf => \M1|C1|ALT_INV_Ereg.LIMPA~DUPLICATE_q\,
	combout => \M1|C1|Eprox.CONTA~1_combout\);

-- Location: FF_X62_Y3_N50
\M1|C1|Ereg.CONTA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|C1|Eprox.CONTA~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|C1|Ereg.CONTA~q\);

-- Location: LABCELL_X62_Y3_N3
\M1|C1|Eprox.EPRONTO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|C1|Eprox.EPRONTO~0_combout\ = ( \M1|C1|Ereg.CONTA~q\ & ( !\pulso~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pulso~input_o\,
	dataf => \M1|C1|ALT_INV_Ereg.CONTA~q\,
	combout => \M1|C1|Eprox.EPRONTO~0_combout\);

-- Location: FF_X62_Y3_N5
\M1|C1|Ereg.EPRONTO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|C1|Eprox.EPRONTO~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|C1|Ereg.EPRONTO~q\);

-- Location: IOIBUF_X68_Y0_N35
\iniciar~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iniciar,
	o => \iniciar~input_o\);

-- Location: IOIBUF_X34_Y0_N75
\zerar~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_zerar,
	o => \zerar~input_o\);

-- Location: LABCELL_X62_Y3_N24
\C1|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Selector1~0_combout\ = ( \C1|Ereg.parado~q\ & ( (\C1|Ereg.zera~q\ & (!\iniciar~input_o\ & \zerar~input_o\)) ) ) # ( !\C1|Ereg.parado~q\ & ( (!\iniciar~input_o\ & \zerar~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_Ereg.zera~q\,
	datab => \ALT_INV_iniciar~input_o\,
	datac => \ALT_INV_zerar~input_o\,
	dataf => \C1|ALT_INV_Ereg.parado~q\,
	combout => \C1|Selector1~0_combout\);

-- Location: LABCELL_X61_Y3_N36
\C1|Ereg.zera~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Ereg.zera~feeder_combout\ = ( \C1|Selector1~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C1|ALT_INV_Selector1~0_combout\,
	combout => \C1|Ereg.zera~feeder_combout\);

-- Location: FF_X61_Y3_N38
\C1|Ereg.zera\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \C1|Ereg.zera~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|Ereg.zera~q\);

-- Location: LABCELL_X61_Y3_N54
\C1|Eprox.registra~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Eprox.registra~0_combout\ = ( \C1|Ereg.medindo~q\ & ( \M1|C1|Ereg.EPRONTO~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \M1|C1|ALT_INV_Ereg.EPRONTO~q\,
	dataf => \C1|ALT_INV_Ereg.medindo~q\,
	combout => \C1|Eprox.registra~0_combout\);

-- Location: FF_X60_Y3_N55
\C1|Ereg.registra\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \C1|Eprox.registra~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|Ereg.registra~q\);

-- Location: FF_X61_Y3_N35
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

-- Location: FF_X61_Y3_N31
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

-- Location: LABCELL_X62_Y3_N27
\C1|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Selector3~0_combout\ = ( \C1|Ereg.esperasoma~q\ ) # ( !\C1|Ereg.esperasoma~q\ & ( (\iniciar~input_o\ & \C1|Ereg.espera~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_iniciar~input_o\,
	datad => \C1|ALT_INV_Ereg.espera~q\,
	dataf => \C1|ALT_INV_Ereg.esperasoma~q\,
	combout => \C1|Selector3~0_combout\);

-- Location: FF_X62_Y3_N29
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

-- Location: LABCELL_X62_Y3_N6
\C1|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Selector0~0_combout\ = ( \C1|Ereg.parado~q\ & ( \C1|Ereg.espera~q\ & ( (!\C1|Ereg.zera~q\ & \iniciar~input_o\) ) ) ) # ( !\C1|Ereg.parado~q\ & ( \C1|Ereg.espera~q\ & ( (!\C1|Ereg.zera~q\ & \iniciar~input_o\) ) ) ) # ( \C1|Ereg.parado~q\ & ( 
-- !\C1|Ereg.espera~q\ & ( (!\C1|Ereg.zera~q\) # ((!\iniciar~input_o\ & \zerar~input_o\)) ) ) ) # ( !\C1|Ereg.parado~q\ & ( !\C1|Ereg.espera~q\ & ( (!\iniciar~input_o\ & ((\zerar~input_o\))) # (\iniciar~input_o\ & (!\C1|Ereg.zera~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111000101110101011101010111000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_Ereg.zera~q\,
	datab => \ALT_INV_iniciar~input_o\,
	datac => \ALT_INV_zerar~input_o\,
	datae => \C1|ALT_INV_Ereg.parado~q\,
	dataf => \C1|ALT_INV_Ereg.espera~q\,
	combout => \C1|Selector0~0_combout\);

-- Location: FF_X62_Y3_N8
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

-- Location: LABCELL_X62_Y3_N51
\C1|Eprox.iniciado~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Eprox.iniciado~0_combout\ = ( !\C1|Ereg.parado~q\ & ( \iniciar~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_iniciar~input_o\,
	dataf => \C1|ALT_INV_Ereg.parado~q\,
	combout => \C1|Eprox.iniciado~0_combout\);

-- Location: FF_X62_Y3_N53
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

-- Location: LABCELL_X61_Y3_N0
\C1|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Selector2~0_combout\ = ( \C1|Ereg.iniciado~q\ ) # ( !\C1|Ereg.iniciado~q\ & ( (\C1|Ereg.medindo~q\ & !\M1|C1|Ereg.EPRONTO~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|ALT_INV_Ereg.medindo~q\,
	datad => \M1|C1|ALT_INV_Ereg.EPRONTO~q\,
	dataf => \C1|ALT_INV_Ereg.iniciado~q\,
	combout => \C1|Selector2~0_combout\);

-- Location: FF_X61_Y3_N41
\C1|Ereg.medindo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \C1|Selector2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|Ereg.medindo~q\);

-- Location: FF_X62_Y3_N11
\M1|C1|Ereg.LIMPA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \M1|C1|Ereg.EPRONTO~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|C1|Ereg.LIMPA~q\);

-- Location: LABCELL_X61_Y3_N12
\M1|C1|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|C1|Selector0~0_combout\ = ( \M1|C1|Ereg.LIMPA~q\ & ( \C1|Ereg.iniciado~q\ ) ) # ( !\M1|C1|Ereg.LIMPA~q\ & ( \C1|Ereg.iniciado~q\ ) ) # ( \M1|C1|Ereg.LIMPA~q\ & ( !\C1|Ereg.iniciado~q\ & ( \C1|Ereg.medindo~q\ ) ) ) # ( !\M1|C1|Ereg.LIMPA~q\ & ( 
-- !\C1|Ereg.iniciado~q\ & ( (\M1|C1|Ereg.INICIAL~q\) # (\C1|Ereg.medindo~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|ALT_INV_Ereg.medindo~q\,
	datad => \M1|C1|ALT_INV_Ereg.INICIAL~q\,
	datae => \M1|C1|ALT_INV_Ereg.LIMPA~q\,
	dataf => \C1|ALT_INV_Ereg.iniciado~q\,
	combout => \M1|C1|Selector0~0_combout\);

-- Location: FF_X62_Y3_N26
\M1|C1|Ereg.INICIAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \M1|C1|Selector0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|C1|Ereg.INICIAL~q\);

-- Location: FF_X62_Y3_N20
\M1|D1|IC_1|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D1|IC_1|Qout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D1|IC_1|Qout[0]~reg0_q\);

-- Location: LABCELL_X62_Y3_N0
\M1|C1|Eprox.CONTA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|C1|Eprox.CONTA~0_combout\ = ( !\M1|C1|Ereg.LIMPA~q\ & ( \M1|C1|Ereg.INICIAL~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \M1|C1|ALT_INV_Ereg.INICIAL~q\,
	dataf => \M1|C1|ALT_INV_Ereg.LIMPA~q\,
	combout => \M1|C1|Eprox.CONTA~0_combout\);

-- Location: FF_X62_Y3_N55
\M1|D1|IC_1|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D1|IC_1|Qout[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D1|IC_1|Qout[3]~reg0_q\);

-- Location: LABCELL_X62_Y3_N21
\M1|D1|IC_1|Qout[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D1|IC_1|Qout[3]~2_combout\ = ( \M1|D1|IC_1|Qout[0]~reg0DUPLICATE_q\ & ( (!\M1|C1|Ereg.INICIAL~q\) # (((\M1|D1|IC_1|Qout[3]~reg0DUPLICATE_q\) # (\M1|C1|Ereg.CONTA~q\)) # (\M1|C1|Ereg.LIMPA~q\)) ) ) # ( !\M1|D1|IC_1|Qout[0]~reg0DUPLICATE_q\ & ( 
-- (!\M1|C1|Ereg.INICIAL~q\) # ((\M1|C1|Ereg.CONTA~q\) # (\M1|C1|Ereg.LIMPA~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111110111111101111111011111110111111111111111011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|C1|ALT_INV_Ereg.INICIAL~q\,
	datab => \M1|C1|ALT_INV_Ereg.LIMPA~q\,
	datac => \M1|C1|ALT_INV_Ereg.CONTA~q\,
	datad => \M1|D1|IC_1|ALT_INV_Qout[3]~reg0DUPLICATE_q\,
	dataf => \M1|D1|IC_1|ALT_INV_Qout[0]~reg0DUPLICATE_q\,
	combout => \M1|D1|IC_1|Qout[3]~2_combout\);

-- Location: FF_X62_Y3_N31
\M1|D1|IC_1|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D1|IC_1|Qout~1_combout\,
	ena => \M1|D1|IC_1|Qout[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D1|IC_1|Qout[1]~reg0_q\);

-- Location: LABCELL_X62_Y3_N30
\M1|D1|IC_1|Qout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D1|IC_1|Qout~1_combout\ = ( \M1|C1|Ereg.INICIAL~q\ & ( (!\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & ((!\M1|D1|IC_1|Qout[0]~reg0_q\ & ((\M1|D1|IC_1|Qout[1]~reg0_q\))) # (\M1|D1|IC_1|Qout[0]~reg0_q\ & (!\M1|D1|IC_1|Qout[3]~reg0_q\ & 
-- !\M1|D1|IC_1|Qout[1]~reg0_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000101000000100000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|D1|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datab => \M1|D1|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datac => \M1|C1|ALT_INV_Ereg.LIMPA~DUPLICATE_q\,
	datad => \M1|D1|IC_1|ALT_INV_Qout[1]~reg0_q\,
	dataf => \M1|C1|ALT_INV_Ereg.INICIAL~q\,
	combout => \M1|D1|IC_1|Qout~1_combout\);

-- Location: FF_X62_Y3_N32
\M1|D1|IC_1|Qout[1]~reg0DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D1|IC_1|Qout~1_combout\,
	ena => \M1|D1|IC_1|Qout[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D1|IC_1|Qout[1]~reg0DUPLICATE_q\);

-- Location: LABCELL_X62_Y3_N12
\M1|D1|IC_1|Qout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D1|IC_1|Qout~3_combout\ = ( \M1|D1|IC_1|Qout[2]~reg0_q\ & ( \M1|D1|IC_1|Qout[3]~reg0DUPLICATE_q\ & ( (\M1|C1|Ereg.INICIAL~q\ & (!\M1|D1|IC_1|Qout[0]~reg0DUPLICATE_q\ & !\M1|C1|Ereg.LIMPA~DUPLICATE_q\)) ) ) ) # ( \M1|D1|IC_1|Qout[2]~reg0_q\ & ( 
-- !\M1|D1|IC_1|Qout[3]~reg0DUPLICATE_q\ & ( (\M1|C1|Ereg.INICIAL~q\ & (!\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & ((!\M1|D1|IC_1|Qout[0]~reg0DUPLICATE_q\) # (!\M1|D1|IC_1|Qout[1]~reg0DUPLICATE_q\)))) ) ) ) # ( !\M1|D1|IC_1|Qout[2]~reg0_q\ & ( 
-- !\M1|D1|IC_1|Qout[3]~reg0DUPLICATE_q\ & ( (\M1|C1|Ereg.INICIAL~q\ & (\M1|D1|IC_1|Qout[0]~reg0DUPLICATE_q\ & (!\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & \M1|D1|IC_1|Qout[1]~reg0DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000010100000100000000000000000000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|C1|ALT_INV_Ereg.INICIAL~q\,
	datab => \M1|D1|IC_1|ALT_INV_Qout[0]~reg0DUPLICATE_q\,
	datac => \M1|C1|ALT_INV_Ereg.LIMPA~DUPLICATE_q\,
	datad => \M1|D1|IC_1|ALT_INV_Qout[1]~reg0DUPLICATE_q\,
	datae => \M1|D1|IC_1|ALT_INV_Qout[2]~reg0_q\,
	dataf => \M1|D1|IC_1|ALT_INV_Qout[3]~reg0DUPLICATE_q\,
	combout => \M1|D1|IC_1|Qout~3_combout\);

-- Location: FF_X62_Y3_N13
\M1|D1|IC_1|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D1|IC_1|Qout~3_combout\,
	ena => \M1|D1|IC_1|Qout[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D1|IC_1|Qout[2]~reg0_q\);

-- Location: LABCELL_X62_Y3_N54
\M1|D1|IC_1|Qout[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D1|IC_1|Qout[3]~4_combout\ = ( \M1|D1|IC_1|Qout[3]~reg0_q\ & ( \M1|D1|IC_1|Qout[2]~reg0_q\ & ( (\M1|C1|Eprox.CONTA~0_combout\ & !\M1|D1|IC_1|Qout[0]~reg0_q\) ) ) ) # ( !\M1|D1|IC_1|Qout[3]~reg0_q\ & ( \M1|D1|IC_1|Qout[2]~reg0_q\ & ( 
-- (\M1|C1|Ereg.CONTA~q\ & (\M1|C1|Eprox.CONTA~0_combout\ & (\M1|D1|IC_1|Qout[0]~reg0_q\ & \M1|D1|IC_1|Qout[1]~reg0DUPLICATE_q\))) ) ) ) # ( \M1|D1|IC_1|Qout[3]~reg0_q\ & ( !\M1|D1|IC_1|Qout[2]~reg0_q\ & ( (\M1|C1|Eprox.CONTA~0_combout\ & 
-- !\M1|D1|IC_1|Qout[0]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000010011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|C1|ALT_INV_Ereg.CONTA~q\,
	datab => \M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datac => \M1|D1|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datad => \M1|D1|IC_1|ALT_INV_Qout[1]~reg0DUPLICATE_q\,
	datae => \M1|D1|IC_1|ALT_INV_Qout[3]~reg0_q\,
	dataf => \M1|D1|IC_1|ALT_INV_Qout[2]~reg0_q\,
	combout => \M1|D1|IC_1|Qout[3]~4_combout\);

-- Location: FF_X62_Y3_N56
\M1|D1|IC_1|Qout[3]~reg0DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D1|IC_1|Qout[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D1|IC_1|Qout[3]~reg0DUPLICATE_q\);

-- Location: LABCELL_X62_Y3_N18
\M1|D1|IC_1|Qout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D1|IC_1|Qout[0]~0_combout\ = ( \M1|D1|IC_1|Qout[3]~reg0DUPLICATE_q\ & ( (\M1|C1|Ereg.INICIAL~q\ & (!\M1|C1|Ereg.LIMPA~q\ & (\M1|C1|Ereg.CONTA~q\ & !\M1|D1|IC_1|Qout[0]~reg0_q\))) ) ) # ( !\M1|D1|IC_1|Qout[3]~reg0DUPLICATE_q\ & ( 
-- (\M1|C1|Ereg.INICIAL~q\ & (!\M1|C1|Ereg.LIMPA~q\ & (!\M1|C1|Ereg.CONTA~q\ $ (!\M1|D1|IC_1|Qout[0]~reg0_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000000000001000100000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|C1|ALT_INV_Ereg.INICIAL~q\,
	datab => \M1|C1|ALT_INV_Ereg.LIMPA~q\,
	datac => \M1|C1|ALT_INV_Ereg.CONTA~q\,
	datad => \M1|D1|IC_1|ALT_INV_Qout[0]~reg0_q\,
	dataf => \M1|D1|IC_1|ALT_INV_Qout[3]~reg0DUPLICATE_q\,
	combout => \M1|D1|IC_1|Qout[0]~0_combout\);

-- Location: FF_X62_Y3_N19
\M1|D1|IC_1|Qout[0]~reg0DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D1|IC_1|Qout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D1|IC_1|Qout[0]~reg0DUPLICATE_q\);

-- Location: LABCELL_X62_Y3_N36
\R1|IQ[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|IQ[0]~feeder_combout\ = \M1|D1|IC_1|Qout[0]~reg0DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \M1|D1|IC_1|ALT_INV_Qout[0]~reg0DUPLICATE_q\,
	combout => \R1|IQ[0]~feeder_combout\);

-- Location: FF_X61_Y3_N32
\C1|Ereg.esperasoma~DUPLICATE\ : dffeas
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
	q => \C1|Ereg.esperasoma~DUPLICATE_q\);

-- Location: LABCELL_X61_Y3_N6
\R1|IQ[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|IQ[15]~0_combout\ = ( !\C1|Ereg.zera~q\ & ( \C1|Ereg.registra~q\ ) ) # ( \C1|Ereg.zera~q\ & ( !\C1|Ereg.registra~q\ & ( !\C1|Ereg.esperasoma~DUPLICATE_q\ ) ) ) # ( !\C1|Ereg.zera~q\ & ( !\C1|Ereg.registra~q\ & ( \C1|Ereg.esperasoma~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \C1|ALT_INV_Ereg.esperasoma~DUPLICATE_q\,
	datae => \C1|ALT_INV_Ereg.zera~q\,
	dataf => \C1|ALT_INV_Ereg.registra~q\,
	combout => \R1|IQ[15]~0_combout\);

-- Location: FF_X62_Y3_N37
\R1|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R1|IQ[0]~feeder_combout\,
	sclr => \C1|Ereg.zera~q\,
	ena => \R1|IQ[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|IQ\(0));

-- Location: FF_X60_Y3_N56
\C1|Ereg.registra~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \C1|Eprox.registra~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|Ereg.registra~DUPLICATE_q\);

-- Location: LABCELL_X60_Y3_N0
\R1|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|process_0~0_combout\ = ( \C1|Ereg.zera~q\ & ( \C1|Ereg.esperasoma~DUPLICATE_q\ ) ) # ( !\C1|Ereg.zera~q\ & ( \C1|Ereg.esperasoma~DUPLICATE_q\ ) ) # ( \C1|Ereg.zera~q\ & ( !\C1|Ereg.esperasoma~DUPLICATE_q\ ) ) # ( !\C1|Ereg.zera~q\ & ( 
-- !\C1|Ereg.esperasoma~DUPLICATE_q\ & ( \C1|Ereg.registra~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C1|ALT_INV_Ereg.registra~DUPLICATE_q\,
	datae => \C1|ALT_INV_Ereg.zera~q\,
	dataf => \C1|ALT_INV_Ereg.esperasoma~DUPLICATE_q\,
	combout => \R1|process_0~0_combout\);

-- Location: FF_X59_Y2_N5
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

-- Location: FF_X62_Y3_N38
\R1|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \M1|D1|IC_1|Qout[1]~reg0_q\,
	sclr => \C1|Ereg.zera~q\,
	sload => VCC,
	ena => \R1|IQ[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|IQ\(1));

-- Location: FF_X59_Y2_N20
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

-- Location: FF_X62_Y3_N47
\R1|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \M1|D1|IC_1|Qout[2]~reg0_q\,
	sclr => \C1|Ereg.zera~q\,
	sload => VCC,
	ena => \R1|IQ[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|IQ\(2));

-- Location: FF_X59_Y2_N29
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

-- Location: LABCELL_X62_Y3_N45
\R1|IQ[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|IQ[3]~feeder_combout\ = \M1|D1|IC_1|Qout[3]~reg0DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|D1|IC_1|ALT_INV_Qout[3]~reg0DUPLICATE_q\,
	combout => \R1|IQ[3]~feeder_combout\);

-- Location: FF_X62_Y3_N46
\R1|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R1|IQ[3]~feeder_combout\,
	sclr => \C1|Ereg.zera~q\,
	ena => \R1|IQ[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|IQ\(3));

-- Location: FF_X59_Y2_N23
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

-- Location: LABCELL_X62_Y3_N33
\M1|D1|IC_2|Qout[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D1|IC_2|Qout[3]~0_combout\ = ( \M1|C1|Ereg.CONTA~q\ & ( (\M1|D1|IC_1|Qout[0]~reg0DUPLICATE_q\ & \M1|D1|IC_1|Qout[3]~reg0DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \M1|D1|IC_1|ALT_INV_Qout[0]~reg0DUPLICATE_q\,
	datad => \M1|D1|IC_1|ALT_INV_Qout[3]~reg0DUPLICATE_q\,
	dataf => \M1|C1|ALT_INV_Ereg.CONTA~q\,
	combout => \M1|D1|IC_2|Qout[3]~0_combout\);

-- Location: FF_X63_Y3_N10
\M1|D1|IC_2|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D1|IC_2|Qout[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D1|IC_2|Qout[0]~reg0_q\);

-- Location: LABCELL_X62_Y3_N42
\M1|D1|IC_2|Qout[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D1|IC_2|Qout[2]~3_combout\ = ( \M1|D1|ClrN2~0_combout\ ) # ( !\M1|D1|ClrN2~0_combout\ & ( (!\M1|C1|Eprox.CONTA~0_combout\) # (\M1|D1|IC_2|Qout[3]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \M1|D1|IC_2|ALT_INV_Qout[3]~0_combout\,
	datad => \M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	dataf => \M1|D1|ALT_INV_ClrN2~0_combout\,
	combout => \M1|D1|IC_2|Qout[2]~3_combout\);

-- Location: FF_X61_Y3_N5
\M1|D1|IC_2|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D1|IC_2|Qout~2_combout\,
	ena => \M1|D1|IC_2|Qout[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D1|IC_2|Qout[1]~reg0_q\);

-- Location: LABCELL_X61_Y3_N3
\M1|D1|IC_2|Qout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D1|IC_2|Qout~2_combout\ = ( \M1|C1|Eprox.CONTA~0_combout\ & ( (!\M1|D1|ClrN2~0_combout\ & (!\M1|D1|IC_2|Qout[0]~reg0DUPLICATE_q\ $ (!\M1|D1|IC_2|Qout[1]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000101000000101000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|D1|IC_2|ALT_INV_Qout[0]~reg0DUPLICATE_q\,
	datac => \M1|D1|ALT_INV_ClrN2~0_combout\,
	datad => \M1|D1|IC_2|ALT_INV_Qout[1]~reg0_q\,
	dataf => \M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	combout => \M1|D1|IC_2|Qout~2_combout\);

-- Location: FF_X61_Y3_N4
\M1|D1|IC_2|Qout[1]~reg0DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D1|IC_2|Qout~2_combout\,
	ena => \M1|D1|IC_2|Qout[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D1|IC_2|Qout[1]~reg0DUPLICATE_q\);

-- Location: LABCELL_X61_Y3_N57
\M1|D1|IC_2|Qout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D1|IC_2|Qout~4_combout\ = ( \M1|D1|IC_2|Qout[1]~reg0_q\ & ( (\M1|C1|Eprox.CONTA~0_combout\ & (!\M1|D1|ClrN2~0_combout\ & (!\M1|D1|IC_2|Qout[0]~reg0DUPLICATE_q\ $ (!\M1|D1|IC_2|Qout[2]~reg0_q\)))) ) ) # ( !\M1|D1|IC_2|Qout[1]~reg0_q\ & ( 
-- (\M1|C1|Eprox.CONTA~0_combout\ & (!\M1|D1|ClrN2~0_combout\ & \M1|D1|IC_2|Qout[2]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000010000001000000001000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|D1|IC_2|ALT_INV_Qout[0]~reg0DUPLICATE_q\,
	datab => \M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datac => \M1|D1|ALT_INV_ClrN2~0_combout\,
	datad => \M1|D1|IC_2|ALT_INV_Qout[2]~reg0_q\,
	dataf => \M1|D1|IC_2|ALT_INV_Qout[1]~reg0_q\,
	combout => \M1|D1|IC_2|Qout~4_combout\);

-- Location: FF_X61_Y3_N58
\M1|D1|IC_2|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D1|IC_2|Qout~4_combout\,
	ena => \M1|D1|IC_2|Qout[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D1|IC_2|Qout[2]~reg0_q\);

-- Location: LABCELL_X63_Y3_N12
\M1|D1|IC_2|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D1|IC_2|Add0~0_combout\ = ( \M1|D1|IC_2|Qout[0]~reg0DUPLICATE_q\ & ( (\M1|D1|IC_2|Qout[1]~reg0DUPLICATE_q\ & \M1|D1|IC_2|Qout[2]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \M1|D1|IC_2|ALT_INV_Qout[1]~reg0DUPLICATE_q\,
	datad => \M1|D1|IC_2|ALT_INV_Qout[2]~reg0_q\,
	dataf => \M1|D1|IC_2|ALT_INV_Qout[0]~reg0DUPLICATE_q\,
	combout => \M1|D1|IC_2|Add0~0_combout\);

-- Location: LABCELL_X63_Y3_N57
\M1|D1|IC_2|Qout[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D1|IC_2|Qout[3]~5_combout\ = ( \M1|C1|Eprox.CONTA~0_combout\ & ( (!\M1|D1|ClrN2~0_combout\ & (!\M1|D1|IC_2|Qout[3]~reg0_q\ $ (((!\M1|D1|IC_2|Add0~0_combout\) # (!\M1|D1|IC_2|Qout[3]~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010101010000000001010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|D1|ALT_INV_ClrN2~0_combout\,
	datab => \M1|D1|IC_2|ALT_INV_Add0~0_combout\,
	datac => \M1|D1|IC_2|ALT_INV_Qout[3]~0_combout\,
	datad => \M1|D1|IC_2|ALT_INV_Qout[3]~reg0_q\,
	dataf => \M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	combout => \M1|D1|IC_2|Qout[3]~5_combout\);

-- Location: FF_X63_Y3_N59
\M1|D1|IC_2|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D1|IC_2|Qout[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D1|IC_2|Qout[3]~reg0_q\);

-- Location: LABCELL_X62_Y3_N39
\M1|D1|ClrN2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D1|ClrN2~0_combout\ = ( \M1|D1|IC_2|Qout[0]~reg0DUPLICATE_q\ & ( (\M1|D1|IC_1|Qout[0]~reg0_q\ & (\M1|D1|IC_2|Qout[3]~reg0_q\ & \M1|D1|IC_1|Qout[3]~reg0DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|D1|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datac => \M1|D1|IC_2|ALT_INV_Qout[3]~reg0_q\,
	datad => \M1|D1|IC_1|ALT_INV_Qout[3]~reg0DUPLICATE_q\,
	dataf => \M1|D1|IC_2|ALT_INV_Qout[0]~reg0DUPLICATE_q\,
	combout => \M1|D1|ClrN2~0_combout\);

-- Location: LABCELL_X63_Y3_N9
\M1|D1|IC_2|Qout[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D1|IC_2|Qout[0]~1_combout\ = ( \M1|D1|ClrN2~0_combout\ & ( (\M1|C1|Eprox.CONTA~0_combout\ & !\M1|D1|IC_2|Qout[0]~reg0_q\) ) ) # ( !\M1|D1|ClrN2~0_combout\ & ( (\M1|C1|Eprox.CONTA~0_combout\ & (!\M1|D1|IC_2|Qout[3]~0_combout\ $ 
-- (!\M1|D1|IC_2|Qout[0]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datac => \M1|D1|IC_2|ALT_INV_Qout[3]~0_combout\,
	datad => \M1|D1|IC_2|ALT_INV_Qout[0]~reg0_q\,
	dataf => \M1|D1|ALT_INV_ClrN2~0_combout\,
	combout => \M1|D1|IC_2|Qout[0]~1_combout\);

-- Location: FF_X63_Y3_N11
\M1|D1|IC_2|Qout[0]~reg0DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D1|IC_2|Qout[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D1|IC_2|Qout[0]~reg0DUPLICATE_q\);

-- Location: FF_X61_Y3_N25
\R1|IQ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \M1|D1|IC_2|Qout[0]~reg0DUPLICATE_q\,
	sclr => \C1|Ereg.zera~q\,
	sload => VCC,
	ena => \R1|IQ[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|IQ\(4));

-- Location: FF_X60_Y3_N28
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

-- Location: FF_X61_Y3_N8
\R1|IQ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \M1|D1|IC_2|Qout[1]~reg0_q\,
	sclr => \C1|Ereg.zera~q\,
	sload => VCC,
	ena => \R1|IQ[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|IQ\(5));

-- Location: FF_X60_Y3_N22
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

-- Location: LABCELL_X61_Y3_N42
\R1|IQ[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|IQ[6]~feeder_combout\ = ( \M1|D1|IC_2|Qout[2]~reg0_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \M1|D1|IC_2|ALT_INV_Qout[2]~reg0_q\,
	combout => \R1|IQ[6]~feeder_combout\);

-- Location: FF_X61_Y3_N44
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
	ena => \R1|IQ[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|IQ\(6));

-- Location: FF_X60_Y3_N32
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

-- Location: FF_X63_Y3_N58
\M1|D1|IC_2|Qout[3]~reg0DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D1|IC_2|Qout[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D1|IC_2|Qout[3]~reg0DUPLICATE_q\);

-- Location: FF_X62_Y3_N43
\R1|IQ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \M1|D1|IC_2|Qout[3]~reg0DUPLICATE_q\,
	sclr => \C1|Ereg.zera~q\,
	sload => VCC,
	ena => \R1|IQ[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|IQ\(7));

-- Location: FF_X59_Y2_N47
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

-- Location: LABCELL_X63_Y3_N48
\M1|D1|ClrN3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D1|ClrN3~0_combout\ = ( \M1|D1|IC_2|Qout[0]~reg0_q\ & ( \M1|D1|IC_1|Qout[0]~reg0DUPLICATE_q\ & ( (\M1|D1|IC_2|Qout[3]~reg0DUPLICATE_q\ & (\M1|D1|IC_3|Qout[3]~reg0_q\ & (\M1|D1|IC_1|Qout[3]~reg0_q\ & \M1|D1|IC_3|Qout[0]~reg0_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|D1|IC_2|ALT_INV_Qout[3]~reg0DUPLICATE_q\,
	datab => \M1|D1|IC_3|ALT_INV_Qout[3]~reg0_q\,
	datac => \M1|D1|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datad => \M1|D1|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datae => \M1|D1|IC_2|ALT_INV_Qout[0]~reg0_q\,
	dataf => \M1|D1|IC_1|ALT_INV_Qout[0]~reg0DUPLICATE_q\,
	combout => \M1|D1|ClrN3~0_combout\);

-- Location: LABCELL_X63_Y3_N39
\M1|D1|IC_3|Qout[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D1|IC_3|Qout[3]~2_combout\ = ( \M1|D1|ClrN2~0_combout\ & ( ((!\M1|C1|Eprox.CONTA~0_combout\) # (\M1|D1|ClrN3~0_combout\)) # (\M1|C1|Ereg.CONTA~q\) ) ) # ( !\M1|D1|ClrN2~0_combout\ & ( (!\M1|C1|Eprox.CONTA~0_combout\) # (\M1|D1|ClrN3~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111111110101111111111111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|C1|ALT_INV_Ereg.CONTA~q\,
	datac => \M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datad => \M1|D1|ALT_INV_ClrN3~0_combout\,
	dataf => \M1|D1|ALT_INV_ClrN2~0_combout\,
	combout => \M1|D1|IC_3|Qout[3]~2_combout\);

-- Location: FF_X63_Y3_N37
\M1|D1|IC_3|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D1|IC_3|Qout~1_combout\,
	ena => \M1|D1|IC_3|Qout[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D1|IC_3|Qout[1]~reg0_q\);

-- Location: LABCELL_X63_Y3_N36
\M1|D1|IC_3|Qout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D1|IC_3|Qout~1_combout\ = ( \M1|D1|IC_3|Qout[0]~reg0_q\ & ( (\M1|C1|Eprox.CONTA~0_combout\ & (!\M1|D1|ClrN3~0_combout\ & !\M1|D1|IC_3|Qout[1]~reg0_q\)) ) ) # ( !\M1|D1|IC_3|Qout[0]~reg0_q\ & ( (\M1|C1|Eprox.CONTA~0_combout\ & (!\M1|D1|ClrN3~0_combout\ 
-- & \M1|D1|IC_3|Qout[1]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datac => \M1|D1|ALT_INV_ClrN3~0_combout\,
	datad => \M1|D1|IC_3|ALT_INV_Qout[1]~reg0_q\,
	dataf => \M1|D1|IC_3|ALT_INV_Qout[0]~reg0_q\,
	combout => \M1|D1|IC_3|Qout~1_combout\);

-- Location: FF_X63_Y3_N38
\M1|D1|IC_3|Qout[1]~reg0DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D1|IC_3|Qout~1_combout\,
	ena => \M1|D1|IC_3|Qout[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D1|IC_3|Qout[1]~reg0DUPLICATE_q\);

-- Location: LABCELL_X63_Y3_N18
\M1|D1|IC_3|Qout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D1|IC_3|Qout~3_combout\ = ( \M1|D1|IC_3|Qout[0]~reg0_q\ & ( (!\M1|D1|ClrN3~0_combout\ & (\M1|C1|Eprox.CONTA~0_combout\ & (!\M1|D1|IC_3|Qout[1]~reg0DUPLICATE_q\ $ (!\M1|D1|IC_3|Qout[2]~reg0_q\)))) ) ) # ( !\M1|D1|IC_3|Qout[0]~reg0_q\ & ( 
-- (!\M1|D1|ClrN3~0_combout\ & (\M1|C1|Eprox.CONTA~0_combout\ & \M1|D1|IC_3|Qout[2]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000010001000000000001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|D1|ALT_INV_ClrN3~0_combout\,
	datab => \M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datac => \M1|D1|IC_3|ALT_INV_Qout[1]~reg0DUPLICATE_q\,
	datad => \M1|D1|IC_3|ALT_INV_Qout[2]~reg0_q\,
	dataf => \M1|D1|IC_3|ALT_INV_Qout[0]~reg0_q\,
	combout => \M1|D1|IC_3|Qout~3_combout\);

-- Location: FF_X63_Y3_N20
\M1|D1|IC_3|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D1|IC_3|Qout~3_combout\,
	ena => \M1|D1|IC_3|Qout[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D1|IC_3|Qout[2]~reg0_q\);

-- Location: LABCELL_X63_Y3_N3
\M1|D1|IC_3|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D1|IC_3|Add0~0_combout\ = ( \M1|D1|IC_3|Qout[0]~reg0_q\ & ( (\M1|D1|IC_3|Qout[2]~reg0_q\ & \M1|D1|IC_3|Qout[1]~reg0DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \M1|D1|IC_3|ALT_INV_Qout[2]~reg0_q\,
	datad => \M1|D1|IC_3|ALT_INV_Qout[1]~reg0DUPLICATE_q\,
	dataf => \M1|D1|IC_3|ALT_INV_Qout[0]~reg0_q\,
	combout => \M1|D1|IC_3|Add0~0_combout\);

-- Location: LABCELL_X63_Y3_N42
\M1|D1|IC_3|Qout[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D1|IC_3|Qout[3]~4_combout\ = ( \M1|D1|IC_3|Qout[3]~reg0_q\ & ( \M1|C1|Eprox.CONTA~0_combout\ & ( (!\M1|D1|ClrN2~0_combout\) # ((!\M1|D1|IC_3|Qout[0]~reg0_q\ & ((!\M1|D1|IC_3|Add0~0_combout\) # (!\M1|C1|Ereg.CONTA~q\)))) ) ) ) # ( 
-- !\M1|D1|IC_3|Qout[3]~reg0_q\ & ( \M1|C1|Eprox.CONTA~0_combout\ & ( (\M1|D1|IC_3|Add0~0_combout\ & (\M1|D1|ClrN2~0_combout\ & \M1|C1|Ereg.CONTA~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000011111111011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|D1|IC_3|ALT_INV_Add0~0_combout\,
	datab => \M1|D1|ALT_INV_ClrN2~0_combout\,
	datac => \M1|C1|ALT_INV_Ereg.CONTA~q\,
	datad => \M1|D1|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datae => \M1|D1|IC_3|ALT_INV_Qout[3]~reg0_q\,
	dataf => \M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	combout => \M1|D1|IC_3|Qout[3]~4_combout\);

-- Location: FF_X63_Y3_N44
\M1|D1|IC_3|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D1|IC_3|Qout[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D1|IC_3|Qout[3]~reg0_q\);

-- Location: LABCELL_X63_Y3_N15
\M1|D1|IC_3|Qout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D1|IC_3|Qout[0]~0_combout\ = ( \M1|C1|Eprox.CONTA~0_combout\ & ( (!\M1|D1|ClrN2~0_combout\ & (((\M1|D1|IC_3|Qout[0]~reg0_q\)))) # (\M1|D1|ClrN2~0_combout\ & ((!\M1|C1|Ereg.CONTA~q\ & (!\M1|D1|IC_3|Qout[3]~reg0_q\ & \M1|D1|IC_3|Qout[0]~reg0_q\)) # 
-- (\M1|C1|Ereg.CONTA~q\ & ((!\M1|D1|IC_3|Qout[0]~reg0_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001111010100001000111101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|D1|ALT_INV_ClrN2~0_combout\,
	datab => \M1|C1|ALT_INV_Ereg.CONTA~q\,
	datac => \M1|D1|IC_3|ALT_INV_Qout[3]~reg0_q\,
	datad => \M1|D1|IC_3|ALT_INV_Qout[0]~reg0_q\,
	dataf => \M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	combout => \M1|D1|IC_3|Qout[0]~0_combout\);

-- Location: FF_X63_Y3_N17
\M1|D1|IC_3|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D1|IC_3|Qout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D1|IC_3|Qout[0]~reg0_q\);

-- Location: FF_X61_Y3_N28
\R1|IQ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \M1|D1|IC_3|Qout[0]~reg0_q\,
	sclr => \C1|Ereg.zera~q\,
	sload => VCC,
	ena => \R1|IQ[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|IQ\(8));

-- Location: FF_X60_Y3_N5
\R1|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R1|IQ\(8),
	sload => VCC,
	ena => \R1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|Q\(8));

-- Location: LABCELL_X61_Y3_N18
\R1|IQ[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|IQ[9]~feeder_combout\ = ( \M1|D1|IC_3|Qout[1]~reg0_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \M1|D1|IC_3|ALT_INV_Qout[1]~reg0_q\,
	combout => \R1|IQ[9]~feeder_combout\);

-- Location: FF_X61_Y3_N19
\R1|IQ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R1|IQ[9]~feeder_combout\,
	sclr => \C1|Ereg.zera~q\,
	ena => \R1|IQ[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|IQ\(9));

-- Location: FF_X60_Y3_N2
\R1|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R1|IQ\(9),
	sload => VCC,
	ena => \R1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|Q\(9));

-- Location: FF_X61_Y3_N10
\R1|IQ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \M1|D1|IC_3|Qout[2]~reg0_q\,
	sclr => \C1|Ereg.zera~q\,
	sload => VCC,
	ena => \R1|IQ[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|IQ\(10));

-- Location: LABCELL_X60_Y3_N45
\R1|Q[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Q[10]~feeder_combout\ = ( \R1|IQ\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \R1|ALT_INV_IQ\(10),
	combout => \R1|Q[10]~feeder_combout\);

-- Location: FF_X60_Y3_N47
\R1|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R1|Q[10]~feeder_combout\,
	ena => \R1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|Q\(10));

-- Location: FF_X63_Y3_N43
\M1|D1|IC_3|Qout[3]~reg0DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D1|IC_3|Qout[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D1|IC_3|Qout[3]~reg0DUPLICATE_q\);

-- Location: FF_X61_Y3_N17
\R1|IQ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \M1|D1|IC_3|Qout[3]~reg0DUPLICATE_q\,
	sclr => \C1|Ereg.zera~q\,
	sload => VCC,
	ena => \R1|IQ[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|IQ\(11));

-- Location: FF_X60_Y3_N7
\R1|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R1|IQ\(11),
	sload => VCC,
	ena => \R1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|Q\(11));

-- Location: FF_X63_Y3_N8
\M1|D1|IC_4|Qout[0]~reg0DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D1|IC_4|Qout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D1|IC_4|Qout[0]~reg0DUPLICATE_q\);

-- Location: FF_X63_Y3_N25
\M1|D1|IC_4|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D1|IC_4|Qout[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D1|IC_4|Qout[3]~reg0_q\);

-- Location: LABCELL_X63_Y3_N21
\M1|D1|IC_4|Qout[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D1|IC_4|Qout[1]~2_combout\ = ( \M1|D1|IC_4|Qout[0]~reg0DUPLICATE_q\ & ( (!\M1|C1|Eprox.CONTA~0_combout\) # ((\M1|D1|ClrN3~0_combout\ & ((\M1|C1|Ereg.CONTA~q\) # (\M1|D1|IC_4|Qout[3]~reg0_q\)))) ) ) # ( !\M1|D1|IC_4|Qout[0]~reg0DUPLICATE_q\ & ( 
-- (!\M1|C1|Eprox.CONTA~0_combout\) # ((\M1|D1|ClrN3~0_combout\ & \M1|C1|Ereg.CONTA~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011011101110011001101110111001101110111011100110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|D1|ALT_INV_ClrN3~0_combout\,
	datab => \M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datac => \M1|D1|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datad => \M1|C1|ALT_INV_Ereg.CONTA~q\,
	dataf => \M1|D1|IC_4|ALT_INV_Qout[0]~reg0DUPLICATE_q\,
	combout => \M1|D1|IC_4|Qout[1]~2_combout\);

-- Location: FF_X63_Y3_N1
\M1|D1|IC_4|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D1|IC_4|Qout~1_combout\,
	ena => \M1|D1|IC_4|Qout[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D1|IC_4|Qout[1]~reg0_q\);

-- Location: LABCELL_X63_Y3_N0
\M1|D1|IC_4|Qout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D1|IC_4|Qout~1_combout\ = ( \M1|C1|Eprox.CONTA~0_combout\ & ( (!\M1|D1|IC_4|Qout[0]~reg0DUPLICATE_q\ & (((\M1|D1|IC_4|Qout[1]~reg0_q\)))) # (\M1|D1|IC_4|Qout[0]~reg0DUPLICATE_q\ & (!\M1|D1|IC_4|Qout[1]~reg0_q\ & 
-- ((!\M1|D1|IC_4|Qout[3]~reg0DUPLICATE_q\) # (!\M1|D1|ClrN3~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110010110011000011001011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|D1|IC_4|ALT_INV_Qout[3]~reg0DUPLICATE_q\,
	datab => \M1|D1|IC_4|ALT_INV_Qout[0]~reg0DUPLICATE_q\,
	datac => \M1|D1|ALT_INV_ClrN3~0_combout\,
	datad => \M1|D1|IC_4|ALT_INV_Qout[1]~reg0_q\,
	dataf => \M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	combout => \M1|D1|IC_4|Qout~1_combout\);

-- Location: FF_X63_Y3_N2
\M1|D1|IC_4|Qout[1]~reg0DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D1|IC_4|Qout~1_combout\,
	ena => \M1|D1|IC_4|Qout[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D1|IC_4|Qout[1]~reg0DUPLICATE_q\);

-- Location: LABCELL_X63_Y3_N30
\M1|D1|IC_4|Qout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D1|IC_4|Qout~3_combout\ = ( \M1|D1|IC_4|Qout[2]~reg0_q\ & ( \M1|D1|IC_4|Qout[3]~reg0_q\ & ( (\M1|C1|Eprox.CONTA~0_combout\ & ((!\M1|D1|IC_4|Qout[0]~reg0DUPLICATE_q\) # ((!\M1|D1|ClrN3~0_combout\ & !\M1|D1|IC_4|Qout[1]~reg0DUPLICATE_q\)))) ) ) ) # ( 
-- !\M1|D1|IC_4|Qout[2]~reg0_q\ & ( \M1|D1|IC_4|Qout[3]~reg0_q\ & ( (!\M1|D1|ClrN3~0_combout\ & (\M1|C1|Eprox.CONTA~0_combout\ & (\M1|D1|IC_4|Qout[1]~reg0DUPLICATE_q\ & \M1|D1|IC_4|Qout[0]~reg0DUPLICATE_q\))) ) ) ) # ( \M1|D1|IC_4|Qout[2]~reg0_q\ & ( 
-- !\M1|D1|IC_4|Qout[3]~reg0_q\ & ( (\M1|C1|Eprox.CONTA~0_combout\ & ((!\M1|D1|IC_4|Qout[1]~reg0DUPLICATE_q\) # (!\M1|D1|IC_4|Qout[0]~reg0DUPLICATE_q\))) ) ) ) # ( !\M1|D1|IC_4|Qout[2]~reg0_q\ & ( !\M1|D1|IC_4|Qout[3]~reg0_q\ & ( 
-- (\M1|C1|Eprox.CONTA~0_combout\ & (\M1|D1|IC_4|Qout[1]~reg0DUPLICATE_q\ & \M1|D1|IC_4|Qout[0]~reg0DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011001100110011000000000000000000100011001100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|D1|ALT_INV_ClrN3~0_combout\,
	datab => \M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datac => \M1|D1|IC_4|ALT_INV_Qout[1]~reg0DUPLICATE_q\,
	datad => \M1|D1|IC_4|ALT_INV_Qout[0]~reg0DUPLICATE_q\,
	datae => \M1|D1|IC_4|ALT_INV_Qout[2]~reg0_q\,
	dataf => \M1|D1|IC_4|ALT_INV_Qout[3]~reg0_q\,
	combout => \M1|D1|IC_4|Qout~3_combout\);

-- Location: FF_X63_Y3_N31
\M1|D1|IC_4|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D1|IC_4|Qout~3_combout\,
	ena => \M1|D1|IC_4|Qout[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D1|IC_4|Qout[2]~reg0_q\);

-- Location: LABCELL_X63_Y3_N54
\M1|D1|IC_4|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D1|IC_4|Add0~0_combout\ = ( \M1|D1|IC_4|Qout[0]~reg0DUPLICATE_q\ & ( (\M1|D1|IC_4|Qout[1]~reg0DUPLICATE_q\ & \M1|D1|IC_4|Qout[2]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \M1|D1|IC_4|ALT_INV_Qout[1]~reg0DUPLICATE_q\,
	datad => \M1|D1|IC_4|ALT_INV_Qout[2]~reg0_q\,
	dataf => \M1|D1|IC_4|ALT_INV_Qout[0]~reg0DUPLICATE_q\,
	combout => \M1|D1|IC_4|Add0~0_combout\);

-- Location: LABCELL_X63_Y3_N24
\M1|D1|IC_4|Qout[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D1|IC_4|Qout[3]~4_combout\ = ( \M1|D1|IC_4|Qout[3]~reg0_q\ & ( \M1|C1|Eprox.CONTA~0_combout\ & ( (!\M1|D1|ClrN3~0_combout\) # ((!\M1|D1|IC_4|Qout[0]~reg0DUPLICATE_q\ & ((!\M1|D1|IC_4|Add0~0_combout\) # (!\M1|C1|Ereg.CONTA~q\)))) ) ) ) # ( 
-- !\M1|D1|IC_4|Qout[3]~reg0_q\ & ( \M1|C1|Eprox.CONTA~0_combout\ & ( (\M1|D1|IC_4|Add0~0_combout\ & (\M1|C1|Ereg.CONTA~q\ & \M1|D1|ClrN3~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000011111111011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|D1|IC_4|ALT_INV_Add0~0_combout\,
	datab => \M1|C1|ALT_INV_Ereg.CONTA~q\,
	datac => \M1|D1|ALT_INV_ClrN3~0_combout\,
	datad => \M1|D1|IC_4|ALT_INV_Qout[0]~reg0DUPLICATE_q\,
	datae => \M1|D1|IC_4|ALT_INV_Qout[3]~reg0_q\,
	dataf => \M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	combout => \M1|D1|IC_4|Qout[3]~4_combout\);

-- Location: FF_X63_Y3_N26
\M1|D1|IC_4|Qout[3]~reg0DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D1|IC_4|Qout[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D1|IC_4|Qout[3]~reg0DUPLICATE_q\);

-- Location: LABCELL_X63_Y3_N6
\M1|D1|IC_4|Qout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D1|IC_4|Qout[0]~0_combout\ = ( \M1|D1|ClrN3~0_combout\ & ( (\M1|C1|Eprox.CONTA~0_combout\ & ((!\M1|C1|Ereg.CONTA~q\ & (!\M1|D1|IC_4|Qout[3]~reg0DUPLICATE_q\ & \M1|D1|IC_4|Qout[0]~reg0_q\)) # (\M1|C1|Ereg.CONTA~q\ & ((!\M1|D1|IC_4|Qout[0]~reg0_q\))))) 
-- ) ) # ( !\M1|D1|ClrN3~0_combout\ & ( (\M1|C1|Eprox.CONTA~0_combout\ & \M1|D1|IC_4|Qout[0]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100010001001000000001000100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|C1|ALT_INV_Ereg.CONTA~q\,
	datab => \M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datac => \M1|D1|IC_4|ALT_INV_Qout[3]~reg0DUPLICATE_q\,
	datad => \M1|D1|IC_4|ALT_INV_Qout[0]~reg0_q\,
	dataf => \M1|D1|ALT_INV_ClrN3~0_combout\,
	combout => \M1|D1|IC_4|Qout[0]~0_combout\);

-- Location: FF_X63_Y3_N7
\M1|D1|IC_4|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D1|IC_4|Qout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D1|IC_4|Qout[0]~reg0_q\);

-- Location: FF_X61_Y3_N14
\R1|IQ[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \M1|D1|IC_4|Qout[0]~reg0_q\,
	sclr => \C1|Ereg.zera~q\,
	sload => VCC,
	ena => \R1|IQ[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|IQ\(12));

-- Location: LABCELL_X60_Y3_N15
\R1|Q[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Q[12]~feeder_combout\ = ( \R1|IQ\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \R1|ALT_INV_IQ\(12),
	combout => \R1|Q[12]~feeder_combout\);

-- Location: FF_X60_Y3_N16
\R1|Q[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R1|Q[12]~feeder_combout\,
	ena => \R1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|Q[12]~DUPLICATE_q\);

-- Location: LABCELL_X61_Y3_N21
\R1|IQ[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|IQ[13]~feeder_combout\ = ( \M1|D1|IC_4|Qout[1]~reg0_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \M1|D1|IC_4|ALT_INV_Qout[1]~reg0_q\,
	combout => \R1|IQ[13]~feeder_combout\);

-- Location: FF_X61_Y3_N22
\R1|IQ[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R1|IQ[13]~feeder_combout\,
	sclr => \C1|Ereg.zera~q\,
	ena => \R1|IQ[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|IQ\(13));

-- Location: LABCELL_X60_Y3_N12
\R1|Q[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Q[13]~feeder_combout\ = ( \R1|IQ\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \R1|ALT_INV_IQ\(13),
	combout => \R1|Q[13]~feeder_combout\);

-- Location: FF_X60_Y3_N13
\R1|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R1|Q[13]~feeder_combout\,
	ena => \R1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|Q\(13));

-- Location: LABCELL_X61_Y3_N45
\R1|IQ[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|IQ[14]~feeder_combout\ = ( \M1|D1|IC_4|Qout[2]~reg0_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \M1|D1|IC_4|ALT_INV_Qout[2]~reg0_q\,
	combout => \R1|IQ[14]~feeder_combout\);

-- Location: FF_X61_Y3_N47
\R1|IQ[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R1|IQ[14]~feeder_combout\,
	sclr => \C1|Ereg.zera~q\,
	ena => \R1|IQ[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|IQ\(14));

-- Location: LABCELL_X60_Y3_N18
\R1|Q[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Q[14]~feeder_combout\ = ( \R1|IQ\(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \R1|ALT_INV_IQ\(14),
	combout => \R1|Q[14]~feeder_combout\);

-- Location: FF_X60_Y3_N19
\R1|Q[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R1|Q[14]~feeder_combout\,
	ena => \R1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|Q[14]~DUPLICATE_q\);

-- Location: FF_X61_Y3_N49
\R1|IQ[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \M1|D1|IC_4|Qout[3]~reg0_q\,
	sclr => \C1|Ereg.zera~q\,
	sload => VCC,
	ena => \R1|IQ[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|IQ\(15));

-- Location: LABCELL_X60_Y3_N42
\R1|Q[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|Q[15]~feeder_combout\ = ( \R1|IQ\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \R1|ALT_INV_IQ\(15),
	combout => \R1|Q[15]~feeder_combout\);

-- Location: FF_X60_Y3_N43
\R1|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R1|Q[15]~feeder_combout\,
	ena => \R1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|Q\(15));

-- Location: LABCELL_X60_Y3_N48
\C1|WideNor1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|WideNor1~combout\ = ( \C1|Ereg.esperasoma~DUPLICATE_q\ ) # ( !\C1|Ereg.esperasoma~DUPLICATE_q\ & ( \C1|Ereg.registra~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \C1|ALT_INV_Ereg.registra~DUPLICATE_q\,
	dataf => \C1|ALT_INV_Ereg.esperasoma~DUPLICATE_q\,
	combout => \C1|WideNor1~combout\);

-- Location: LABCELL_X61_Y3_N51
\C1|WideNor0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|WideNor0~combout\ = ( \C1|Ereg.iniciado~q\ ) # ( !\C1|Ereg.iniciado~q\ & ( \C1|Ereg.medindo~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C1|ALT_INV_Ereg.medindo~q\,
	dataf => \C1|ALT_INV_Ereg.iniciado~q\,
	combout => \C1|WideNor0~combout\);

-- Location: FF_X60_Y3_N20
\R1|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R1|Q[14]~feeder_combout\,
	ena => \R1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|Q\(14));

-- Location: FF_X60_Y3_N17
\R1|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R1|Q[12]~feeder_combout\,
	ena => \R1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|Q\(12));

-- Location: LABCELL_X60_Y3_N24
\D4|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Mux6~0_combout\ = ( \R1|Q\(12) & ( (!\R1|Q\(13) $ (!\R1|Q\(14))) # (\R1|Q\(15)) ) ) # ( !\R1|Q\(12) & ( (!\R1|Q\(15) $ (!\R1|Q\(14))) # (\R1|Q\(13)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111101101111011011110110111101101111101011111010111110101111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(15),
	datab => \R1|ALT_INV_Q\(13),
	datac => \R1|ALT_INV_Q\(14),
	dataf => \R1|ALT_INV_Q\(12),
	combout => \D4|Mux6~0_combout\);

-- Location: LABCELL_X60_Y3_N36
\D4|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Mux5~0_combout\ = ( \R1|Q\(12) & ( (!\R1|Q\(15) & ((!\R1|Q\(14)))) # (\R1|Q\(15) & (!\R1|Q\(13) & \R1|Q\(14))) ) ) # ( !\R1|Q\(12) & ( (!\R1|Q\(15) & (\R1|Q\(13) & !\R1|Q\(14))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000010100100101001001010010010100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(15),
	datab => \R1|ALT_INV_Q\(13),
	datac => \R1|ALT_INV_Q\(14),
	dataf => \R1|ALT_INV_Q\(12),
	combout => \D4|Mux5~0_combout\);

-- Location: LABCELL_X60_Y3_N39
\D4|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Mux4~0_combout\ = ( \R1|Q\(14) & ( (!\R1|Q\(15) & ((!\R1|Q\(13)) # (\R1|Q\(12)))) ) ) # ( !\R1|Q\(14) & ( (\R1|Q\(12) & ((!\R1|Q\(15)) # (!\R1|Q\(13)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011100000111010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(15),
	datab => \R1|ALT_INV_Q\(13),
	datac => \R1|ALT_INV_Q\(12),
	dataf => \R1|ALT_INV_Q\(14),
	combout => \D4|Mux4~0_combout\);

-- Location: LABCELL_X60_Y3_N57
\D4|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Mux3~0_combout\ = ( \R1|Q\(15) & ( (\R1|Q\(13) & (!\R1|Q\(14) $ (\R1|Q\(12)))) ) ) # ( !\R1|Q\(15) & ( (!\R1|Q\(14) & (\R1|Q\(12) & !\R1|Q\(13))) # (\R1|Q\(14) & (!\R1|Q\(12) $ (\R1|Q\(13)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101100001000010010000100101100001011000010000100100001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(14),
	datab => \R1|ALT_INV_Q\(12),
	datac => \R1|ALT_INV_Q\(13),
	datae => \R1|ALT_INV_Q\(15),
	combout => \D4|Mux3~0_combout\);

-- Location: LABCELL_X60_Y3_N30
\D4|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Mux2~0_combout\ = ( \R1|Q\(13) & ( (!\R1|Q\(15) & (!\R1|Q\(12) & !\R1|Q\(14))) # (\R1|Q\(15) & ((\R1|Q\(14)))) ) ) # ( !\R1|Q\(13) & ( (\R1|Q\(15) & (!\R1|Q\(12) & \R1|Q\(14))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010000101100001011000010110000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(15),
	datab => \R1|ALT_INV_Q\(12),
	datac => \R1|ALT_INV_Q\(14),
	dataf => \R1|ALT_INV_Q\(13),
	combout => \D4|Mux2~0_combout\);

-- Location: LABCELL_X60_Y3_N33
\D4|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Mux1~0_combout\ = ( \R1|Q\(14) & ( (!\R1|Q\(15) & (!\R1|Q\(12) $ (!\R1|Q\(13)))) # (\R1|Q\(15) & ((!\R1|Q\(12)) # (\R1|Q\(13)))) ) ) # ( !\R1|Q\(14) & ( (\R1|Q\(15) & (\R1|Q\(12) & \R1|Q\(13))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101101101011011010110110101101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(15),
	datab => \R1|ALT_INV_Q\(12),
	datac => \R1|ALT_INV_Q\(13),
	dataf => \R1|ALT_INV_Q\(14),
	combout => \D4|Mux1~0_combout\);

-- Location: LABCELL_X60_Y3_N9
\D4|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Mux0~0_combout\ = ( \R1|Q\(15) & ( (\R1|Q\(12) & (!\R1|Q\(14) $ (!\R1|Q\(13)))) ) ) # ( !\R1|Q\(15) & ( (!\R1|Q\(13) & (!\R1|Q\(14) $ (!\R1|Q\(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000000100100001001001100000011000000001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(14),
	datab => \R1|ALT_INV_Q\(12),
	datac => \R1|ALT_INV_Q\(13),
	datae => \R1|ALT_INV_Q\(15),
	combout => \D4|Mux0~0_combout\);

-- Location: MLABCELL_X59_Y2_N12
\D3|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Mux6~0_combout\ = (!\R1|Q\(8) & ((!\R1|Q\(11) $ (!\R1|Q\(10))) # (\R1|Q\(9)))) # (\R1|Q\(8) & ((!\R1|Q\(9) $ (!\R1|Q\(10))) # (\R1|Q\(11))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111100111010111111110011101011111111001110101111111100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(9),
	datab => \R1|ALT_INV_Q\(8),
	datac => \R1|ALT_INV_Q\(11),
	datad => \R1|ALT_INV_Q\(10),
	combout => \D3|Mux6~0_combout\);

-- Location: MLABCELL_X59_Y2_N15
\D3|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Mux5~0_combout\ = ( \R1|Q\(11) & ( (!\R1|Q\(9) & (\R1|Q\(8) & \R1|Q\(10))) ) ) # ( !\R1|Q\(11) & ( (!\R1|Q\(10) & ((\R1|Q\(8)) # (\R1|Q\(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100000000011101110000000000000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(9),
	datab => \R1|ALT_INV_Q\(8),
	datad => \R1|ALT_INV_Q\(10),
	dataf => \R1|ALT_INV_Q\(11),
	combout => \D3|Mux5~0_combout\);

-- Location: MLABCELL_X59_Y2_N54
\D3|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Mux4~0_combout\ = ( \R1|Q\(11) & ( (!\R1|Q\(9) & (!\R1|Q\(10) & \R1|Q\(8))) ) ) # ( !\R1|Q\(11) & ( ((!\R1|Q\(9) & \R1|Q\(10))) # (\R1|Q\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011111111000010101111111100000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(9),
	datac => \R1|ALT_INV_Q\(10),
	datad => \R1|ALT_INV_Q\(8),
	dataf => \R1|ALT_INV_Q\(11),
	combout => \D3|Mux4~0_combout\);

-- Location: MLABCELL_X59_Y2_N48
\D3|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Mux3~0_combout\ = ( \R1|Q\(11) & ( (\R1|Q\(9) & (!\R1|Q\(8) $ (\R1|Q\(10)))) ) ) # ( !\R1|Q\(11) & ( (!\R1|Q\(8) & (!\R1|Q\(9) & \R1|Q\(10))) # (\R1|Q\(8) & (!\R1|Q\(9) $ (\R1|Q\(10)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000011001100001100001100001100000000110000110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \R1|ALT_INV_Q\(8),
	datac => \R1|ALT_INV_Q\(9),
	datad => \R1|ALT_INV_Q\(10),
	dataf => \R1|ALT_INV_Q\(11),
	combout => \D3|Mux3~0_combout\);

-- Location: MLABCELL_X59_Y2_N3
\D3|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Mux2~0_combout\ = ( \R1|Q\(11) & ( (\R1|Q\(10) & ((!\R1|Q\(8)) # (\R1|Q\(9)))) ) ) # ( !\R1|Q\(11) & ( (\R1|Q\(9) & (!\R1|Q\(8) & !\R1|Q\(10))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(9),
	datab => \R1|ALT_INV_Q\(8),
	datac => \R1|ALT_INV_Q\(10),
	dataf => \R1|ALT_INV_Q\(11),
	combout => \D3|Mux2~0_combout\);

-- Location: MLABCELL_X59_Y2_N0
\D3|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Mux1~0_combout\ = ( \R1|Q\(10) & ( (!\R1|Q\(9) & (!\R1|Q\(11) $ (!\R1|Q\(8)))) # (\R1|Q\(9) & ((!\R1|Q\(8)) # (\R1|Q\(11)))) ) ) # ( !\R1|Q\(10) & ( (\R1|Q\(9) & (\R1|Q\(11) & \R1|Q\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101011111101001010101111110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(9),
	datac => \R1|ALT_INV_Q\(11),
	datad => \R1|ALT_INV_Q\(8),
	dataf => \R1|ALT_INV_Q\(10),
	combout => \D3|Mux1~0_combout\);

-- Location: LABCELL_X60_Y3_N51
\D3|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Mux0~0_combout\ = ( \R1|Q\(11) & ( (\R1|Q\(8) & (!\R1|Q\(9) $ (!\R1|Q\(10)))) ) ) # ( !\R1|Q\(11) & ( (!\R1|Q\(9) & (!\R1|Q\(10) $ (!\R1|Q\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010001000001000101000100000000000011001100000000001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(9),
	datab => \R1|ALT_INV_Q\(10),
	datad => \R1|ALT_INV_Q\(8),
	dataf => \R1|ALT_INV_Q\(11),
	combout => \D3|Mux0~0_combout\);

-- Location: MLABCELL_X59_Y2_N57
\D2|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|Mux6~0_combout\ = ( \R1|Q\(5) & ( ((!\R1|Q\(6)) # (!\R1|Q\(4))) # (\R1|Q\(7)) ) ) # ( !\R1|Q\(5) & ( (!\R1|Q\(7) & (\R1|Q\(6))) # (\R1|Q\(7) & ((!\R1|Q\(6)) # (\R1|Q\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111111001111000011111111111111111100111111111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \R1|ALT_INV_Q\(7),
	datac => \R1|ALT_INV_Q\(6),
	datad => \R1|ALT_INV_Q\(4),
	dataf => \R1|ALT_INV_Q\(5),
	combout => \D2|Mux6~0_combout\);

-- Location: MLABCELL_X59_Y2_N42
\D2|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|Mux5~0_combout\ = (!\R1|Q\(5) & (\R1|Q\(4) & (!\R1|Q\(6) $ (\R1|Q\(7))))) # (\R1|Q\(5) & (((!\R1|Q\(6) & !\R1|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110000010000010011000001000001001100000100000100110000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(4),
	datab => \R1|ALT_INV_Q\(6),
	datac => \R1|ALT_INV_Q\(5),
	datad => \R1|ALT_INV_Q\(7),
	combout => \D2|Mux5~0_combout\);

-- Location: MLABCELL_X59_Y2_N45
\D2|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|Mux4~0_combout\ = ( \R1|Q\(5) & ( (\R1|Q\(4) & !\R1|Q\(7)) ) ) # ( !\R1|Q\(5) & ( (!\R1|Q\(6) & (\R1|Q\(4))) # (\R1|Q\(6) & ((!\R1|Q\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101000100011101110100010001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(4),
	datab => \R1|ALT_INV_Q\(6),
	datad => \R1|ALT_INV_Q\(7),
	dataf => \R1|ALT_INV_Q\(5),
	combout => \D2|Mux4~0_combout\);

-- Location: MLABCELL_X59_Y2_N33
\D2|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|Mux3~0_combout\ = ( \R1|Q\(5) & ( (!\R1|Q\(4) & (!\R1|Q\(6) & \R1|Q\(7))) # (\R1|Q\(4) & (\R1|Q\(6))) ) ) # ( !\R1|Q\(5) & ( (!\R1|Q\(7) & (!\R1|Q\(4) $ (!\R1|Q\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011000000110000000011001000110010001100100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(4),
	datab => \R1|ALT_INV_Q\(6),
	datac => \R1|ALT_INV_Q\(7),
	dataf => \R1|ALT_INV_Q\(5),
	combout => \D2|Mux3~0_combout\);

-- Location: MLABCELL_X59_Y2_N27
\D2|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|Mux2~0_combout\ = ( \R1|Q\(4) & ( (\R1|Q\(5) & (\R1|Q\(6) & \R1|Q\(7))) ) ) # ( !\R1|Q\(4) & ( (!\R1|Q\(6) & (\R1|Q\(5) & !\R1|Q\(7))) # (\R1|Q\(6) & ((\R1|Q\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001101000011010000110100001100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(5),
	datab => \R1|ALT_INV_Q\(6),
	datac => \R1|ALT_INV_Q\(7),
	dataf => \R1|ALT_INV_Q\(4),
	combout => \D2|Mux2~0_combout\);

-- Location: MLABCELL_X59_Y2_N24
\D2|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|Mux1~0_combout\ = (!\R1|Q\(5) & (\R1|Q\(6) & (!\R1|Q\(4) $ (!\R1|Q\(7))))) # (\R1|Q\(5) & ((!\R1|Q\(4) & (\R1|Q\(6))) # (\R1|Q\(4) & ((\R1|Q\(7))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000110101000100100011010100010010001101010001001000110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(5),
	datab => \R1|ALT_INV_Q\(6),
	datac => \R1|ALT_INV_Q\(4),
	datad => \R1|ALT_INV_Q\(7),
	combout => \D2|Mux1~0_combout\);

-- Location: MLABCELL_X59_Y2_N30
\D2|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|Mux0~0_combout\ = (!\R1|Q\(6) & (\R1|Q\(4) & (!\R1|Q\(5) $ (\R1|Q\(7))))) # (\R1|Q\(6) & (!\R1|Q\(5) & (!\R1|Q\(4) $ (\R1|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000000010100011000000001010001100000000101000110000000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(4),
	datab => \R1|ALT_INV_Q\(6),
	datac => \R1|ALT_INV_Q\(5),
	datad => \R1|ALT_INV_Q\(7),
	combout => \D2|Mux0~0_combout\);

-- Location: MLABCELL_X59_Y2_N39
\D1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Mux6~0_combout\ = ( \R1|Q\(1) & ( (!\R1|Q\(2)) # ((!\R1|Q\(0)) # (\R1|Q\(3))) ) ) # ( !\R1|Q\(1) & ( (!\R1|Q\(2) & (\R1|Q\(3))) # (\R1|Q\(2) & ((!\R1|Q\(3)) # (\R1|Q\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001110111011001100111011111111111101110111111111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(2),
	datab => \R1|ALT_INV_Q\(3),
	datad => \R1|ALT_INV_Q\(0),
	dataf => \R1|ALT_INV_Q\(1),
	combout => \D1|Mux6~0_combout\);

-- Location: MLABCELL_X59_Y2_N6
\D1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Mux5~0_combout\ = ( \R1|Q\(1) & ( (!\R1|Q\(3) & !\R1|Q\(2)) ) ) # ( !\R1|Q\(1) & ( (\R1|Q\(0) & (!\R1|Q\(3) $ (\R1|Q\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000011000000001100001111000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \R1|ALT_INV_Q\(3),
	datac => \R1|ALT_INV_Q\(2),
	datad => \R1|ALT_INV_Q\(0),
	dataf => \R1|ALT_INV_Q\(1),
	combout => \D1|Mux5~0_combout\);

-- Location: MLABCELL_X59_Y2_N9
\D1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Mux4~0_combout\ = ( \R1|Q\(1) & ( (!\R1|Q\(3) & \R1|Q\(0)) ) ) # ( !\R1|Q\(1) & ( (!\R1|Q\(2) & ((\R1|Q\(0)))) # (\R1|Q\(2) & (!\R1|Q\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111001001110010011100100111000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(2),
	datab => \R1|ALT_INV_Q\(3),
	datac => \R1|ALT_INV_Q\(0),
	dataf => \R1|ALT_INV_Q\(1),
	combout => \D1|Mux4~0_combout\);

-- Location: MLABCELL_X59_Y2_N51
\D1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Mux3~0_combout\ = ( \R1|Q\(1) & ( (!\R1|Q\(0) & (\R1|Q\(3) & !\R1|Q\(2))) # (\R1|Q\(0) & ((\R1|Q\(2)))) ) ) # ( !\R1|Q\(1) & ( (!\R1|Q\(3) & (!\R1|Q\(0) $ (!\R1|Q\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100000010100001010000000001010010101010000101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(0),
	datac => \R1|ALT_INV_Q\(3),
	datad => \R1|ALT_INV_Q\(2),
	dataf => \R1|ALT_INV_Q\(1),
	combout => \D1|Mux3~0_combout\);

-- Location: MLABCELL_X59_Y2_N18
\D1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Mux2~0_combout\ = ( \R1|Q\(3) & ( (\R1|Q\(2) & ((!\R1|Q\(0)) # (\R1|Q\(1)))) ) ) # ( !\R1|Q\(3) & ( (!\R1|Q\(2) & (!\R1|Q\(0) & \R1|Q\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100001000100010101010100010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(2),
	datab => \R1|ALT_INV_Q\(0),
	datad => \R1|ALT_INV_Q\(1),
	dataf => \R1|ALT_INV_Q\(3),
	combout => \D1|Mux2~0_combout\);

-- Location: MLABCELL_X59_Y2_N36
\D1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Mux1~0_combout\ = ( \R1|Q\(1) & ( (!\R1|Q\(0) & (\R1|Q\(2))) # (\R1|Q\(0) & ((\R1|Q\(3)))) ) ) # ( !\R1|Q\(1) & ( (\R1|Q\(2) & (!\R1|Q\(3) $ (!\R1|Q\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010001010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(2),
	datab => \R1|ALT_INV_Q\(3),
	datac => \R1|ALT_INV_Q\(0),
	dataf => \R1|ALT_INV_Q\(1),
	combout => \D1|Mux1~0_combout\);

-- Location: MLABCELL_X59_Y2_N21
\D1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Mux0~0_combout\ = ( \R1|Q\(1) & ( (!\R1|Q\(2) & (\R1|Q\(0) & \R1|Q\(3))) ) ) # ( !\R1|Q\(1) & ( (!\R1|Q\(2) & (\R1|Q\(0) & !\R1|Q\(3))) # (\R1|Q\(2) & (!\R1|Q\(0) $ (\R1|Q\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000010001011001100001000100000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(2),
	datab => \R1|ALT_INV_Q\(0),
	datad => \R1|ALT_INV_Q\(3),
	dataf => \R1|ALT_INV_Q\(1),
	combout => \D1|Mux0~0_combout\);

-- Location: MLABCELL_X87_Y65_N3
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


