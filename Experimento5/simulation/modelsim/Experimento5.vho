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

-- DATE "03/08/2017 10:14:20"

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

ENTITY 	Experimento5 IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	iniciar : IN std_logic;
	zerar : IN std_logic;
	pulso : IN std_logic;
	saida : OUT std_logic_vector(15 DOWNTO 0);
	fim : OUT std_logic;
	sig_resetr : OUT std_logic;
	sig_enabler : OUT std_logic;
	sig_liga : OUT std_logic;
	sig_medida : OUT std_logic_vector(15 DOWNTO 0);
	saidaDisplay : OUT std_logic_vector(27 DOWNTO 0)
	);
END Experimento5;

-- Design Ports Information
-- saida[0]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[1]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[2]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[3]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[4]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[5]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[6]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[7]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[8]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[9]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[10]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[11]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[12]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[13]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[14]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[15]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fim	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_resetr	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_enabler	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_liga	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_medida[0]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_medida[1]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_medida[2]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_medida[3]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_medida[4]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_medida[5]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_medida[6]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_medida[7]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_medida[8]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_medida[9]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_medida[10]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_medida[11]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_medida[12]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_medida[13]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_medida[14]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sig_medida[15]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[0]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[1]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[2]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[4]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[5]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[6]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[7]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[8]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[9]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[10]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[11]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[12]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[13]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[14]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[15]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[16]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[17]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[18]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[19]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[20]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[21]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[22]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[23]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[24]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[25]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[26]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaDisplay[27]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iniciar	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zerar	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Experimento5 IS
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
SIGNAL \iniciar~input_o\ : std_logic;
SIGNAL \zerar~input_o\ : std_logic;
SIGNAL \C1|Selector2~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \C1|Ereg.medindo~q\ : std_logic;
SIGNAL \C1|Eprox.registra~0_combout\ : std_logic;
SIGNAL \C1|Ereg.registra~q\ : std_logic;
SIGNAL \C1|Ereg.soma~q\ : std_logic;
SIGNAL \C1|Ereg.esperasoma~q\ : std_logic;
SIGNAL \C1|Selector3~0_combout\ : std_logic;
SIGNAL \C1|Ereg.espera~q\ : std_logic;
SIGNAL \C1|Selector1~0_combout\ : std_logic;
SIGNAL \C1|Ereg.zera~q\ : std_logic;
SIGNAL \C1|Selector0~0_combout\ : std_logic;
SIGNAL \C1|Ereg.parado~q\ : std_logic;
SIGNAL \C1|Eprox.iniciado~0_combout\ : std_logic;
SIGNAL \C1|Ereg.iniciado~q\ : std_logic;
SIGNAL \C1|Ereg.medindo~DUPLICATE_q\ : std_logic;
SIGNAL \M1|C1|Ereg.INICIAL~q\ : std_logic;
SIGNAL \M1|C1|Ereg.LIMPA~q\ : std_logic;
SIGNAL \M1|C1|Selector0~0_combout\ : std_logic;
SIGNAL \M1|C1|Ereg.INICIAL~DUPLICATE_q\ : std_logic;
SIGNAL \M1|C1|Eprox.CONTA~1_combout\ : std_logic;
SIGNAL \M1|C1|Ereg.CONTA~q\ : std_logic;
SIGNAL \M1|C1|Eprox.EPRONTO~0_combout\ : std_logic;
SIGNAL \M1|C1|Ereg.EPRONTO~q\ : std_logic;
SIGNAL \M1|C1|Ereg.LIMPA~DUPLICATE_q\ : std_logic;
SIGNAL \M1|D2|C1|IQ[3]~1_combout\ : std_logic;
SIGNAL \M1|D2|C1|IQ~0_combout\ : std_logic;
SIGNAL \M1|D2|C1|IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \R1|IQ[15]~0_combout\ : std_logic;
SIGNAL \R1|process_0~0_combout\ : std_logic;
SIGNAL \M1|D2|C1|IQ~3_combout\ : std_logic;
SIGNAL \M1|D2|C1|IQ~4_combout\ : std_logic;
SIGNAL \M1|D2|C1|IQ~2_combout\ : std_logic;
SIGNAL \R1|IQ[2]~feeder_combout\ : std_logic;
SIGNAL \M1|C1|Eprox.CONTA~0_combout\ : std_logic;
SIGNAL \M1|D2|C1|Equal0~0_combout\ : std_logic;
SIGNAL \M1|D2|C2|IQ[2]~1_combout\ : std_logic;
SIGNAL \M1|D2|C2|IQ~0_combout\ : std_logic;
SIGNAL \M1|D2|C2|IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \R1|IQ[4]~feeder_combout\ : std_logic;
SIGNAL \M1|D2|C2|IQ~3_combout\ : std_logic;
SIGNAL \M1|D2|C2|IQ[2]~DUPLICATE_q\ : std_logic;
SIGNAL \M1|D2|C2|IQ~4_combout\ : std_logic;
SIGNAL \M1|D2|C2|IQ~2_combout\ : std_logic;
SIGNAL \M1|D2|C2|IQ[1]~DUPLICATE_q\ : std_logic;
SIGNAL \R1|IQ[7]~feeder_combout\ : std_logic;
SIGNAL \M1|D2|C3|IQ~0_combout\ : std_logic;
SIGNAL \M1|D2|C2|Equal0~0_combout\ : std_logic;
SIGNAL \M1|D2|C3|IQ[3]~1_combout\ : std_logic;
SIGNAL \M1|D2|C3|IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \M1|D2|C3|IQ~3_combout\ : std_logic;
SIGNAL \M1|D2|C3|IQ[2]~DUPLICATE_q\ : std_logic;
SIGNAL \M1|D2|C3|IQ~4_combout\ : std_logic;
SIGNAL \M1|D2|C3|IQ[3]~DUPLICATE_q\ : std_logic;
SIGNAL \M1|D2|C3|IQ~2_combout\ : std_logic;
SIGNAL \R1|IQ[10]~feeder_combout\ : std_logic;
SIGNAL \R1|IQ[11]~feeder_combout\ : std_logic;
SIGNAL \M1|D2|C4|IQ~0_combout\ : std_logic;
SIGNAL \M1|D2|C3|Equal0~0_combout\ : std_logic;
SIGNAL \M1|D2|C4|IQ[1]~1_combout\ : std_logic;
SIGNAL \M1|D2|C4|IQ~3_combout\ : std_logic;
SIGNAL \M1|D2|C4|IQ~4_combout\ : std_logic;
SIGNAL \M1|D2|C4|IQ~2_combout\ : std_logic;
SIGNAL \M1|D2|C4|IQ[1]~DUPLICATE_q\ : std_logic;
SIGNAL \R1|IQ[13]~feeder_combout\ : std_logic;
SIGNAL \M1|D2|C4|IQ[2]~DUPLICATE_q\ : std_logic;
SIGNAL \R1|IQ[14]~feeder_combout\ : std_logic;
SIGNAL \M1|D2|C4|IQ[3]~DUPLICATE_q\ : std_logic;
SIGNAL \R1|IQ[15]~feeder_combout\ : std_logic;
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
SIGNAL \M1|D2|C3|IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \M1|D2|C4|IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \M1|D2|C2|IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \M1|D2|C1|IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \R1|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \R1|IQ\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \M1|D2|C1|ALT_INV_IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C1|ALT_INV_Ereg.medindo~q\ : std_logic;
SIGNAL \C1|ALT_INV_Ereg.iniciado~q\ : std_logic;
SIGNAL \C1|ALT_INV_Ereg.esperasoma~q\ : std_logic;
SIGNAL \C1|ALT_INV_Ereg.registra~q\ : std_logic;
SIGNAL \C1|ALT_INV_Ereg.zera~q\ : std_logic;
SIGNAL \C1|ALT_INV_Ereg.espera~q\ : std_logic;
SIGNAL \R1|ALT_INV_Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \M1|C1|ALT_INV_Ereg.LIMPA~DUPLICATE_q\ : std_logic;
SIGNAL \M1|C1|ALT_INV_Ereg.INICIAL~DUPLICATE_q\ : std_logic;
SIGNAL \M1|D2|C4|ALT_INV_IQ[3]~DUPLICATE_q\ : std_logic;
SIGNAL \M1|D2|C4|ALT_INV_IQ[2]~DUPLICATE_q\ : std_logic;
SIGNAL \M1|D2|C4|ALT_INV_IQ[1]~DUPLICATE_q\ : std_logic;
SIGNAL \M1|D2|C3|ALT_INV_IQ[3]~DUPLICATE_q\ : std_logic;
SIGNAL \M1|D2|C3|ALT_INV_IQ[2]~DUPLICATE_q\ : std_logic;
SIGNAL \M1|D2|C3|ALT_INV_IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \M1|D2|C2|ALT_INV_IQ[2]~DUPLICATE_q\ : std_logic;
SIGNAL \M1|D2|C2|ALT_INV_IQ[1]~DUPLICATE_q\ : std_logic;
SIGNAL \M1|D2|C2|ALT_INV_IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \M1|D2|C1|ALT_INV_IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \C1|ALT_INV_Ereg.medindo~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_pulso~input_o\ : std_logic;
SIGNAL \ALT_INV_zerar~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_iniciar~input_o\ : std_logic;
SIGNAL \M1|D2|C3|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \M1|D2|C2|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \M1|D2|C1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \M1|C1|ALT_INV_Eprox.CONTA~0_combout\ : std_logic;
SIGNAL \M1|C1|ALT_INV_Ereg.CONTA~q\ : std_logic;
SIGNAL \M1|C1|ALT_INV_Ereg.LIMPA~q\ : std_logic;
SIGNAL \M1|C1|ALT_INV_Ereg.INICIAL~q\ : std_logic;
SIGNAL \M1|C1|ALT_INV_Ereg.EPRONTO~q\ : std_logic;
SIGNAL \C1|ALT_INV_Ereg.parado~q\ : std_logic;
SIGNAL \D1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \D2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \D3|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \D4|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \M1|D2|C4|ALT_INV_IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \M1|D2|C3|ALT_INV_IQ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \M1|D2|C2|ALT_INV_IQ\ : std_logic_vector(3 DOWNTO 0);

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
\M1|D2|C1|ALT_INV_IQ\(3) <= NOT \M1|D2|C1|IQ\(3);
\M1|D2|C1|ALT_INV_IQ\(2) <= NOT \M1|D2|C1|IQ\(2);
\M1|D2|C1|ALT_INV_IQ\(1) <= NOT \M1|D2|C1|IQ\(1);
\M1|D2|C1|ALT_INV_IQ\(0) <= NOT \M1|D2|C1|IQ\(0);
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
\M1|C1|ALT_INV_Ereg.LIMPA~DUPLICATE_q\ <= NOT \M1|C1|Ereg.LIMPA~DUPLICATE_q\;
\M1|C1|ALT_INV_Ereg.INICIAL~DUPLICATE_q\ <= NOT \M1|C1|Ereg.INICIAL~DUPLICATE_q\;
\M1|D2|C4|ALT_INV_IQ[3]~DUPLICATE_q\ <= NOT \M1|D2|C4|IQ[3]~DUPLICATE_q\;
\M1|D2|C4|ALT_INV_IQ[2]~DUPLICATE_q\ <= NOT \M1|D2|C4|IQ[2]~DUPLICATE_q\;
\M1|D2|C4|ALT_INV_IQ[1]~DUPLICATE_q\ <= NOT \M1|D2|C4|IQ[1]~DUPLICATE_q\;
\M1|D2|C3|ALT_INV_IQ[3]~DUPLICATE_q\ <= NOT \M1|D2|C3|IQ[3]~DUPLICATE_q\;
\M1|D2|C3|ALT_INV_IQ[2]~DUPLICATE_q\ <= NOT \M1|D2|C3|IQ[2]~DUPLICATE_q\;
\M1|D2|C3|ALT_INV_IQ[0]~DUPLICATE_q\ <= NOT \M1|D2|C3|IQ[0]~DUPLICATE_q\;
\M1|D2|C2|ALT_INV_IQ[2]~DUPLICATE_q\ <= NOT \M1|D2|C2|IQ[2]~DUPLICATE_q\;
\M1|D2|C2|ALT_INV_IQ[1]~DUPLICATE_q\ <= NOT \M1|D2|C2|IQ[1]~DUPLICATE_q\;
\M1|D2|C2|ALT_INV_IQ[0]~DUPLICATE_q\ <= NOT \M1|D2|C2|IQ[0]~DUPLICATE_q\;
\M1|D2|C1|ALT_INV_IQ[0]~DUPLICATE_q\ <= NOT \M1|D2|C1|IQ[0]~DUPLICATE_q\;
\C1|ALT_INV_Ereg.medindo~DUPLICATE_q\ <= NOT \C1|Ereg.medindo~DUPLICATE_q\;
\ALT_INV_pulso~input_o\ <= NOT \pulso~input_o\;
\ALT_INV_zerar~input_o\ <= NOT \zerar~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_iniciar~input_o\ <= NOT \iniciar~input_o\;
\M1|D2|C3|ALT_INV_Equal0~0_combout\ <= NOT \M1|D2|C3|Equal0~0_combout\;
\M1|D2|C2|ALT_INV_Equal0~0_combout\ <= NOT \M1|D2|C2|Equal0~0_combout\;
\M1|D2|C1|ALT_INV_Equal0~0_combout\ <= NOT \M1|D2|C1|Equal0~0_combout\;
\M1|C1|ALT_INV_Eprox.CONTA~0_combout\ <= NOT \M1|C1|Eprox.CONTA~0_combout\;
\M1|C1|ALT_INV_Ereg.CONTA~q\ <= NOT \M1|C1|Ereg.CONTA~q\;
\M1|C1|ALT_INV_Ereg.LIMPA~q\ <= NOT \M1|C1|Ereg.LIMPA~q\;
\M1|C1|ALT_INV_Ereg.INICIAL~q\ <= NOT \M1|C1|Ereg.INICIAL~q\;
\M1|C1|ALT_INV_Ereg.EPRONTO~q\ <= NOT \M1|C1|Ereg.EPRONTO~q\;
\C1|ALT_INV_Ereg.parado~q\ <= NOT \C1|Ereg.parado~q\;
\D1|ALT_INV_Mux6~0_combout\ <= NOT \D1|Mux6~0_combout\;
\D2|ALT_INV_Mux6~0_combout\ <= NOT \D2|Mux6~0_combout\;
\D3|ALT_INV_Mux6~0_combout\ <= NOT \D3|Mux6~0_combout\;
\D4|ALT_INV_Mux6~0_combout\ <= NOT \D4|Mux6~0_combout\;
\M1|D2|C4|ALT_INV_IQ\(3) <= NOT \M1|D2|C4|IQ\(3);
\M1|D2|C4|ALT_INV_IQ\(2) <= NOT \M1|D2|C4|IQ\(2);
\M1|D2|C4|ALT_INV_IQ\(1) <= NOT \M1|D2|C4|IQ\(1);
\M1|D2|C4|ALT_INV_IQ\(0) <= NOT \M1|D2|C4|IQ\(0);
\M1|D2|C3|ALT_INV_IQ\(3) <= NOT \M1|D2|C3|IQ\(3);
\M1|D2|C3|ALT_INV_IQ\(2) <= NOT \M1|D2|C3|IQ\(2);
\M1|D2|C3|ALT_INV_IQ\(1) <= NOT \M1|D2|C3|IQ\(1);
\M1|D2|C3|ALT_INV_IQ\(0) <= NOT \M1|D2|C3|IQ\(0);
\M1|D2|C2|ALT_INV_IQ\(3) <= NOT \M1|D2|C2|IQ\(3);
\M1|D2|C2|ALT_INV_IQ\(2) <= NOT \M1|D2|C2|IQ\(2);
\M1|D2|C2|ALT_INV_IQ\(1) <= NOT \M1|D2|C2|IQ\(1);
\M1|D2|C2|ALT_INV_IQ\(0) <= NOT \M1|D2|C2|IQ\(0);

-- Location: IOOBUF_X54_Y16_N39
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

-- Location: IOOBUF_X54_Y16_N22
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

-- Location: IOOBUF_X54_Y17_N5
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

-- Location: IOOBUF_X54_Y16_N5
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

-- Location: IOOBUF_X54_Y14_N96
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

-- Location: IOOBUF_X54_Y14_N45
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

-- Location: IOOBUF_X54_Y15_N5
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

-- Location: IOOBUF_X54_Y16_N56
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

-- Location: IOOBUF_X54_Y18_N96
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

-- Location: IOOBUF_X36_Y0_N36
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

-- Location: IOOBUF_X54_Y18_N45
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

-- Location: IOOBUF_X54_Y18_N79
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

-- Location: IOOBUF_X54_Y15_N22
\saida[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|Q\(12),
	devoe => ww_devoe,
	o => ww_saida(12));

-- Location: IOOBUF_X54_Y14_N62
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

-- Location: IOOBUF_X54_Y15_N39
\saida[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R1|Q\(14),
	devoe => ww_devoe,
	o => ww_saida(14));

-- Location: IOOBUF_X54_Y14_N79
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

-- Location: IOOBUF_X43_Y45_N36
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

-- Location: IOOBUF_X34_Y45_N19
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

-- Location: IOOBUF_X44_Y45_N53
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

-- Location: IOOBUF_X0_Y18_N79
\sig_medida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \M1|D2|C1|IQ\(0),
	devoe => ww_devoe,
	o => ww_sig_medida(0));

-- Location: IOOBUF_X0_Y18_N96
\sig_medida[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \M1|D2|C1|IQ\(1),
	devoe => ww_devoe,
	o => ww_sig_medida(1));

-- Location: IOOBUF_X0_Y18_N62
\sig_medida[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \M1|D2|C1|IQ\(2),
	devoe => ww_devoe,
	o => ww_sig_medida(2));

-- Location: IOOBUF_X0_Y18_N45
\sig_medida[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \M1|D2|C1|IQ\(3),
	devoe => ww_devoe,
	o => ww_sig_medida(3));

-- Location: IOOBUF_X54_Y17_N22
\sig_medida[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \M1|D2|C2|IQ[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_sig_medida(4));

-- Location: IOOBUF_X54_Y18_N62
\sig_medida[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \M1|D2|C2|IQ[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_sig_medida(5));

-- Location: IOOBUF_X38_Y0_N2
\sig_medida[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \M1|D2|C2|IQ[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_sig_medida(6));

-- Location: IOOBUF_X54_Y15_N56
\sig_medida[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \M1|D2|C2|IQ\(3),
	devoe => ww_devoe,
	o => ww_sig_medida(7));

-- Location: IOOBUF_X0_Y19_N5
\sig_medida[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \M1|D2|C3|IQ[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_sig_medida(8));

-- Location: IOOBUF_X0_Y19_N22
\sig_medida[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \M1|D2|C3|IQ\(1),
	devoe => ww_devoe,
	o => ww_sig_medida(9));

-- Location: IOOBUF_X0_Y20_N39
\sig_medida[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \M1|D2|C3|IQ\(2),
	devoe => ww_devoe,
	o => ww_sig_medida(10));

-- Location: IOOBUF_X0_Y20_N56
\sig_medida[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \M1|D2|C3|IQ[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_sig_medida(11));

-- Location: IOOBUF_X43_Y0_N19
\sig_medida[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \M1|D2|C4|IQ\(0),
	devoe => ww_devoe,
	o => ww_sig_medida(12));

-- Location: IOOBUF_X54_Y17_N39
\sig_medida[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \M1|D2|C4|IQ[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_sig_medida(13));

-- Location: IOOBUF_X54_Y17_N56
\sig_medida[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \M1|D2|C4|IQ[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_sig_medida(14));

-- Location: IOOBUF_X43_Y0_N2
\sig_medida[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \M1|D2|C4|IQ[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_sig_medida(15));

-- Location: IOOBUF_X51_Y0_N19
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

-- Location: IOOBUF_X51_Y0_N2
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

-- Location: IOOBUF_X52_Y0_N2
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

-- Location: IOOBUF_X46_Y0_N19
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

-- Location: IOOBUF_X40_Y0_N42
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

-- Location: IOOBUF_X46_Y0_N2
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

-- Location: IOOBUF_X40_Y0_N59
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

-- Location: IOOBUF_X40_Y0_N76
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

-- Location: IOOBUF_X46_Y0_N53
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

-- Location: IOOBUF_X38_Y0_N19
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

-- Location: IOOBUF_X36_Y0_N19
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

-- Location: IOOBUF_X22_Y0_N53
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

-- Location: IOOBUF_X38_Y0_N53
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

-- Location: IOOBUF_X48_Y0_N42
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

-- Location: IOOBUF_X51_Y0_N53
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

-- Location: IOOBUF_X43_Y0_N53
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

-- Location: IOOBUF_X38_Y0_N36
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

-- Location: IOOBUF_X43_Y0_N36
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

-- Location: IOOBUF_X44_Y0_N53
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

-- Location: IOOBUF_X40_Y0_N93
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

-- Location: IOOBUF_X44_Y0_N36
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

-- Location: IOOBUF_X46_Y0_N36
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

-- Location: IOOBUF_X50_Y0_N53
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

-- Location: IOOBUF_X48_Y0_N93
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

-- Location: IOOBUF_X50_Y0_N36
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

-- Location: IOOBUF_X48_Y0_N76
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

-- Location: IOOBUF_X51_Y0_N36
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

-- Location: IOOBUF_X52_Y0_N53
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

-- Location: MLABCELL_X42_Y12_N39
\C1|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Selector2~0_combout\ = ( \C1|Ereg.medindo~q\ & ( \C1|Ereg.iniciado~q\ ) ) # ( !\C1|Ereg.medindo~q\ & ( \C1|Ereg.iniciado~q\ ) ) # ( \C1|Ereg.medindo~q\ & ( !\C1|Ereg.iniciado~q\ & ( !\M1|C1|Ereg.EPRONTO~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|C1|ALT_INV_Ereg.EPRONTO~q\,
	datae => \C1|ALT_INV_Ereg.medindo~q\,
	dataf => \C1|ALT_INV_Ereg.iniciado~q\,
	combout => \C1|Selector2~0_combout\);

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

-- Location: FF_X42_Y12_N41
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

-- Location: MLABCELL_X42_Y12_N48
\C1|Eprox.registra~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Eprox.registra~0_combout\ = ( \C1|Ereg.medindo~q\ & ( \M1|C1|Ereg.EPRONTO~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \M1|C1|ALT_INV_Ereg.EPRONTO~q\,
	dataf => \C1|ALT_INV_Ereg.medindo~q\,
	combout => \C1|Eprox.registra~0_combout\);

-- Location: FF_X42_Y12_N50
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

-- Location: FF_X42_Y12_N38
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

-- Location: FF_X42_Y12_N56
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

-- Location: MLABCELL_X42_Y12_N42
\C1|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Selector3~0_combout\ = ( \C1|Ereg.esperasoma~q\ ) # ( !\C1|Ereg.esperasoma~q\ & ( (\iniciar~input_o\ & \C1|Ereg.espera~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_iniciar~input_o\,
	datad => \C1|ALT_INV_Ereg.espera~q\,
	dataf => \C1|ALT_INV_Ereg.esperasoma~q\,
	combout => \C1|Selector3~0_combout\);

-- Location: FF_X42_Y12_N44
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

-- Location: MLABCELL_X42_Y12_N45
\C1|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Selector1~0_combout\ = ( \C1|Ereg.parado~q\ & ( (!\iniciar~input_o\ & (\zerar~input_o\ & \C1|Ereg.zera~q\)) ) ) # ( !\C1|Ereg.parado~q\ & ( (!\iniciar~input_o\ & \zerar~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_iniciar~input_o\,
	datac => \ALT_INV_zerar~input_o\,
	datad => \C1|ALT_INV_Ereg.zera~q\,
	dataf => \C1|ALT_INV_Ereg.parado~q\,
	combout => \C1|Selector1~0_combout\);

-- Location: FF_X42_Y12_N47
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

-- Location: MLABCELL_X42_Y12_N51
\C1|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Selector0~0_combout\ = ( \C1|Ereg.zera~q\ & ( (\zerar~input_o\ & (!\iniciar~input_o\ & !\C1|Ereg.espera~q\)) ) ) # ( !\C1|Ereg.zera~q\ & ( ((!\C1|Ereg.espera~q\ & ((\C1|Ereg.parado~q\) # (\zerar~input_o\)))) # (\iniciar~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001111110011011100111111001101000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_zerar~input_o\,
	datab => \ALT_INV_iniciar~input_o\,
	datac => \C1|ALT_INV_Ereg.espera~q\,
	datad => \C1|ALT_INV_Ereg.parado~q\,
	dataf => \C1|ALT_INV_Ereg.zera~q\,
	combout => \C1|Selector0~0_combout\);

-- Location: FF_X42_Y12_N53
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

-- Location: MLABCELL_X42_Y12_N57
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

-- Location: FF_X42_Y12_N59
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

-- Location: FF_X42_Y12_N40
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

-- Location: FF_X40_Y12_N58
\M1|C1|Ereg.INICIAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|C1|Selector0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|C1|Ereg.INICIAL~q\);

-- Location: FF_X40_Y12_N20
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

-- Location: LABCELL_X40_Y12_N57
\M1|C1|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|C1|Selector0~0_combout\ = ( \M1|C1|Ereg.LIMPA~q\ & ( (\C1|Ereg.medindo~DUPLICATE_q\) # (\C1|Ereg.iniciado~q\) ) ) # ( !\M1|C1|Ereg.LIMPA~q\ & ( ((\M1|C1|Ereg.INICIAL~q\) # (\C1|Ereg.medindo~DUPLICATE_q\)) # (\C1|Ereg.iniciado~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111111001111111111111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|ALT_INV_Ereg.iniciado~q\,
	datac => \C1|ALT_INV_Ereg.medindo~DUPLICATE_q\,
	datad => \M1|C1|ALT_INV_Ereg.INICIAL~q\,
	dataf => \M1|C1|ALT_INV_Ereg.LIMPA~q\,
	combout => \M1|C1|Selector0~0_combout\);

-- Location: FF_X40_Y12_N59
\M1|C1|Ereg.INICIAL~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|C1|Selector0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|C1|Ereg.INICIAL~DUPLICATE_q\);

-- Location: LABCELL_X40_Y12_N48
\M1|C1|Eprox.CONTA~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|C1|Eprox.CONTA~1_combout\ = ( !\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & ( (\pulso~input_o\ & (!\M1|C1|Ereg.EPRONTO~q\ & \M1|C1|Ereg.INICIAL~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pulso~input_o\,
	datac => \M1|C1|ALT_INV_Ereg.EPRONTO~q\,
	datad => \M1|C1|ALT_INV_Ereg.INICIAL~DUPLICATE_q\,
	dataf => \M1|C1|ALT_INV_Ereg.LIMPA~DUPLICATE_q\,
	combout => \M1|C1|Eprox.CONTA~1_combout\);

-- Location: FF_X40_Y12_N50
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

-- Location: LABCELL_X40_Y12_N27
\M1|C1|Eprox.EPRONTO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|C1|Eprox.EPRONTO~0_combout\ = ( \M1|C1|Ereg.CONTA~q\ & ( !\pulso~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pulso~input_o\,
	dataf => \M1|C1|ALT_INV_Ereg.CONTA~q\,
	combout => \M1|C1|Eprox.EPRONTO~0_combout\);

-- Location: FF_X40_Y12_N29
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

-- Location: FF_X40_Y12_N19
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

-- Location: LABCELL_X39_Y12_N27
\M1|D2|C1|IQ[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D2|C1|IQ[3]~1_combout\ = ( \M1|C1|Ereg.INICIAL~DUPLICATE_q\ & ( \M1|C1|Ereg.LIMPA~DUPLICATE_q\ ) ) # ( !\M1|C1|Ereg.INICIAL~DUPLICATE_q\ & ( \M1|C1|Ereg.LIMPA~DUPLICATE_q\ ) ) # ( \M1|C1|Ereg.INICIAL~DUPLICATE_q\ & ( !\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & 
-- ( \M1|C1|Ereg.CONTA~q\ ) ) ) # ( !\M1|C1|Ereg.INICIAL~DUPLICATE_q\ & ( !\M1|C1|Ereg.LIMPA~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \M1|C1|ALT_INV_Ereg.CONTA~q\,
	datae => \M1|C1|ALT_INV_Ereg.INICIAL~DUPLICATE_q\,
	dataf => \M1|C1|ALT_INV_Ereg.LIMPA~DUPLICATE_q\,
	combout => \M1|D2|C1|IQ[3]~1_combout\);

-- Location: FF_X39_Y12_N37
\M1|D2|C1|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D2|C1|IQ~0_combout\,
	ena => \M1|D2|C1|IQ[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D2|C1|IQ\(0));

-- Location: LABCELL_X39_Y12_N36
\M1|D2|C1|IQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D2|C1|IQ~0_combout\ = ( !\M1|D2|C1|IQ\(0) & ( \M1|C1|Ereg.INICIAL~DUPLICATE_q\ & ( !\M1|C1|Ereg.LIMPA~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \M1|C1|ALT_INV_Ereg.LIMPA~DUPLICATE_q\,
	datae => \M1|D2|C1|ALT_INV_IQ\(0),
	dataf => \M1|C1|ALT_INV_Ereg.INICIAL~DUPLICATE_q\,
	combout => \M1|D2|C1|IQ~0_combout\);

-- Location: FF_X39_Y12_N38
\M1|D2|C1|IQ[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D2|C1|IQ~0_combout\,
	ena => \M1|D2|C1|IQ[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D2|C1|IQ[0]~DUPLICATE_q\);

-- Location: MLABCELL_X42_Y12_N0
\R1|IQ[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|IQ[15]~0_combout\ = ( \C1|Ereg.esperasoma~q\ & ( \C1|Ereg.registra~q\ & ( !\C1|Ereg.zera~q\ ) ) ) # ( !\C1|Ereg.esperasoma~q\ & ( \C1|Ereg.registra~q\ & ( !\C1|Ereg.zera~q\ ) ) ) # ( \C1|Ereg.esperasoma~q\ & ( !\C1|Ereg.registra~q\ & ( 
-- !\C1|Ereg.zera~q\ ) ) ) # ( !\C1|Ereg.esperasoma~q\ & ( !\C1|Ereg.registra~q\ & ( \C1|Ereg.zera~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \C1|ALT_INV_Ereg.zera~q\,
	datae => \C1|ALT_INV_Ereg.esperasoma~q\,
	dataf => \C1|ALT_INV_Ereg.registra~q\,
	combout => \R1|IQ[15]~0_combout\);

-- Location: FF_X42_Y12_N1
\R1|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \M1|D2|C1|IQ[0]~DUPLICATE_q\,
	sclr => \C1|Ereg.zera~q\,
	sload => VCC,
	ena => \R1|IQ[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|IQ\(0));

-- Location: MLABCELL_X42_Y12_N12
\R1|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|process_0~0_combout\ = ( \C1|Ereg.registra~q\ ) # ( !\C1|Ereg.registra~q\ & ( (\C1|Ereg.zera~q\) # (\C1|Ereg.esperasoma~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C1|ALT_INV_Ereg.esperasoma~q\,
	datad => \C1|ALT_INV_Ereg.zera~q\,
	dataf => \C1|ALT_INV_Ereg.registra~q\,
	combout => \R1|process_0~0_combout\);

-- Location: FF_X42_Y12_N14
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

-- Location: LABCELL_X39_Y12_N33
\M1|D2|C1|IQ~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D2|C1|IQ~3_combout\ = ( \M1|D2|C1|IQ\(2) & ( \M1|D2|C1|IQ\(1) & ( (!\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & (\M1|C1|Ereg.INICIAL~DUPLICATE_q\ & !\M1|D2|C1|IQ[0]~DUPLICATE_q\)) ) ) ) # ( !\M1|D2|C1|IQ\(2) & ( \M1|D2|C1|IQ\(1) & ( 
-- (!\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & (\M1|C1|Ereg.INICIAL~DUPLICATE_q\ & \M1|D2|C1|IQ[0]~DUPLICATE_q\)) ) ) ) # ( \M1|D2|C1|IQ\(2) & ( !\M1|D2|C1|IQ\(1) & ( (!\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & \M1|C1|Ereg.INICIAL~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000011000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \M1|C1|ALT_INV_Ereg.LIMPA~DUPLICATE_q\,
	datac => \M1|C1|ALT_INV_Ereg.INICIAL~DUPLICATE_q\,
	datad => \M1|D2|C1|ALT_INV_IQ[0]~DUPLICATE_q\,
	datae => \M1|D2|C1|ALT_INV_IQ\(2),
	dataf => \M1|D2|C1|ALT_INV_IQ\(1),
	combout => \M1|D2|C1|IQ~3_combout\);

-- Location: FF_X39_Y12_N35
\M1|D2|C1|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D2|C1|IQ~3_combout\,
	ena => \M1|D2|C1|IQ[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D2|C1|IQ\(2));

-- Location: LABCELL_X39_Y12_N6
\M1|D2|C1|IQ~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D2|C1|IQ~4_combout\ = ( \M1|D2|C1|IQ\(3) & ( \M1|D2|C1|IQ\(1) & ( (!\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & (\M1|C1|Ereg.INICIAL~DUPLICATE_q\ & ((!\M1|D2|C1|IQ\(2)) # (!\M1|D2|C1|IQ\(0))))) ) ) ) # ( !\M1|D2|C1|IQ\(3) & ( \M1|D2|C1|IQ\(1) & ( 
-- (!\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & (\M1|C1|Ereg.INICIAL~DUPLICATE_q\ & (\M1|D2|C1|IQ\(2) & \M1|D2|C1|IQ\(0)))) ) ) ) # ( \M1|D2|C1|IQ\(3) & ( !\M1|D2|C1|IQ\(1) & ( (!\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & (\M1|C1|Ereg.INICIAL~DUPLICATE_q\ & ((!\M1|D2|C1|IQ\(0)) 
-- # (\M1|D2|C1|IQ\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000100000001000000000000000100010001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|C1|ALT_INV_Ereg.LIMPA~DUPLICATE_q\,
	datab => \M1|C1|ALT_INV_Ereg.INICIAL~DUPLICATE_q\,
	datac => \M1|D2|C1|ALT_INV_IQ\(2),
	datad => \M1|D2|C1|ALT_INV_IQ\(0),
	datae => \M1|D2|C1|ALT_INV_IQ\(3),
	dataf => \M1|D2|C1|ALT_INV_IQ\(1),
	combout => \M1|D2|C1|IQ~4_combout\);

-- Location: FF_X39_Y12_N8
\M1|D2|C1|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D2|C1|IQ~4_combout\,
	ena => \M1|D2|C1|IQ[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D2|C1|IQ\(3));

-- Location: LABCELL_X39_Y12_N42
\M1|D2|C1|IQ~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D2|C1|IQ~2_combout\ = ( \M1|D2|C1|IQ\(1) & ( \M1|D2|C1|IQ\(2) & ( (!\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & (\M1|C1|Ereg.INICIAL~q\ & !\M1|D2|C1|IQ\(0))) ) ) ) # ( !\M1|D2|C1|IQ\(1) & ( \M1|D2|C1|IQ\(2) & ( (!\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & 
-- (\M1|C1|Ereg.INICIAL~q\ & \M1|D2|C1|IQ\(0))) ) ) ) # ( \M1|D2|C1|IQ\(1) & ( !\M1|D2|C1|IQ\(2) & ( (!\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & (\M1|C1|Ereg.INICIAL~q\ & !\M1|D2|C1|IQ\(0))) ) ) ) # ( !\M1|D2|C1|IQ\(1) & ( !\M1|D2|C1|IQ\(2) & ( 
-- (!\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & (!\M1|D2|C1|IQ\(3) & (\M1|C1|Ereg.INICIAL~q\ & \M1|D2|C1|IQ\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000010100000000000000000000010100000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|C1|ALT_INV_Ereg.LIMPA~DUPLICATE_q\,
	datab => \M1|D2|C1|ALT_INV_IQ\(3),
	datac => \M1|C1|ALT_INV_Ereg.INICIAL~q\,
	datad => \M1|D2|C1|ALT_INV_IQ\(0),
	datae => \M1|D2|C1|ALT_INV_IQ\(1),
	dataf => \M1|D2|C1|ALT_INV_IQ\(2),
	combout => \M1|D2|C1|IQ~2_combout\);

-- Location: FF_X39_Y12_N44
\M1|D2|C1|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D2|C1|IQ~2_combout\,
	ena => \M1|D2|C1|IQ[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D2|C1|IQ\(1));

-- Location: FF_X42_Y12_N32
\R1|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \M1|D2|C1|IQ\(1),
	sclr => \C1|Ereg.zera~q\,
	sload => VCC,
	ena => \R1|IQ[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|IQ\(1));

-- Location: FF_X42_Y12_N8
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

-- Location: MLABCELL_X42_Y12_N33
\R1|IQ[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|IQ[2]~feeder_combout\ = ( \M1|D2|C1|IQ\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \M1|D2|C1|ALT_INV_IQ\(2),
	combout => \R1|IQ[2]~feeder_combout\);

-- Location: FF_X42_Y12_N34
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
	ena => \R1|IQ[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|IQ\(2));

-- Location: FF_X42_Y12_N17
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

-- Location: FF_X42_Y12_N5
\R1|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \M1|D2|C1|IQ\(3),
	sclr => \C1|Ereg.zera~q\,
	sload => VCC,
	ena => \R1|IQ[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|IQ\(3));

-- Location: FF_X42_Y12_N26
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

-- Location: LABCELL_X40_Y12_N54
\M1|C1|Eprox.CONTA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|C1|Eprox.CONTA~0_combout\ = ( \M1|C1|Ereg.INICIAL~q\ & ( !\M1|C1|Ereg.LIMPA~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \M1|C1|ALT_INV_Ereg.LIMPA~q\,
	dataf => \M1|C1|ALT_INV_Ereg.INICIAL~q\,
	combout => \M1|C1|Eprox.CONTA~0_combout\);

-- Location: LABCELL_X39_Y12_N54
\M1|D2|C1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D2|C1|Equal0~0_combout\ = ( \M1|D2|C1|IQ[0]~DUPLICATE_q\ & ( !\M1|D2|C1|IQ\(1) & ( (!\M1|D2|C1|IQ\(2) & \M1|D2|C1|IQ\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \M1|D2|C1|ALT_INV_IQ\(2),
	datad => \M1|D2|C1|ALT_INV_IQ\(3),
	datae => \M1|D2|C1|ALT_INV_IQ[0]~DUPLICATE_q\,
	dataf => \M1|D2|C1|ALT_INV_IQ\(1),
	combout => \M1|D2|C1|Equal0~0_combout\);

-- Location: LABCELL_X40_Y12_N12
\M1|D2|C2|IQ[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D2|C2|IQ[2]~1_combout\ = ( \M1|D2|C1|Equal0~0_combout\ & ( (!\M1|C1|Eprox.CONTA~0_combout\) # (\M1|C1|Ereg.CONTA~q\) ) ) # ( !\M1|D2|C1|Equal0~0_combout\ & ( !\M1|C1|Eprox.CONTA~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \M1|C1|ALT_INV_Ereg.CONTA~q\,
	datad => \M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	dataf => \M1|D2|C1|ALT_INV_Equal0~0_combout\,
	combout => \M1|D2|C2|IQ[2]~1_combout\);

-- Location: FF_X41_Y12_N16
\M1|D2|C2|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D2|C2|IQ~0_combout\,
	ena => \M1|D2|C2|IQ[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D2|C2|IQ\(0));

-- Location: LABCELL_X41_Y12_N15
\M1|D2|C2|IQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D2|C2|IQ~0_combout\ = ( !\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & ( (\M1|C1|Ereg.INICIAL~q\ & !\M1|D2|C2|IQ\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \M1|C1|ALT_INV_Ereg.INICIAL~q\,
	datad => \M1|D2|C2|ALT_INV_IQ\(0),
	dataf => \M1|C1|ALT_INV_Ereg.LIMPA~DUPLICATE_q\,
	combout => \M1|D2|C2|IQ~0_combout\);

-- Location: FF_X41_Y12_N17
\M1|D2|C2|IQ[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D2|C2|IQ~0_combout\,
	ena => \M1|D2|C2|IQ[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D2|C2|IQ[0]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y12_N12
\R1|IQ[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|IQ[4]~feeder_combout\ = ( \M1|D2|C2|IQ[0]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \M1|D2|C2|ALT_INV_IQ[0]~DUPLICATE_q\,
	combout => \R1|IQ[4]~feeder_combout\);

-- Location: FF_X43_Y12_N13
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
	ena => \R1|IQ[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|IQ\(4));

-- Location: FF_X43_Y12_N47
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

-- Location: FF_X41_Y12_N55
\M1|D2|C2|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D2|C2|IQ~2_combout\,
	ena => \M1|D2|C2|IQ[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D2|C2|IQ\(1));

-- Location: FF_X41_Y12_N14
\M1|D2|C2|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D2|C2|IQ~3_combout\,
	ena => \M1|D2|C2|IQ[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D2|C2|IQ\(2));

-- Location: LABCELL_X41_Y12_N12
\M1|D2|C2|IQ~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D2|C2|IQ~3_combout\ = ( \M1|D2|C2|IQ[0]~DUPLICATE_q\ & ( (!\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & (\M1|C1|Ereg.INICIAL~q\ & (!\M1|D2|C2|IQ[1]~DUPLICATE_q\ $ (!\M1|D2|C2|IQ\(2))))) ) ) # ( !\M1|D2|C2|IQ[0]~DUPLICATE_q\ & ( (!\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & 
-- (\M1|C1|Ereg.INICIAL~q\ & \M1|D2|C2|IQ\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000010001000000000001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|C1|ALT_INV_Ereg.LIMPA~DUPLICATE_q\,
	datab => \M1|C1|ALT_INV_Ereg.INICIAL~q\,
	datac => \M1|D2|C2|ALT_INV_IQ[1]~DUPLICATE_q\,
	datad => \M1|D2|C2|ALT_INV_IQ\(2),
	dataf => \M1|D2|C2|ALT_INV_IQ[0]~DUPLICATE_q\,
	combout => \M1|D2|C2|IQ~3_combout\);

-- Location: FF_X41_Y12_N13
\M1|D2|C2|IQ[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D2|C2|IQ~3_combout\,
	ena => \M1|D2|C2|IQ[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D2|C2|IQ[2]~DUPLICATE_q\);

-- Location: LABCELL_X41_Y12_N36
\M1|D2|C2|IQ~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D2|C2|IQ~4_combout\ = ( \M1|D2|C2|IQ\(3) & ( \M1|D2|C2|IQ[2]~DUPLICATE_q\ & ( (!\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & (\M1|C1|Ereg.INICIAL~q\ & ((!\M1|D2|C2|IQ\(1)) # (!\M1|D2|C2|IQ\(0))))) ) ) ) # ( !\M1|D2|C2|IQ\(3) & ( \M1|D2|C2|IQ[2]~DUPLICATE_q\ & ( 
-- (!\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & (\M1|D2|C2|IQ\(1) & (\M1|D2|C2|IQ\(0) & \M1|C1|Ereg.INICIAL~q\))) ) ) ) # ( \M1|D2|C2|IQ\(3) & ( !\M1|D2|C2|IQ[2]~DUPLICATE_q\ & ( (!\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & (\M1|C1|Ereg.INICIAL~q\ & ((!\M1|D2|C2|IQ\(0)) # 
-- (\M1|D2|C2|IQ\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010001000000000000000100000000010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|C1|ALT_INV_Ereg.LIMPA~DUPLICATE_q\,
	datab => \M1|D2|C2|ALT_INV_IQ\(1),
	datac => \M1|D2|C2|ALT_INV_IQ\(0),
	datad => \M1|C1|ALT_INV_Ereg.INICIAL~q\,
	datae => \M1|D2|C2|ALT_INV_IQ\(3),
	dataf => \M1|D2|C2|ALT_INV_IQ[2]~DUPLICATE_q\,
	combout => \M1|D2|C2|IQ~4_combout\);

-- Location: FF_X41_Y12_N38
\M1|D2|C2|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D2|C2|IQ~4_combout\,
	ena => \M1|D2|C2|IQ[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D2|C2|IQ\(3));

-- Location: LABCELL_X41_Y12_N54
\M1|D2|C2|IQ~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D2|C2|IQ~2_combout\ = ( \M1|D2|C2|IQ\(1) & ( \M1|D2|C2|IQ[2]~DUPLICATE_q\ & ( (!\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & (\M1|C1|Ereg.INICIAL~q\ & !\M1|D2|C2|IQ[0]~DUPLICATE_q\)) ) ) ) # ( !\M1|D2|C2|IQ\(1) & ( \M1|D2|C2|IQ[2]~DUPLICATE_q\ & ( 
-- (!\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & (\M1|C1|Ereg.INICIAL~q\ & \M1|D2|C2|IQ[0]~DUPLICATE_q\)) ) ) ) # ( \M1|D2|C2|IQ\(1) & ( !\M1|D2|C2|IQ[2]~DUPLICATE_q\ & ( (!\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & (\M1|C1|Ereg.INICIAL~q\ & !\M1|D2|C2|IQ[0]~DUPLICATE_q\)) ) ) ) 
-- # ( !\M1|D2|C2|IQ\(1) & ( !\M1|D2|C2|IQ[2]~DUPLICATE_q\ & ( (!\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & (\M1|C1|Ereg.INICIAL~q\ & (!\M1|D2|C2|IQ\(3) & \M1|D2|C2|IQ[0]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000001000100000000000000000001000100010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|C1|ALT_INV_Ereg.LIMPA~DUPLICATE_q\,
	datab => \M1|C1|ALT_INV_Ereg.INICIAL~q\,
	datac => \M1|D2|C2|ALT_INV_IQ\(3),
	datad => \M1|D2|C2|ALT_INV_IQ[0]~DUPLICATE_q\,
	datae => \M1|D2|C2|ALT_INV_IQ\(1),
	dataf => \M1|D2|C2|ALT_INV_IQ[2]~DUPLICATE_q\,
	combout => \M1|D2|C2|IQ~2_combout\);

-- Location: FF_X41_Y12_N56
\M1|D2|C2|IQ[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D2|C2|IQ~2_combout\,
	ena => \M1|D2|C2|IQ[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D2|C2|IQ[1]~DUPLICATE_q\);

-- Location: FF_X41_Y12_N25
\R1|IQ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \M1|D2|C2|IQ[1]~DUPLICATE_q\,
	sclr => \C1|Ereg.zera~q\,
	sload => VCC,
	ena => \R1|IQ[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|IQ\(5));

-- Location: FF_X43_Y12_N50
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

-- Location: FF_X41_Y12_N28
\R1|IQ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \M1|D2|C2|IQ[2]~DUPLICATE_q\,
	sclr => \C1|Ereg.zera~q\,
	sload => VCC,
	ena => \R1|IQ[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|IQ\(6));

-- Location: FF_X43_Y12_N35
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

-- Location: LABCELL_X43_Y12_N15
\R1|IQ[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|IQ[7]~feeder_combout\ = ( \M1|D2|C2|IQ\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \M1|D2|C2|ALT_INV_IQ\(3),
	combout => \R1|IQ[7]~feeder_combout\);

-- Location: FF_X43_Y12_N16
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
	ena => \R1|IQ[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|IQ\(7));

-- Location: FF_X43_Y12_N32
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

-- Location: LABCELL_X41_Y12_N9
\M1|D2|C3|IQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D2|C3|IQ~0_combout\ = ( !\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & ( (!\M1|D2|C3|IQ[0]~DUPLICATE_q\ & \M1|C1|Ereg.INICIAL~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \M1|D2|C3|ALT_INV_IQ[0]~DUPLICATE_q\,
	datad => \M1|C1|ALT_INV_Ereg.INICIAL~q\,
	dataf => \M1|C1|ALT_INV_Ereg.LIMPA~DUPLICATE_q\,
	combout => \M1|D2|C3|IQ~0_combout\);

-- Location: LABCELL_X41_Y12_N24
\M1|D2|C2|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D2|C2|Equal0~0_combout\ = ( !\M1|D2|C2|IQ[1]~DUPLICATE_q\ & ( !\M1|D2|C2|IQ\(2) & ( (\M1|D2|C2|IQ\(3) & \M1|D2|C2|IQ[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \M1|D2|C2|ALT_INV_IQ\(3),
	datad => \M1|D2|C2|ALT_INV_IQ[0]~DUPLICATE_q\,
	datae => \M1|D2|C2|ALT_INV_IQ[1]~DUPLICATE_q\,
	dataf => \M1|D2|C2|ALT_INV_IQ\(2),
	combout => \M1|D2|C2|Equal0~0_combout\);

-- Location: LABCELL_X40_Y12_N24
\M1|D2|C3|IQ[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D2|C3|IQ[3]~1_combout\ = ( \M1|D2|C1|Equal0~0_combout\ & ( (!\M1|C1|Eprox.CONTA~0_combout\) # ((\M1|D2|C2|Equal0~0_combout\ & \M1|C1|Ereg.CONTA~q\)) ) ) # ( !\M1|D2|C1|Equal0~0_combout\ & ( !\M1|C1|Eprox.CONTA~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000111111111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \M1|D2|C2|ALT_INV_Equal0~0_combout\,
	datac => \M1|C1|ALT_INV_Ereg.CONTA~q\,
	datad => \M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	dataf => \M1|D2|C1|ALT_INV_Equal0~0_combout\,
	combout => \M1|D2|C3|IQ[3]~1_combout\);

-- Location: FF_X40_Y12_N34
\M1|D2|C3|IQ[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \M1|D2|C3|IQ~0_combout\,
	sload => VCC,
	ena => \M1|D2|C3|IQ[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D2|C3|IQ[0]~DUPLICATE_q\);

-- Location: FF_X41_Y12_N31
\R1|IQ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \M1|D2|C3|IQ[0]~DUPLICATE_q\,
	sclr => \C1|Ereg.zera~q\,
	sload => VCC,
	ena => \R1|IQ[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|IQ\(8));

-- Location: FF_X41_Y12_N2
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

-- Location: FF_X40_Y12_N35
\M1|D2|C3|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \M1|D2|C3|IQ~0_combout\,
	sload => VCC,
	ena => \M1|D2|C3|IQ[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D2|C3|IQ\(0));

-- Location: FF_X40_Y12_N16
\M1|D2|C3|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D2|C3|IQ~3_combout\,
	ena => \M1|D2|C3|IQ[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D2|C3|IQ\(2));

-- Location: LABCELL_X40_Y12_N15
\M1|D2|C3|IQ~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D2|C3|IQ~3_combout\ = ( \M1|D2|C3|IQ[0]~DUPLICATE_q\ & ( (!\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & (\M1|C1|Ereg.INICIAL~DUPLICATE_q\ & (!\M1|D2|C3|IQ\(1) $ (!\M1|D2|C3|IQ\(2))))) ) ) # ( !\M1|D2|C3|IQ[0]~DUPLICATE_q\ & ( (!\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & 
-- (\M1|C1|Ereg.INICIAL~DUPLICATE_q\ & \M1|D2|C3|IQ\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000010001000000000001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|C1|ALT_INV_Ereg.LIMPA~DUPLICATE_q\,
	datab => \M1|C1|ALT_INV_Ereg.INICIAL~DUPLICATE_q\,
	datac => \M1|D2|C3|ALT_INV_IQ\(1),
	datad => \M1|D2|C3|ALT_INV_IQ\(2),
	dataf => \M1|D2|C3|ALT_INV_IQ[0]~DUPLICATE_q\,
	combout => \M1|D2|C3|IQ~3_combout\);

-- Location: FF_X40_Y12_N17
\M1|D2|C3|IQ[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D2|C3|IQ~3_combout\,
	ena => \M1|D2|C3|IQ[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D2|C3|IQ[2]~DUPLICATE_q\);

-- Location: FF_X40_Y12_N32
\M1|D2|C3|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D2|C3|IQ~4_combout\,
	ena => \M1|D2|C3|IQ[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D2|C3|IQ\(3));

-- Location: LABCELL_X40_Y12_N30
\M1|D2|C3|IQ~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D2|C3|IQ~4_combout\ = ( \M1|D2|C3|IQ\(3) & ( \M1|D2|C3|IQ\(2) & ( (!\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & (\M1|C1|Ereg.INICIAL~DUPLICATE_q\ & ((!\M1|D2|C3|IQ\(0)) # (!\M1|D2|C3|IQ\(1))))) ) ) ) # ( !\M1|D2|C3|IQ\(3) & ( \M1|D2|C3|IQ\(2) & ( 
-- (!\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & (\M1|C1|Ereg.INICIAL~DUPLICATE_q\ & (\M1|D2|C3|IQ\(0) & \M1|D2|C3|IQ\(1)))) ) ) ) # ( \M1|D2|C3|IQ\(3) & ( !\M1|D2|C3|IQ\(2) & ( (!\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & (\M1|C1|Ereg.INICIAL~DUPLICATE_q\ & ((!\M1|D2|C3|IQ\(0)) 
-- # (\M1|D2|C3|IQ\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000010001000000000000000100010001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|C1|ALT_INV_Ereg.LIMPA~DUPLICATE_q\,
	datab => \M1|C1|ALT_INV_Ereg.INICIAL~DUPLICATE_q\,
	datac => \M1|D2|C3|ALT_INV_IQ\(0),
	datad => \M1|D2|C3|ALT_INV_IQ\(1),
	datae => \M1|D2|C3|ALT_INV_IQ\(3),
	dataf => \M1|D2|C3|ALT_INV_IQ\(2),
	combout => \M1|D2|C3|IQ~4_combout\);

-- Location: FF_X40_Y12_N31
\M1|D2|C3|IQ[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D2|C3|IQ~4_combout\,
	ena => \M1|D2|C3|IQ[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D2|C3|IQ[3]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y12_N42
\M1|D2|C3|IQ~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D2|C3|IQ~2_combout\ = ( \M1|D2|C3|IQ\(1) & ( \M1|D2|C3|IQ[3]~DUPLICATE_q\ & ( (!\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & (\M1|C1|Ereg.INICIAL~DUPLICATE_q\ & !\M1|D2|C3|IQ\(0))) ) ) ) # ( !\M1|D2|C3|IQ\(1) & ( \M1|D2|C3|IQ[3]~DUPLICATE_q\ & ( 
-- (!\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & (\M1|C1|Ereg.INICIAL~DUPLICATE_q\ & (\M1|D2|C3|IQ\(0) & \M1|D2|C3|IQ[2]~DUPLICATE_q\))) ) ) ) # ( \M1|D2|C3|IQ\(1) & ( !\M1|D2|C3|IQ[3]~DUPLICATE_q\ & ( (!\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & 
-- (\M1|C1|Ereg.INICIAL~DUPLICATE_q\ & !\M1|D2|C3|IQ\(0))) ) ) ) # ( !\M1|D2|C3|IQ\(1) & ( !\M1|D2|C3|IQ[3]~DUPLICATE_q\ & ( (!\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & (\M1|C1|Ereg.INICIAL~DUPLICATE_q\ & \M1|D2|C3|IQ\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010001000000010000000000000000000100010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|C1|ALT_INV_Ereg.LIMPA~DUPLICATE_q\,
	datab => \M1|C1|ALT_INV_Ereg.INICIAL~DUPLICATE_q\,
	datac => \M1|D2|C3|ALT_INV_IQ\(0),
	datad => \M1|D2|C3|ALT_INV_IQ[2]~DUPLICATE_q\,
	datae => \M1|D2|C3|ALT_INV_IQ\(1),
	dataf => \M1|D2|C3|ALT_INV_IQ[3]~DUPLICATE_q\,
	combout => \M1|D2|C3|IQ~2_combout\);

-- Location: FF_X40_Y12_N44
\M1|D2|C3|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D2|C3|IQ~2_combout\,
	ena => \M1|D2|C3|IQ[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D2|C3|IQ\(1));

-- Location: FF_X41_Y12_N35
\R1|IQ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \M1|D2|C3|IQ\(1),
	sclr => \C1|Ereg.zera~q\,
	sload => VCC,
	ena => \R1|IQ[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|IQ\(9));

-- Location: FF_X41_Y12_N50
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

-- Location: LABCELL_X41_Y12_N45
\R1|IQ[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|IQ[10]~feeder_combout\ = ( \M1|D2|C3|IQ[2]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \M1|D2|C3|ALT_INV_IQ[2]~DUPLICATE_q\,
	combout => \R1|IQ[10]~feeder_combout\);

-- Location: FF_X41_Y12_N47
\R1|IQ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R1|IQ[10]~feeder_combout\,
	sclr => \C1|Ereg.zera~q\,
	ena => \R1|IQ[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|IQ\(10));

-- Location: FF_X41_Y12_N53
\R1|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R1|IQ\(10),
	sload => VCC,
	ena => \R1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|Q\(10));

-- Location: LABCELL_X41_Y12_N42
\R1|IQ[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|IQ[11]~feeder_combout\ = ( \M1|D2|C3|IQ[3]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \M1|D2|C3|ALT_INV_IQ[3]~DUPLICATE_q\,
	combout => \R1|IQ[11]~feeder_combout\);

-- Location: FF_X41_Y12_N43
\R1|IQ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R1|IQ[11]~feeder_combout\,
	sclr => \C1|Ereg.zera~q\,
	ena => \R1|IQ[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|IQ\(11));

-- Location: FF_X41_Y12_N8
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

-- Location: LABCELL_X40_Y12_N9
\M1|D2|C4|IQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D2|C4|IQ~0_combout\ = ( !\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & ( (\M1|C1|Ereg.INICIAL~DUPLICATE_q\ & !\M1|D2|C4|IQ\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \M1|C1|ALT_INV_Ereg.INICIAL~DUPLICATE_q\,
	datad => \M1|D2|C4|ALT_INV_IQ\(0),
	dataf => \M1|C1|ALT_INV_Ereg.LIMPA~DUPLICATE_q\,
	combout => \M1|D2|C4|IQ~0_combout\);

-- Location: LABCELL_X40_Y12_N51
\M1|D2|C3|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D2|C3|Equal0~0_combout\ = ( !\M1|D2|C3|IQ\(1) & ( (!\M1|D2|C3|IQ[2]~DUPLICATE_q\ & (\M1|D2|C3|IQ\(3) & \M1|D2|C3|IQ[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \M1|D2|C3|ALT_INV_IQ[2]~DUPLICATE_q\,
	datac => \M1|D2|C3|ALT_INV_IQ\(3),
	datad => \M1|D2|C3|ALT_INV_IQ[0]~DUPLICATE_q\,
	dataf => \M1|D2|C3|ALT_INV_IQ\(1),
	combout => \M1|D2|C3|Equal0~0_combout\);

-- Location: LABCELL_X40_Y12_N21
\M1|D2|C4|IQ[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D2|C4|IQ[1]~1_combout\ = ( \M1|D2|C3|Equal0~0_combout\ & ( \M1|D2|C2|Equal0~0_combout\ & ( (!\M1|C1|Eprox.CONTA~0_combout\) # ((\M1|C1|Ereg.CONTA~q\ & \M1|D2|C1|Equal0~0_combout\)) ) ) ) # ( !\M1|D2|C3|Equal0~0_combout\ & ( \M1|D2|C2|Equal0~0_combout\ 
-- & ( !\M1|C1|Eprox.CONTA~0_combout\ ) ) ) # ( \M1|D2|C3|Equal0~0_combout\ & ( !\M1|D2|C2|Equal0~0_combout\ & ( !\M1|C1|Eprox.CONTA~0_combout\ ) ) ) # ( !\M1|D2|C3|Equal0~0_combout\ & ( !\M1|D2|C2|Equal0~0_combout\ & ( !\M1|C1|Eprox.CONTA~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|C1|ALT_INV_Ereg.CONTA~q\,
	datac => \M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datad => \M1|D2|C1|ALT_INV_Equal0~0_combout\,
	datae => \M1|D2|C3|ALT_INV_Equal0~0_combout\,
	dataf => \M1|D2|C2|ALT_INV_Equal0~0_combout\,
	combout => \M1|D2|C4|IQ[1]~1_combout\);

-- Location: FF_X40_Y12_N10
\M1|D2|C4|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D2|C4|IQ~0_combout\,
	ena => \M1|D2|C4|IQ[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D2|C4|IQ\(0));

-- Location: FF_X43_Y12_N11
\R1|IQ[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \M1|D2|C4|IQ\(0),
	sclr => \C1|Ereg.zera~q\,
	sload => VCC,
	ena => \R1|IQ[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|IQ\(12));

-- Location: FF_X43_Y12_N26
\R1|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R1|IQ\(12),
	sload => VCC,
	ena => \R1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|Q\(12));

-- Location: FF_X40_Y12_N2
\M1|D2|C4|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D2|C4|IQ~2_combout\,
	ena => \M1|D2|C4|IQ[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D2|C4|IQ\(1));

-- Location: LABCELL_X40_Y12_N6
\M1|D2|C4|IQ~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D2|C4|IQ~3_combout\ = ( \M1|D2|C4|IQ\(0) & ( (!\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & (\M1|C1|Ereg.INICIAL~DUPLICATE_q\ & (!\M1|D2|C4|IQ\(1) $ (!\M1|D2|C4|IQ\(2))))) ) ) # ( !\M1|D2|C4|IQ\(0) & ( (!\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & 
-- (\M1|C1|Ereg.INICIAL~DUPLICATE_q\ & \M1|D2|C4|IQ\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000010001000000000001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|C1|ALT_INV_Ereg.LIMPA~DUPLICATE_q\,
	datab => \M1|C1|ALT_INV_Ereg.INICIAL~DUPLICATE_q\,
	datac => \M1|D2|C4|ALT_INV_IQ\(1),
	datad => \M1|D2|C4|ALT_INV_IQ\(2),
	dataf => \M1|D2|C4|ALT_INV_IQ\(0),
	combout => \M1|D2|C4|IQ~3_combout\);

-- Location: FF_X40_Y12_N8
\M1|D2|C4|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D2|C4|IQ~3_combout\,
	ena => \M1|D2|C4|IQ[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D2|C4|IQ\(2));

-- Location: LABCELL_X40_Y12_N36
\M1|D2|C4|IQ~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D2|C4|IQ~4_combout\ = ( \M1|D2|C4|IQ\(3) & ( \M1|D2|C4|IQ\(0) & ( (!\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & (\M1|C1|Ereg.INICIAL~DUPLICATE_q\ & (!\M1|D2|C4|IQ\(1) $ (!\M1|D2|C4|IQ\(2))))) ) ) ) # ( !\M1|D2|C4|IQ\(3) & ( \M1|D2|C4|IQ\(0) & ( 
-- (!\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & (\M1|C1|Ereg.INICIAL~DUPLICATE_q\ & (\M1|D2|C4|IQ\(1) & \M1|D2|C4|IQ\(2)))) ) ) ) # ( \M1|D2|C4|IQ\(3) & ( !\M1|D2|C4|IQ\(0) & ( (!\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & \M1|C1|Ereg.INICIAL~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000100010001000000000000000100000001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|C1|ALT_INV_Ereg.LIMPA~DUPLICATE_q\,
	datab => \M1|C1|ALT_INV_Ereg.INICIAL~DUPLICATE_q\,
	datac => \M1|D2|C4|ALT_INV_IQ\(1),
	datad => \M1|D2|C4|ALT_INV_IQ\(2),
	datae => \M1|D2|C4|ALT_INV_IQ\(3),
	dataf => \M1|D2|C4|ALT_INV_IQ\(0),
	combout => \M1|D2|C4|IQ~4_combout\);

-- Location: FF_X40_Y12_N38
\M1|D2|C4|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D2|C4|IQ~4_combout\,
	ena => \M1|D2|C4|IQ[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D2|C4|IQ\(3));

-- Location: LABCELL_X40_Y12_N0
\M1|D2|C4|IQ~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \M1|D2|C4|IQ~2_combout\ = ( !\M1|D2|C4|IQ\(1) & ( \M1|D2|C4|IQ\(0) & ( (!\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & (\M1|C1|Ereg.INICIAL~DUPLICATE_q\ & ((!\M1|D2|C4|IQ\(3)) # (\M1|D2|C4|IQ\(2))))) ) ) ) # ( \M1|D2|C4|IQ\(1) & ( !\M1|D2|C4|IQ\(0) & ( 
-- (!\M1|C1|Ereg.LIMPA~DUPLICATE_q\ & \M1|C1|Ereg.INICIAL~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000100010001000100000001000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \M1|C1|ALT_INV_Ereg.LIMPA~DUPLICATE_q\,
	datab => \M1|C1|ALT_INV_Ereg.INICIAL~DUPLICATE_q\,
	datac => \M1|D2|C4|ALT_INV_IQ\(3),
	datad => \M1|D2|C4|ALT_INV_IQ\(2),
	datae => \M1|D2|C4|ALT_INV_IQ\(1),
	dataf => \M1|D2|C4|ALT_INV_IQ\(0),
	combout => \M1|D2|C4|IQ~2_combout\);

-- Location: FF_X40_Y12_N1
\M1|D2|C4|IQ[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D2|C4|IQ~2_combout\,
	ena => \M1|D2|C4|IQ[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D2|C4|IQ[1]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y12_N6
\R1|IQ[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|IQ[13]~feeder_combout\ = ( \M1|D2|C4|IQ[1]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \M1|D2|C4|ALT_INV_IQ[1]~DUPLICATE_q\,
	combout => \R1|IQ[13]~feeder_combout\);

-- Location: FF_X43_Y12_N8
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

-- Location: FF_X43_Y12_N29
\R1|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R1|IQ\(13),
	sload => VCC,
	ena => \R1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|Q\(13));

-- Location: FF_X40_Y12_N7
\M1|D2|C4|IQ[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D2|C4|IQ~3_combout\,
	ena => \M1|D2|C4|IQ[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D2|C4|IQ[2]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y12_N3
\R1|IQ[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|IQ[14]~feeder_combout\ = ( \M1|D2|C4|IQ[2]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \M1|D2|C4|ALT_INV_IQ[2]~DUPLICATE_q\,
	combout => \R1|IQ[14]~feeder_combout\);

-- Location: FF_X43_Y12_N5
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

-- Location: FF_X43_Y12_N44
\R1|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R1|IQ\(14),
	sload => VCC,
	ena => \R1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|Q\(14));

-- Location: FF_X40_Y12_N37
\M1|D2|C4|IQ[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \M1|D2|C4|IQ~4_combout\,
	ena => \M1|D2|C4|IQ[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \M1|D2|C4|IQ[3]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y12_N0
\R1|IQ[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R1|IQ[15]~feeder_combout\ = ( \M1|D2|C4|IQ[3]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \M1|D2|C4|ALT_INV_IQ[3]~DUPLICATE_q\,
	combout => \R1|IQ[15]~feeder_combout\);

-- Location: FF_X43_Y12_N2
\R1|IQ[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R1|IQ[15]~feeder_combout\,
	sclr => \C1|Ereg.zera~q\,
	ena => \R1|IQ[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|IQ\(15));

-- Location: FF_X43_Y12_N20
\R1|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R1|IQ\(15),
	sload => VCC,
	ena => \R1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1|Q\(15));

-- Location: MLABCELL_X42_Y12_N54
\C1|WideNor1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|WideNor1~combout\ = ( \C1|Ereg.registra~q\ ) # ( !\C1|Ereg.registra~q\ & ( \C1|Ereg.esperasoma~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \C1|ALT_INV_Ereg.esperasoma~q\,
	dataf => \C1|ALT_INV_Ereg.registra~q\,
	combout => \C1|WideNor1~combout\);

-- Location: LABCELL_X39_Y12_N48
\C1|WideNor0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|WideNor0~combout\ = ( \C1|Ereg.iniciado~q\ ) # ( !\C1|Ereg.iniciado~q\ & ( \C1|Ereg.medindo~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C1|ALT_INV_Ereg.medindo~DUPLICATE_q\,
	dataf => \C1|ALT_INV_Ereg.iniciado~q\,
	combout => \C1|WideNor0~combout\);

-- Location: LABCELL_X43_Y12_N21
\D4|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Mux6~0_combout\ = ( \R1|Q\(15) & ( ((!\R1|Q\(14)) # (\R1|Q\(13))) # (\R1|Q\(12)) ) ) # ( !\R1|Q\(15) & ( (!\R1|Q\(14) & ((\R1|Q\(13)))) # (\R1|Q\(14) & ((!\R1|Q\(12)) # (!\R1|Q\(13)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111101110001100111110111011011101111111111101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(12),
	datab => \R1|ALT_INV_Q\(14),
	datad => \R1|ALT_INV_Q\(13),
	dataf => \R1|ALT_INV_Q\(15),
	combout => \D4|Mux6~0_combout\);

-- Location: LABCELL_X43_Y12_N36
\D4|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Mux5~0_combout\ = ( \R1|Q\(14) & ( (\R1|Q\(12) & (\R1|Q\(15) & !\R1|Q\(13))) ) ) # ( !\R1|Q\(14) & ( (!\R1|Q\(15) & ((\R1|Q\(13)) # (\R1|Q\(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011110000010100001111000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(12),
	datac => \R1|ALT_INV_Q\(15),
	datad => \R1|ALT_INV_Q\(13),
	dataf => \R1|ALT_INV_Q\(14),
	combout => \D4|Mux5~0_combout\);

-- Location: LABCELL_X43_Y12_N39
\D4|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Mux4~0_combout\ = ( \R1|Q\(15) & ( (\R1|Q\(12) & (!\R1|Q\(14) & !\R1|Q\(13))) ) ) # ( !\R1|Q\(15) & ( ((\R1|Q\(14) & !\R1|Q\(13))) # (\R1|Q\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101010101010111110101010101010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(12),
	datac => \R1|ALT_INV_Q\(14),
	datad => \R1|ALT_INV_Q\(13),
	dataf => \R1|ALT_INV_Q\(15),
	combout => \D4|Mux4~0_combout\);

-- Location: LABCELL_X43_Y12_N24
\D4|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Mux3~0_combout\ = (!\R1|Q\(13) & (!\R1|Q\(15) & (!\R1|Q\(14) $ (!\R1|Q\(12))))) # (\R1|Q\(13) & ((!\R1|Q\(14) & (\R1|Q\(15) & !\R1|Q\(12))) # (\R1|Q\(14) & ((\R1|Q\(12))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010010000011001001001000001100100100100000110010010010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(15),
	datab => \R1|ALT_INV_Q\(14),
	datac => \R1|ALT_INV_Q\(13),
	datad => \R1|ALT_INV_Q\(12),
	combout => \D4|Mux3~0_combout\);

-- Location: LABCELL_X43_Y12_N27
\D4|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Mux2~0_combout\ = (!\R1|Q\(15) & (!\R1|Q\(14) & (!\R1|Q\(12) & \R1|Q\(13)))) # (\R1|Q\(15) & (\R1|Q\(14) & ((!\R1|Q\(12)) # (\R1|Q\(13)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010010001000100001001000100010000100100010001000010010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(15),
	datab => \R1|ALT_INV_Q\(14),
	datac => \R1|ALT_INV_Q\(12),
	datad => \R1|ALT_INV_Q\(13),
	combout => \D4|Mux2~0_combout\);

-- Location: LABCELL_X43_Y12_N42
\D4|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Mux1~0_combout\ = ( \R1|Q\(12) & ( (!\R1|Q\(15) & (!\R1|Q\(13) & \R1|Q\(14))) # (\R1|Q\(15) & (\R1|Q\(13))) ) ) # ( !\R1|Q\(12) & ( (\R1|Q\(14) & ((\R1|Q\(13)) # (\R1|Q\(15)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100000101101001010000010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(15),
	datac => \R1|ALT_INV_Q\(13),
	datad => \R1|ALT_INV_Q\(14),
	dataf => \R1|ALT_INV_Q\(12),
	combout => \D4|Mux1~0_combout\);

-- Location: LABCELL_X43_Y12_N18
\D4|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D4|Mux0~0_combout\ = (!\R1|Q\(14) & (\R1|Q\(12) & (!\R1|Q\(13) $ (\R1|Q\(15))))) # (\R1|Q\(14) & (!\R1|Q\(13) & (!\R1|Q\(12) $ (\R1|Q\(15)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000000010100011000000001010001100000000101000110000000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(12),
	datab => \R1|ALT_INV_Q\(14),
	datac => \R1|ALT_INV_Q\(13),
	datad => \R1|ALT_INV_Q\(15),
	combout => \D4|Mux0~0_combout\);

-- Location: LABCELL_X41_Y12_N3
\D3|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Mux6~0_combout\ = ( \R1|Q\(10) & ( (!\R1|Q\(9) & ((!\R1|Q\(11)) # (\R1|Q\(8)))) # (\R1|Q\(9) & ((!\R1|Q\(8)) # (\R1|Q\(11)))) ) ) # ( !\R1|Q\(10) & ( (\R1|Q\(11)) # (\R1|Q\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111111110101101011111111010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(9),
	datac => \R1|ALT_INV_Q\(11),
	datad => \R1|ALT_INV_Q\(8),
	dataf => \R1|ALT_INV_Q\(10),
	combout => \D3|Mux6~0_combout\);

-- Location: LABCELL_X41_Y12_N18
\D3|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Mux5~0_combout\ = ( \R1|Q\(10) & ( (!\R1|Q\(9) & (\R1|Q\(11) & \R1|Q\(8))) ) ) # ( !\R1|Q\(10) & ( (!\R1|Q\(11) & ((\R1|Q\(8)) # (\R1|Q\(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011001100010001001100110000000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(9),
	datab => \R1|ALT_INV_Q\(11),
	datad => \R1|ALT_INV_Q\(8),
	dataf => \R1|ALT_INV_Q\(10),
	combout => \D3|Mux5~0_combout\);

-- Location: LABCELL_X41_Y12_N21
\D3|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Mux4~0_combout\ = ( \R1|Q\(10) & ( (!\R1|Q\(11) & ((!\R1|Q\(9)) # (\R1|Q\(8)))) ) ) # ( !\R1|Q\(10) & ( (\R1|Q\(8) & ((!\R1|Q\(9)) # (!\R1|Q\(11)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000000001110111010001000110011001000100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(9),
	datab => \R1|ALT_INV_Q\(11),
	datad => \R1|ALT_INV_Q\(8),
	dataf => \R1|ALT_INV_Q\(10),
	combout => \D3|Mux4~0_combout\);

-- Location: LABCELL_X41_Y12_N0
\D3|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Mux3~0_combout\ = ( \R1|Q\(10) & ( (!\R1|Q\(9) & (!\R1|Q\(11) & !\R1|Q\(8))) # (\R1|Q\(9) & ((\R1|Q\(8)))) ) ) # ( !\R1|Q\(10) & ( (!\R1|Q\(9) & (!\R1|Q\(11) & \R1|Q\(8))) # (\R1|Q\(9) & (\R1|Q\(11) & !\R1|Q\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110001000000100011000100010001000010101011000100001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(9),
	datab => \R1|ALT_INV_Q\(11),
	datad => \R1|ALT_INV_Q\(8),
	dataf => \R1|ALT_INV_Q\(10),
	combout => \D3|Mux3~0_combout\);

-- Location: LABCELL_X41_Y12_N48
\D3|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Mux2~0_combout\ = (!\R1|Q\(11) & (!\R1|Q\(8) & (!\R1|Q\(10) & \R1|Q\(9)))) # (\R1|Q\(11) & (\R1|Q\(10) & ((!\R1|Q\(8)) # (\R1|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(8),
	datab => \R1|ALT_INV_Q\(11),
	datac => \R1|ALT_INV_Q\(10),
	datad => \R1|ALT_INV_Q\(9),
	combout => \D3|Mux2~0_combout\);

-- Location: LABCELL_X41_Y12_N51
\D3|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Mux1~0_combout\ = ( \R1|Q\(9) & ( (!\R1|Q\(8) & ((\R1|Q\(10)))) # (\R1|Q\(8) & (\R1|Q\(11))) ) ) # ( !\R1|Q\(9) & ( (\R1|Q\(10) & (!\R1|Q\(8) $ (!\R1|Q\(11)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011000010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(8),
	datab => \R1|ALT_INV_Q\(11),
	datad => \R1|ALT_INV_Q\(10),
	dataf => \R1|ALT_INV_Q\(9),
	combout => \D3|Mux1~0_combout\);

-- Location: LABCELL_X41_Y12_N6
\D3|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D3|Mux0~0_combout\ = ( \R1|Q\(10) & ( (!\R1|Q\(9) & (!\R1|Q\(8) $ (\R1|Q\(11)))) ) ) # ( !\R1|Q\(10) & ( (\R1|Q\(8) & (!\R1|Q\(9) $ (\R1|Q\(11)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000010001010001000001000110001000010001001000100001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(8),
	datab => \R1|ALT_INV_Q\(9),
	datad => \R1|ALT_INV_Q\(11),
	dataf => \R1|ALT_INV_Q\(10),
	combout => \D3|Mux0~0_combout\);

-- Location: LABCELL_X43_Y12_N51
\D2|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|Mux6~0_combout\ = ( \R1|Q\(5) & ( (!\R1|Q\(6)) # ((!\R1|Q\(4)) # (\R1|Q\(7))) ) ) # ( !\R1|Q\(5) & ( (!\R1|Q\(6) & ((\R1|Q\(7)))) # (\R1|Q\(6) & ((!\R1|Q\(7)) # (\R1|Q\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101101011011010110110101101111101111111011111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(6),
	datab => \R1|ALT_INV_Q\(4),
	datac => \R1|ALT_INV_Q\(7),
	dataf => \R1|ALT_INV_Q\(5),
	combout => \D2|Mux6~0_combout\);

-- Location: LABCELL_X43_Y12_N54
\D2|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|Mux5~0_combout\ = ( \R1|Q\(5) & ( (!\R1|Q\(7) & !\R1|Q\(6)) ) ) # ( !\R1|Q\(5) & ( (\R1|Q\(4) & (!\R1|Q\(7) $ (\R1|Q\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000011000000001100001111000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \R1|ALT_INV_Q\(7),
	datac => \R1|ALT_INV_Q\(6),
	datad => \R1|ALT_INV_Q\(4),
	dataf => \R1|ALT_INV_Q\(5),
	combout => \D2|Mux5~0_combout\);

-- Location: LABCELL_X43_Y12_N57
\D2|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|Mux4~0_combout\ = ( \R1|Q\(5) & ( (!\R1|Q\(7) & \R1|Q\(4)) ) ) # ( !\R1|Q\(5) & ( (!\R1|Q\(6) & ((\R1|Q\(4)))) # (\R1|Q\(6) & (!\R1|Q\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111001001110010011100100111000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(6),
	datab => \R1|ALT_INV_Q\(7),
	datac => \R1|ALT_INV_Q\(4),
	dataf => \R1|ALT_INV_Q\(5),
	combout => \D2|Mux4~0_combout\);

-- Location: LABCELL_X43_Y12_N45
\D2|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|Mux3~0_combout\ = ( \R1|Q\(6) & ( (!\R1|Q\(5) & (!\R1|Q\(7) & !\R1|Q\(4))) # (\R1|Q\(5) & ((\R1|Q\(4)))) ) ) # ( !\R1|Q\(6) & ( (!\R1|Q\(5) & (!\R1|Q\(7) & \R1|Q\(4))) # (\R1|Q\(5) & (\R1|Q\(7) & !\R1|Q\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111000000000000111100000011000000001100111100000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \R1|ALT_INV_Q\(5),
	datac => \R1|ALT_INV_Q\(7),
	datad => \R1|ALT_INV_Q\(4),
	dataf => \R1|ALT_INV_Q\(6),
	combout => \D2|Mux3~0_combout\);

-- Location: LABCELL_X43_Y12_N48
\D2|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|Mux2~0_combout\ = ( \R1|Q\(7) & ( (\R1|Q\(6) & ((!\R1|Q\(4)) # (\R1|Q\(5)))) ) ) # ( !\R1|Q\(7) & ( (!\R1|Q\(6) & (!\R1|Q\(4) & \R1|Q\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100001000100010101010100010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(6),
	datab => \R1|ALT_INV_Q\(4),
	datad => \R1|ALT_INV_Q\(5),
	dataf => \R1|ALT_INV_Q\(7),
	combout => \D2|Mux2~0_combout\);

-- Location: LABCELL_X43_Y12_N33
\D2|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|Mux1~0_combout\ = (!\R1|Q\(5) & (\R1|Q\(6) & (!\R1|Q\(4) $ (!\R1|Q\(7))))) # (\R1|Q\(5) & ((!\R1|Q\(4) & ((\R1|Q\(6)))) # (\R1|Q\(4) & (\R1|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101101000000010110110100000001011011010000000101101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(5),
	datab => \R1|ALT_INV_Q\(4),
	datac => \R1|ALT_INV_Q\(7),
	datad => \R1|ALT_INV_Q\(6),
	combout => \D2|Mux1~0_combout\);

-- Location: LABCELL_X43_Y12_N30
\D2|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D2|Mux0~0_combout\ = (!\R1|Q\(6) & (\R1|Q\(4) & (!\R1|Q\(5) $ (\R1|Q\(7))))) # (\R1|Q\(6) & (!\R1|Q\(5) & (!\R1|Q\(4) $ (\R1|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000010010001010000001001000101000000100100010100000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(5),
	datab => \R1|ALT_INV_Q\(4),
	datac => \R1|ALT_INV_Q\(6),
	datad => \R1|ALT_INV_Q\(7),
	combout => \D2|Mux0~0_combout\);

-- Location: MLABCELL_X42_Y12_N9
\D1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Mux6~0_combout\ = (!\R1|Q\(0) & ((!\R1|Q\(3) $ (!\R1|Q\(2))) # (\R1|Q\(1)))) # (\R1|Q\(0) & ((!\R1|Q\(2) $ (!\R1|Q\(1))) # (\R1|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101111111101010110111111110101011011111111010101101111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(3),
	datab => \R1|ALT_INV_Q\(0),
	datac => \R1|ALT_INV_Q\(2),
	datad => \R1|ALT_INV_Q\(1),
	combout => \D1|Mux6~0_combout\);

-- Location: MLABCELL_X42_Y12_N18
\D1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Mux5~0_combout\ = ( \R1|Q\(3) & ( (\R1|Q\(2) & (\R1|Q\(0) & !\R1|Q\(1))) ) ) # ( !\R1|Q\(3) & ( (!\R1|Q\(2) & ((\R1|Q\(1)) # (\R1|Q\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010101010001000101010101000010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(2),
	datab => \R1|ALT_INV_Q\(0),
	datad => \R1|ALT_INV_Q\(1),
	dataf => \R1|ALT_INV_Q\(3),
	combout => \D1|Mux5~0_combout\);

-- Location: MLABCELL_X42_Y12_N21
\D1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Mux4~0_combout\ = ( \R1|Q\(3) & ( (\R1|Q\(0) & (!\R1|Q\(2) & !\R1|Q\(1))) ) ) # ( !\R1|Q\(3) & ( ((\R1|Q\(2) & !\R1|Q\(1))) # (\R1|Q\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100110011001111110011001100110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \R1|ALT_INV_Q\(0),
	datac => \R1|ALT_INV_Q\(2),
	datad => \R1|ALT_INV_Q\(1),
	dataf => \R1|ALT_INV_Q\(3),
	combout => \D1|Mux4~0_combout\);

-- Location: MLABCELL_X42_Y12_N27
\D1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Mux3~0_combout\ = ( \R1|Q\(3) & ( (\R1|Q\(1) & (!\R1|Q\(0) $ (\R1|Q\(2)))) ) ) # ( !\R1|Q\(3) & ( (!\R1|Q\(1) & (!\R1|Q\(0) $ (!\R1|Q\(2)))) # (\R1|Q\(1) & (\R1|Q\(0) & \R1|Q\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100101000010101010010101010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(1),
	datac => \R1|ALT_INV_Q\(0),
	datad => \R1|ALT_INV_Q\(2),
	dataf => \R1|ALT_INV_Q\(3),
	combout => \D1|Mux3~0_combout\);

-- Location: MLABCELL_X42_Y12_N6
\D1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Mux2~0_combout\ = ( \R1|Q\(0) & ( (\R1|Q\(3) & (\R1|Q\(2) & \R1|Q\(1))) ) ) # ( !\R1|Q\(0) & ( (!\R1|Q\(3) & (!\R1|Q\(2) & \R1|Q\(1))) # (\R1|Q\(3) & (\R1|Q\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110100101000001011010010100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(3),
	datac => \R1|ALT_INV_Q\(2),
	datad => \R1|ALT_INV_Q\(1),
	dataf => \R1|ALT_INV_Q\(0),
	combout => \D1|Mux2~0_combout\);

-- Location: MLABCELL_X42_Y12_N15
\D1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Mux1~0_combout\ = (!\R1|Q\(1) & (\R1|Q\(2) & (!\R1|Q\(0) $ (!\R1|Q\(3))))) # (\R1|Q\(1) & ((!\R1|Q\(0) & ((\R1|Q\(2)))) # (\R1|Q\(0) & (\R1|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101101000000010110110100000001011011010000000101101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(1),
	datab => \R1|ALT_INV_Q\(0),
	datac => \R1|ALT_INV_Q\(3),
	datad => \R1|ALT_INV_Q\(2),
	combout => \D1|Mux1~0_combout\);

-- Location: MLABCELL_X42_Y12_N24
\D1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D1|Mux0~0_combout\ = (!\R1|Q\(2) & (\R1|Q\(0) & (!\R1|Q\(1) $ (\R1|Q\(3))))) # (\R1|Q\(2) & (!\R1|Q\(1) & (!\R1|Q\(0) $ (\R1|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000010010001010000001001000101000000100100010100000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R1|ALT_INV_Q\(1),
	datab => \R1|ALT_INV_Q\(0),
	datac => \R1|ALT_INV_Q\(2),
	datad => \R1|ALT_INV_Q\(3),
	combout => \D1|Mux0~0_combout\);

-- Location: LABCELL_X44_Y28_N3
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


