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

-- DATE "03/20/2017 11:42:18"

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

ENTITY 	Jogo_Reacao IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	inicia : IN std_logic;
	resposta : IN std_logic;
	contaDisplay : IN std_logic;
	estimulo : BUFFER std_logic;
	erro : BUFFER std_logic;
	saida : BUFFER std_logic_vector(27 DOWNTO 0);
	saidaGanhador : BUFFER std_logic_vector(6 DOWNTO 0);
	estado : BUFFER std_logic_vector(1 DOWNTO 0);
	estadoJogo : BUFFER std_logic_vector(1 DOWNTO 0)
	);
END Jogo_Reacao;

-- Design Ports Information
-- estimulo	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- erro	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[0]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[2]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[3]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[4]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[5]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[6]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[7]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[8]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[9]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[10]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[11]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[12]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[13]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[14]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[15]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[16]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[17]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[18]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[19]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[20]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[21]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[22]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[23]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[24]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[25]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[26]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[27]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaGanhador[0]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaGanhador[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaGanhador[2]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaGanhador[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaGanhador[4]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaGanhador[5]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saidaGanhador[6]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[0]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[1]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estadoJogo[0]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estadoJogo[1]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- contaDisplay	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inicia	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Jogo_Reacao IS
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
SIGNAL ww_inicia : std_logic;
SIGNAL ww_resposta : std_logic;
SIGNAL ww_contaDisplay : std_logic;
SIGNAL ww_estimulo : std_logic;
SIGNAL ww_erro : std_logic;
SIGNAL ww_saida : std_logic_vector(27 DOWNTO 0);
SIGNAL ww_saidaGanhador : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_estado : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_estadoJogo : std_logic_vector(1 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \resposta~input_o\ : std_logic;
SIGNAL \Tent|E|Ereg.E_Atraso~feeder_combout\ : std_logic;
SIGNAL \Controle|Eprox.Inicial_154~combout\ : std_logic;
SIGNAL \Controle|Ereg.Inicial~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Controle|Ereg.Inicial~q\ : std_logic;
SIGNAL \Controle|Eprox.Jogador1_142~combout\ : std_logic;
SIGNAL \Controle|Ereg.Jogador1~q\ : std_logic;
SIGNAL \inicia~input_o\ : std_logic;
SIGNAL \Tent|E|estadoJogo~2_combout\ : std_logic;
SIGNAL \Tent|E|Eprox.Fim_107~combout\ : std_logic;
SIGNAL \Tent|E|Ereg.Fim~q\ : std_logic;
SIGNAL \Controle|Selector6~0_combout\ : std_logic;
SIGNAL \Controle|Eprox.Intervalo_130~combout\ : std_logic;
SIGNAL \Controle|Ereg.Intervalo~q\ : std_logic;
SIGNAL \Controle|Eprox.Jogador2_118~combout\ : std_logic;
SIGNAL \Controle|Ereg.Jogador2~q\ : std_logic;
SIGNAL \Controle|WideNor0~combout\ : std_logic;
SIGNAL \Tent|E|Ereg.E_Atraso~q\ : std_logic;
SIGNAL \Tent|C|IQ[0]~0_combout\ : std_logic;
SIGNAL \Tent|C|IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Tent|C|Add0~5_sumout\ : std_logic;
SIGNAL \Tent|C|IQ[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Tent|C|Add0~6\ : std_logic;
SIGNAL \Tent|C|Add0~9_sumout\ : std_logic;
SIGNAL \Tent|C|IQ[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Tent|C|Add0~10\ : std_logic;
SIGNAL \Tent|C|Add0~13_sumout\ : std_logic;
SIGNAL \Tent|C|Add0~14\ : std_logic;
SIGNAL \Tent|C|Add0~17_sumout\ : std_logic;
SIGNAL \Tent|C|Add0~18\ : std_logic;
SIGNAL \Tent|C|Add0~21_sumout\ : std_logic;
SIGNAL \Tent|C|Add0~22\ : std_logic;
SIGNAL \Tent|C|Add0~25_sumout\ : std_logic;
SIGNAL \Tent|C|IQ[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Tent|C|Add0~26\ : std_logic;
SIGNAL \Tent|C|Add0~29_sumout\ : std_logic;
SIGNAL \Tent|C|IQ[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Tent|C|Add0~30\ : std_logic;
SIGNAL \Tent|C|Add0~33_sumout\ : std_logic;
SIGNAL \Tent|C|IQ[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Tent|C|Add0~34\ : std_logic;
SIGNAL \Tent|C|Add0~37_sumout\ : std_logic;
SIGNAL \Tent|C|Add0~38\ : std_logic;
SIGNAL \Tent|C|Add0~41_sumout\ : std_logic;
SIGNAL \Tent|C|Add0~42\ : std_logic;
SIGNAL \Tent|C|Add0~45_sumout\ : std_logic;
SIGNAL \Tent|C|IQ[11]~DUPLICATE_q\ : std_logic;
SIGNAL \Tent|C|Add0~46\ : std_logic;
SIGNAL \Tent|C|Add0~49_sumout\ : std_logic;
SIGNAL \Tent|C|Add0~50\ : std_logic;
SIGNAL \Tent|C|Add0~53_sumout\ : std_logic;
SIGNAL \Tent|C|IQ[13]~DUPLICATE_q\ : std_logic;
SIGNAL \Tent|C|Add0~54\ : std_logic;
SIGNAL \Tent|C|Add0~57_sumout\ : std_logic;
SIGNAL \Tent|C|Add0~58\ : std_logic;
SIGNAL \Tent|C|Add0~1_sumout\ : std_logic;
SIGNAL \Tent|C|IQ[15]~DUPLICATE_q\ : std_logic;
SIGNAL \Random|I~3_combout\ : std_logic;
SIGNAL \Random|I~2_combout\ : std_logic;
SIGNAL \Random|I~1_combout\ : std_logic;
SIGNAL \Random|I~0_combout\ : std_logic;
SIGNAL \Random|k[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Random|k[0]~0_combout\ : std_logic;
SIGNAL \Random|Decoder0~0_combout\ : std_logic;
SIGNAL \Random|k[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Random|s_saida~7_combout\ : std_logic;
SIGNAL \Random|Decoder3~0_combout\ : std_logic;
SIGNAL \Random|k[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Random|s_saida~6_combout\ : std_logic;
SIGNAL \Random|s_saida~30_combout\ : std_logic;
SIGNAL \Random|Decoder0~5_combout\ : std_logic;
SIGNAL \Random|Decoder0~4_combout\ : std_logic;
SIGNAL \Random|Decoder0~3_combout\ : std_logic;
SIGNAL \Random|s_saida~31_combout\ : std_logic;
SIGNAL \Random|s_saida~32_combout\ : std_logic;
SIGNAL \Random|Decoder0~9_combout\ : std_logic;
SIGNAL \Random|Decoder0~7_combout\ : std_logic;
SIGNAL \Random|s_saida~33_combout\ : std_logic;
SIGNAL \Random|s_saida~22_combout\ : std_logic;
SIGNAL \Tent|C|IQ[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Random|s_saida~23_combout\ : std_logic;
SIGNAL \Random|Decoder4~1_combout\ : std_logic;
SIGNAL \Random|Decoder4~0_combout\ : std_logic;
SIGNAL \Random|s_saida~21_combout\ : std_logic;
SIGNAL \Random|s_saida~24_combout\ : std_logic;
SIGNAL \Random|s_saida~25_combout\ : std_logic;
SIGNAL \Random|Decoder0~8_combout\ : std_logic;
SIGNAL \Random|Decoder0~10_combout\ : std_logic;
SIGNAL \Random|Decoder0~6_combout\ : std_logic;
SIGNAL \Random|s_saida~35_combout\ : std_logic;
SIGNAL \Random|s_saida~26_combout\ : std_logic;
SIGNAL \Random|s_saida~34_combout\ : std_logic;
SIGNAL \Random|s_saida~36_combout\ : std_logic;
SIGNAL \Random|s_saida~37_combout\ : std_logic;
SIGNAL \Random|Mux0~0_combout\ : std_logic;
SIGNAL \Random|s_saida~15_combout\ : std_logic;
SIGNAL \Random|Decoder3~1_combout\ : std_logic;
SIGNAL \Random|s_saida~14_combout\ : std_logic;
SIGNAL \Random|s_saida~16_combout\ : std_logic;
SIGNAL \Random|s_saida~17_combout\ : std_logic;
SIGNAL \Random|Decoder0~11_combout\ : std_logic;
SIGNAL \Random|s_saida~38_combout\ : std_logic;
SIGNAL \Random|s_saida~39_combout\ : std_logic;
SIGNAL \Random|s_saida~40_combout\ : std_logic;
SIGNAL \Random|s_saida~41_combout\ : std_logic;
SIGNAL \Random|s_saida~44_combout\ : std_logic;
SIGNAL \Random|s_saida~43_combout\ : std_logic;
SIGNAL \Random|Decoder0~2_combout\ : std_logic;
SIGNAL \Random|s_saida~42_combout\ : std_logic;
SIGNAL \Random|s_saida~45_combout\ : std_logic;
SIGNAL \Random|s_saida~46_combout\ : std_logic;
SIGNAL \Random|s_saida~49_combout\ : std_logic;
SIGNAL \Random|s_saida~47_combout\ : std_logic;
SIGNAL \Random|Decoder0~1_combout\ : std_logic;
SIGNAL \Random|s_saida~48_combout\ : std_logic;
SIGNAL \Random|s_saida~50_combout\ : std_logic;
SIGNAL \Random|s_saida~51_combout\ : std_logic;
SIGNAL \Random|Mux1~0_combout\ : std_logic;
SIGNAL \Random|Mux1~2_combout\ : std_logic;
SIGNAL \Tent|C|IQ[12]~DUPLICATE_q\ : std_logic;
SIGNAL \Random|s_saida~57_combout\ : std_logic;
SIGNAL \Random|s_saida~56_combout\ : std_logic;
SIGNAL \Random|s_saida~58_combout\ : std_logic;
SIGNAL \Random|s_saida~59_combout\ : std_logic;
SIGNAL \Random|s_saida~66_combout\ : std_logic;
SIGNAL \Random|s_saida~65_combout\ : std_logic;
SIGNAL \Random|s_saida~67_combout\ : std_logic;
SIGNAL \Random|s_saida~68_combout\ : std_logic;
SIGNAL \Random|s_saida~69_combout\ : std_logic;
SIGNAL \Random|s_saida~52_combout\ : std_logic;
SIGNAL \Random|s_saida~53_combout\ : std_logic;
SIGNAL \Random|s_saida~54_combout\ : std_logic;
SIGNAL \Random|s_saida~55_combout\ : std_logic;
SIGNAL \Random|Mux1~3_combout\ : std_logic;
SIGNAL \Random|Mux5~0_combout\ : std_logic;
SIGNAL \Random|s_saida~19_combout\ : std_logic;
SIGNAL \Random|s_saida~20_combout\ : std_logic;
SIGNAL \Random|s_saida~18_combout\ : std_logic;
SIGNAL \Random|s_saida~70_combout\ : std_logic;
SIGNAL \Random|s_saida~12_combout\ : std_logic;
SIGNAL \Random|s_saida~13_combout\ : std_logic;
SIGNAL \Random|s_saida~11_combout\ : std_logic;
SIGNAL \Random|s_saida~74_combout\ : std_logic;
SIGNAL \Random|Mux0~2_combout\ : std_logic;
SIGNAL \Random|Mux0~3_combout\ : std_logic;
SIGNAL \Random|Mux4~0_combout\ : std_logic;
SIGNAL \Random|s_saida~0_combout\ : std_logic;
SIGNAL \Random|s_saida~27_combout\ : std_logic;
SIGNAL \Random|s_saida~28_combout\ : std_logic;
SIGNAL \Random|s_saida~29_combout\ : std_logic;
SIGNAL \Random|Add1~1_combout\ : std_logic;
SIGNAL \Random|Add1~0_combout\ : std_logic;
SIGNAL \Random|Mux2~0_combout\ : std_logic;
SIGNAL \Random|Mux2~2_combout\ : std_logic;
SIGNAL \Random|Mux2~1_combout\ : std_logic;
SIGNAL \Random|Mux2~3_combout\ : std_logic;
SIGNAL \Random|Mux2~4_combout\ : std_logic;
SIGNAL \Random|Add2~0_combout\ : std_logic;
SIGNAL \Random|Mux0~5_combout\ : std_logic;
SIGNAL \Random|Mux0~8_combout\ : std_logic;
SIGNAL \Random|Mux0~6_combout\ : std_logic;
SIGNAL \Random|Add2~1_combout\ : std_logic;
SIGNAL \Random|Mux0~10_combout\ : std_logic;
SIGNAL \Random|Mux0~12_combout\ : std_logic;
SIGNAL \Random|Add2~2_combout\ : std_logic;
SIGNAL \Random|Mux0~9_combout\ : std_logic;
SIGNAL \Random|Mux0~11_combout\ : std_logic;
SIGNAL \Random|Mux3~4_combout\ : std_logic;
SIGNAL \Random|Mux0~7_combout\ : std_logic;
SIGNAL \Random|Mux3~0_combout\ : std_logic;
SIGNAL \Random|s_saida~1_combout\ : std_logic;
SIGNAL \Random|s_saida~61_combout\ : std_logic;
SIGNAL \Random|s_saida~60_combout\ : std_logic;
SIGNAL \Random|s_saida~62_combout\ : std_logic;
SIGNAL \Random|s_saida~63_combout\ : std_logic;
SIGNAL \Random|s_saida~64_combout\ : std_logic;
SIGNAL \Random|Mux0~1_combout\ : std_logic;
SIGNAL \Random|Mux0~4_combout\ : std_logic;
SIGNAL \Random|s_saida~8_combout\ : std_logic;
SIGNAL \Random|s_saida~9_combout\ : std_logic;
SIGNAL \Random|s_saida~10_combout\ : std_logic;
SIGNAL \Random|Mux1~1_combout\ : std_logic;
SIGNAL \Random|Mux1~4_combout\ : std_logic;
SIGNAL \Random|s_saida~3_combout\ : std_logic;
SIGNAL \Random|s_saida~2_combout\ : std_logic;
SIGNAL \Random|s_saida~4_combout\ : std_logic;
SIGNAL \Random|s_saida~5_combout\ : std_logic;
SIGNAL \Tent|C|Equal0~0_combout\ : std_logic;
SIGNAL \Tent|C|Equal0~5_combout\ : std_logic;
SIGNAL \Tent|C|Equal0~1_combout\ : std_logic;
SIGNAL \Tent|C|IQ[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Tent|C|Equal0~2_combout\ : std_logic;
SIGNAL \Tent|C|Equal0~3_combout\ : std_logic;
SIGNAL \Tent|C|Equal0~4_combout\ : std_logic;
SIGNAL \Tent|C|Equal0~6_combout\ : std_logic;
SIGNAL \Tent|C|sinal~combout\ : std_logic;
SIGNAL \Tent|E|Selector3~0_combout\ : std_logic;
SIGNAL \Tent|E|Eprox.Aguarda_135~combout\ : std_logic;
SIGNAL \Tent|E|Ereg.Aguarda~q\ : std_logic;
SIGNAL \Tent|E|Selector0~1_combout\ : std_logic;
SIGNAL \Tent|E|Selector0~0_combout\ : std_logic;
SIGNAL \Tent|E|Selector1~0_combout\ : std_logic;
SIGNAL \Tent|E|Eprox.Errado_121~combout\ : std_logic;
SIGNAL \Tent|E|Ereg.Errado~q\ : std_logic;
SIGNAL \contaDisplay~input_o\ : std_logic;
SIGNAL \contaDisplay~inputCLKENA0_outclk\ : std_logic;
SIGNAL \muxD|Equal0~0_combout\ : std_logic;
SIGNAL \muxD|Equal1~0_combout\ : std_logic;
SIGNAL \ContDispl|I[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Tent|R|IQ~97_combout\ : std_logic;
SIGNAL \Tent|R|IQ[0]~1_combout\ : std_logic;
SIGNAL \Tent|R|IQ[0]~3_combout\ : std_logic;
SIGNAL \Tent|R|IQ[0]~_emulated_q\ : std_logic;
SIGNAL \Tent|R|IQ[0]~2_combout\ : std_logic;
SIGNAL \ContDispl|I[0]~DUPLICATE_q\ : std_logic;
SIGNAL \muxD|s_saida[0]~0_combout\ : std_logic;
SIGNAL \Tent|R|IQ~98_combout\ : std_logic;
SIGNAL \Tent|R|IQ[1]~5_combout\ : std_logic;
SIGNAL \Tent|R|Add0~1_sumout\ : std_logic;
SIGNAL \Tent|R|IQ[1]~7_combout\ : std_logic;
SIGNAL \Tent|R|IQ[1]~_emulated_q\ : std_logic;
SIGNAL \Tent|R|IQ[1]~6_combout\ : std_logic;
SIGNAL \muxD|s_saida[1]~1_combout\ : std_logic;
SIGNAL \Tent|R|IQ~100_combout\ : std_logic;
SIGNAL \Tent|R|IQ[3]~13_combout\ : std_logic;
SIGNAL \Tent|R|IQ~99_combout\ : std_logic;
SIGNAL \Tent|R|IQ[2]~9_combout\ : std_logic;
SIGNAL \Tent|R|Add0~2\ : std_logic;
SIGNAL \Tent|R|Add0~5_sumout\ : std_logic;
SIGNAL \Tent|R|IQ[2]~11_combout\ : std_logic;
SIGNAL \Tent|R|IQ[2]~_emulated_q\ : std_logic;
SIGNAL \Tent|R|IQ[2]~10_combout\ : std_logic;
SIGNAL \Tent|R|Add0~6\ : std_logic;
SIGNAL \Tent|R|Add0~9_sumout\ : std_logic;
SIGNAL \Tent|R|IQ[3]~15_combout\ : std_logic;
SIGNAL \Tent|R|IQ[3]~_emulated_q\ : std_logic;
SIGNAL \Tent|R|IQ[3]~14_combout\ : std_logic;
SIGNAL \muxD|s_saida[3]~3_combout\ : std_logic;
SIGNAL \muxD|s_saida[2]~2_combout\ : std_logic;
SIGNAL \DisplayPonto1|Mux6~0_combout\ : std_logic;
SIGNAL \DisplayPonto1|Mux5~0_combout\ : std_logic;
SIGNAL \DisplayPonto1|Mux4~0_combout\ : std_logic;
SIGNAL \DisplayPonto1|Mux3~0_combout\ : std_logic;
SIGNAL \DisplayPonto1|Mux2~0_combout\ : std_logic;
SIGNAL \DisplayPonto1|Mux1~0_combout\ : std_logic;
SIGNAL \DisplayPonto1|Mux0~0_combout\ : std_logic;
SIGNAL \Tent|R|IQ~101_combout\ : std_logic;
SIGNAL \Tent|R|IQ[4]~17_combout\ : std_logic;
SIGNAL \Tent|R|Add0~10\ : std_logic;
SIGNAL \Tent|R|Add0~13_sumout\ : std_logic;
SIGNAL \Tent|R|IQ[4]~19_combout\ : std_logic;
SIGNAL \Tent|R|IQ[4]~_emulated_q\ : std_logic;
SIGNAL \Tent|R|IQ[4]~18_combout\ : std_logic;
SIGNAL \muxD|s_saida[4]~4_combout\ : std_logic;
SIGNAL \Tent|R|IQ~103_combout\ : std_logic;
SIGNAL \Tent|R|IQ[6]~25_combout\ : std_logic;
SIGNAL \Tent|R|IQ~102_combout\ : std_logic;
SIGNAL \Tent|R|IQ[5]~21_combout\ : std_logic;
SIGNAL \Tent|R|Add0~14\ : std_logic;
SIGNAL \Tent|R|Add0~17_sumout\ : std_logic;
SIGNAL \Tent|R|IQ[5]~23_combout\ : std_logic;
SIGNAL \Tent|R|IQ[5]~_emulated_q\ : std_logic;
SIGNAL \Tent|R|IQ[5]~22_combout\ : std_logic;
SIGNAL \Tent|R|Add0~18\ : std_logic;
SIGNAL \Tent|R|Add0~21_sumout\ : std_logic;
SIGNAL \Tent|R|IQ[6]~27_combout\ : std_logic;
SIGNAL \Tent|R|IQ[6]~_emulated_q\ : std_logic;
SIGNAL \Tent|R|IQ[6]~26_combout\ : std_logic;
SIGNAL \muxD|s_saida[6]~6_combout\ : std_logic;
SIGNAL \Tent|R|IQ~104_combout\ : std_logic;
SIGNAL \Tent|R|IQ[7]~29_combout\ : std_logic;
SIGNAL \Tent|R|Add0~22\ : std_logic;
SIGNAL \Tent|R|Add0~25_sumout\ : std_logic;
SIGNAL \Tent|R|IQ[7]~31_combout\ : std_logic;
SIGNAL \Tent|R|IQ[7]~_emulated_q\ : std_logic;
SIGNAL \Tent|R|IQ[7]~30_combout\ : std_logic;
SIGNAL \muxD|s_saida[7]~7_combout\ : std_logic;
SIGNAL \muxD|s_saida[5]~5_combout\ : std_logic;
SIGNAL \DisplayPonto2|Mux6~0_combout\ : std_logic;
SIGNAL \DisplayPonto2|Mux5~0_combout\ : std_logic;
SIGNAL \DisplayPonto2|Mux4~0_combout\ : std_logic;
SIGNAL \DisplayPonto2|Mux3~0_combout\ : std_logic;
SIGNAL \DisplayPonto2|Mux2~0_combout\ : std_logic;
SIGNAL \DisplayPonto2|Mux1~0_combout\ : std_logic;
SIGNAL \DisplayPonto2|Mux0~0_combout\ : std_logic;
SIGNAL \Tent|R|IQ~106_combout\ : std_logic;
SIGNAL \Tent|R|IQ[9]~37_combout\ : std_logic;
SIGNAL \Tent|R|IQ~105_combout\ : std_logic;
SIGNAL \Tent|R|IQ[8]~33_combout\ : std_logic;
SIGNAL \Tent|R|Add0~26\ : std_logic;
SIGNAL \Tent|R|Add0~29_sumout\ : std_logic;
SIGNAL \Tent|R|IQ[8]~35_combout\ : std_logic;
SIGNAL \Tent|R|IQ[8]~_emulated_q\ : std_logic;
SIGNAL \Tent|R|IQ[8]~34_combout\ : std_logic;
SIGNAL \Tent|R|Add0~30\ : std_logic;
SIGNAL \Tent|R|Add0~33_sumout\ : std_logic;
SIGNAL \Tent|R|IQ[9]~39_combout\ : std_logic;
SIGNAL \Tent|R|IQ[9]~_emulated_q\ : std_logic;
SIGNAL \Tent|R|IQ[9]~38_combout\ : std_logic;
SIGNAL \muxD|s_saida[9]~9_combout\ : std_logic;
SIGNAL \Tent|R|IQ~107_combout\ : std_logic;
SIGNAL \Tent|R|IQ[10]~41_combout\ : std_logic;
SIGNAL \Tent|R|Add0~34\ : std_logic;
SIGNAL \Tent|R|Add0~37_sumout\ : std_logic;
SIGNAL \Tent|R|IQ[10]~43_combout\ : std_logic;
SIGNAL \Tent|R|IQ[10]~_emulated_q\ : std_logic;
SIGNAL \Tent|R|IQ[10]~42_combout\ : std_logic;
SIGNAL \muxD|s_saida[10]~10_combout\ : std_logic;
SIGNAL \muxD|s_saida[8]~8_combout\ : std_logic;
SIGNAL \Tent|R|IQ~108_combout\ : std_logic;
SIGNAL \Tent|R|IQ[11]~45_combout\ : std_logic;
SIGNAL \Tent|R|Add0~38\ : std_logic;
SIGNAL \Tent|R|Add0~41_sumout\ : std_logic;
SIGNAL \Tent|R|IQ[11]~47_combout\ : std_logic;
SIGNAL \Tent|R|IQ[11]~_emulated_q\ : std_logic;
SIGNAL \Tent|R|IQ[11]~46_combout\ : std_logic;
SIGNAL \muxD|s_saida[11]~11_combout\ : std_logic;
SIGNAL \DisplayPonto3|Mux6~0_combout\ : std_logic;
SIGNAL \DisplayPonto3|Mux5~0_combout\ : std_logic;
SIGNAL \DisplayPonto3|Mux4~0_combout\ : std_logic;
SIGNAL \DisplayPonto3|Mux3~0_combout\ : std_logic;
SIGNAL \DisplayPonto3|Mux2~0_combout\ : std_logic;
SIGNAL \DisplayPonto3|Mux1~0_combout\ : std_logic;
SIGNAL \DisplayPonto3|Mux0~0_combout\ : std_logic;
SIGNAL \Tent|R|IQ~111_combout\ : std_logic;
SIGNAL \Tent|R|IQ[14]~57_combout\ : std_logic;
SIGNAL \Tent|R|IQ~110_combout\ : std_logic;
SIGNAL \Tent|R|IQ[13]~53_combout\ : std_logic;
SIGNAL \Tent|R|IQ~109_combout\ : std_logic;
SIGNAL \Tent|R|IQ[12]~49_combout\ : std_logic;
SIGNAL \Tent|R|Add0~42\ : std_logic;
SIGNAL \Tent|R|Add0~45_sumout\ : std_logic;
SIGNAL \Tent|R|IQ[12]~51_combout\ : std_logic;
SIGNAL \Tent|R|IQ[12]~_emulated_q\ : std_logic;
SIGNAL \Tent|R|IQ[12]~50_combout\ : std_logic;
SIGNAL \Tent|R|Add0~46\ : std_logic;
SIGNAL \Tent|R|Add0~49_sumout\ : std_logic;
SIGNAL \Tent|R|IQ[13]~55_combout\ : std_logic;
SIGNAL \Tent|R|IQ[13]~_emulated_q\ : std_logic;
SIGNAL \Tent|R|IQ[13]~54_combout\ : std_logic;
SIGNAL \Tent|R|Add0~50\ : std_logic;
SIGNAL \Tent|R|Add0~53_sumout\ : std_logic;
SIGNAL \Tent|R|IQ[14]~59_combout\ : std_logic;
SIGNAL \Tent|R|IQ[14]~_emulated_q\ : std_logic;
SIGNAL \Tent|R|IQ[14]~58_combout\ : std_logic;
SIGNAL \muxD|s_saida[14]~14_combout\ : std_logic;
SIGNAL \muxD|s_saida[13]~13_combout\ : std_logic;
SIGNAL \muxD|s_saida[12]~12_combout\ : std_logic;
SIGNAL \Tent|R|IQ~112_combout\ : std_logic;
SIGNAL \Tent|R|IQ[15]~61_combout\ : std_logic;
SIGNAL \Tent|R|Add0~54\ : std_logic;
SIGNAL \Tent|R|Add0~57_sumout\ : std_logic;
SIGNAL \Tent|R|IQ[15]~63_combout\ : std_logic;
SIGNAL \Tent|R|IQ[15]~_emulated_q\ : std_logic;
SIGNAL \Tent|R|IQ[15]~62_combout\ : std_logic;
SIGNAL \muxD|s_saida[15]~15_combout\ : std_logic;
SIGNAL \DisplayPonto4|Mux6~0_combout\ : std_logic;
SIGNAL \DisplayPonto4|Mux5~0_combout\ : std_logic;
SIGNAL \DisplayPonto4|Mux4~0_combout\ : std_logic;
SIGNAL \DisplayPonto4|Mux3~0_combout\ : std_logic;
SIGNAL \DisplayPonto4|Mux2~0_combout\ : std_logic;
SIGNAL \DisplayPonto4|Mux1~0_combout\ : std_logic;
SIGNAL \DisplayPonto4|Mux0~0_combout\ : std_logic;
SIGNAL \Controle|Selector5~0_combout\ : std_logic;
SIGNAL \Tent|E|estadoJogo~3_combout\ : std_logic;
SIGNAL \Tent|D|saida1\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Tent|D|saida2\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Random|I\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Controle|estado\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Random|k\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Random|s_saida\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Tent|C|IQ\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ContDispl|I\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Random|ALT_INV_k[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Random|ALT_INV_k[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Random|ALT_INV_k[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Tent|C|ALT_INV_IQ[13]~DUPLICATE_q\ : std_logic;
SIGNAL \Tent|C|ALT_INV_IQ[12]~DUPLICATE_q\ : std_logic;
SIGNAL \Tent|C|ALT_INV_IQ[11]~DUPLICATE_q\ : std_logic;
SIGNAL \Tent|C|ALT_INV_IQ[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Tent|C|ALT_INV_IQ[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Tent|C|ALT_INV_IQ[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Tent|C|ALT_INV_IQ[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Tent|C|ALT_INV_IQ[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Tent|C|ALT_INV_IQ[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Tent|C|ALT_INV_IQ[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Tent|C|ALT_INV_IQ[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Tent|C|ALT_INV_IQ[15]~DUPLICATE_q\ : std_logic;
SIGNAL \ContDispl|ALT_INV_I[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ContDispl|ALT_INV_I[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_resposta~input_o\ : std_logic;
SIGNAL \ALT_INV_inicia~input_o\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[15]~61_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[14]~57_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[13]~53_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[12]~49_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[11]~45_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[10]~41_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[9]~37_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[8]~33_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[7]~29_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[6]~25_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[5]~21_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[4]~17_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[3]~13_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[2]~9_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[1]~5_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[0]~1_combout\ : std_logic;
SIGNAL \Controle|ALT_INV_Eprox.Intervalo_130~combout\ : std_logic;
SIGNAL \Controle|ALT_INV_Eprox.Inicial_154~combout\ : std_logic;
SIGNAL \Tent|E|ALT_INV_Eprox.Fim_107~combout\ : std_logic;
SIGNAL \Controle|ALT_INV_Eprox.Jogador2_118~combout\ : std_logic;
SIGNAL \Controle|ALT_INV_Eprox.Jogador1_142~combout\ : std_logic;
SIGNAL \Tent|C|ALT_INV_sinal~combout\ : std_logic;
SIGNAL \Tent|E|ALT_INV_Eprox.Aguarda_135~combout\ : std_logic;
SIGNAL \Tent|E|ALT_INV_Eprox.Errado_121~combout\ : std_logic;
SIGNAL \Controle|ALT_INV_estado\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Tent|D|ALT_INV_saida1\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Tent|D|ALT_INV_saida2\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Random|ALT_INV_Mux0~12_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Add2~2_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Mux0~11_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Mux0~10_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Mux0~9_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Mux0~8_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Add2~1_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Add2~0_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Mux0~7_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Mux0~6_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Mux0~5_combout\ : std_logic;
SIGNAL \Random|ALT_INV_I\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Tent|R|ALT_INV_IQ~112_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ~111_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ~110_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ~109_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ~108_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ~107_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ~106_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ~105_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ~104_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ~103_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ~102_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ~101_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ~100_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ~99_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ~98_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ~97_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~68_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~67_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~66_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~65_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~63_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~62_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~61_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~60_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~58_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~57_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~56_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~54_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~53_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~52_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~50_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~49_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~48_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~47_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~45_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~44_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~43_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~42_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~40_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~39_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~38_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Decoder0~11_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~36_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~35_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~34_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Decoder0~10_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~32_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~31_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~30_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Decoder0~9_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~28_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~27_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~26_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Decoder0~8_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~24_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~23_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~22_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~21_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Decoder0~7_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~20_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~19_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~18_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Decoder0~6_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~16_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~15_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~14_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Decoder0~5_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~13_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~12_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~11_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Decoder0~4_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~9_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~8_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~7_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~6_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Decoder3~1_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Decoder4~1_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Decoder0~3_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~4_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~3_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~2_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Decoder0~2_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Decoder0~1_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Mux1~4_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Decoder0~0_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Decoder3~0_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Decoder4~0_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~1_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Mux2~4_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Mux2~3_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Add1~1_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida~0_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Mux1~3_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \Random|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \Random|ALT_INV_k\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Tent|R|ALT_INV_IQ[15]~62_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[15]~_emulated_q\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[14]~58_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[14]~_emulated_q\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[13]~54_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[13]~_emulated_q\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[12]~50_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[12]~_emulated_q\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[11]~46_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[11]~_emulated_q\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[10]~42_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[10]~_emulated_q\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[9]~38_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[9]~_emulated_q\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[8]~34_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[8]~_emulated_q\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[7]~30_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[7]~_emulated_q\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[6]~26_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[6]~_emulated_q\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[5]~22_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[5]~_emulated_q\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[4]~18_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[4]~_emulated_q\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[3]~14_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[3]~_emulated_q\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[2]~10_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[2]~_emulated_q\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[1]~6_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[1]~_emulated_q\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[0]~2_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_IQ[0]~_emulated_q\ : std_logic;
SIGNAL \Tent|E|ALT_INV_Selector0~1_combout\ : std_logic;
SIGNAL \Tent|C|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \Tent|C|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \Random|ALT_INV_s_saida\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Tent|C|ALT_INV_IQ\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Tent|C|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \Tent|C|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \Tent|C|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \Tent|C|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \Tent|C|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \Tent|E|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \Tent|E|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \Tent|E|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \Controle|ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \Controle|ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \Controle|ALT_INV_Ereg.Intervalo~q\ : std_logic;
SIGNAL \Controle|ALT_INV_Ereg.Inicial~q\ : std_logic;
SIGNAL \Tent|E|ALT_INV_Ereg.Fim~q\ : std_logic;
SIGNAL \Controle|ALT_INV_WideNor0~combout\ : std_logic;
SIGNAL \Controle|ALT_INV_Ereg.Jogador2~q\ : std_logic;
SIGNAL \Controle|ALT_INV_Ereg.Jogador1~q\ : std_logic;
SIGNAL \Tent|E|ALT_INV_estadoJogo~3_combout\ : std_logic;
SIGNAL \Tent|E|ALT_INV_Ereg.Aguarda~q\ : std_logic;
SIGNAL \Tent|E|ALT_INV_estadoJogo~2_combout\ : std_logic;
SIGNAL \Tent|E|ALT_INV_Ereg.E_Atraso~q\ : std_logic;
SIGNAL \DisplayPonto4|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \muxD|ALT_INV_s_saida[15]~15_combout\ : std_logic;
SIGNAL \muxD|ALT_INV_s_saida[14]~14_combout\ : std_logic;
SIGNAL \muxD|ALT_INV_s_saida[13]~13_combout\ : std_logic;
SIGNAL \muxD|ALT_INV_s_saida[12]~12_combout\ : std_logic;
SIGNAL \DisplayPonto3|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \muxD|ALT_INV_s_saida[11]~11_combout\ : std_logic;
SIGNAL \muxD|ALT_INV_s_saida[10]~10_combout\ : std_logic;
SIGNAL \muxD|ALT_INV_s_saida[9]~9_combout\ : std_logic;
SIGNAL \muxD|ALT_INV_s_saida[8]~8_combout\ : std_logic;
SIGNAL \DisplayPonto2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \muxD|ALT_INV_s_saida[7]~7_combout\ : std_logic;
SIGNAL \muxD|ALT_INV_s_saida[6]~6_combout\ : std_logic;
SIGNAL \muxD|ALT_INV_s_saida[5]~5_combout\ : std_logic;
SIGNAL \muxD|ALT_INV_s_saida[4]~4_combout\ : std_logic;
SIGNAL \DisplayPonto1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \muxD|ALT_INV_s_saida[3]~3_combout\ : std_logic;
SIGNAL \muxD|ALT_INV_s_saida[2]~2_combout\ : std_logic;
SIGNAL \muxD|ALT_INV_s_saida[1]~1_combout\ : std_logic;
SIGNAL \muxD|ALT_INV_s_saida[0]~0_combout\ : std_logic;
SIGNAL \ContDispl|ALT_INV_I\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Tent|E|ALT_INV_Ereg.Errado~q\ : std_logic;
SIGNAL \Random|ALT_INV_Mux3~4_combout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \Tent|R|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \Random|ALT_INV_Mux3~0_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_inicia <= inicia;
ww_resposta <= resposta;
ww_contaDisplay <= contaDisplay;
estimulo <= ww_estimulo;
erro <= ww_erro;
saida <= ww_saida;
saidaGanhador <= ww_saidaGanhador;
estado <= ww_estado;
estadoJogo <= ww_estadoJogo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Random|ALT_INV_k[0]~DUPLICATE_q\ <= NOT \Random|k[0]~DUPLICATE_q\;
\Random|ALT_INV_k[1]~DUPLICATE_q\ <= NOT \Random|k[1]~DUPLICATE_q\;
\Random|ALT_INV_k[3]~DUPLICATE_q\ <= NOT \Random|k[3]~DUPLICATE_q\;
\Tent|C|ALT_INV_IQ[13]~DUPLICATE_q\ <= NOT \Tent|C|IQ[13]~DUPLICATE_q\;
\Tent|C|ALT_INV_IQ[12]~DUPLICATE_q\ <= NOT \Tent|C|IQ[12]~DUPLICATE_q\;
\Tent|C|ALT_INV_IQ[11]~DUPLICATE_q\ <= NOT \Tent|C|IQ[11]~DUPLICATE_q\;
\Tent|C|ALT_INV_IQ[8]~DUPLICATE_q\ <= NOT \Tent|C|IQ[8]~DUPLICATE_q\;
\Tent|C|ALT_INV_IQ[7]~DUPLICATE_q\ <= NOT \Tent|C|IQ[7]~DUPLICATE_q\;
\Tent|C|ALT_INV_IQ[6]~DUPLICATE_q\ <= NOT \Tent|C|IQ[6]~DUPLICATE_q\;
\Tent|C|ALT_INV_IQ[4]~DUPLICATE_q\ <= NOT \Tent|C|IQ[4]~DUPLICATE_q\;
\Tent|C|ALT_INV_IQ[3]~DUPLICATE_q\ <= NOT \Tent|C|IQ[3]~DUPLICATE_q\;
\Tent|C|ALT_INV_IQ[2]~DUPLICATE_q\ <= NOT \Tent|C|IQ[2]~DUPLICATE_q\;
\Tent|C|ALT_INV_IQ[1]~DUPLICATE_q\ <= NOT \Tent|C|IQ[1]~DUPLICATE_q\;
\Tent|C|ALT_INV_IQ[0]~DUPLICATE_q\ <= NOT \Tent|C|IQ[0]~DUPLICATE_q\;
\Tent|C|ALT_INV_IQ[15]~DUPLICATE_q\ <= NOT \Tent|C|IQ[15]~DUPLICATE_q\;
\ContDispl|ALT_INV_I[1]~DUPLICATE_q\ <= NOT \ContDispl|I[1]~DUPLICATE_q\;
\ContDispl|ALT_INV_I[0]~DUPLICATE_q\ <= NOT \ContDispl|I[0]~DUPLICATE_q\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_resposta~input_o\ <= NOT \resposta~input_o\;
\ALT_INV_inicia~input_o\ <= NOT \inicia~input_o\;
\Tent|R|ALT_INV_IQ[15]~61_combout\ <= NOT \Tent|R|IQ[15]~61_combout\;
\Tent|R|ALT_INV_IQ[14]~57_combout\ <= NOT \Tent|R|IQ[14]~57_combout\;
\Tent|R|ALT_INV_IQ[13]~53_combout\ <= NOT \Tent|R|IQ[13]~53_combout\;
\Tent|R|ALT_INV_IQ[12]~49_combout\ <= NOT \Tent|R|IQ[12]~49_combout\;
\Tent|R|ALT_INV_IQ[11]~45_combout\ <= NOT \Tent|R|IQ[11]~45_combout\;
\Tent|R|ALT_INV_IQ[10]~41_combout\ <= NOT \Tent|R|IQ[10]~41_combout\;
\Tent|R|ALT_INV_IQ[9]~37_combout\ <= NOT \Tent|R|IQ[9]~37_combout\;
\Tent|R|ALT_INV_IQ[8]~33_combout\ <= NOT \Tent|R|IQ[8]~33_combout\;
\Tent|R|ALT_INV_IQ[7]~29_combout\ <= NOT \Tent|R|IQ[7]~29_combout\;
\Tent|R|ALT_INV_IQ[6]~25_combout\ <= NOT \Tent|R|IQ[6]~25_combout\;
\Tent|R|ALT_INV_IQ[5]~21_combout\ <= NOT \Tent|R|IQ[5]~21_combout\;
\Tent|R|ALT_INV_IQ[4]~17_combout\ <= NOT \Tent|R|IQ[4]~17_combout\;
\Tent|R|ALT_INV_IQ[3]~13_combout\ <= NOT \Tent|R|IQ[3]~13_combout\;
\Tent|R|ALT_INV_IQ[2]~9_combout\ <= NOT \Tent|R|IQ[2]~9_combout\;
\Tent|R|ALT_INV_IQ[1]~5_combout\ <= NOT \Tent|R|IQ[1]~5_combout\;
\Tent|R|ALT_INV_IQ[0]~1_combout\ <= NOT \Tent|R|IQ[0]~1_combout\;
\Controle|ALT_INV_Eprox.Intervalo_130~combout\ <= NOT \Controle|Eprox.Intervalo_130~combout\;
\Controle|ALT_INV_Eprox.Inicial_154~combout\ <= NOT \Controle|Eprox.Inicial_154~combout\;
\Tent|E|ALT_INV_Eprox.Fim_107~combout\ <= NOT \Tent|E|Eprox.Fim_107~combout\;
\Controle|ALT_INV_Eprox.Jogador2_118~combout\ <= NOT \Controle|Eprox.Jogador2_118~combout\;
\Controle|ALT_INV_Eprox.Jogador1_142~combout\ <= NOT \Controle|Eprox.Jogador1_142~combout\;
\Tent|C|ALT_INV_sinal~combout\ <= NOT \Tent|C|sinal~combout\;
\Tent|E|ALT_INV_Eprox.Aguarda_135~combout\ <= NOT \Tent|E|Eprox.Aguarda_135~combout\;
\Tent|E|ALT_INV_Eprox.Errado_121~combout\ <= NOT \Tent|E|Eprox.Errado_121~combout\;
\Controle|ALT_INV_estado\(1) <= NOT \Controle|estado\(1);
\Controle|ALT_INV_estado\(0) <= NOT \Controle|estado\(0);
\Tent|D|ALT_INV_saida1\(15) <= NOT \Tent|D|saida1\(15);
\Tent|D|ALT_INV_saida2\(15) <= NOT \Tent|D|saida2\(15);
\Tent|D|ALT_INV_saida1\(14) <= NOT \Tent|D|saida1\(14);
\Tent|D|ALT_INV_saida2\(14) <= NOT \Tent|D|saida2\(14);
\Tent|D|ALT_INV_saida1\(13) <= NOT \Tent|D|saida1\(13);
\Tent|D|ALT_INV_saida2\(13) <= NOT \Tent|D|saida2\(13);
\Tent|D|ALT_INV_saida1\(12) <= NOT \Tent|D|saida1\(12);
\Tent|D|ALT_INV_saida2\(12) <= NOT \Tent|D|saida2\(12);
\Tent|D|ALT_INV_saida1\(11) <= NOT \Tent|D|saida1\(11);
\Tent|D|ALT_INV_saida2\(11) <= NOT \Tent|D|saida2\(11);
\Tent|D|ALT_INV_saida1\(10) <= NOT \Tent|D|saida1\(10);
\Tent|D|ALT_INV_saida2\(10) <= NOT \Tent|D|saida2\(10);
\Tent|D|ALT_INV_saida1\(9) <= NOT \Tent|D|saida1\(9);
\Tent|D|ALT_INV_saida2\(9) <= NOT \Tent|D|saida2\(9);
\Tent|D|ALT_INV_saida1\(8) <= NOT \Tent|D|saida1\(8);
\Tent|D|ALT_INV_saida2\(8) <= NOT \Tent|D|saida2\(8);
\Tent|D|ALT_INV_saida1\(7) <= NOT \Tent|D|saida1\(7);
\Tent|D|ALT_INV_saida2\(7) <= NOT \Tent|D|saida2\(7);
\Tent|D|ALT_INV_saida1\(6) <= NOT \Tent|D|saida1\(6);
\Tent|D|ALT_INV_saida2\(6) <= NOT \Tent|D|saida2\(6);
\Tent|D|ALT_INV_saida1\(5) <= NOT \Tent|D|saida1\(5);
\Tent|D|ALT_INV_saida2\(5) <= NOT \Tent|D|saida2\(5);
\Tent|D|ALT_INV_saida1\(4) <= NOT \Tent|D|saida1\(4);
\Tent|D|ALT_INV_saida2\(4) <= NOT \Tent|D|saida2\(4);
\Tent|D|ALT_INV_saida1\(3) <= NOT \Tent|D|saida1\(3);
\Tent|D|ALT_INV_saida2\(3) <= NOT \Tent|D|saida2\(3);
\Tent|D|ALT_INV_saida1\(2) <= NOT \Tent|D|saida1\(2);
\Tent|D|ALT_INV_saida2\(2) <= NOT \Tent|D|saida2\(2);
\Tent|D|ALT_INV_saida1\(1) <= NOT \Tent|D|saida1\(1);
\Tent|D|ALT_INV_saida2\(1) <= NOT \Tent|D|saida2\(1);
\Tent|D|ALT_INV_saida1\(0) <= NOT \Tent|D|saida1\(0);
\Tent|D|ALT_INV_saida2\(0) <= NOT \Tent|D|saida2\(0);
\Random|ALT_INV_Mux0~12_combout\ <= NOT \Random|Mux0~12_combout\;
\Random|ALT_INV_Add2~2_combout\ <= NOT \Random|Add2~2_combout\;
\Random|ALT_INV_Mux0~11_combout\ <= NOT \Random|Mux0~11_combout\;
\Random|ALT_INV_Mux0~10_combout\ <= NOT \Random|Mux0~10_combout\;
\Random|ALT_INV_Mux0~9_combout\ <= NOT \Random|Mux0~9_combout\;
\Random|ALT_INV_Mux0~8_combout\ <= NOT \Random|Mux0~8_combout\;
\Random|ALT_INV_Add2~1_combout\ <= NOT \Random|Add2~1_combout\;
\Random|ALT_INV_Add2~0_combout\ <= NOT \Random|Add2~0_combout\;
\Random|ALT_INV_Mux0~7_combout\ <= NOT \Random|Mux0~7_combout\;
\Random|ALT_INV_Mux0~6_combout\ <= NOT \Random|Mux0~6_combout\;
\Random|ALT_INV_Mux0~5_combout\ <= NOT \Random|Mux0~5_combout\;
\Random|ALT_INV_I\(0) <= NOT \Random|I\(0);
\Random|ALT_INV_I\(1) <= NOT \Random|I\(1);
\Random|ALT_INV_I\(2) <= NOT \Random|I\(2);
\Random|ALT_INV_I\(3) <= NOT \Random|I\(3);
\Tent|R|ALT_INV_IQ~112_combout\ <= NOT \Tent|R|IQ~112_combout\;
\Tent|R|ALT_INV_IQ~111_combout\ <= NOT \Tent|R|IQ~111_combout\;
\Tent|R|ALT_INV_IQ~110_combout\ <= NOT \Tent|R|IQ~110_combout\;
\Tent|R|ALT_INV_IQ~109_combout\ <= NOT \Tent|R|IQ~109_combout\;
\Tent|R|ALT_INV_IQ~108_combout\ <= NOT \Tent|R|IQ~108_combout\;
\Tent|R|ALT_INV_IQ~107_combout\ <= NOT \Tent|R|IQ~107_combout\;
\Tent|R|ALT_INV_IQ~106_combout\ <= NOT \Tent|R|IQ~106_combout\;
\Tent|R|ALT_INV_IQ~105_combout\ <= NOT \Tent|R|IQ~105_combout\;
\Tent|R|ALT_INV_IQ~104_combout\ <= NOT \Tent|R|IQ~104_combout\;
\Tent|R|ALT_INV_IQ~103_combout\ <= NOT \Tent|R|IQ~103_combout\;
\Tent|R|ALT_INV_IQ~102_combout\ <= NOT \Tent|R|IQ~102_combout\;
\Tent|R|ALT_INV_IQ~101_combout\ <= NOT \Tent|R|IQ~101_combout\;
\Tent|R|ALT_INV_IQ~100_combout\ <= NOT \Tent|R|IQ~100_combout\;
\Tent|R|ALT_INV_IQ~99_combout\ <= NOT \Tent|R|IQ~99_combout\;
\Tent|R|ALT_INV_IQ~98_combout\ <= NOT \Tent|R|IQ~98_combout\;
\Tent|R|ALT_INV_IQ~97_combout\ <= NOT \Tent|R|IQ~97_combout\;
\Random|ALT_INV_s_saida~68_combout\ <= NOT \Random|s_saida~68_combout\;
\Random|ALT_INV_s_saida~67_combout\ <= NOT \Random|s_saida~67_combout\;
\Random|ALT_INV_s_saida~66_combout\ <= NOT \Random|s_saida~66_combout\;
\Random|ALT_INV_s_saida~65_combout\ <= NOT \Random|s_saida~65_combout\;
\Random|ALT_INV_s_saida~63_combout\ <= NOT \Random|s_saida~63_combout\;
\Random|ALT_INV_s_saida~62_combout\ <= NOT \Random|s_saida~62_combout\;
\Random|ALT_INV_s_saida~61_combout\ <= NOT \Random|s_saida~61_combout\;
\Random|ALT_INV_s_saida~60_combout\ <= NOT \Random|s_saida~60_combout\;
\Random|ALT_INV_s_saida~58_combout\ <= NOT \Random|s_saida~58_combout\;
\Random|ALT_INV_s_saida~57_combout\ <= NOT \Random|s_saida~57_combout\;
\Random|ALT_INV_s_saida~56_combout\ <= NOT \Random|s_saida~56_combout\;
\Random|ALT_INV_s_saida~54_combout\ <= NOT \Random|s_saida~54_combout\;
\Random|ALT_INV_s_saida~53_combout\ <= NOT \Random|s_saida~53_combout\;
\Random|ALT_INV_s_saida~52_combout\ <= NOT \Random|s_saida~52_combout\;
\Random|ALT_INV_s_saida~50_combout\ <= NOT \Random|s_saida~50_combout\;
\Random|ALT_INV_s_saida~49_combout\ <= NOT \Random|s_saida~49_combout\;
\Random|ALT_INV_s_saida~48_combout\ <= NOT \Random|s_saida~48_combout\;
\Random|ALT_INV_s_saida~47_combout\ <= NOT \Random|s_saida~47_combout\;
\Random|ALT_INV_s_saida~45_combout\ <= NOT \Random|s_saida~45_combout\;
\Random|ALT_INV_s_saida~44_combout\ <= NOT \Random|s_saida~44_combout\;
\Random|ALT_INV_s_saida~43_combout\ <= NOT \Random|s_saida~43_combout\;
\Random|ALT_INV_s_saida~42_combout\ <= NOT \Random|s_saida~42_combout\;
\Random|ALT_INV_s_saida~40_combout\ <= NOT \Random|s_saida~40_combout\;
\Random|ALT_INV_s_saida~39_combout\ <= NOT \Random|s_saida~39_combout\;
\Random|ALT_INV_s_saida~38_combout\ <= NOT \Random|s_saida~38_combout\;
\Random|ALT_INV_Decoder0~11_combout\ <= NOT \Random|Decoder0~11_combout\;
\Random|ALT_INV_s_saida~36_combout\ <= NOT \Random|s_saida~36_combout\;
\Random|ALT_INV_s_saida~35_combout\ <= NOT \Random|s_saida~35_combout\;
\Random|ALT_INV_s_saida~34_combout\ <= NOT \Random|s_saida~34_combout\;
\Random|ALT_INV_Decoder0~10_combout\ <= NOT \Random|Decoder0~10_combout\;
\Random|ALT_INV_s_saida~32_combout\ <= NOT \Random|s_saida~32_combout\;
\Random|ALT_INV_s_saida~31_combout\ <= NOT \Random|s_saida~31_combout\;
\Random|ALT_INV_s_saida~30_combout\ <= NOT \Random|s_saida~30_combout\;
\Random|ALT_INV_Decoder0~9_combout\ <= NOT \Random|Decoder0~9_combout\;
\Random|ALT_INV_s_saida~28_combout\ <= NOT \Random|s_saida~28_combout\;
\Random|ALT_INV_s_saida~27_combout\ <= NOT \Random|s_saida~27_combout\;
\Random|ALT_INV_s_saida~26_combout\ <= NOT \Random|s_saida~26_combout\;
\Random|ALT_INV_Decoder0~8_combout\ <= NOT \Random|Decoder0~8_combout\;
\Random|ALT_INV_s_saida~24_combout\ <= NOT \Random|s_saida~24_combout\;
\Random|ALT_INV_s_saida~23_combout\ <= NOT \Random|s_saida~23_combout\;
\Random|ALT_INV_s_saida~22_combout\ <= NOT \Random|s_saida~22_combout\;
\Random|ALT_INV_s_saida~21_combout\ <= NOT \Random|s_saida~21_combout\;
\Random|ALT_INV_Decoder0~7_combout\ <= NOT \Random|Decoder0~7_combout\;
\Random|ALT_INV_s_saida~20_combout\ <= NOT \Random|s_saida~20_combout\;
\Random|ALT_INV_s_saida~19_combout\ <= NOT \Random|s_saida~19_combout\;
\Random|ALT_INV_s_saida~18_combout\ <= NOT \Random|s_saida~18_combout\;
\Random|ALT_INV_Decoder0~6_combout\ <= NOT \Random|Decoder0~6_combout\;
\Random|ALT_INV_s_saida~16_combout\ <= NOT \Random|s_saida~16_combout\;
\Random|ALT_INV_s_saida~15_combout\ <= NOT \Random|s_saida~15_combout\;
\Random|ALT_INV_s_saida~14_combout\ <= NOT \Random|s_saida~14_combout\;
\Random|ALT_INV_Decoder0~5_combout\ <= NOT \Random|Decoder0~5_combout\;
\Random|ALT_INV_s_saida~13_combout\ <= NOT \Random|s_saida~13_combout\;
\Random|ALT_INV_s_saida~12_combout\ <= NOT \Random|s_saida~12_combout\;
\Random|ALT_INV_s_saida~11_combout\ <= NOT \Random|s_saida~11_combout\;
\Random|ALT_INV_Decoder0~4_combout\ <= NOT \Random|Decoder0~4_combout\;
\Random|ALT_INV_s_saida~9_combout\ <= NOT \Random|s_saida~9_combout\;
\Random|ALT_INV_s_saida~8_combout\ <= NOT \Random|s_saida~8_combout\;
\Random|ALT_INV_s_saida~7_combout\ <= NOT \Random|s_saida~7_combout\;
\Random|ALT_INV_s_saida~6_combout\ <= NOT \Random|s_saida~6_combout\;
\Random|ALT_INV_Decoder3~1_combout\ <= NOT \Random|Decoder3~1_combout\;
\Random|ALT_INV_Decoder4~1_combout\ <= NOT \Random|Decoder4~1_combout\;
\Random|ALT_INV_Decoder0~3_combout\ <= NOT \Random|Decoder0~3_combout\;
\Random|ALT_INV_s_saida~4_combout\ <= NOT \Random|s_saida~4_combout\;
\Random|ALT_INV_s_saida~3_combout\ <= NOT \Random|s_saida~3_combout\;
\Random|ALT_INV_s_saida~2_combout\ <= NOT \Random|s_saida~2_combout\;
\Random|ALT_INV_Decoder0~2_combout\ <= NOT \Random|Decoder0~2_combout\;
\Random|ALT_INV_Decoder0~1_combout\ <= NOT \Random|Decoder0~1_combout\;
\Random|ALT_INV_Mux1~4_combout\ <= NOT \Random|Mux1~4_combout\;
\Random|ALT_INV_Mux0~4_combout\ <= NOT \Random|Mux0~4_combout\;
\Random|ALT_INV_Decoder0~0_combout\ <= NOT \Random|Decoder0~0_combout\;
\Random|ALT_INV_Decoder3~0_combout\ <= NOT \Random|Decoder3~0_combout\;
\Random|ALT_INV_Decoder4~0_combout\ <= NOT \Random|Decoder4~0_combout\;
\Random|ALT_INV_s_saida~1_combout\ <= NOT \Random|s_saida~1_combout\;
\Random|ALT_INV_Mux2~4_combout\ <= NOT \Random|Mux2~4_combout\;
\Random|ALT_INV_Mux2~3_combout\ <= NOT \Random|Mux2~3_combout\;
\Random|ALT_INV_Mux2~2_combout\ <= NOT \Random|Mux2~2_combout\;
\Random|ALT_INV_Mux2~1_combout\ <= NOT \Random|Mux2~1_combout\;
\Random|ALT_INV_Mux2~0_combout\ <= NOT \Random|Mux2~0_combout\;
\Random|ALT_INV_Add1~1_combout\ <= NOT \Random|Add1~1_combout\;
\Random|ALT_INV_Add1~0_combout\ <= NOT \Random|Add1~0_combout\;
\Random|ALT_INV_s_saida~0_combout\ <= NOT \Random|s_saida~0_combout\;
\Random|ALT_INV_Mux5~0_combout\ <= NOT \Random|Mux5~0_combout\;
\Random|ALT_INV_Mux1~3_combout\ <= NOT \Random|Mux1~3_combout\;
\Random|ALT_INV_Mux1~2_combout\ <= NOT \Random|Mux1~2_combout\;
\Random|ALT_INV_Mux1~1_combout\ <= NOT \Random|Mux1~1_combout\;
\Random|ALT_INV_Mux1~0_combout\ <= NOT \Random|Mux1~0_combout\;
\Random|ALT_INV_Mux4~0_combout\ <= NOT \Random|Mux4~0_combout\;
\Random|ALT_INV_Mux0~3_combout\ <= NOT \Random|Mux0~3_combout\;
\Random|ALT_INV_Mux0~2_combout\ <= NOT \Random|Mux0~2_combout\;
\Random|ALT_INV_Mux0~1_combout\ <= NOT \Random|Mux0~1_combout\;
\Random|ALT_INV_Mux0~0_combout\ <= NOT \Random|Mux0~0_combout\;
\Random|ALT_INV_k\(0) <= NOT \Random|k\(0);
\Random|ALT_INV_k\(1) <= NOT \Random|k\(1);
\Random|ALT_INV_k\(2) <= NOT \Random|k\(2);
\Random|ALT_INV_k\(3) <= NOT \Random|k\(3);
\Tent|R|ALT_INV_IQ[15]~62_combout\ <= NOT \Tent|R|IQ[15]~62_combout\;
\Tent|R|ALT_INV_IQ[15]~_emulated_q\ <= NOT \Tent|R|IQ[15]~_emulated_q\;
\Tent|R|ALT_INV_IQ[14]~58_combout\ <= NOT \Tent|R|IQ[14]~58_combout\;
\Tent|R|ALT_INV_IQ[14]~_emulated_q\ <= NOT \Tent|R|IQ[14]~_emulated_q\;
\Tent|R|ALT_INV_IQ[13]~54_combout\ <= NOT \Tent|R|IQ[13]~54_combout\;
\Tent|R|ALT_INV_IQ[13]~_emulated_q\ <= NOT \Tent|R|IQ[13]~_emulated_q\;
\Tent|R|ALT_INV_IQ[12]~50_combout\ <= NOT \Tent|R|IQ[12]~50_combout\;
\Tent|R|ALT_INV_IQ[12]~_emulated_q\ <= NOT \Tent|R|IQ[12]~_emulated_q\;
\Tent|R|ALT_INV_IQ[11]~46_combout\ <= NOT \Tent|R|IQ[11]~46_combout\;
\Tent|R|ALT_INV_IQ[11]~_emulated_q\ <= NOT \Tent|R|IQ[11]~_emulated_q\;
\Tent|R|ALT_INV_IQ[10]~42_combout\ <= NOT \Tent|R|IQ[10]~42_combout\;
\Tent|R|ALT_INV_IQ[10]~_emulated_q\ <= NOT \Tent|R|IQ[10]~_emulated_q\;
\Tent|R|ALT_INV_IQ[9]~38_combout\ <= NOT \Tent|R|IQ[9]~38_combout\;
\Tent|R|ALT_INV_IQ[9]~_emulated_q\ <= NOT \Tent|R|IQ[9]~_emulated_q\;
\Tent|R|ALT_INV_IQ[8]~34_combout\ <= NOT \Tent|R|IQ[8]~34_combout\;
\Tent|R|ALT_INV_IQ[8]~_emulated_q\ <= NOT \Tent|R|IQ[8]~_emulated_q\;
\Tent|R|ALT_INV_IQ[7]~30_combout\ <= NOT \Tent|R|IQ[7]~30_combout\;
\Tent|R|ALT_INV_IQ[7]~_emulated_q\ <= NOT \Tent|R|IQ[7]~_emulated_q\;
\Tent|R|ALT_INV_IQ[6]~26_combout\ <= NOT \Tent|R|IQ[6]~26_combout\;
\Tent|R|ALT_INV_IQ[6]~_emulated_q\ <= NOT \Tent|R|IQ[6]~_emulated_q\;
\Tent|R|ALT_INV_IQ[5]~22_combout\ <= NOT \Tent|R|IQ[5]~22_combout\;
\Tent|R|ALT_INV_IQ[5]~_emulated_q\ <= NOT \Tent|R|IQ[5]~_emulated_q\;
\Tent|R|ALT_INV_IQ[4]~18_combout\ <= NOT \Tent|R|IQ[4]~18_combout\;
\Tent|R|ALT_INV_IQ[4]~_emulated_q\ <= NOT \Tent|R|IQ[4]~_emulated_q\;
\Tent|R|ALT_INV_IQ[3]~14_combout\ <= NOT \Tent|R|IQ[3]~14_combout\;
\Tent|R|ALT_INV_IQ[3]~_emulated_q\ <= NOT \Tent|R|IQ[3]~_emulated_q\;
\Tent|R|ALT_INV_IQ[2]~10_combout\ <= NOT \Tent|R|IQ[2]~10_combout\;
\Tent|R|ALT_INV_IQ[2]~_emulated_q\ <= NOT \Tent|R|IQ[2]~_emulated_q\;
\Tent|R|ALT_INV_IQ[1]~6_combout\ <= NOT \Tent|R|IQ[1]~6_combout\;
\Tent|R|ALT_INV_IQ[1]~_emulated_q\ <= NOT \Tent|R|IQ[1]~_emulated_q\;
\Tent|R|ALT_INV_IQ[0]~2_combout\ <= NOT \Tent|R|IQ[0]~2_combout\;
\Tent|R|ALT_INV_IQ[0]~_emulated_q\ <= NOT \Tent|R|IQ[0]~_emulated_q\;
\Tent|E|ALT_INV_Selector0~1_combout\ <= NOT \Tent|E|Selector0~1_combout\;
\Tent|C|ALT_INV_Equal0~6_combout\ <= NOT \Tent|C|Equal0~6_combout\;
\Tent|C|ALT_INV_Equal0~5_combout\ <= NOT \Tent|C|Equal0~5_combout\;
\Random|ALT_INV_s_saida\(14) <= NOT \Random|s_saida\(14);
\Tent|C|ALT_INV_IQ\(14) <= NOT \Tent|C|IQ\(14);
\Random|ALT_INV_s_saida\(13) <= NOT \Random|s_saida\(13);
\Tent|C|ALT_INV_IQ\(13) <= NOT \Tent|C|IQ\(13);
\Random|ALT_INV_s_saida\(12) <= NOT \Random|s_saida\(12);
\Tent|C|ALT_INV_IQ\(12) <= NOT \Tent|C|IQ\(12);
\Tent|C|ALT_INV_Equal0~4_combout\ <= NOT \Tent|C|Equal0~4_combout\;
\Random|ALT_INV_s_saida\(11) <= NOT \Random|s_saida\(11);
\Tent|C|ALT_INV_IQ\(11) <= NOT \Tent|C|IQ\(11);
\Random|ALT_INV_s_saida\(10) <= NOT \Random|s_saida\(10);
\Tent|C|ALT_INV_IQ\(10) <= NOT \Tent|C|IQ\(10);
\Random|ALT_INV_s_saida\(9) <= NOT \Random|s_saida\(9);
\Tent|C|ALT_INV_IQ\(9) <= NOT \Tent|C|IQ\(9);
\Tent|C|ALT_INV_Equal0~3_combout\ <= NOT \Tent|C|Equal0~3_combout\;
\Random|ALT_INV_s_saida\(8) <= NOT \Random|s_saida\(8);
\Tent|C|ALT_INV_IQ\(8) <= NOT \Tent|C|IQ\(8);
\Random|ALT_INV_s_saida\(7) <= NOT \Random|s_saida\(7);
\Tent|C|ALT_INV_IQ\(7) <= NOT \Tent|C|IQ\(7);
\Random|ALT_INV_s_saida\(6) <= NOT \Random|s_saida\(6);
\Tent|C|ALT_INV_IQ\(6) <= NOT \Tent|C|IQ\(6);
\Tent|C|ALT_INV_Equal0~2_combout\ <= NOT \Tent|C|Equal0~2_combout\;
\Random|ALT_INV_s_saida\(5) <= NOT \Random|s_saida\(5);
\Tent|C|ALT_INV_IQ\(5) <= NOT \Tent|C|IQ\(5);
\Random|ALT_INV_s_saida\(4) <= NOT \Random|s_saida\(4);
\Tent|C|ALT_INV_IQ\(4) <= NOT \Tent|C|IQ\(4);
\Random|ALT_INV_s_saida\(3) <= NOT \Random|s_saida\(3);
\Tent|C|ALT_INV_IQ\(3) <= NOT \Tent|C|IQ\(3);
\Tent|C|ALT_INV_Equal0~1_combout\ <= NOT \Tent|C|Equal0~1_combout\;
\Random|ALT_INV_s_saida\(2) <= NOT \Random|s_saida\(2);
\Tent|C|ALT_INV_IQ\(2) <= NOT \Tent|C|IQ\(2);
\Random|ALT_INV_s_saida\(1) <= NOT \Random|s_saida\(1);
\Tent|C|ALT_INV_IQ\(1) <= NOT \Tent|C|IQ\(1);
\Random|ALT_INV_s_saida\(0) <= NOT \Random|s_saida\(0);
\Tent|C|ALT_INV_IQ\(0) <= NOT \Tent|C|IQ\(0);
\Tent|C|ALT_INV_Equal0~0_combout\ <= NOT \Tent|C|Equal0~0_combout\;
\Random|ALT_INV_s_saida\(15) <= NOT \Random|s_saida\(15);
\Tent|C|ALT_INV_IQ\(15) <= NOT \Tent|C|IQ\(15);
\Tent|E|ALT_INV_Selector3~0_combout\ <= NOT \Tent|E|Selector3~0_combout\;
\Tent|E|ALT_INV_Selector0~0_combout\ <= NOT \Tent|E|Selector0~0_combout\;
\Tent|E|ALT_INV_Selector1~0_combout\ <= NOT \Tent|E|Selector1~0_combout\;
\Controle|ALT_INV_Selector5~0_combout\ <= NOT \Controle|Selector5~0_combout\;
\Controle|ALT_INV_Selector6~0_combout\ <= NOT \Controle|Selector6~0_combout\;
\Controle|ALT_INV_Ereg.Intervalo~q\ <= NOT \Controle|Ereg.Intervalo~q\;
\Controle|ALT_INV_Ereg.Inicial~q\ <= NOT \Controle|Ereg.Inicial~q\;
\Tent|E|ALT_INV_Ereg.Fim~q\ <= NOT \Tent|E|Ereg.Fim~q\;
\Controle|ALT_INV_WideNor0~combout\ <= NOT \Controle|WideNor0~combout\;
\Controle|ALT_INV_Ereg.Jogador2~q\ <= NOT \Controle|Ereg.Jogador2~q\;
\Controle|ALT_INV_Ereg.Jogador1~q\ <= NOT \Controle|Ereg.Jogador1~q\;
\Tent|E|ALT_INV_estadoJogo~3_combout\ <= NOT \Tent|E|estadoJogo~3_combout\;
\Tent|E|ALT_INV_Ereg.Aguarda~q\ <= NOT \Tent|E|Ereg.Aguarda~q\;
\Tent|E|ALT_INV_estadoJogo~2_combout\ <= NOT \Tent|E|estadoJogo~2_combout\;
\Tent|E|ALT_INV_Ereg.E_Atraso~q\ <= NOT \Tent|E|Ereg.E_Atraso~q\;
\DisplayPonto4|ALT_INV_Mux6~0_combout\ <= NOT \DisplayPonto4|Mux6~0_combout\;
\muxD|ALT_INV_s_saida[15]~15_combout\ <= NOT \muxD|s_saida[15]~15_combout\;
\muxD|ALT_INV_s_saida[14]~14_combout\ <= NOT \muxD|s_saida[14]~14_combout\;
\muxD|ALT_INV_s_saida[13]~13_combout\ <= NOT \muxD|s_saida[13]~13_combout\;
\muxD|ALT_INV_s_saida[12]~12_combout\ <= NOT \muxD|s_saida[12]~12_combout\;
\DisplayPonto3|ALT_INV_Mux6~0_combout\ <= NOT \DisplayPonto3|Mux6~0_combout\;
\muxD|ALT_INV_s_saida[11]~11_combout\ <= NOT \muxD|s_saida[11]~11_combout\;
\muxD|ALT_INV_s_saida[10]~10_combout\ <= NOT \muxD|s_saida[10]~10_combout\;
\muxD|ALT_INV_s_saida[9]~9_combout\ <= NOT \muxD|s_saida[9]~9_combout\;
\muxD|ALT_INV_s_saida[8]~8_combout\ <= NOT \muxD|s_saida[8]~8_combout\;
\DisplayPonto2|ALT_INV_Mux6~0_combout\ <= NOT \DisplayPonto2|Mux6~0_combout\;
\muxD|ALT_INV_s_saida[7]~7_combout\ <= NOT \muxD|s_saida[7]~7_combout\;
\muxD|ALT_INV_s_saida[6]~6_combout\ <= NOT \muxD|s_saida[6]~6_combout\;
\muxD|ALT_INV_s_saida[5]~5_combout\ <= NOT \muxD|s_saida[5]~5_combout\;
\muxD|ALT_INV_s_saida[4]~4_combout\ <= NOT \muxD|s_saida[4]~4_combout\;
\DisplayPonto1|ALT_INV_Mux6~0_combout\ <= NOT \DisplayPonto1|Mux6~0_combout\;
\muxD|ALT_INV_s_saida[3]~3_combout\ <= NOT \muxD|s_saida[3]~3_combout\;
\muxD|ALT_INV_s_saida[2]~2_combout\ <= NOT \muxD|s_saida[2]~2_combout\;
\muxD|ALT_INV_s_saida[1]~1_combout\ <= NOT \muxD|s_saida[1]~1_combout\;
\muxD|ALT_INV_s_saida[0]~0_combout\ <= NOT \muxD|s_saida[0]~0_combout\;
\ContDispl|ALT_INV_I\(1) <= NOT \ContDispl|I\(1);
\ContDispl|ALT_INV_I\(0) <= NOT \ContDispl|I\(0);
\Tent|E|ALT_INV_Ereg.Errado~q\ <= NOT \Tent|E|Ereg.Errado~q\;
\Random|ALT_INV_Mux3~4_combout\ <= NOT \Random|Mux3~4_combout\;
\Tent|R|ALT_INV_Add0~57_sumout\ <= NOT \Tent|R|Add0~57_sumout\;
\Tent|R|ALT_INV_Add0~53_sumout\ <= NOT \Tent|R|Add0~53_sumout\;
\Tent|R|ALT_INV_Add0~49_sumout\ <= NOT \Tent|R|Add0~49_sumout\;
\Tent|R|ALT_INV_Add0~45_sumout\ <= NOT \Tent|R|Add0~45_sumout\;
\Tent|R|ALT_INV_Add0~41_sumout\ <= NOT \Tent|R|Add0~41_sumout\;
\Tent|R|ALT_INV_Add0~37_sumout\ <= NOT \Tent|R|Add0~37_sumout\;
\Tent|R|ALT_INV_Add0~33_sumout\ <= NOT \Tent|R|Add0~33_sumout\;
\Tent|R|ALT_INV_Add0~29_sumout\ <= NOT \Tent|R|Add0~29_sumout\;
\Tent|R|ALT_INV_Add0~25_sumout\ <= NOT \Tent|R|Add0~25_sumout\;
\Tent|R|ALT_INV_Add0~21_sumout\ <= NOT \Tent|R|Add0~21_sumout\;
\Tent|R|ALT_INV_Add0~17_sumout\ <= NOT \Tent|R|Add0~17_sumout\;
\Tent|R|ALT_INV_Add0~13_sumout\ <= NOT \Tent|R|Add0~13_sumout\;
\Tent|R|ALT_INV_Add0~9_sumout\ <= NOT \Tent|R|Add0~9_sumout\;
\Tent|R|ALT_INV_Add0~5_sumout\ <= NOT \Tent|R|Add0~5_sumout\;
\Tent|R|ALT_INV_Add0~1_sumout\ <= NOT \Tent|R|Add0~1_sumout\;
\Random|ALT_INV_Mux3~0_combout\ <= NOT \Random|Mux3~0_combout\;

-- Location: IOOBUF_X89_Y37_N5
\estimulo~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_estimulo);

-- Location: IOOBUF_X89_Y8_N39
\erro~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Tent|E|Ereg.Errado~q\,
	devoe => ww_devoe,
	o => ww_erro);

-- Location: IOOBUF_X78_Y81_N36
\saida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DisplayPonto1|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(0));

-- Location: IOOBUF_X80_Y81_N36
\saida[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DisplayPonto1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(1));

-- Location: IOOBUF_X78_Y81_N2
\saida[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DisplayPonto1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(2));

-- Location: IOOBUF_X70_Y0_N36
\saida[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DisplayPonto1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(3));

-- Location: IOOBUF_X89_Y38_N39
\saida[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DisplayPonto1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(4));

-- Location: IOOBUF_X72_Y0_N53
\saida[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DisplayPonto1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(5));

-- Location: IOOBUF_X78_Y81_N19
\saida[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DisplayPonto1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(6));

-- Location: IOOBUF_X89_Y38_N22
\saida[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DisplayPonto2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(7));

-- Location: IOOBUF_X72_Y0_N19
\saida[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DisplayPonto2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(8));

-- Location: IOOBUF_X89_Y38_N5
\saida[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DisplayPonto2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(9));

-- Location: IOOBUF_X78_Y81_N53
\saida[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DisplayPonto2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(10));

-- Location: IOOBUF_X89_Y38_N56
\saida[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DisplayPonto2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(11));

-- Location: IOOBUF_X89_Y37_N56
\saida[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DisplayPonto2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(12));

-- Location: IOOBUF_X89_Y9_N5
\saida[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DisplayPonto2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(13));

-- Location: IOOBUF_X76_Y81_N19
\saida[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DisplayPonto3|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(14));

-- Location: IOOBUF_X89_Y36_N39
\saida[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DisplayPonto3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(15));

-- Location: IOOBUF_X89_Y36_N56
\saida[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DisplayPonto3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(16));

-- Location: IOOBUF_X89_Y9_N22
\saida[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DisplayPonto3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(17));

-- Location: IOOBUF_X89_Y9_N56
\saida[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DisplayPonto3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(18));

-- Location: IOOBUF_X89_Y36_N5
\saida[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DisplayPonto3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(19));

-- Location: IOOBUF_X70_Y0_N19
\saida[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DisplayPonto3|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(20));

-- Location: IOOBUF_X89_Y8_N22
\saida[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DisplayPonto4|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(21));

-- Location: IOOBUF_X89_Y6_N39
\saida[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DisplayPonto4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(22));

-- Location: IOOBUF_X89_Y6_N5
\saida[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DisplayPonto4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(23));

-- Location: IOOBUF_X72_Y0_N36
\saida[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DisplayPonto4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(24));

-- Location: IOOBUF_X89_Y6_N22
\saida[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DisplayPonto4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(25));

-- Location: IOOBUF_X89_Y6_N56
\saida[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DisplayPonto4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(26));

-- Location: IOOBUF_X89_Y35_N79
\saida[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DisplayPonto4|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(27));

-- Location: IOOBUF_X38_Y81_N36
\saidaGanhador[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_saidaGanhador(0));

-- Location: IOOBUF_X32_Y81_N2
\saidaGanhador[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_saidaGanhador(1));

-- Location: IOOBUF_X50_Y0_N76
\saidaGanhador[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_saidaGanhador(2));

-- Location: IOOBUF_X68_Y81_N53
\saidaGanhador[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_saidaGanhador(3));

-- Location: IOOBUF_X60_Y81_N53
\saidaGanhador[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saidaGanhador(4));

-- Location: IOOBUF_X68_Y81_N36
\saidaGanhador[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saidaGanhador(5));

-- Location: IOOBUF_X6_Y0_N19
\saidaGanhador[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_saidaGanhador(6));

-- Location: IOOBUF_X89_Y36_N22
\estado[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Controle|estado\(0),
	devoe => ww_devoe,
	o => ww_estado(0));

-- Location: IOOBUF_X89_Y37_N22
\estado[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Controle|estado\(1),
	devoe => ww_devoe,
	o => ww_estado(1));

-- Location: IOOBUF_X72_Y0_N2
\estadoJogo[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Tent|E|ALT_INV_estadoJogo~2_combout\,
	devoe => ww_devoe,
	o => ww_estadoJogo(0));

-- Location: IOOBUF_X89_Y8_N56
\estadoJogo[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Tent|E|ALT_INV_estadoJogo~3_combout\,
	devoe => ww_devoe,
	o => ww_estadoJogo(1));

-- Location: IOIBUF_X89_Y35_N44
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

-- Location: IOIBUF_X89_Y9_N38
\resposta~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resposta,
	o => \resposta~input_o\);

-- Location: LABCELL_X80_Y22_N9
\Tent|E|Ereg.E_Atraso~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|E|Ereg.E_Atraso~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \Tent|E|Ereg.E_Atraso~feeder_combout\);

-- Location: LABCELL_X81_Y22_N51
\Controle|Eprox.Inicial_154\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controle|Eprox.Inicial_154~combout\ = ( \Controle|Eprox.Inicial_154~combout\ & ( (!\Controle|Selector6~0_combout\) # (\Controle|Ereg.Jogador2~q\) ) ) # ( !\Controle|Eprox.Inicial_154~combout\ & ( (\Controle|Ereg.Jogador2~q\ & 
-- \Controle|Selector6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Controle|ALT_INV_Ereg.Jogador2~q\,
	datad => \Controle|ALT_INV_Selector6~0_combout\,
	dataf => \Controle|ALT_INV_Eprox.Inicial_154~combout\,
	combout => \Controle|Eprox.Inicial_154~combout\);

-- Location: LABCELL_X81_Y22_N18
\Controle|Ereg.Inicial~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controle|Ereg.Inicial~0_combout\ = ( !\Controle|Eprox.Inicial_154~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Controle|ALT_INV_Eprox.Inicial_154~combout\,
	combout => \Controle|Ereg.Inicial~0_combout\);

-- Location: IOIBUF_X89_Y8_N4
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X81_Y22_N20
\Controle|Ereg.Inicial\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Controle|Ereg.Inicial~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controle|Ereg.Inicial~q\);

-- Location: LABCELL_X81_Y22_N21
\Controle|Eprox.Jogador1_142\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controle|Eprox.Jogador1_142~combout\ = ( \Controle|Ereg.Inicial~q\ & ( (\Controle|Eprox.Jogador1_142~combout\ & !\Controle|Selector6~0_combout\) ) ) # ( !\Controle|Ereg.Inicial~q\ & ( (\Controle|Selector6~0_combout\) # 
-- (\Controle|Eprox.Jogador1_142~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Controle|ALT_INV_Eprox.Jogador1_142~combout\,
	datad => \Controle|ALT_INV_Selector6~0_combout\,
	dataf => \Controle|ALT_INV_Ereg.Inicial~q\,
	combout => \Controle|Eprox.Jogador1_142~combout\);

-- Location: FF_X81_Y22_N23
\Controle|Ereg.Jogador1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Controle|Eprox.Jogador1_142~combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controle|Ereg.Jogador1~q\);

-- Location: IOIBUF_X89_Y35_N95
\inicia~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inicia,
	o => \inicia~input_o\);

-- Location: LABCELL_X80_Y22_N3
\Tent|E|estadoJogo~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|E|estadoJogo~2_combout\ = ( \Tent|E|Ereg.E_Atraso~q\ & ( \Tent|E|Ereg.Errado~q\ ) ) # ( !\Tent|E|Ereg.E_Atraso~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tent|E|ALT_INV_Ereg.Errado~q\,
	dataf => \Tent|E|ALT_INV_Ereg.E_Atraso~q\,
	combout => \Tent|E|estadoJogo~2_combout\);

-- Location: LABCELL_X80_Y22_N0
\Tent|E|Eprox.Fim_107\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|E|Eprox.Fim_107~combout\ = ( \Tent|E|estadoJogo~2_combout\ & ( (\Tent|E|Eprox.Fim_107~combout\ & !\Tent|E|Selector0~0_combout\) ) ) # ( !\Tent|E|estadoJogo~2_combout\ & ( (\Tent|E|Selector0~0_combout\) # (\Tent|E|Eprox.Fim_107~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Tent|E|ALT_INV_Eprox.Fim_107~combout\,
	datad => \Tent|E|ALT_INV_Selector0~0_combout\,
	dataf => \Tent|E|ALT_INV_estadoJogo~2_combout\,
	combout => \Tent|E|Eprox.Fim_107~combout\);

-- Location: FF_X80_Y22_N1
\Tent|E|Ereg.Fim\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|E|Eprox.Fim_107~combout\,
	clrn => \Controle|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|E|Ereg.Fim~q\);

-- Location: LABCELL_X81_Y22_N54
\Controle|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controle|Selector6~0_combout\ = ( \Controle|Ereg.Jogador2~q\ & ( \Tent|E|Ereg.Fim~q\ ) ) # ( !\Controle|Ereg.Jogador2~q\ & ( \Tent|E|Ereg.Fim~q\ & ( ((\inicia~input_o\ & ((!\Controle|Ereg.Inicial~q\) # (\Controle|Ereg.Intervalo~q\)))) # 
-- (\Controle|Ereg.Jogador1~q\) ) ) ) # ( \Controle|Ereg.Jogador2~q\ & ( !\Tent|E|Ereg.Fim~q\ & ( (\inicia~input_o\ & ((!\Controle|Ereg.Inicial~q\) # (\Controle|Ereg.Intervalo~q\))) ) ) ) # ( !\Controle|Ereg.Jogador2~q\ & ( !\Tent|E|Ereg.Fim~q\ & ( 
-- (\inicia~input_o\ & ((!\Controle|Ereg.Inicial~q\) # (\Controle|Ereg.Intervalo~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110101000000001111010100110011111101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Controle|ALT_INV_Ereg.Intervalo~q\,
	datab => \Controle|ALT_INV_Ereg.Jogador1~q\,
	datac => \Controle|ALT_INV_Ereg.Inicial~q\,
	datad => \ALT_INV_inicia~input_o\,
	datae => \Controle|ALT_INV_Ereg.Jogador2~q\,
	dataf => \Tent|E|ALT_INV_Ereg.Fim~q\,
	combout => \Controle|Selector6~0_combout\);

-- Location: LABCELL_X81_Y22_N48
\Controle|Eprox.Intervalo_130\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controle|Eprox.Intervalo_130~combout\ = ( \Controle|Ereg.Jogador1~q\ & ( (\Controle|Eprox.Intervalo_130~combout\) # (\Controle|Selector6~0_combout\) ) ) # ( !\Controle|Ereg.Jogador1~q\ & ( (!\Controle|Selector6~0_combout\ & 
-- \Controle|Eprox.Intervalo_130~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Controle|ALT_INV_Selector6~0_combout\,
	datad => \Controle|ALT_INV_Eprox.Intervalo_130~combout\,
	dataf => \Controle|ALT_INV_Ereg.Jogador1~q\,
	combout => \Controle|Eprox.Intervalo_130~combout\);

-- Location: FF_X81_Y22_N50
\Controle|Ereg.Intervalo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Controle|Eprox.Intervalo_130~combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controle|Ereg.Intervalo~q\);

-- Location: LABCELL_X81_Y24_N48
\Controle|Eprox.Jogador2_118\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controle|Eprox.Jogador2_118~combout\ = ( \Controle|Selector6~0_combout\ & ( \Controle|Ereg.Intervalo~q\ ) ) # ( !\Controle|Selector6~0_combout\ & ( \Controle|Eprox.Jogador2_118~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Controle|ALT_INV_Ereg.Intervalo~q\,
	datad => \Controle|ALT_INV_Eprox.Jogador2_118~combout\,
	dataf => \Controle|ALT_INV_Selector6~0_combout\,
	combout => \Controle|Eprox.Jogador2_118~combout\);

-- Location: FF_X81_Y24_N50
\Controle|Ereg.Jogador2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Controle|Eprox.Jogador2_118~combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controle|Ereg.Jogador2~q\);

-- Location: LABCELL_X81_Y24_N30
\Controle|WideNor0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controle|WideNor0~combout\ = ( \Controle|Ereg.Jogador1~q\ ) # ( !\Controle|Ereg.Jogador1~q\ & ( \Controle|Ereg.Jogador2~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Controle|ALT_INV_Ereg.Jogador2~q\,
	dataf => \Controle|ALT_INV_Ereg.Jogador1~q\,
	combout => \Controle|WideNor0~combout\);

-- Location: FF_X80_Y22_N11
\Tent|E|Ereg.E_Atraso\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|E|Ereg.E_Atraso~feeder_combout\,
	clrn => \Controle|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|E|Ereg.E_Atraso~q\);

-- Location: FF_X82_Y25_N44
\Tent|C|IQ[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|C|Add0~1_sumout\,
	clrn => \Controle|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|C|IQ\(15));

-- Location: LABCELL_X81_Y25_N21
\Tent|C|IQ[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|C|IQ[0]~0_combout\ = ( !\Tent|C|IQ[0]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Tent|C|ALT_INV_IQ[0]~DUPLICATE_q\,
	combout => \Tent|C|IQ[0]~0_combout\);

-- Location: FF_X82_Y25_N56
\Tent|C|IQ[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Tent|C|IQ[0]~0_combout\,
	clrn => \Controle|WideNor0~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|C|IQ[0]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y25_N0
\Tent|C|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|C|Add0~5_sumout\ = SUM(( \Tent|C|IQ[1]~DUPLICATE_q\ ) + ( \Tent|C|IQ[0]~DUPLICATE_q\ ) + ( !VCC ))
-- \Tent|C|Add0~6\ = CARRY(( \Tent|C|IQ[1]~DUPLICATE_q\ ) + ( \Tent|C|IQ[0]~DUPLICATE_q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Tent|C|ALT_INV_IQ[0]~DUPLICATE_q\,
	datad => \Tent|C|ALT_INV_IQ[1]~DUPLICATE_q\,
	cin => GND,
	sumout => \Tent|C|Add0~5_sumout\,
	cout => \Tent|C|Add0~6\);

-- Location: FF_X82_Y25_N1
\Tent|C|IQ[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|C|Add0~5_sumout\,
	clrn => \Controle|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|C|IQ[1]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y25_N3
\Tent|C|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|C|Add0~9_sumout\ = SUM(( \Tent|C|IQ[2]~DUPLICATE_q\ ) + ( GND ) + ( \Tent|C|Add0~6\ ))
-- \Tent|C|Add0~10\ = CARRY(( \Tent|C|IQ[2]~DUPLICATE_q\ ) + ( GND ) + ( \Tent|C|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Tent|C|ALT_INV_IQ[2]~DUPLICATE_q\,
	cin => \Tent|C|Add0~6\,
	sumout => \Tent|C|Add0~9_sumout\,
	cout => \Tent|C|Add0~10\);

-- Location: FF_X82_Y25_N5
\Tent|C|IQ[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|C|Add0~9_sumout\,
	clrn => \Controle|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|C|IQ[2]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y25_N6
\Tent|C|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|C|Add0~13_sumout\ = SUM(( \Tent|C|IQ\(3) ) + ( GND ) + ( \Tent|C|Add0~10\ ))
-- \Tent|C|Add0~14\ = CARRY(( \Tent|C|IQ\(3) ) + ( GND ) + ( \Tent|C|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Tent|C|ALT_INV_IQ\(3),
	cin => \Tent|C|Add0~10\,
	sumout => \Tent|C|Add0~13_sumout\,
	cout => \Tent|C|Add0~14\);

-- Location: FF_X82_Y25_N7
\Tent|C|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|C|Add0~13_sumout\,
	clrn => \Controle|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|C|IQ\(3));

-- Location: MLABCELL_X82_Y25_N9
\Tent|C|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|C|Add0~17_sumout\ = SUM(( \Tent|C|IQ\(4) ) + ( GND ) + ( \Tent|C|Add0~14\ ))
-- \Tent|C|Add0~18\ = CARRY(( \Tent|C|IQ\(4) ) + ( GND ) + ( \Tent|C|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Tent|C|ALT_INV_IQ\(4),
	cin => \Tent|C|Add0~14\,
	sumout => \Tent|C|Add0~17_sumout\,
	cout => \Tent|C|Add0~18\);

-- Location: FF_X82_Y25_N11
\Tent|C|IQ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|C|Add0~17_sumout\,
	clrn => \Controle|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|C|IQ\(4));

-- Location: MLABCELL_X82_Y25_N12
\Tent|C|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|C|Add0~21_sumout\ = SUM(( \Tent|C|IQ\(5) ) + ( GND ) + ( \Tent|C|Add0~18\ ))
-- \Tent|C|Add0~22\ = CARRY(( \Tent|C|IQ\(5) ) + ( GND ) + ( \Tent|C|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tent|C|ALT_INV_IQ\(5),
	cin => \Tent|C|Add0~18\,
	sumout => \Tent|C|Add0~21_sumout\,
	cout => \Tent|C|Add0~22\);

-- Location: FF_X82_Y25_N14
\Tent|C|IQ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|C|Add0~21_sumout\,
	clrn => \Controle|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|C|IQ\(5));

-- Location: MLABCELL_X82_Y25_N15
\Tent|C|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|C|Add0~25_sumout\ = SUM(( \Tent|C|IQ[6]~DUPLICATE_q\ ) + ( GND ) + ( \Tent|C|Add0~22\ ))
-- \Tent|C|Add0~26\ = CARRY(( \Tent|C|IQ[6]~DUPLICATE_q\ ) + ( GND ) + ( \Tent|C|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Tent|C|ALT_INV_IQ[6]~DUPLICATE_q\,
	cin => \Tent|C|Add0~22\,
	sumout => \Tent|C|Add0~25_sumout\,
	cout => \Tent|C|Add0~26\);

-- Location: FF_X82_Y25_N17
\Tent|C|IQ[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|C|Add0~25_sumout\,
	clrn => \Controle|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|C|IQ[6]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y25_N18
\Tent|C|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|C|Add0~29_sumout\ = SUM(( \Tent|C|IQ[7]~DUPLICATE_q\ ) + ( GND ) + ( \Tent|C|Add0~26\ ))
-- \Tent|C|Add0~30\ = CARRY(( \Tent|C|IQ[7]~DUPLICATE_q\ ) + ( GND ) + ( \Tent|C|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Tent|C|ALT_INV_IQ[7]~DUPLICATE_q\,
	cin => \Tent|C|Add0~26\,
	sumout => \Tent|C|Add0~29_sumout\,
	cout => \Tent|C|Add0~30\);

-- Location: FF_X82_Y25_N20
\Tent|C|IQ[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|C|Add0~29_sumout\,
	clrn => \Controle|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|C|IQ[7]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y25_N21
\Tent|C|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|C|Add0~33_sumout\ = SUM(( \Tent|C|IQ[8]~DUPLICATE_q\ ) + ( GND ) + ( \Tent|C|Add0~30\ ))
-- \Tent|C|Add0~34\ = CARRY(( \Tent|C|IQ[8]~DUPLICATE_q\ ) + ( GND ) + ( \Tent|C|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Tent|C|ALT_INV_IQ[8]~DUPLICATE_q\,
	cin => \Tent|C|Add0~30\,
	sumout => \Tent|C|Add0~33_sumout\,
	cout => \Tent|C|Add0~34\);

-- Location: FF_X82_Y25_N23
\Tent|C|IQ[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|C|Add0~33_sumout\,
	clrn => \Controle|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|C|IQ[8]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y25_N24
\Tent|C|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|C|Add0~37_sumout\ = SUM(( \Tent|C|IQ\(9) ) + ( GND ) + ( \Tent|C|Add0~34\ ))
-- \Tent|C|Add0~38\ = CARRY(( \Tent|C|IQ\(9) ) + ( GND ) + ( \Tent|C|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Tent|C|ALT_INV_IQ\(9),
	cin => \Tent|C|Add0~34\,
	sumout => \Tent|C|Add0~37_sumout\,
	cout => \Tent|C|Add0~38\);

-- Location: FF_X82_Y25_N26
\Tent|C|IQ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|C|Add0~37_sumout\,
	clrn => \Controle|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|C|IQ\(9));

-- Location: MLABCELL_X82_Y25_N27
\Tent|C|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|C|Add0~41_sumout\ = SUM(( \Tent|C|IQ\(10) ) + ( GND ) + ( \Tent|C|Add0~38\ ))
-- \Tent|C|Add0~42\ = CARRY(( \Tent|C|IQ\(10) ) + ( GND ) + ( \Tent|C|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Tent|C|ALT_INV_IQ\(10),
	cin => \Tent|C|Add0~38\,
	sumout => \Tent|C|Add0~41_sumout\,
	cout => \Tent|C|Add0~42\);

-- Location: FF_X82_Y25_N29
\Tent|C|IQ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|C|Add0~41_sumout\,
	clrn => \Controle|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|C|IQ\(10));

-- Location: MLABCELL_X82_Y25_N30
\Tent|C|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|C|Add0~45_sumout\ = SUM(( \Tent|C|IQ[11]~DUPLICATE_q\ ) + ( GND ) + ( \Tent|C|Add0~42\ ))
-- \Tent|C|Add0~46\ = CARRY(( \Tent|C|IQ[11]~DUPLICATE_q\ ) + ( GND ) + ( \Tent|C|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tent|C|ALT_INV_IQ[11]~DUPLICATE_q\,
	cin => \Tent|C|Add0~42\,
	sumout => \Tent|C|Add0~45_sumout\,
	cout => \Tent|C|Add0~46\);

-- Location: FF_X82_Y25_N32
\Tent|C|IQ[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|C|Add0~45_sumout\,
	clrn => \Controle|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|C|IQ[11]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y25_N33
\Tent|C|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|C|Add0~49_sumout\ = SUM(( \Tent|C|IQ\(12) ) + ( GND ) + ( \Tent|C|Add0~46\ ))
-- \Tent|C|Add0~50\ = CARRY(( \Tent|C|IQ\(12) ) + ( GND ) + ( \Tent|C|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tent|C|ALT_INV_IQ\(12),
	cin => \Tent|C|Add0~46\,
	sumout => \Tent|C|Add0~49_sumout\,
	cout => \Tent|C|Add0~50\);

-- Location: FF_X82_Y25_N35
\Tent|C|IQ[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|C|Add0~49_sumout\,
	clrn => \Controle|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|C|IQ\(12));

-- Location: MLABCELL_X82_Y25_N36
\Tent|C|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|C|Add0~53_sumout\ = SUM(( \Tent|C|IQ[13]~DUPLICATE_q\ ) + ( GND ) + ( \Tent|C|Add0~50\ ))
-- \Tent|C|Add0~54\ = CARRY(( \Tent|C|IQ[13]~DUPLICATE_q\ ) + ( GND ) + ( \Tent|C|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Tent|C|ALT_INV_IQ[13]~DUPLICATE_q\,
	cin => \Tent|C|Add0~50\,
	sumout => \Tent|C|Add0~53_sumout\,
	cout => \Tent|C|Add0~54\);

-- Location: FF_X82_Y25_N38
\Tent|C|IQ[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|C|Add0~53_sumout\,
	clrn => \Controle|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|C|IQ[13]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y25_N39
\Tent|C|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|C|Add0~57_sumout\ = SUM(( \Tent|C|IQ\(14) ) + ( GND ) + ( \Tent|C|Add0~54\ ))
-- \Tent|C|Add0~58\ = CARRY(( \Tent|C|IQ\(14) ) + ( GND ) + ( \Tent|C|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Tent|C|ALT_INV_IQ\(14),
	cin => \Tent|C|Add0~54\,
	sumout => \Tent|C|Add0~57_sumout\,
	cout => \Tent|C|Add0~58\);

-- Location: FF_X82_Y25_N41
\Tent|C|IQ[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|C|Add0~57_sumout\,
	clrn => \Controle|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|C|IQ\(14));

-- Location: MLABCELL_X82_Y25_N42
\Tent|C|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|C|Add0~1_sumout\ = SUM(( \Tent|C|IQ\(15) ) + ( GND ) + ( \Tent|C|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tent|C|ALT_INV_IQ\(15),
	cin => \Tent|C|Add0~58\,
	sumout => \Tent|C|Add0~1_sumout\);

-- Location: FF_X82_Y25_N43
\Tent|C|IQ[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|C|Add0~1_sumout\,
	clrn => \Controle|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|C|IQ[15]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y24_N57
\Random|I~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|I~3_combout\ = ( \Controle|WideNor0~combout\ & ( !\Random|I\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Random|ALT_INV_I\(0),
	dataf => \Controle|ALT_INV_WideNor0~combout\,
	combout => \Random|I~3_combout\);

-- Location: FF_X79_Y24_N59
\Random|I[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Random|I~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Random|I\(0));

-- Location: LABCELL_X79_Y24_N3
\Random|I~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|I~2_combout\ = ( \Controle|WideNor0~combout\ & ( !\Random|I\(0) $ (!\Random|I\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Random|ALT_INV_I\(0),
	datad => \Random|ALT_INV_I\(1),
	dataf => \Controle|ALT_INV_WideNor0~combout\,
	combout => \Random|I~2_combout\);

-- Location: FF_X79_Y24_N5
\Random|I[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Random|I~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Random|I\(1));

-- Location: LABCELL_X79_Y24_N36
\Random|I~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|I~1_combout\ = ( \Controle|WideNor0~combout\ & ( !\Random|I\(2) $ (((!\Random|I\(0)) # (!\Random|I\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011111111000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Random|ALT_INV_I\(0),
	datac => \Random|ALT_INV_I\(1),
	datad => \Random|ALT_INV_I\(2),
	dataf => \Controle|ALT_INV_WideNor0~combout\,
	combout => \Random|I~1_combout\);

-- Location: FF_X79_Y24_N38
\Random|I[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Random|I~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Random|I\(2));

-- Location: FF_X80_Y23_N2
\Random|k[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Random|I\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Random|k\(2));

-- Location: FF_X81_Y24_N20
\Random|k[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Random|I\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Random|k\(1));

-- Location: LABCELL_X79_Y24_N45
\Random|I~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|I~0_combout\ = ( \Random|I\(3) & ( \Controle|WideNor0~combout\ & ( (!\Random|I\(1)) # ((!\Random|I\(0)) # (!\Random|I\(2))) ) ) ) # ( !\Random|I\(3) & ( \Controle|WideNor0~combout\ & ( (\Random|I\(1) & (\Random|I\(0) & \Random|I\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001011111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_I\(1),
	datac => \Random|ALT_INV_I\(0),
	datad => \Random|ALT_INV_I\(2),
	datae => \Random|ALT_INV_I\(3),
	dataf => \Controle|ALT_INV_WideNor0~combout\,
	combout => \Random|I~0_combout\);

-- Location: FF_X79_Y24_N46
\Random|I[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Random|I~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Random|I\(3));

-- Location: FF_X80_Y23_N50
\Random|k[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Random|I\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Random|k[3]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y24_N51
\Random|k[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|k[0]~0_combout\ = ( !\Random|I\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Random|ALT_INV_I\(0),
	combout => \Random|k[0]~0_combout\);

-- Location: FF_X81_Y24_N46
\Random|k[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Random|k[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Random|k\(0));

-- Location: LABCELL_X83_Y24_N12
\Random|Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Decoder0~0_combout\ = ( \Random|k\(0) & ( (\Random|k\(2) & (\Random|k\(1) & \Random|k[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_k\(2),
	datab => \Random|ALT_INV_k\(1),
	datac => \Random|ALT_INV_k[3]~DUPLICATE_q\,
	dataf => \Random|ALT_INV_k\(0),
	combout => \Random|Decoder0~0_combout\);

-- Location: FF_X81_Y24_N47
\Random|k[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Random|k[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Random|k[0]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y24_N24
\Random|s_saida~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~7_combout\ = (!\Random|k\(2) & (!\Random|k\(0) & \Random|k[3]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_k\(2),
	datab => \Random|ALT_INV_k\(0),
	datac => \Random|ALT_INV_k[3]~DUPLICATE_q\,
	combout => \Random|s_saida~7_combout\);

-- Location: LABCELL_X83_Y24_N6
\Random|Decoder3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Decoder3~0_combout\ = ( \Random|k[3]~DUPLICATE_q\ & ( !\Random|k\(1) & ( (\Random|k\(0) & \Random|k\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Random|ALT_INV_k\(0),
	datac => \Random|ALT_INV_k\(2),
	datae => \Random|ALT_INV_k[3]~DUPLICATE_q\,
	dataf => \Random|ALT_INV_k\(1),
	combout => \Random|Decoder3~0_combout\);

-- Location: FF_X81_Y24_N19
\Random|k[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Random|I\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Random|k[1]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y24_N39
\Random|s_saida~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~6_combout\ = ( \Random|Mux1~4_combout\ & ( (\Controle|WideNor0~combout\ & !\Random|Mux0~4_combout\) ) ) # ( !\Random|Mux1~4_combout\ & ( (\Controle|WideNor0~combout\ & \Random|Mux0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Controle|ALT_INV_WideNor0~combout\,
	datad => \Random|ALT_INV_Mux0~4_combout\,
	dataf => \Random|ALT_INV_Mux1~4_combout\,
	combout => \Random|s_saida~6_combout\);

-- Location: FF_X82_Y25_N16
\Tent|C|IQ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|C|Add0~25_sumout\,
	clrn => \Controle|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|C|IQ\(6));

-- Location: LABCELL_X83_Y24_N0
\Random|s_saida~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~30_combout\ = ( !\Random|k[3]~DUPLICATE_q\ & ( \Random|k\(1) & ( (!\Random|k\(0) & !\Random|k\(2)) ) ) ) # ( !\Random|k[3]~DUPLICATE_q\ & ( !\Random|k\(1) & ( (!\Random|k\(0) & \Random|k\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000011000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Random|ALT_INV_k\(0),
	datac => \Random|ALT_INV_k\(2),
	datae => \Random|ALT_INV_k[3]~DUPLICATE_q\,
	dataf => \Random|ALT_INV_k\(1),
	combout => \Random|s_saida~30_combout\);

-- Location: LABCELL_X79_Y24_N0
\Random|Decoder0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Decoder0~5_combout\ = ( \Random|k\(2) & ( (!\Random|k[0]~DUPLICATE_q\ & (!\Random|k[3]~DUPLICATE_q\ & \Random|k\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_k[0]~DUPLICATE_q\,
	datac => \Random|ALT_INV_k[3]~DUPLICATE_q\,
	datad => \Random|ALT_INV_k\(1),
	dataf => \Random|ALT_INV_k\(2),
	combout => \Random|Decoder0~5_combout\);

-- Location: LABCELL_X83_Y23_N54
\Random|Decoder0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Decoder0~4_combout\ = ( !\Random|k\(2) & ( \Random|k[3]~DUPLICATE_q\ & ( (!\Random|k[1]~DUPLICATE_q\ & \Random|k[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_k[1]~DUPLICATE_q\,
	datac => \Random|ALT_INV_k[0]~DUPLICATE_q\,
	datae => \Random|ALT_INV_k\(2),
	dataf => \Random|ALT_INV_k[3]~DUPLICATE_q\,
	combout => \Random|Decoder0~4_combout\);

-- Location: MLABCELL_X82_Y24_N27
\Random|Decoder0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Decoder0~3_combout\ = ( \Random|k[3]~DUPLICATE_q\ & ( (!\Random|k\(2) & (!\Random|k[0]~DUPLICATE_q\ & !\Random|k\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_k\(2),
	datac => \Random|ALT_INV_k[0]~DUPLICATE_q\,
	datad => \Random|ALT_INV_k\(1),
	dataf => \Random|ALT_INV_k[3]~DUPLICATE_q\,
	combout => \Random|Decoder0~3_combout\);

-- Location: MLABCELL_X82_Y24_N42
\Random|s_saida~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~31_combout\ = ( \Random|s_saida\(6) & ( (!\Random|Decoder0~4_combout\ & (((!\Random|Decoder0~3_combout\) # (\Random|Mux0~4_combout\)))) # (\Random|Decoder0~4_combout\ & (\Random|Mux1~4_combout\)) ) ) # ( !\Random|s_saida\(6) & ( 
-- (!\Random|Decoder0~4_combout\ & (((\Random|Mux0~4_combout\ & \Random|Decoder0~3_combout\)))) # (\Random|Decoder0~4_combout\ & (\Random|Mux1~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110101000001010011010111110101001101011111010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Mux1~4_combout\,
	datab => \Random|ALT_INV_Mux0~4_combout\,
	datac => \Random|ALT_INV_Decoder0~4_combout\,
	datad => \Random|ALT_INV_Decoder0~3_combout\,
	dataf => \Random|ALT_INV_s_saida\(6),
	combout => \Random|s_saida~31_combout\);

-- Location: LABCELL_X81_Y23_N0
\Random|s_saida~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~32_combout\ = ( \Random|Decoder0~5_combout\ & ( \Random|s_saida~31_combout\ & ( (!\Controle|WideNor0~combout\ & (((\Random|s_saida~6_combout\ & !\Random|s_saida~30_combout\)) # (\Tent|C|IQ\(6)))) # (\Controle|WideNor0~combout\ & 
-- (\Random|s_saida~6_combout\ & ((!\Random|s_saida~30_combout\)))) ) ) ) # ( !\Random|Decoder0~5_combout\ & ( \Random|s_saida~31_combout\ & ( (!\Controle|WideNor0~combout\ & (\Tent|C|IQ\(6))) # (\Controle|WideNor0~combout\ & 
-- ((!\Random|s_saida~30_combout\))) ) ) ) # ( \Random|Decoder0~5_combout\ & ( !\Random|s_saida~31_combout\ & ( (!\Controle|WideNor0~combout\ & (((\Random|s_saida~6_combout\ & !\Random|s_saida~30_combout\)) # (\Tent|C|IQ\(6)))) # (\Controle|WideNor0~combout\ 
-- & (\Random|s_saida~6_combout\ & ((!\Random|s_saida~30_combout\)))) ) ) ) # ( !\Random|Decoder0~5_combout\ & ( !\Random|s_saida~31_combout\ & ( (!\Controle|WideNor0~combout\ & \Tent|C|IQ\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010001110110000101001011111000010100011101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Controle|ALT_INV_WideNor0~combout\,
	datab => \Random|ALT_INV_s_saida~6_combout\,
	datac => \Tent|C|ALT_INV_IQ\(6),
	datad => \Random|ALT_INV_s_saida~30_combout\,
	datae => \Random|ALT_INV_Decoder0~5_combout\,
	dataf => \Random|ALT_INV_s_saida~31_combout\,
	combout => \Random|s_saida~32_combout\);

-- Location: LABCELL_X79_Y24_N27
\Random|Decoder0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Decoder0~9_combout\ = ( !\Random|k\(2) & ( (!\Random|k[0]~DUPLICATE_q\ & (\Random|k\(1) & !\Random|k[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_k[0]~DUPLICATE_q\,
	datac => \Random|ALT_INV_k\(1),
	datad => \Random|ALT_INV_k[3]~DUPLICATE_q\,
	dataf => \Random|ALT_INV_k\(2),
	combout => \Random|Decoder0~9_combout\);

-- Location: LABCELL_X83_Y23_N39
\Random|Decoder0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Decoder0~7_combout\ = ( \Random|k\(2) & ( !\Random|k[3]~DUPLICATE_q\ & ( (!\Random|k[1]~DUPLICATE_q\ & !\Random|k[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_k[1]~DUPLICATE_q\,
	datad => \Random|ALT_INV_k[0]~DUPLICATE_q\,
	datae => \Random|ALT_INV_k\(2),
	dataf => \Random|ALT_INV_k[3]~DUPLICATE_q\,
	combout => \Random|Decoder0~7_combout\);

-- Location: LABCELL_X81_Y23_N51
\Random|s_saida~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~33_combout\ = ( \Random|s_saida~1_combout\ & ( ((!\Random|Decoder0~9_combout\ & ((\Random|Decoder0~7_combout\))) # (\Random|Decoder0~9_combout\ & (\Random|s_saida~0_combout\))) # (\Random|s_saida~32_combout\) ) ) # ( 
-- !\Random|s_saida~1_combout\ & ( ((\Random|s_saida~0_combout\ & \Random|Decoder0~9_combout\)) # (\Random|s_saida~32_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110111001101110011011100110111111101110011011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_s_saida~0_combout\,
	datab => \Random|ALT_INV_s_saida~32_combout\,
	datac => \Random|ALT_INV_Decoder0~9_combout\,
	datad => \Random|ALT_INV_Decoder0~7_combout\,
	dataf => \Random|ALT_INV_s_saida~1_combout\,
	combout => \Random|s_saida~33_combout\);

-- Location: FF_X81_Y23_N53
\Random|s_saida[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Random|s_saida~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Random|s_saida\(6));

-- Location: LABCELL_X83_Y23_N30
\Random|s_saida~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~22_combout\ = ( \Random|k\(2) & ( \Random|k\(1) & ( (!\Random|k[0]~DUPLICATE_q\ & ((!\Random|k[3]~DUPLICATE_q\) # ((!\Controle|Ereg.Jogador1~q\ & !\Controle|Ereg.Jogador2~q\)))) # (\Random|k[0]~DUPLICATE_q\ & (!\Controle|Ereg.Jogador1~q\ & 
-- ((!\Controle|Ereg.Jogador2~q\)))) ) ) ) # ( !\Random|k\(2) & ( \Random|k\(1) & ( (!\Controle|Ereg.Jogador1~q\ & !\Controle|Ereg.Jogador2~q\) ) ) ) # ( \Random|k\(2) & ( !\Random|k\(1) & ( (!\Random|k[0]~DUPLICATE_q\ & ((!\Random|k[3]~DUPLICATE_q\) # 
-- ((!\Controle|Ereg.Jogador1~q\ & !\Controle|Ereg.Jogador2~q\)))) # (\Random|k[0]~DUPLICATE_q\ & (!\Controle|Ereg.Jogador1~q\ & ((!\Controle|Ereg.Jogador2~q\)))) ) ) ) # ( !\Random|k\(2) & ( !\Random|k\(1) & ( (!\Random|k[0]~DUPLICATE_q\ & 
-- (((!\Controle|Ereg.Jogador1~q\ & !\Controle|Ereg.Jogador2~q\)) # (\Random|k[3]~DUPLICATE_q\))) # (\Random|k[0]~DUPLICATE_q\ & (!\Controle|Ereg.Jogador1~q\ & ((!\Controle|Ereg.Jogador2~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111000001010111011001010000011001100000000001110110010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_k[0]~DUPLICATE_q\,
	datab => \Controle|ALT_INV_Ereg.Jogador1~q\,
	datac => \Random|ALT_INV_k[3]~DUPLICATE_q\,
	datad => \Controle|ALT_INV_Ereg.Jogador2~q\,
	datae => \Random|ALT_INV_k\(2),
	dataf => \Random|ALT_INV_k\(1),
	combout => \Random|s_saida~22_combout\);

-- Location: FF_X82_Y25_N10
\Tent|C|IQ[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|C|Add0~17_sumout\,
	clrn => \Controle|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|C|IQ[4]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y24_N39
\Random|s_saida~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~23_combout\ = ( \Controle|WideNor0~combout\ & ( (\Random|Decoder0~3_combout\ & (!\Random|Mux1~4_combout\ $ (!\Random|Mux0~4_combout\))) ) ) # ( !\Controle|WideNor0~combout\ & ( \Tent|C|IQ[4]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000101010100000000010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Decoder0~3_combout\,
	datab => \Tent|C|ALT_INV_IQ[4]~DUPLICATE_q\,
	datac => \Random|ALT_INV_Mux1~4_combout\,
	datad => \Random|ALT_INV_Mux0~4_combout\,
	dataf => \Controle|ALT_INV_WideNor0~combout\,
	combout => \Random|s_saida~23_combout\);

-- Location: MLABCELL_X82_Y24_N24
\Random|Decoder4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Decoder4~1_combout\ = ( \Random|k[3]~DUPLICATE_q\ & ( (!\Random|k\(2) & (\Random|k\(1) & !\Random|k[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_k\(2),
	datac => \Random|ALT_INV_k\(1),
	datad => \Random|ALT_INV_k[0]~DUPLICATE_q\,
	dataf => \Random|ALT_INV_k[3]~DUPLICATE_q\,
	combout => \Random|Decoder4~1_combout\);

-- Location: LABCELL_X83_Y24_N15
\Random|Decoder4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Decoder4~0_combout\ = ( \Random|k\(0) & ( (!\Random|k\(2) & (\Random|k\(1) & \Random|k[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_k\(2),
	datac => \Random|ALT_INV_k\(1),
	datad => \Random|ALT_INV_k[3]~DUPLICATE_q\,
	dataf => \Random|ALT_INV_k\(0),
	combout => \Random|Decoder4~0_combout\);

-- Location: MLABCELL_X82_Y24_N18
\Random|s_saida~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~21_combout\ = ( \Random|Decoder4~0_combout\ & ( \Random|Mux1~4_combout\ ) ) # ( !\Random|Decoder4~0_combout\ & ( (!\Random|Decoder4~1_combout\ & (\Random|s_saida\(4))) # (\Random|Decoder4~1_combout\ & ((\Random|Mux0~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Decoder4~1_combout\,
	datab => \Random|ALT_INV_Mux1~4_combout\,
	datac => \Random|ALT_INV_s_saida\(4),
	datad => \Random|ALT_INV_Mux0~4_combout\,
	dataf => \Random|ALT_INV_Decoder4~0_combout\,
	combout => \Random|s_saida~21_combout\);

-- Location: LABCELL_X81_Y23_N18
\Random|s_saida~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~24_combout\ = ( \Random|s_saida~21_combout\ & ( (\Random|s_saida~22_combout\ & (!\Random|s_saida~23_combout\ & ((!\Random|Decoder0~7_combout\) # (!\Random|s_saida~0_combout\)))) ) ) # ( !\Random|s_saida~21_combout\ & ( 
-- (!\Random|s_saida~23_combout\ & ((!\Random|Decoder0~7_combout\) # (!\Random|s_saida~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110000000000111111000000000001010100000000000101010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_s_saida~22_combout\,
	datab => \Random|ALT_INV_Decoder0~7_combout\,
	datac => \Random|ALT_INV_s_saida~0_combout\,
	datad => \Random|ALT_INV_s_saida~23_combout\,
	dataf => \Random|ALT_INV_s_saida~21_combout\,
	combout => \Random|s_saida~24_combout\);

-- Location: LABCELL_X81_Y23_N33
\Random|s_saida~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~25_combout\ = ( \Random|s_saida~1_combout\ & ( (!\Random|s_saida~24_combout\) # ((!\Random|Decoder0~7_combout\ & \Random|Decoder0~5_combout\)) ) ) # ( !\Random|s_saida~1_combout\ & ( !\Random|s_saida~24_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010111110101010101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_s_saida~24_combout\,
	datac => \Random|ALT_INV_Decoder0~7_combout\,
	datad => \Random|ALT_INV_Decoder0~5_combout\,
	dataf => \Random|ALT_INV_s_saida~1_combout\,
	combout => \Random|s_saida~25_combout\);

-- Location: FF_X81_Y23_N35
\Random|s_saida[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Random|s_saida~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Random|s_saida\(4));

-- Location: LABCELL_X83_Y23_N12
\Random|Decoder0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Decoder0~8_combout\ = ( \Random|k\(2) & ( !\Random|k[3]~DUPLICATE_q\ & ( (!\Random|k[1]~DUPLICATE_q\ & \Random|k[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_k[1]~DUPLICATE_q\,
	datac => \Random|ALT_INV_k[0]~DUPLICATE_q\,
	datae => \Random|ALT_INV_k\(2),
	dataf => \Random|ALT_INV_k[3]~DUPLICATE_q\,
	combout => \Random|Decoder0~8_combout\);

-- Location: LABCELL_X79_Y24_N30
\Random|Decoder0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Decoder0~10_combout\ = ( !\Random|k\(2) & ( (\Random|k\(1) & (\Random|k[0]~DUPLICATE_q\ & !\Random|k[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Random|ALT_INV_k\(1),
	datac => \Random|ALT_INV_k[0]~DUPLICATE_q\,
	datad => \Random|ALT_INV_k[3]~DUPLICATE_q\,
	dataf => \Random|ALT_INV_k\(2),
	combout => \Random|Decoder0~10_combout\);

-- Location: LABCELL_X79_Y24_N54
\Random|Decoder0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Decoder0~6_combout\ = ( \Random|k\(2) & ( (\Random|k[0]~DUPLICATE_q\ & (!\Random|k[3]~DUPLICATE_q\ & \Random|k\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_k[0]~DUPLICATE_q\,
	datac => \Random|ALT_INV_k[3]~DUPLICATE_q\,
	datad => \Random|ALT_INV_k\(1),
	dataf => \Random|ALT_INV_k\(2),
	combout => \Random|Decoder0~6_combout\);

-- Location: MLABCELL_X82_Y23_N21
\Random|s_saida~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~35_combout\ = ( \Controle|WideNor0~combout\ & ( (\Random|Decoder0~6_combout\ & (!\Random|Mux1~4_combout\ $ (!\Random|Mux0~4_combout\))) ) ) # ( !\Controle|WideNor0~combout\ & ( \Tent|C|IQ[7]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Mux1~4_combout\,
	datab => \Random|ALT_INV_Decoder0~6_combout\,
	datac => \Random|ALT_INV_Mux0~4_combout\,
	datad => \Tent|C|ALT_INV_IQ[7]~DUPLICATE_q\,
	dataf => \Controle|ALT_INV_WideNor0~combout\,
	combout => \Random|s_saida~35_combout\);

-- Location: LABCELL_X83_Y23_N45
\Random|s_saida~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~26_combout\ = ( \Random|k\(2) & ( !\Random|k[3]~DUPLICATE_q\ & ( \Random|k[0]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_k[0]~DUPLICATE_q\,
	datae => \Random|ALT_INV_k\(2),
	dataf => \Random|ALT_INV_k[3]~DUPLICATE_q\,
	combout => \Random|s_saida~26_combout\);

-- Location: MLABCELL_X82_Y23_N54
\Random|s_saida~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~34_combout\ = ( \Random|Decoder0~5_combout\ & ( \Random|Mux1~4_combout\ ) ) # ( !\Random|Decoder0~5_combout\ & ( (!\Random|Decoder0~4_combout\ & ((\Random|s_saida\(7)))) # (\Random|Decoder0~4_combout\ & (\Random|Mux0~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Mux1~4_combout\,
	datab => \Random|ALT_INV_Mux0~4_combout\,
	datac => \Random|ALT_INV_s_saida\(7),
	datad => \Random|ALT_INV_Decoder0~4_combout\,
	dataf => \Random|ALT_INV_Decoder0~5_combout\,
	combout => \Random|s_saida~34_combout\);

-- Location: MLABCELL_X82_Y23_N30
\Random|s_saida~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~36_combout\ = ( \Random|s_saida~34_combout\ & ( \Controle|WideNor0~combout\ & ( (!\Random|s_saida~35_combout\ & ((!\Random|Decoder0~10_combout\ & (\Random|s_saida~26_combout\)) # (\Random|Decoder0~10_combout\ & 
-- ((!\Random|s_saida~0_combout\))))) ) ) ) # ( !\Random|s_saida~34_combout\ & ( \Controle|WideNor0~combout\ & ( (!\Random|s_saida~35_combout\ & ((!\Random|Decoder0~10_combout\) # (!\Random|s_saida~0_combout\))) ) ) ) # ( \Random|s_saida~34_combout\ & ( 
-- !\Controle|WideNor0~combout\ & ( (!\Random|s_saida~35_combout\ & ((!\Random|Decoder0~10_combout\) # (!\Random|s_saida~0_combout\))) ) ) ) # ( !\Random|s_saida~34_combout\ & ( !\Controle|WideNor0~combout\ & ( (!\Random|s_saida~35_combout\ & 
-- ((!\Random|Decoder0~10_combout\) # (!\Random|s_saida~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110010001000110011001000100011001100100010000100110000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Decoder0~10_combout\,
	datab => \Random|ALT_INV_s_saida~35_combout\,
	datac => \Random|ALT_INV_s_saida~26_combout\,
	datad => \Random|ALT_INV_s_saida~0_combout\,
	datae => \Random|ALT_INV_s_saida~34_combout\,
	dataf => \Controle|ALT_INV_WideNor0~combout\,
	combout => \Random|s_saida~36_combout\);

-- Location: MLABCELL_X82_Y23_N51
\Random|s_saida~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~37_combout\ = ( \Random|s_saida~1_combout\ & ( (!\Random|s_saida~36_combout\) # ((\Random|Decoder0~8_combout\ & !\Random|Decoder0~10_combout\)) ) ) # ( !\Random|s_saida~1_combout\ & ( !\Random|s_saida~36_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110101111100001111010111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Decoder0~8_combout\,
	datac => \Random|ALT_INV_s_saida~36_combout\,
	datad => \Random|ALT_INV_Decoder0~10_combout\,
	dataf => \Random|ALT_INV_s_saida~1_combout\,
	combout => \Random|s_saida~37_combout\);

-- Location: FF_X82_Y23_N53
\Random|s_saida[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Random|s_saida~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Random|s_saida\(7));

-- Location: LABCELL_X81_Y23_N12
\Random|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Mux0~0_combout\ = ( \Random|k[1]~DUPLICATE_q\ & ( \Random|k\(0) & ( \Random|s_saida\(5) ) ) ) # ( !\Random|k[1]~DUPLICATE_q\ & ( \Random|k\(0) & ( \Random|s_saida\(7) ) ) ) # ( \Random|k[1]~DUPLICATE_q\ & ( !\Random|k\(0) & ( \Random|s_saida\(4) ) 
-- ) ) # ( !\Random|k[1]~DUPLICATE_q\ & ( !\Random|k\(0) & ( \Random|s_saida\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_s_saida\(6),
	datab => \Random|ALT_INV_s_saida\(4),
	datac => \Random|ALT_INV_s_saida\(7),
	datad => \Random|ALT_INV_s_saida\(5),
	datae => \Random|ALT_INV_k[1]~DUPLICATE_q\,
	dataf => \Random|ALT_INV_k\(0),
	combout => \Random|Mux0~0_combout\);

-- Location: FF_X80_Y23_N49
\Random|k[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Random|I\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Random|k\(3));

-- Location: FF_X82_Y25_N4
\Tent|C|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|C|Add0~9_sumout\,
	clrn => \Controle|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|C|IQ\(2));

-- Location: MLABCELL_X82_Y24_N21
\Random|s_saida~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~15_combout\ = ( \Controle|WideNor0~combout\ & ( (\Random|Decoder4~1_combout\ & (!\Random|Mux1~4_combout\ $ (!\Random|Mux0~4_combout\))) ) ) # ( !\Controle|WideNor0~combout\ & ( \Tent|C|IQ\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100010001010001000001000101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Decoder4~1_combout\,
	datab => \Random|ALT_INV_Mux1~4_combout\,
	datac => \Tent|C|ALT_INV_IQ\(2),
	datad => \Random|ALT_INV_Mux0~4_combout\,
	dataf => \Controle|ALT_INV_WideNor0~combout\,
	combout => \Random|s_saida~15_combout\);

-- Location: LABCELL_X80_Y24_N33
\Random|Decoder3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Decoder3~1_combout\ = ( !\Random|k\(1) & ( (!\Random|k[0]~DUPLICATE_q\ & (\Random|k[3]~DUPLICATE_q\ & \Random|k\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_k[0]~DUPLICATE_q\,
	datac => \Random|ALT_INV_k[3]~DUPLICATE_q\,
	datad => \Random|ALT_INV_k\(2),
	dataf => \Random|ALT_INV_k\(1),
	combout => \Random|Decoder3~1_combout\);

-- Location: MLABCELL_X82_Y24_N45
\Random|s_saida~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~14_combout\ = ( \Random|s_saida\(2) & ( (!\Random|Decoder3~0_combout\ & (((!\Random|Decoder3~1_combout\) # (\Random|Mux0~4_combout\)))) # (\Random|Decoder3~0_combout\ & (\Random|Mux1~4_combout\)) ) ) # ( !\Random|s_saida\(2) & ( 
-- (!\Random|Decoder3~0_combout\ & (((\Random|Mux0~4_combout\ & \Random|Decoder3~1_combout\)))) # (\Random|Decoder3~0_combout\ & (\Random|Mux1~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010101000000110101010111110011010101011111001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Mux1~4_combout\,
	datab => \Random|ALT_INV_Mux0~4_combout\,
	datac => \Random|ALT_INV_Decoder3~1_combout\,
	datad => \Random|ALT_INV_Decoder3~0_combout\,
	dataf => \Random|ALT_INV_s_saida\(2),
	combout => \Random|s_saida~14_combout\);

-- Location: MLABCELL_X82_Y24_N12
\Random|s_saida~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~16_combout\ = ( \Random|s_saida~14_combout\ & ( \Controle|WideNor0~combout\ & ( (!\Random|s_saida~15_combout\ & ((!\Random|Decoder0~5_combout\ & ((\Random|s_saida~7_combout\))) # (\Random|Decoder0~5_combout\ & 
-- (!\Random|s_saida~0_combout\)))) ) ) ) # ( !\Random|s_saida~14_combout\ & ( \Controle|WideNor0~combout\ & ( (!\Random|s_saida~15_combout\ & ((!\Random|Decoder0~5_combout\) # (!\Random|s_saida~0_combout\))) ) ) ) # ( \Random|s_saida~14_combout\ & ( 
-- !\Controle|WideNor0~combout\ & ( (!\Random|s_saida~15_combout\ & ((!\Random|Decoder0~5_combout\) # (!\Random|s_saida~0_combout\))) ) ) ) # ( !\Random|s_saida~14_combout\ & ( !\Controle|WideNor0~combout\ & ( (!\Random|s_saida~15_combout\ & 
-- ((!\Random|Decoder0~5_combout\) # (!\Random|s_saida~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011100000111000001110000011100000111000000100000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Decoder0~5_combout\,
	datab => \Random|ALT_INV_s_saida~0_combout\,
	datac => \Random|ALT_INV_s_saida~15_combout\,
	datad => \Random|ALT_INV_s_saida~7_combout\,
	datae => \Random|ALT_INV_s_saida~14_combout\,
	dataf => \Controle|ALT_INV_WideNor0~combout\,
	combout => \Random|s_saida~16_combout\);

-- Location: MLABCELL_X82_Y24_N36
\Random|s_saida~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~17_combout\ = ( \Random|s_saida~1_combout\ & ( (!\Random|s_saida~16_combout\) # ((\Random|Decoder0~3_combout\ & !\Random|Decoder0~5_combout\)) ) ) # ( !\Random|s_saida~1_combout\ & ( !\Random|s_saida~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110101111100001111010111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Decoder0~3_combout\,
	datac => \Random|ALT_INV_s_saida~16_combout\,
	datad => \Random|ALT_INV_Decoder0~5_combout\,
	dataf => \Random|ALT_INV_s_saida~1_combout\,
	combout => \Random|s_saida~17_combout\);

-- Location: FF_X82_Y24_N38
\Random|s_saida[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Random|s_saida~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Random|s_saida\(2));

-- Location: LABCELL_X80_Y24_N30
\Random|Decoder0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Decoder0~11_combout\ = ( !\Random|k[0]~DUPLICATE_q\ & ( (!\Random|k[3]~DUPLICATE_q\ & (!\Random|k[1]~DUPLICATE_q\ & !\Random|k\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Random|ALT_INV_k[3]~DUPLICATE_q\,
	datac => \Random|ALT_INV_k[1]~DUPLICATE_q\,
	datad => \Random|ALT_INV_k\(2),
	dataf => \Random|ALT_INV_k[0]~DUPLICATE_q\,
	combout => \Random|Decoder0~11_combout\);

-- Location: LABCELL_X80_Y24_N54
\Random|s_saida~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~38_combout\ = ( \Random|s_saida\(8) & ( (!\Random|Decoder0~6_combout\ & (((!\Random|Decoder0~5_combout\) # (\Random|Mux0~4_combout\)))) # (\Random|Decoder0~6_combout\ & (\Random|Mux1~4_combout\)) ) ) # ( !\Random|s_saida\(8) & ( 
-- (!\Random|Decoder0~6_combout\ & (((\Random|Mux0~4_combout\ & \Random|Decoder0~5_combout\)))) # (\Random|Decoder0~6_combout\ & (\Random|Mux1~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010101000000110101010111110011010101011111001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Mux1~4_combout\,
	datab => \Random|ALT_INV_Mux0~4_combout\,
	datac => \Random|ALT_INV_Decoder0~5_combout\,
	datad => \Random|ALT_INV_Decoder0~6_combout\,
	dataf => \Random|ALT_INV_s_saida\(8),
	combout => \Random|s_saida~38_combout\);

-- Location: FF_X82_Y25_N22
\Tent|C|IQ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|C|Add0~33_sumout\,
	clrn => \Controle|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|C|IQ\(8));

-- Location: LABCELL_X80_Y24_N57
\Random|s_saida~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~39_combout\ = ( \Controle|WideNor0~combout\ & ( (\Random|Decoder0~7_combout\ & (!\Random|Mux1~4_combout\ $ (!\Random|Mux0~4_combout\))) ) ) # ( !\Controle|WideNor0~combout\ & ( \Tent|C|IQ\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000110000001100000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Mux1~4_combout\,
	datab => \Random|ALT_INV_Mux0~4_combout\,
	datac => \Random|ALT_INV_Decoder0~7_combout\,
	datad => \Tent|C|ALT_INV_IQ\(8),
	dataf => \Controle|ALT_INV_WideNor0~combout\,
	combout => \Random|s_saida~39_combout\);

-- Location: LABCELL_X80_Y24_N42
\Random|s_saida~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~40_combout\ = ( !\Random|s_saida~39_combout\ & ( \Controle|WideNor0~combout\ & ( (!\Random|Decoder0~11_combout\ & (((!\Random|s_saida~38_combout\) # (\Random|s_saida~30_combout\)))) # (\Random|Decoder0~11_combout\ & 
-- (!\Random|s_saida~0_combout\)) ) ) ) # ( !\Random|s_saida~39_combout\ & ( !\Controle|WideNor0~combout\ & ( (!\Random|s_saida~0_combout\) # (!\Random|Decoder0~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010000000000000000011110011101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_s_saida~0_combout\,
	datab => \Random|ALT_INV_s_saida~30_combout\,
	datac => \Random|ALT_INV_s_saida~38_combout\,
	datad => \Random|ALT_INV_Decoder0~11_combout\,
	datae => \Random|ALT_INV_s_saida~39_combout\,
	dataf => \Controle|ALT_INV_WideNor0~combout\,
	combout => \Random|s_saida~40_combout\);

-- Location: LABCELL_X80_Y24_N51
\Random|s_saida~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~41_combout\ = ( \Random|s_saida~1_combout\ & ( (!\Random|s_saida~40_combout\) # ((!\Random|Decoder0~11_combout\ & \Random|Decoder0~9_combout\)) ) ) # ( !\Random|s_saida~1_combout\ & ( !\Random|s_saida~40_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111111001111000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Random|ALT_INV_Decoder0~11_combout\,
	datac => \Random|ALT_INV_s_saida~40_combout\,
	datad => \Random|ALT_INV_Decoder0~9_combout\,
	dataf => \Random|ALT_INV_s_saida~1_combout\,
	combout => \Random|s_saida~41_combout\);

-- Location: FF_X80_Y24_N53
\Random|s_saida[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Random|s_saida~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Random|s_saida\(8));

-- Location: MLABCELL_X82_Y23_N48
\Random|s_saida~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~44_combout\ = ( \Controle|WideNor0~combout\ & ( (\Random|Decoder0~8_combout\ & (!\Random|Mux1~4_combout\ $ (!\Random|Mux0~4_combout\))) ) ) # ( !\Controle|WideNor0~combout\ & ( \Tent|C|IQ\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000101010100000000010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Decoder0~8_combout\,
	datab => \Tent|C|ALT_INV_IQ\(9),
	datac => \Random|ALT_INV_Mux1~4_combout\,
	datad => \Random|ALT_INV_Mux0~4_combout\,
	dataf => \Controle|ALT_INV_WideNor0~combout\,
	combout => \Random|s_saida~44_combout\);

-- Location: MLABCELL_X82_Y23_N57
\Random|s_saida~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~43_combout\ = ( \Random|Decoder0~6_combout\ & ( (!\Random|Decoder0~7_combout\ & ((\Random|Mux0~4_combout\))) # (\Random|Decoder0~7_combout\ & (\Random|Mux1~4_combout\)) ) ) # ( !\Random|Decoder0~6_combout\ & ( (!\Random|Decoder0~7_combout\ 
-- & ((\Random|s_saida\(9)))) # (\Random|Decoder0~7_combout\ & (\Random|Mux1~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Mux1~4_combout\,
	datab => \Random|ALT_INV_Mux0~4_combout\,
	datac => \Random|ALT_INV_s_saida\(9),
	datad => \Random|ALT_INV_Decoder0~7_combout\,
	dataf => \Random|ALT_INV_Decoder0~6_combout\,
	combout => \Random|s_saida~43_combout\);

-- Location: LABCELL_X83_Y24_N27
\Random|Decoder0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Decoder0~2_combout\ = ( !\Random|k\(1) & ( (!\Random|k\(2) & (\Random|k\(0) & !\Random|k[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_k\(2),
	datab => \Random|ALT_INV_k\(0),
	datad => \Random|ALT_INV_k[3]~DUPLICATE_q\,
	dataf => \Random|ALT_INV_k\(1),
	combout => \Random|Decoder0~2_combout\);

-- Location: LABCELL_X83_Y23_N24
\Random|s_saida~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~42_combout\ = ( !\Random|k\(2) & ( \Controle|Ereg.Jogador2~q\ & ( (\Random|k[0]~DUPLICATE_q\ & !\Random|k[3]~DUPLICATE_q\) ) ) ) # ( \Random|k\(2) & ( !\Controle|Ereg.Jogador2~q\ & ( !\Controle|Ereg.Jogador1~q\ ) ) ) # ( !\Random|k\(2) & ( 
-- !\Controle|Ereg.Jogador2~q\ & ( (!\Controle|Ereg.Jogador1~q\) # ((\Random|k[0]~DUPLICATE_q\ & !\Random|k[3]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011011100110011001100110001010000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_k[0]~DUPLICATE_q\,
	datab => \Controle|ALT_INV_Ereg.Jogador1~q\,
	datac => \Random|ALT_INV_k[3]~DUPLICATE_q\,
	datae => \Random|ALT_INV_k\(2),
	dataf => \Controle|ALT_INV_Ereg.Jogador2~q\,
	combout => \Random|s_saida~42_combout\);

-- Location: MLABCELL_X82_Y23_N12
\Random|s_saida~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~45_combout\ = ( \Random|Decoder0~2_combout\ & ( \Random|s_saida~42_combout\ & ( (!\Random|s_saida~44_combout\ & !\Random|s_saida~0_combout\) ) ) ) # ( !\Random|Decoder0~2_combout\ & ( \Random|s_saida~42_combout\ & ( 
-- !\Random|s_saida~44_combout\ ) ) ) # ( \Random|Decoder0~2_combout\ & ( !\Random|s_saida~42_combout\ & ( (!\Random|s_saida~44_combout\ & (!\Random|s_saida~0_combout\ & ((!\Random|s_saida~43_combout\) # (\Random|Decoder0~8_combout\)))) ) ) ) # ( 
-- !\Random|Decoder0~2_combout\ & ( !\Random|s_saida~42_combout\ & ( (!\Random|s_saida~44_combout\ & ((!\Random|s_saida~43_combout\) # (\Random|Decoder0~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000001010100010000000100010101010101010101000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_s_saida~44_combout\,
	datab => \Random|ALT_INV_s_saida~0_combout\,
	datac => \Random|ALT_INV_Decoder0~8_combout\,
	datad => \Random|ALT_INV_s_saida~43_combout\,
	datae => \Random|ALT_INV_Decoder0~2_combout\,
	dataf => \Random|ALT_INV_s_saida~42_combout\,
	combout => \Random|s_saida~45_combout\);

-- Location: MLABCELL_X82_Y23_N9
\Random|s_saida~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~46_combout\ = ( \Random|s_saida~1_combout\ & ( (!\Random|s_saida~45_combout\) # ((\Random|Decoder0~10_combout\ & !\Random|Decoder0~2_combout\)) ) ) # ( !\Random|s_saida~1_combout\ & ( !\Random|s_saida~45_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110101111100001111010111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Decoder0~10_combout\,
	datac => \Random|ALT_INV_s_saida~45_combout\,
	datad => \Random|ALT_INV_Decoder0~2_combout\,
	dataf => \Random|ALT_INV_s_saida~1_combout\,
	combout => \Random|s_saida~46_combout\);

-- Location: FF_X82_Y23_N11
\Random|s_saida[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Random|s_saida~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Random|s_saida\(9));

-- Location: MLABCELL_X82_Y24_N51
\Random|s_saida~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~49_combout\ = ( \Controle|WideNor0~combout\ & ( (\Random|Decoder0~9_combout\ & (!\Random|Mux1~4_combout\ $ (!\Random|Mux0~4_combout\))) ) ) # ( !\Controle|WideNor0~combout\ & ( \Tent|C|IQ\(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000110000001100000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Mux1~4_combout\,
	datab => \Random|ALT_INV_Mux0~4_combout\,
	datac => \Random|ALT_INV_Decoder0~9_combout\,
	datad => \Tent|C|ALT_INV_IQ\(10),
	dataf => \Controle|ALT_INV_WideNor0~combout\,
	combout => \Random|s_saida~49_combout\);

-- Location: LABCELL_X79_Y24_N15
\Random|s_saida~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~47_combout\ = ( \Random|k[3]~DUPLICATE_q\ & ( \Random|k\(2) & ( (!\Controle|Ereg.Jogador1~q\ & ((!\Controle|Ereg.Jogador2~q\) # ((\Random|k\(1) & !\Random|k[0]~DUPLICATE_q\)))) # (\Controle|Ereg.Jogador1~q\ & (\Random|k\(1) & 
-- ((!\Random|k[0]~DUPLICATE_q\)))) ) ) ) # ( !\Random|k[3]~DUPLICATE_q\ & ( \Random|k\(2) & ( (!\Controle|Ereg.Jogador1~q\ & !\Controle|Ereg.Jogador2~q\) ) ) ) # ( \Random|k[3]~DUPLICATE_q\ & ( !\Random|k\(2) & ( (!\Controle|Ereg.Jogador1~q\ & 
-- !\Controle|Ereg.Jogador2~q\) ) ) ) # ( !\Random|k[3]~DUPLICATE_q\ & ( !\Random|k\(2) & ( (!\Controle|Ereg.Jogador1~q\ & ((!\Controle|Ereg.Jogador2~q\) # ((!\Random|k\(1) & !\Random|k[0]~DUPLICATE_q\)))) # (\Controle|Ereg.Jogador1~q\ & (!\Random|k\(1) & 
-- ((!\Random|k[0]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110010100000101000001010000010100000101000001011001110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Controle|ALT_INV_Ereg.Jogador1~q\,
	datab => \Random|ALT_INV_k\(1),
	datac => \Controle|ALT_INV_Ereg.Jogador2~q\,
	datad => \Random|ALT_INV_k[0]~DUPLICATE_q\,
	datae => \Random|ALT_INV_k[3]~DUPLICATE_q\,
	dataf => \Random|ALT_INV_k\(2),
	combout => \Random|s_saida~47_combout\);

-- Location: LABCELL_X83_Y23_N48
\Random|Decoder0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Decoder0~1_combout\ = ( \Random|k\(2) & ( \Random|k[3]~DUPLICATE_q\ & ( (\Random|k[1]~DUPLICATE_q\ & !\Random|k[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_k[1]~DUPLICATE_q\,
	datac => \Random|ALT_INV_k[0]~DUPLICATE_q\,
	datae => \Random|ALT_INV_k\(2),
	dataf => \Random|ALT_INV_k[3]~DUPLICATE_q\,
	combout => \Random|Decoder0~1_combout\);

-- Location: MLABCELL_X82_Y23_N24
\Random|s_saida~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~48_combout\ = ( \Random|s_saida\(10) & ( (!\Random|Decoder0~8_combout\ & (((!\Random|Decoder0~7_combout\)) # (\Random|Mux0~4_combout\))) # (\Random|Decoder0~8_combout\ & (((\Random|Mux1~4_combout\)))) ) ) # ( !\Random|s_saida\(10) & ( 
-- (!\Random|Decoder0~8_combout\ & (\Random|Mux0~4_combout\ & (\Random|Decoder0~7_combout\))) # (\Random|Decoder0~8_combout\ & (((\Random|Mux1~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011111000100000001111111010000110111111101000011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Mux0~4_combout\,
	datab => \Random|ALT_INV_Decoder0~7_combout\,
	datac => \Random|ALT_INV_Decoder0~8_combout\,
	datad => \Random|ALT_INV_Mux1~4_combout\,
	dataf => \Random|ALT_INV_s_saida\(10),
	combout => \Random|s_saida~48_combout\);

-- Location: MLABCELL_X82_Y23_N36
\Random|s_saida~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~50_combout\ = ( \Random|s_saida~48_combout\ & ( \Random|s_saida~0_combout\ & ( (!\Random|s_saida~49_combout\ & (!\Random|Decoder0~1_combout\ & ((\Random|Decoder0~9_combout\) # (\Random|s_saida~47_combout\)))) ) ) ) # ( 
-- !\Random|s_saida~48_combout\ & ( \Random|s_saida~0_combout\ & ( (!\Random|s_saida~49_combout\ & !\Random|Decoder0~1_combout\) ) ) ) # ( \Random|s_saida~48_combout\ & ( !\Random|s_saida~0_combout\ & ( (!\Random|s_saida~49_combout\ & 
-- ((\Random|Decoder0~9_combout\) # (\Random|s_saida~47_combout\))) ) ) ) # ( !\Random|s_saida~48_combout\ & ( !\Random|s_saida~0_combout\ & ( !\Random|s_saida~49_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010001010100010101010101010000000000010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_s_saida~49_combout\,
	datab => \Random|ALT_INV_s_saida~47_combout\,
	datac => \Random|ALT_INV_Decoder0~9_combout\,
	datad => \Random|ALT_INV_Decoder0~1_combout\,
	datae => \Random|ALT_INV_s_saida~48_combout\,
	dataf => \Random|ALT_INV_s_saida~0_combout\,
	combout => \Random|s_saida~50_combout\);

-- Location: MLABCELL_X82_Y23_N6
\Random|s_saida~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~51_combout\ = ( \Random|s_saida~1_combout\ & ( (!\Random|s_saida~50_combout\) # ((\Random|Decoder0~11_combout\ & !\Random|Decoder0~1_combout\)) ) ) # ( !\Random|s_saida~1_combout\ & ( !\Random|s_saida~50_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001111110011001100111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Random|ALT_INV_s_saida~50_combout\,
	datac => \Random|ALT_INV_Decoder0~11_combout\,
	datad => \Random|ALT_INV_Decoder0~1_combout\,
	dataf => \Random|ALT_INV_s_saida~1_combout\,
	combout => \Random|s_saida~51_combout\);

-- Location: FF_X82_Y23_N8
\Random|s_saida[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Random|s_saida~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Random|s_saida\(10));

-- Location: LABCELL_X81_Y24_N0
\Random|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Mux1~0_combout\ = ( \Random|s_saida\(9) & ( \Random|s_saida\(10) & ( (!\Random|k\(1)) # ((!\Random|k[0]~DUPLICATE_q\ & (\Random|s_saida\(7))) # (\Random|k[0]~DUPLICATE_q\ & ((\Random|s_saida\(8))))) ) ) ) # ( !\Random|s_saida\(9) & ( 
-- \Random|s_saida\(10) & ( (!\Random|k\(1) & (\Random|k[0]~DUPLICATE_q\)) # (\Random|k\(1) & ((!\Random|k[0]~DUPLICATE_q\ & (\Random|s_saida\(7))) # (\Random|k[0]~DUPLICATE_q\ & ((\Random|s_saida\(8)))))) ) ) ) # ( \Random|s_saida\(9) & ( 
-- !\Random|s_saida\(10) & ( (!\Random|k\(1) & (!\Random|k[0]~DUPLICATE_q\)) # (\Random|k\(1) & ((!\Random|k[0]~DUPLICATE_q\ & (\Random|s_saida\(7))) # (\Random|k[0]~DUPLICATE_q\ & ((\Random|s_saida\(8)))))) ) ) ) # ( !\Random|s_saida\(9) & ( 
-- !\Random|s_saida\(10) & ( (\Random|k\(1) & ((!\Random|k[0]~DUPLICATE_q\ & (\Random|s_saida\(7))) # (\Random|k[0]~DUPLICATE_q\ & ((\Random|s_saida\(8)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101100011001001110100100110001101111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_k\(1),
	datab => \Random|ALT_INV_k[0]~DUPLICATE_q\,
	datac => \Random|ALT_INV_s_saida\(7),
	datad => \Random|ALT_INV_s_saida\(8),
	datae => \Random|ALT_INV_s_saida\(9),
	dataf => \Random|ALT_INV_s_saida\(10),
	combout => \Random|Mux1~0_combout\);

-- Location: LABCELL_X81_Y24_N15
\Random|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Mux1~2_combout\ = ( \Random|s_saida\(5) & ( \Random|s_saida\(3) & ( (!\Random|k[0]~DUPLICATE_q\) # ((!\Random|k\(1) & ((\Random|s_saida\(6)))) # (\Random|k\(1) & (\Random|s_saida\(4)))) ) ) ) # ( !\Random|s_saida\(5) & ( \Random|s_saida\(3) & ( 
-- (!\Random|k[0]~DUPLICATE_q\ & (((\Random|k\(1))))) # (\Random|k[0]~DUPLICATE_q\ & ((!\Random|k\(1) & ((\Random|s_saida\(6)))) # (\Random|k\(1) & (\Random|s_saida\(4))))) ) ) ) # ( \Random|s_saida\(5) & ( !\Random|s_saida\(3) & ( 
-- (!\Random|k[0]~DUPLICATE_q\ & (((!\Random|k\(1))))) # (\Random|k[0]~DUPLICATE_q\ & ((!\Random|k\(1) & ((\Random|s_saida\(6)))) # (\Random|k\(1) & (\Random|s_saida\(4))))) ) ) ) # ( !\Random|s_saida\(5) & ( !\Random|s_saida\(3) & ( 
-- (\Random|k[0]~DUPLICATE_q\ & ((!\Random|k\(1) & ((\Random|s_saida\(6)))) # (\Random|k\(1) & (\Random|s_saida\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001110000011111000100001101001111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_s_saida\(4),
	datab => \Random|ALT_INV_k[0]~DUPLICATE_q\,
	datac => \Random|ALT_INV_k\(1),
	datad => \Random|ALT_INV_s_saida\(6),
	datae => \Random|ALT_INV_s_saida\(5),
	dataf => \Random|ALT_INV_s_saida\(3),
	combout => \Random|Mux1~2_combout\);

-- Location: FF_X82_Y25_N34
\Tent|C|IQ[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|C|Add0~49_sumout\,
	clrn => \Controle|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|C|IQ[12]~DUPLICATE_q\);

-- Location: LABCELL_X80_Y24_N48
\Random|s_saida~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~57_combout\ = ( \Controle|WideNor0~combout\ & ( (\Random|Decoder0~11_combout\ & (!\Random|Mux1~4_combout\ $ (!\Random|Mux0~4_combout\))) ) ) # ( !\Controle|WideNor0~combout\ & ( \Tent|C|IQ[12]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100010001001000100001000100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Mux1~4_combout\,
	datab => \Random|ALT_INV_Decoder0~11_combout\,
	datac => \Tent|C|ALT_INV_IQ[12]~DUPLICATE_q\,
	datad => \Random|ALT_INV_Mux0~4_combout\,
	dataf => \Controle|ALT_INV_WideNor0~combout\,
	combout => \Random|s_saida~57_combout\);

-- Location: LABCELL_X80_Y24_N15
\Random|s_saida~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~56_combout\ = ( \Random|Decoder0~10_combout\ & ( \Random|Mux1~4_combout\ ) ) # ( !\Random|Decoder0~10_combout\ & ( (!\Random|Decoder0~9_combout\ & (\Random|s_saida\(12))) # (\Random|Decoder0~9_combout\ & ((\Random|Mux0~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_s_saida\(12),
	datab => \Random|ALT_INV_Mux0~4_combout\,
	datac => \Random|ALT_INV_Mux1~4_combout\,
	datad => \Random|ALT_INV_Decoder0~9_combout\,
	dataf => \Random|ALT_INV_Decoder0~10_combout\,
	combout => \Random|s_saida~56_combout\);

-- Location: LABCELL_X80_Y24_N21
\Random|s_saida~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~58_combout\ = ( \Random|s_saida~0_combout\ & ( (!\Random|Decoder3~1_combout\ & (!\Random|s_saida~57_combout\ & ((!\Random|s_saida~56_combout\) # (\Random|s_saida~47_combout\)))) ) ) # ( !\Random|s_saida~0_combout\ & ( 
-- (!\Random|s_saida~57_combout\ & (((!\Random|s_saida~56_combout\) # (\Random|s_saida~47_combout\)) # (\Random|Decoder3~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110001001100110011000100110010001000000010001000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Decoder3~1_combout\,
	datab => \Random|ALT_INV_s_saida~57_combout\,
	datac => \Random|ALT_INV_s_saida~47_combout\,
	datad => \Random|ALT_INV_s_saida~56_combout\,
	dataf => \Random|ALT_INV_s_saida~0_combout\,
	combout => \Random|s_saida~58_combout\);

-- Location: LABCELL_X80_Y24_N18
\Random|s_saida~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~59_combout\ = ( \Random|s_saida~1_combout\ & ( (!\Random|s_saida~58_combout\) # ((!\Random|Decoder3~1_combout\ & \Random|Decoder0~1_combout\)) ) ) # ( !\Random|s_saida~1_combout\ & ( !\Random|s_saida~58_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000010101111111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Decoder3~1_combout\,
	datac => \Random|ALT_INV_Decoder0~1_combout\,
	datad => \Random|ALT_INV_s_saida~58_combout\,
	dataf => \Random|ALT_INV_s_saida~1_combout\,
	combout => \Random|s_saida~59_combout\);

-- Location: FF_X80_Y24_N20
\Random|s_saida[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Random|s_saida~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Random|s_saida\(12));

-- Location: LABCELL_X83_Y24_N48
\Random|s_saida~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~66_combout\ = ( \Random|k[3]~DUPLICATE_q\ & ( \Random|k\(1) & ( (!\Random|k\(0)) # ((!\Controle|Ereg.Jogador2~q\ & !\Controle|Ereg.Jogador1~q\)) ) ) ) # ( !\Random|k[3]~DUPLICATE_q\ & ( \Random|k\(1) & ( (!\Controle|Ereg.Jogador2~q\ & 
-- !\Controle|Ereg.Jogador1~q\) ) ) ) # ( \Random|k[3]~DUPLICATE_q\ & ( !\Random|k\(1) & ( (!\Controle|Ereg.Jogador2~q\ & ((!\Controle|Ereg.Jogador1~q\) # ((\Random|k\(2) & !\Random|k\(0))))) # (\Controle|Ereg.Jogador2~q\ & (((\Random|k\(2) & 
-- !\Random|k\(0))))) ) ) ) # ( !\Random|k[3]~DUPLICATE_q\ & ( !\Random|k\(1) & ( (!\Controle|Ereg.Jogador2~q\ & !\Controle|Ereg.Jogador1~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100011111000100010001000100010001111111110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Controle|ALT_INV_Ereg.Jogador2~q\,
	datab => \Controle|ALT_INV_Ereg.Jogador1~q\,
	datac => \Random|ALT_INV_k\(2),
	datad => \Random|ALT_INV_k\(0),
	datae => \Random|ALT_INV_k[3]~DUPLICATE_q\,
	dataf => \Random|ALT_INV_k\(1),
	combout => \Random|s_saida~66_combout\);

-- Location: LABCELL_X80_Y24_N36
\Random|s_saida~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~65_combout\ = ( \Random|s_saida\(14) & ( (!\Random|Decoder0~2_combout\ & (((!\Random|Decoder0~11_combout\) # (\Random|Mux0~4_combout\)))) # (\Random|Decoder0~2_combout\ & (\Random|Mux1~4_combout\)) ) ) # ( !\Random|s_saida\(14) & ( 
-- (!\Random|Decoder0~2_combout\ & (((\Random|Mux0~4_combout\ & \Random|Decoder0~11_combout\)))) # (\Random|Decoder0~2_combout\ & (\Random|Mux1~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010101000000110101010111110011010101011111001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Mux1~4_combout\,
	datab => \Random|ALT_INV_Mux0~4_combout\,
	datac => \Random|ALT_INV_Decoder0~11_combout\,
	datad => \Random|ALT_INV_Decoder0~2_combout\,
	dataf => \Random|ALT_INV_s_saida\(14),
	combout => \Random|s_saida~65_combout\);

-- Location: LABCELL_X80_Y24_N39
\Random|s_saida~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~67_combout\ = ( \Controle|WideNor0~combout\ & ( (\Random|Decoder0~1_combout\ & (!\Random|Mux1~4_combout\ $ (!\Random|Mux0~4_combout\))) ) ) # ( !\Controle|WideNor0~combout\ & ( \Tent|C|IQ\(14) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000011001100000000001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Mux1~4_combout\,
	datab => \Random|ALT_INV_Mux0~4_combout\,
	datac => \Tent|C|ALT_INV_IQ\(14),
	datad => \Random|ALT_INV_Decoder0~1_combout\,
	dataf => \Controle|ALT_INV_WideNor0~combout\,
	combout => \Random|s_saida~67_combout\);

-- Location: LABCELL_X80_Y24_N6
\Random|s_saida~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~68_combout\ = ( !\Random|s_saida~67_combout\ & ( (!\Random|Decoder4~1_combout\ & (((!\Random|s_saida~65_combout\) # (\Random|s_saida~66_combout\)))) # (\Random|Decoder4~1_combout\ & (!\Random|s_saida~0_combout\ & 
-- ((!\Random|s_saida~65_combout\) # (\Random|s_saida~66_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111000001110111011100000111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Decoder4~1_combout\,
	datab => \Random|ALT_INV_s_saida~0_combout\,
	datac => \Random|ALT_INV_s_saida~66_combout\,
	datad => \Random|ALT_INV_s_saida~65_combout\,
	dataf => \Random|ALT_INV_s_saida~67_combout\,
	combout => \Random|s_saida~68_combout\);

-- Location: LABCELL_X80_Y24_N9
\Random|s_saida~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~69_combout\ = ( \Random|s_saida~1_combout\ & ( (!\Random|s_saida~68_combout\) # ((!\Random|Decoder4~1_combout\ & \Random|Decoder3~1_combout\)) ) ) # ( !\Random|s_saida~1_combout\ & ( !\Random|s_saida~68_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111110101111000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Decoder4~1_combout\,
	datac => \Random|ALT_INV_s_saida~68_combout\,
	datad => \Random|ALT_INV_Decoder3~1_combout\,
	dataf => \Random|ALT_INV_s_saida~1_combout\,
	combout => \Random|s_saida~69_combout\);

-- Location: FF_X80_Y24_N11
\Random|s_saida[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Random|s_saida~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Random|s_saida\(14));

-- Location: MLABCELL_X82_Y23_N0
\Random|s_saida~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~52_combout\ = ( \Random|Decoder0~9_combout\ & ( \Random|Mux1~4_combout\ ) ) # ( !\Random|Decoder0~9_combout\ & ( (!\Random|Decoder0~8_combout\ & ((\Random|s_saida\(11)))) # (\Random|Decoder0~8_combout\ & (\Random|Mux0~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Mux1~4_combout\,
	datab => \Random|ALT_INV_Mux0~4_combout\,
	datac => \Random|ALT_INV_Decoder0~8_combout\,
	datad => \Random|ALT_INV_s_saida\(11),
	dataf => \Random|ALT_INV_Decoder0~9_combout\,
	combout => \Random|s_saida~52_combout\);

-- Location: FF_X82_Y25_N31
\Tent|C|IQ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|C|Add0~45_sumout\,
	clrn => \Controle|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|C|IQ\(11));

-- Location: MLABCELL_X82_Y23_N3
\Random|s_saida~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~53_combout\ = ( \Controle|WideNor0~combout\ & ( (\Random|Decoder0~10_combout\ & (!\Random|Mux1~4_combout\ $ (!\Random|Mux0~4_combout\))) ) ) # ( !\Controle|WideNor0~combout\ & ( \Tent|C|IQ\(11) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000011001100000000001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Mux1~4_combout\,
	datab => \Random|ALT_INV_Mux0~4_combout\,
	datac => \Tent|C|ALT_INV_IQ\(11),
	datad => \Random|ALT_INV_Decoder0~10_combout\,
	dataf => \Controle|ALT_INV_WideNor0~combout\,
	combout => \Random|s_saida~53_combout\);

-- Location: MLABCELL_X82_Y23_N42
\Random|s_saida~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~54_combout\ = ( !\Random|s_saida~53_combout\ & ( (!\Random|Decoder0~0_combout\ & (((!\Random|s_saida~52_combout\) # (\Random|s_saida~42_combout\)))) # (\Random|Decoder0~0_combout\ & (!\Random|s_saida~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111001001110111011100100111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Decoder0~0_combout\,
	datab => \Random|ALT_INV_s_saida~0_combout\,
	datac => \Random|ALT_INV_s_saida~42_combout\,
	datad => \Random|ALT_INV_s_saida~52_combout\,
	dataf => \Random|ALT_INV_s_saida~53_combout\,
	combout => \Random|s_saida~54_combout\);

-- Location: MLABCELL_X82_Y23_N45
\Random|s_saida~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~55_combout\ = ( \Random|s_saida~1_combout\ & ( (!\Random|s_saida~54_combout\) # ((!\Random|Decoder0~0_combout\ & \Random|Decoder0~2_combout\)) ) ) # ( !\Random|s_saida~1_combout\ & ( !\Random|s_saida~54_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000010101111111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Decoder0~0_combout\,
	datac => \Random|ALT_INV_Decoder0~2_combout\,
	datad => \Random|ALT_INV_s_saida~54_combout\,
	dataf => \Random|ALT_INV_s_saida~1_combout\,
	combout => \Random|s_saida~55_combout\);

-- Location: FF_X82_Y23_N47
\Random|s_saida[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Random|s_saida~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Random|s_saida\(11));

-- Location: LABCELL_X80_Y24_N0
\Random|Mux1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Mux1~3_combout\ = ( \Random|k[0]~DUPLICATE_q\ & ( \Random|s_saida\(11) & ( (!\Random|k\(1) & ((\Random|s_saida\(14)))) # (\Random|k\(1) & (\Random|s_saida\(12))) ) ) ) # ( !\Random|k[0]~DUPLICATE_q\ & ( \Random|s_saida\(11) & ( (\Random|k\(1)) # 
-- (\Random|s_saida\(13)) ) ) ) # ( \Random|k[0]~DUPLICATE_q\ & ( !\Random|s_saida\(11) & ( (!\Random|k\(1) & ((\Random|s_saida\(14)))) # (\Random|k\(1) & (\Random|s_saida\(12))) ) ) ) # ( !\Random|k[0]~DUPLICATE_q\ & ( !\Random|s_saida\(11) & ( 
-- (\Random|s_saida\(13) & !\Random|k\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000001100110101010100001111111111110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_s_saida\(12),
	datab => \Random|ALT_INV_s_saida\(14),
	datac => \Random|ALT_INV_s_saida\(13),
	datad => \Random|ALT_INV_k\(1),
	datae => \Random|ALT_INV_k[0]~DUPLICATE_q\,
	dataf => \Random|ALT_INV_s_saida\(11),
	combout => \Random|Mux1~3_combout\);

-- Location: LABCELL_X81_Y25_N3
\Random|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Mux5~0_combout\ = ( \Random|Mux1~3_combout\ & ( \Random|Mux1~1_combout\ & ( ((!\Random|k\(2) & (\Random|Mux1~0_combout\)) # (\Random|k\(2) & ((\Random|Mux1~2_combout\)))) # (\Random|k\(3)) ) ) ) # ( !\Random|Mux1~3_combout\ & ( 
-- \Random|Mux1~1_combout\ & ( (!\Random|k\(2) & (((\Random|Mux1~0_combout\)) # (\Random|k\(3)))) # (\Random|k\(2) & (!\Random|k\(3) & ((\Random|Mux1~2_combout\)))) ) ) ) # ( \Random|Mux1~3_combout\ & ( !\Random|Mux1~1_combout\ & ( (!\Random|k\(2) & 
-- (!\Random|k\(3) & (\Random|Mux1~0_combout\))) # (\Random|k\(2) & (((\Random|Mux1~2_combout\)) # (\Random|k\(3)))) ) ) ) # ( !\Random|Mux1~3_combout\ & ( !\Random|Mux1~1_combout\ & ( (!\Random|k\(3) & ((!\Random|k\(2) & (\Random|Mux1~0_combout\)) # 
-- (\Random|k\(2) & ((\Random|Mux1~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000110010101110100101010011011100011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_k\(2),
	datab => \Random|ALT_INV_k\(3),
	datac => \Random|ALT_INV_Mux1~0_combout\,
	datad => \Random|ALT_INV_Mux1~2_combout\,
	datae => \Random|ALT_INV_Mux1~3_combout\,
	dataf => \Random|ALT_INV_Mux1~1_combout\,
	combout => \Random|Mux5~0_combout\);

-- Location: LABCELL_X81_Y25_N18
\Random|s_saida~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~19_combout\ = ( \Controle|WideNor0~combout\ & ( (\Random|Decoder0~6_combout\ & (!\Random|Mux4~0_combout\ $ (!\Random|Mux5~0_combout\))) ) ) # ( !\Controle|WideNor0~combout\ & ( \Tent|C|IQ\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000001111000000000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tent|C|ALT_INV_IQ\(3),
	datab => \Random|ALT_INV_Mux4~0_combout\,
	datac => \Random|ALT_INV_Mux5~0_combout\,
	datad => \Random|ALT_INV_Decoder0~6_combout\,
	dataf => \Controle|ALT_INV_WideNor0~combout\,
	combout => \Random|s_saida~19_combout\);

-- Location: LABCELL_X81_Y25_N48
\Random|s_saida~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~20_combout\ = ( \Random|Decoder4~0_combout\ & ( \Random|s_saida~19_combout\ ) ) # ( !\Random|Decoder4~0_combout\ & ( \Random|s_saida~19_combout\ ) ) # ( \Random|Decoder4~0_combout\ & ( !\Random|s_saida~19_combout\ & ( 
-- (!\Random|Decoder0~4_combout\ & (\Random|s_saida~6_combout\ & !\Random|Decoder0~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000010000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Decoder0~4_combout\,
	datab => \Random|ALT_INV_s_saida~6_combout\,
	datac => \Random|ALT_INV_Decoder0~6_combout\,
	datae => \Random|ALT_INV_Decoder4~0_combout\,
	dataf => \Random|ALT_INV_s_saida~19_combout\,
	combout => \Random|s_saida~20_combout\);

-- Location: LABCELL_X81_Y25_N39
\Random|s_saida~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~18_combout\ = ( \Random|Mux0~4_combout\ & ( \Random|s_saida\(3) & ( (!\Random|Decoder4~1_combout\) # (\Random|Mux1~4_combout\) ) ) ) # ( !\Random|Mux0~4_combout\ & ( \Random|s_saida\(3) & ( (!\Random|Decoder4~1_combout\ & 
-- (!\Random|Decoder3~0_combout\)) # (\Random|Decoder4~1_combout\ & ((\Random|Mux1~4_combout\))) ) ) ) # ( \Random|Mux0~4_combout\ & ( !\Random|s_saida\(3) & ( (!\Random|Decoder4~1_combout\ & (\Random|Decoder3~0_combout\)) # (\Random|Decoder4~1_combout\ & 
-- ((\Random|Mux1~4_combout\))) ) ) ) # ( !\Random|Mux0~4_combout\ & ( !\Random|s_saida\(3) & ( (\Random|Decoder4~1_combout\ & \Random|Mux1~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010100000101111110100000101011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Decoder3~0_combout\,
	datac => \Random|ALT_INV_Decoder4~1_combout\,
	datad => \Random|ALT_INV_Mux1~4_combout\,
	datae => \Random|ALT_INV_Mux0~4_combout\,
	dataf => \Random|ALT_INV_s_saida\(3),
	combout => \Random|s_saida~18_combout\);

-- Location: LABCELL_X81_Y25_N12
\Random|s_saida~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~70_combout\ = ( !\Random|Decoder0~4_combout\ & ( ((\Controle|WideNor0~combout\ & (!\Random|Decoder4~0_combout\ & (!\Random|Decoder0~6_combout\ & \Random|s_saida~18_combout\)))) # (\Random|s_saida~20_combout\) ) ) # ( 
-- \Random|Decoder0~4_combout\ & ( (((\Random|s_saida~1_combout\ & (!\Random|Decoder0~6_combout\))) # (\Random|s_saida~20_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100110011001111110011001101110011001100110011111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Controle|ALT_INV_WideNor0~combout\,
	datab => \Random|ALT_INV_s_saida~20_combout\,
	datac => \Random|ALT_INV_s_saida~1_combout\,
	datad => \Random|ALT_INV_Decoder0~6_combout\,
	datae => \Random|ALT_INV_Decoder0~4_combout\,
	dataf => \Random|ALT_INV_s_saida~18_combout\,
	datag => \Random|ALT_INV_Decoder4~0_combout\,
	combout => \Random|s_saida~70_combout\);

-- Location: FF_X81_Y25_N14
\Random|s_saida[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Random|s_saida~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Random|s_saida\(3));

-- Location: FF_X82_Y25_N2
\Tent|C|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|C|Add0~5_sumout\,
	clrn => \Controle|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|C|IQ\(1));

-- Location: LABCELL_X81_Y25_N27
\Random|s_saida~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~12_combout\ = ( \Random|Mux5~0_combout\ & ( \Controle|WideNor0~combout\ & ( (!\Random|Mux4~0_combout\ & \Random|Decoder0~4_combout\) ) ) ) # ( !\Random|Mux5~0_combout\ & ( \Controle|WideNor0~combout\ & ( (\Random|Mux4~0_combout\ & 
-- \Random|Decoder0~4_combout\) ) ) ) # ( \Random|Mux5~0_combout\ & ( !\Controle|WideNor0~combout\ & ( \Tent|C|IQ\(1) ) ) ) # ( !\Random|Mux5~0_combout\ & ( !\Controle|WideNor0~combout\ & ( \Tent|C|IQ\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000001100110000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Random|ALT_INV_Mux4~0_combout\,
	datac => \Tent|C|ALT_INV_IQ\(1),
	datad => \Random|ALT_INV_Decoder0~4_combout\,
	datae => \Random|ALT_INV_Mux5~0_combout\,
	dataf => \Controle|ALT_INV_WideNor0~combout\,
	combout => \Random|s_saida~12_combout\);

-- Location: LABCELL_X81_Y25_N6
\Random|s_saida~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~13_combout\ = ( \Random|Decoder4~0_combout\ & ( \Random|s_saida~12_combout\ ) ) # ( !\Random|Decoder4~0_combout\ & ( \Random|s_saida~12_combout\ ) ) # ( !\Random|Decoder4~0_combout\ & ( !\Random|s_saida~12_combout\ & ( 
-- (!\Random|Decoder0~4_combout\ & (\Random|s_saida~6_combout\ & \Random|Decoder3~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Decoder0~4_combout\,
	datab => \Random|ALT_INV_s_saida~6_combout\,
	datac => \Random|ALT_INV_Decoder3~0_combout\,
	datae => \Random|ALT_INV_Decoder4~0_combout\,
	dataf => \Random|ALT_INV_s_saida~12_combout\,
	combout => \Random|s_saida~13_combout\);

-- Location: LABCELL_X81_Y25_N54
\Random|s_saida~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~11_combout\ = ( \Random|Decoder0~0_combout\ & ( (!\Random|Decoder3~1_combout\ & (\Random|Mux0~4_combout\)) # (\Random|Decoder3~1_combout\ & ((\Random|Mux1~4_combout\))) ) ) # ( !\Random|Decoder0~0_combout\ & ( (!\Random|Decoder3~1_combout\ 
-- & (\Random|s_saida\(1))) # (\Random|Decoder3~1_combout\ & ((\Random|Mux1~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Mux0~4_combout\,
	datab => \Random|ALT_INV_s_saida\(1),
	datac => \Random|ALT_INV_Mux1~4_combout\,
	datad => \Random|ALT_INV_Decoder3~1_combout\,
	dataf => \Random|ALT_INV_Decoder0~0_combout\,
	combout => \Random|s_saida~11_combout\);

-- Location: LABCELL_X81_Y25_N42
\Random|s_saida~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~74_combout\ = ( !\Random|Decoder4~0_combout\ & ( ((\Controle|WideNor0~combout\ & (!\Random|Decoder0~4_combout\ & (\Random|s_saida~11_combout\ & !\Random|Decoder3~0_combout\)))) # (\Random|s_saida~13_combout\) ) ) # ( 
-- \Random|Decoder4~0_combout\ & ( ((((!\Random|Decoder0~4_combout\ & \Random|s_saida~1_combout\)) # (\Random|s_saida~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010000000000000011000000110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Controle|ALT_INV_WideNor0~combout\,
	datab => \Random|ALT_INV_Decoder0~4_combout\,
	datac => \Random|ALT_INV_s_saida~1_combout\,
	datad => \Random|ALT_INV_Decoder3~0_combout\,
	datae => \Random|ALT_INV_Decoder4~0_combout\,
	dataf => \Random|ALT_INV_s_saida~13_combout\,
	datag => \Random|ALT_INV_s_saida~11_combout\,
	combout => \Random|s_saida~74_combout\);

-- Location: FF_X81_Y25_N44
\Random|s_saida[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Random|s_saida~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Random|s_saida\(1));

-- Location: LABCELL_X81_Y24_N6
\Random|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Mux0~2_combout\ = ( \Random|s_saida\(3) & ( \Random|s_saida\(1) & ( ((!\Random|k\(1) & ((\Random|s_saida\(2)))) # (\Random|k\(1) & (\Random|s_saida\(0)))) # (\Random|k[0]~DUPLICATE_q\) ) ) ) # ( !\Random|s_saida\(3) & ( \Random|s_saida\(1) & ( 
-- (!\Random|k[0]~DUPLICATE_q\ & ((!\Random|k\(1) & ((\Random|s_saida\(2)))) # (\Random|k\(1) & (\Random|s_saida\(0))))) # (\Random|k[0]~DUPLICATE_q\ & (((\Random|k\(1))))) ) ) ) # ( \Random|s_saida\(3) & ( !\Random|s_saida\(1) & ( 
-- (!\Random|k[0]~DUPLICATE_q\ & ((!\Random|k\(1) & ((\Random|s_saida\(2)))) # (\Random|k\(1) & (\Random|s_saida\(0))))) # (\Random|k[0]~DUPLICATE_q\ & (((!\Random|k\(1))))) ) ) ) # ( !\Random|s_saida\(3) & ( !\Random|s_saida\(1) & ( 
-- (!\Random|k[0]~DUPLICATE_q\ & ((!\Random|k\(1) & ((\Random|s_saida\(2)))) # (\Random|k\(1) & (\Random|s_saida\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100001111110100010000001100011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_s_saida\(0),
	datab => \Random|ALT_INV_k[0]~DUPLICATE_q\,
	datac => \Random|ALT_INV_s_saida\(2),
	datad => \Random|ALT_INV_k\(1),
	datae => \Random|ALT_INV_s_saida\(3),
	dataf => \Random|ALT_INV_s_saida\(1),
	combout => \Random|Mux0~2_combout\);

-- Location: LABCELL_X80_Y24_N24
\Random|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Mux0~3_combout\ = ( \Random|s_saida\(9) & ( \Random|s_saida\(11) & ( ((!\Random|k\(1) & ((\Random|s_saida\(10)))) # (\Random|k\(1) & (\Random|s_saida\(8)))) # (\Random|k[0]~DUPLICATE_q\) ) ) ) # ( !\Random|s_saida\(9) & ( \Random|s_saida\(11) & ( 
-- (!\Random|k\(1) & (((\Random|s_saida\(10)) # (\Random|k[0]~DUPLICATE_q\)))) # (\Random|k\(1) & (\Random|s_saida\(8) & (!\Random|k[0]~DUPLICATE_q\))) ) ) ) # ( \Random|s_saida\(9) & ( !\Random|s_saida\(11) & ( (!\Random|k\(1) & 
-- (((!\Random|k[0]~DUPLICATE_q\ & \Random|s_saida\(10))))) # (\Random|k\(1) & (((\Random|k[0]~DUPLICATE_q\)) # (\Random|s_saida\(8)))) ) ) ) # ( !\Random|s_saida\(9) & ( !\Random|s_saida\(11) & ( (!\Random|k[0]~DUPLICATE_q\ & ((!\Random|k\(1) & 
-- ((\Random|s_saida\(10)))) # (\Random|k\(1) & (\Random|s_saida\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100111101001100011100110111000001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_s_saida\(8),
	datab => \Random|ALT_INV_k\(1),
	datac => \Random|ALT_INV_k[0]~DUPLICATE_q\,
	datad => \Random|ALT_INV_s_saida\(10),
	datae => \Random|ALT_INV_s_saida\(9),
	dataf => \Random|ALT_INV_s_saida\(11),
	combout => \Random|Mux0~3_combout\);

-- Location: LABCELL_X81_Y25_N30
\Random|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Mux4~0_combout\ = ( \Random|k\(2) & ( \Random|Mux0~3_combout\ & ( (!\Random|k\(3) & (\Random|Mux0~0_combout\)) # (\Random|k\(3) & ((\Random|Mux0~1_combout\))) ) ) ) # ( !\Random|k\(2) & ( \Random|Mux0~3_combout\ & ( (!\Random|k\(3)) # 
-- (\Random|Mux0~2_combout\) ) ) ) # ( \Random|k\(2) & ( !\Random|Mux0~3_combout\ & ( (!\Random|k\(3) & (\Random|Mux0~0_combout\)) # (\Random|k\(3) & ((\Random|Mux0~1_combout\))) ) ) ) # ( !\Random|k\(2) & ( !\Random|Mux0~3_combout\ & ( (\Random|k\(3) & 
-- \Random|Mux0~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010001110100011111001100111111110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Mux0~0_combout\,
	datab => \Random|ALT_INV_k\(3),
	datac => \Random|ALT_INV_Mux0~1_combout\,
	datad => \Random|ALT_INV_Mux0~2_combout\,
	datae => \Random|ALT_INV_k\(2),
	dataf => \Random|ALT_INV_Mux0~3_combout\,
	combout => \Random|Mux4~0_combout\);

-- Location: LABCELL_X81_Y25_N57
\Random|s_saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~0_combout\ = ( \Controle|WideNor0~combout\ & ( !\Random|Mux4~0_combout\ $ (!\Random|Mux5~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Random|ALT_INV_Mux4~0_combout\,
	datad => \Random|ALT_INV_Mux5~0_combout\,
	dataf => \Controle|ALT_INV_WideNor0~combout\,
	combout => \Random|s_saida~0_combout\);

-- Location: LABCELL_X81_Y24_N51
\Random|s_saida~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~27_combout\ = ( \Random|Mux0~4_combout\ & ( (!\Random|Decoder0~3_combout\ & (((\Random|s_saida\(5))) # (\Random|Decoder4~0_combout\))) # (\Random|Decoder0~3_combout\ & (((\Random|Mux1~4_combout\)))) ) ) # ( !\Random|Mux0~4_combout\ & ( 
-- (!\Random|Decoder0~3_combout\ & (!\Random|Decoder4~0_combout\ & ((\Random|s_saida\(5))))) # (\Random|Decoder0~3_combout\ & (((\Random|Mux1~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100100111101011110010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Decoder0~3_combout\,
	datab => \Random|ALT_INV_Decoder4~0_combout\,
	datac => \Random|ALT_INV_Mux1~4_combout\,
	datad => \Random|ALT_INV_s_saida\(5),
	dataf => \Random|ALT_INV_Mux0~4_combout\,
	combout => \Random|s_saida~27_combout\);

-- Location: LABCELL_X80_Y23_N51
\Random|s_saida~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~28_combout\ = ( \Random|s_saida~27_combout\ & ( \Controle|WideNor0~combout\ & ( (!\Random|s_saida~26_combout\ & ((!\Random|Decoder0~4_combout\) # (\Random|s_saida~6_combout\))) ) ) ) # ( !\Random|s_saida~27_combout\ & ( 
-- \Controle|WideNor0~combout\ & ( (!\Random|s_saida~26_combout\ & (\Random|s_saida~6_combout\ & \Random|Decoder0~4_combout\)) ) ) ) # ( \Random|s_saida~27_combout\ & ( !\Controle|WideNor0~combout\ & ( ((!\Random|s_saida~26_combout\ & 
-- (\Random|s_saida~6_combout\ & \Random|Decoder0~4_combout\))) # (\Tent|C|IQ\(5)) ) ) ) # ( !\Random|s_saida~27_combout\ & ( !\Controle|WideNor0~combout\ & ( ((!\Random|s_saida~26_combout\ & (\Random|s_saida~6_combout\ & \Random|Decoder0~4_combout\))) # 
-- (\Tent|C|IQ\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100101111000011110010111100000000001000101010101000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_s_saida~26_combout\,
	datab => \Random|ALT_INV_s_saida~6_combout\,
	datac => \Tent|C|ALT_INV_IQ\(5),
	datad => \Random|ALT_INV_Decoder0~4_combout\,
	datae => \Random|ALT_INV_s_saida~27_combout\,
	dataf => \Controle|ALT_INV_WideNor0~combout\,
	combout => \Random|s_saida~28_combout\);

-- Location: LABCELL_X81_Y23_N9
\Random|s_saida~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~29_combout\ = ( \Random|s_saida~1_combout\ & ( ((!\Random|Decoder0~8_combout\ & ((\Random|Decoder0~6_combout\))) # (\Random|Decoder0~8_combout\ & (\Random|s_saida~0_combout\))) # (\Random|s_saida~28_combout\) ) ) # ( 
-- !\Random|s_saida~1_combout\ & ( ((\Random|s_saida~0_combout\ & \Random|Decoder0~8_combout\)) # (\Random|s_saida~28_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110111001101110011011100110111111101110011011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_s_saida~0_combout\,
	datab => \Random|ALT_INV_s_saida~28_combout\,
	datac => \Random|ALT_INV_Decoder0~8_combout\,
	datad => \Random|ALT_INV_Decoder0~6_combout\,
	dataf => \Random|ALT_INV_s_saida~1_combout\,
	combout => \Random|s_saida~29_combout\);

-- Location: FF_X81_Y23_N11
\Random|s_saida[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Random|s_saida~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Random|s_saida\(5));

-- Location: LABCELL_X80_Y23_N12
\Random|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Add1~1_combout\ = ( \Random|k[1]~DUPLICATE_q\ & ( !\Random|k\(2) $ (\Random|k[3]~DUPLICATE_q\) ) ) # ( !\Random|k[1]~DUPLICATE_q\ & ( !\Random|k[3]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Random|ALT_INV_k\(2),
	datac => \Random|ALT_INV_k[3]~DUPLICATE_q\,
	dataf => \Random|ALT_INV_k[1]~DUPLICATE_q\,
	combout => \Random|Add1~1_combout\);

-- Location: LABCELL_X80_Y23_N15
\Random|Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Add1~0_combout\ = ( \Random|k[1]~DUPLICATE_q\ & ( !\Random|k\(2) ) ) # ( !\Random|k[1]~DUPLICATE_q\ & ( \Random|k\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Random|ALT_INV_k\(2),
	dataf => \Random|ALT_INV_k[1]~DUPLICATE_q\,
	combout => \Random|Add1~0_combout\);

-- Location: LABCELL_X80_Y23_N6
\Random|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Mux2~0_combout\ = ( \Random|s_saida\(1) & ( \Random|Add1~0_combout\ & ( (!\Random|Add1~1_combout\) # (\Random|s_saida\(9)) ) ) ) # ( !\Random|s_saida\(1) & ( \Random|Add1~0_combout\ & ( (\Random|s_saida\(9) & \Random|Add1~1_combout\) ) ) ) # ( 
-- \Random|s_saida\(1) & ( !\Random|Add1~0_combout\ & ( (!\Random|Add1~1_combout\ & ((\Random|s_saida\(5)))) # (\Random|Add1~1_combout\ & (\Random|s_saida\(13))) ) ) ) # ( !\Random|s_saida\(1) & ( !\Random|Add1~0_combout\ & ( (!\Random|Add1~1_combout\ & 
-- ((\Random|s_saida\(5)))) # (\Random|Add1~1_combout\ & (\Random|s_saida\(13))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100000000000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_s_saida\(13),
	datab => \Random|ALT_INV_s_saida\(5),
	datac => \Random|ALT_INV_s_saida\(9),
	datad => \Random|ALT_INV_Add1~1_combout\,
	datae => \Random|ALT_INV_s_saida\(1),
	dataf => \Random|ALT_INV_Add1~0_combout\,
	combout => \Random|Mux2~0_combout\);

-- Location: LABCELL_X80_Y23_N36
\Random|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Mux2~2_combout\ = ( \Random|s_saida\(8) & ( \Random|Add1~0_combout\ & ( (\Random|Add1~1_combout\) # (\Random|s_saida\(0)) ) ) ) # ( !\Random|s_saida\(8) & ( \Random|Add1~0_combout\ & ( (\Random|s_saida\(0) & !\Random|Add1~1_combout\) ) ) ) # ( 
-- \Random|s_saida\(8) & ( !\Random|Add1~0_combout\ & ( (!\Random|Add1~1_combout\ & (\Random|s_saida\(4))) # (\Random|Add1~1_combout\ & ((\Random|s_saida\(12)))) ) ) ) # ( !\Random|s_saida\(8) & ( !\Random|Add1~0_combout\ & ( (!\Random|Add1~1_combout\ & 
-- (\Random|s_saida\(4))) # (\Random|Add1~1_combout\ & ((\Random|s_saida\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_s_saida\(4),
	datab => \Random|ALT_INV_s_saida\(12),
	datac => \Random|ALT_INV_s_saida\(0),
	datad => \Random|ALT_INV_Add1~1_combout\,
	datae => \Random|ALT_INV_s_saida\(8),
	dataf => \Random|ALT_INV_Add1~0_combout\,
	combout => \Random|Mux2~2_combout\);

-- Location: LABCELL_X80_Y23_N30
\Random|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Mux2~1_combout\ = ( \Random|s_saida\(3) & ( \Random|Add1~1_combout\ & ( (!\Random|Add1~0_combout\ & ((\Random|s_saida\(15)))) # (\Random|Add1~0_combout\ & (\Random|s_saida\(11))) ) ) ) # ( !\Random|s_saida\(3) & ( \Random|Add1~1_combout\ & ( 
-- (!\Random|Add1~0_combout\ & ((\Random|s_saida\(15)))) # (\Random|Add1~0_combout\ & (\Random|s_saida\(11))) ) ) ) # ( \Random|s_saida\(3) & ( !\Random|Add1~1_combout\ & ( (\Random|Add1~0_combout\) # (\Random|s_saida\(7)) ) ) ) # ( !\Random|s_saida\(3) & ( 
-- !\Random|Add1~1_combout\ & ( (\Random|s_saida\(7) & !\Random|Add1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_s_saida\(11),
	datab => \Random|ALT_INV_s_saida\(15),
	datac => \Random|ALT_INV_s_saida\(7),
	datad => \Random|ALT_INV_Add1~0_combout\,
	datae => \Random|ALT_INV_s_saida\(3),
	dataf => \Random|ALT_INV_Add1~1_combout\,
	combout => \Random|Mux2~1_combout\);

-- Location: LABCELL_X79_Y23_N3
\Random|Mux2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Mux2~3_combout\ = ( \Random|Add1~0_combout\ & ( \Random|Add1~1_combout\ & ( \Random|s_saida\(10) ) ) ) # ( !\Random|Add1~0_combout\ & ( \Random|Add1~1_combout\ & ( \Random|s_saida\(14) ) ) ) # ( \Random|Add1~0_combout\ & ( !\Random|Add1~1_combout\ 
-- & ( \Random|s_saida\(2) ) ) ) # ( !\Random|Add1~0_combout\ & ( !\Random|Add1~1_combout\ & ( \Random|s_saida\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_s_saida\(2),
	datab => \Random|ALT_INV_s_saida\(10),
	datac => \Random|ALT_INV_s_saida\(6),
	datad => \Random|ALT_INV_s_saida\(14),
	datae => \Random|ALT_INV_Add1~0_combout\,
	dataf => \Random|ALT_INV_Add1~1_combout\,
	combout => \Random|Mux2~3_combout\);

-- Location: LABCELL_X80_Y23_N42
\Random|Mux2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Mux2~4_combout\ = ( \Random|k[0]~DUPLICATE_q\ & ( \Random|Mux2~3_combout\ & ( (!\Random|k[1]~DUPLICATE_q\ & (\Random|Mux2~0_combout\)) # (\Random|k[1]~DUPLICATE_q\ & ((\Random|Mux2~1_combout\))) ) ) ) # ( !\Random|k[0]~DUPLICATE_q\ & ( 
-- \Random|Mux2~3_combout\ & ( (\Random|Mux2~2_combout\) # (\Random|k[1]~DUPLICATE_q\) ) ) ) # ( \Random|k[0]~DUPLICATE_q\ & ( !\Random|Mux2~3_combout\ & ( (!\Random|k[1]~DUPLICATE_q\ & (\Random|Mux2~0_combout\)) # (\Random|k[1]~DUPLICATE_q\ & 
-- ((\Random|Mux2~1_combout\))) ) ) ) # ( !\Random|k[0]~DUPLICATE_q\ & ( !\Random|Mux2~3_combout\ & ( (!\Random|k[1]~DUPLICATE_q\ & \Random|Mux2~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010001000100111011101011111010111110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_k[1]~DUPLICATE_q\,
	datab => \Random|ALT_INV_Mux2~0_combout\,
	datac => \Random|ALT_INV_Mux2~2_combout\,
	datad => \Random|ALT_INV_Mux2~1_combout\,
	datae => \Random|ALT_INV_k[0]~DUPLICATE_q\,
	dataf => \Random|ALT_INV_Mux2~3_combout\,
	combout => \Random|Mux2~4_combout\);

-- Location: LABCELL_X80_Y23_N18
\Random|Add2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Add2~0_combout\ = ( \Random|k[1]~DUPLICATE_q\ & ( !\Random|k[3]~DUPLICATE_q\ $ (\Random|k\(2)) ) ) # ( !\Random|k[1]~DUPLICATE_q\ & ( !\Random|k[3]~DUPLICATE_q\ $ (((!\Random|k[0]~DUPLICATE_q\ & \Random|k\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000111100111100000011110011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Random|ALT_INV_k[0]~DUPLICATE_q\,
	datac => \Random|ALT_INV_k[3]~DUPLICATE_q\,
	datad => \Random|ALT_INV_k\(2),
	dataf => \Random|ALT_INV_k[1]~DUPLICATE_q\,
	combout => \Random|Add2~0_combout\);

-- Location: MLABCELL_X82_Y23_N18
\Random|Mux0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Mux0~5_combout\ = ( \Random|s_saida\(10) & ( (\Random|s_saida\(11)) # (\Random|k\(0)) ) ) # ( !\Random|s_saida\(10) & ( (!\Random|k\(0) & \Random|s_saida\(11)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Random|ALT_INV_k\(0),
	datad => \Random|ALT_INV_s_saida\(11),
	dataf => \Random|ALT_INV_s_saida\(10),
	combout => \Random|Mux0~5_combout\);

-- Location: LABCELL_X81_Y23_N6
\Random|Mux0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Mux0~8_combout\ = ( \Random|k\(0) & ( \Random|s_saida\(12) ) ) # ( !\Random|k\(0) & ( \Random|s_saida\(13) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Random|ALT_INV_s_saida\(12),
	datad => \Random|ALT_INV_s_saida\(13),
	dataf => \Random|ALT_INV_k\(0),
	combout => \Random|Mux0~8_combout\);

-- Location: LABCELL_X79_Y23_N42
\Random|Mux0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Mux0~6_combout\ = ( \Random|s_saida\(15) & ( \Random|s_saida\(14) ) ) # ( !\Random|s_saida\(15) & ( \Random|s_saida\(14) & ( \Random|k\(0) ) ) ) # ( \Random|s_saida\(15) & ( !\Random|s_saida\(14) & ( !\Random|k\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Random|ALT_INV_k\(0),
	datae => \Random|ALT_INV_s_saida\(15),
	dataf => \Random|ALT_INV_s_saida\(14),
	combout => \Random|Mux0~6_combout\);

-- Location: LABCELL_X79_Y23_N57
\Random|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Add2~1_combout\ = ( \Random|k[1]~DUPLICATE_q\ & ( \Random|k\(2) ) ) # ( !\Random|k[1]~DUPLICATE_q\ & ( !\Random|k\(2) $ (!\Random|k[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_k\(2),
	datad => \Random|ALT_INV_k[0]~DUPLICATE_q\,
	dataf => \Random|ALT_INV_k[1]~DUPLICATE_q\,
	combout => \Random|Add2~1_combout\);

-- Location: LABCELL_X80_Y23_N0
\Random|Mux0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Mux0~10_combout\ = ( \Random|s_saida\(6) & ( (\Random|s_saida\(7)) # (\Random|k[0]~DUPLICATE_q\) ) ) # ( !\Random|s_saida\(6) & ( (!\Random|k[0]~DUPLICATE_q\ & \Random|s_saida\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Random|ALT_INV_k[0]~DUPLICATE_q\,
	datac => \Random|ALT_INV_s_saida\(7),
	dataf => \Random|ALT_INV_s_saida\(6),
	combout => \Random|Mux0~10_combout\);

-- Location: LABCELL_X80_Y23_N21
\Random|Mux0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Mux0~12_combout\ = ( \Random|k\(0) & ( \Random|s_saida\(4) ) ) # ( !\Random|k\(0) & ( \Random|s_saida\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_s_saida\(4),
	datac => \Random|ALT_INV_s_saida\(5),
	dataf => \Random|ALT_INV_k\(0),
	combout => \Random|Mux0~12_combout\);

-- Location: LABCELL_X80_Y24_N12
\Random|Add2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Add2~2_combout\ = ( \Random|k\(1) & ( \Random|k[0]~DUPLICATE_q\ ) ) # ( !\Random|k\(1) & ( !\Random|k[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Random|ALT_INV_k[0]~DUPLICATE_q\,
	dataf => \Random|ALT_INV_k\(1),
	combout => \Random|Add2~2_combout\);

-- Location: MLABCELL_X82_Y23_N27
\Random|Mux0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Mux0~9_combout\ = ( \Random|s_saida\(3) & ( (!\Random|k\(0)) # (\Random|s_saida\(2)) ) ) # ( !\Random|s_saida\(3) & ( (\Random|s_saida\(2) & \Random|k\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Random|ALT_INV_s_saida\(2),
	datad => \Random|ALT_INV_k\(0),
	dataf => \Random|ALT_INV_s_saida\(3),
	combout => \Random|Mux0~9_combout\);

-- Location: LABCELL_X80_Y23_N3
\Random|Mux0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Mux0~11_combout\ = ( \Random|s_saida\(0) & ( (\Random|s_saida\(1)) # (\Random|k[0]~DUPLICATE_q\) ) ) # ( !\Random|s_saida\(0) & ( (!\Random|k[0]~DUPLICATE_q\ & \Random|s_saida\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Random|ALT_INV_k[0]~DUPLICATE_q\,
	datad => \Random|ALT_INV_s_saida\(1),
	dataf => \Random|ALT_INV_s_saida\(0),
	combout => \Random|Mux0~11_combout\);

-- Location: LABCELL_X80_Y23_N24
\Random|Mux3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Mux3~4_combout\ = ( !\Random|Add2~1_combout\ & ( ((!\Random|Add2~0_combout\ & ((!\Random|Add2~2_combout\ & (\Random|Mux0~11_combout\)) # (\Random|Add2~2_combout\ & ((\Random|Mux0~9_combout\))))) # (\Random|Add2~0_combout\ & 
-- (((\Random|Add2~2_combout\))))) ) ) # ( \Random|Add2~1_combout\ & ( (!\Random|Add2~0_combout\ & ((!\Random|Add2~2_combout\ & (((\Random|Mux0~12_combout\)))) # (\Random|Add2~2_combout\ & (\Random|Mux0~10_combout\)))) # (\Random|Add2~0_combout\ & 
-- ((((\Random|Add2~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000110011000011000111011100001100111111110000110001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Mux0~10_combout\,
	datab => \Random|ALT_INV_Add2~0_combout\,
	datac => \Random|ALT_INV_Mux0~12_combout\,
	datad => \Random|ALT_INV_Add2~2_combout\,
	datae => \Random|ALT_INV_Add2~1_combout\,
	dataf => \Random|ALT_INV_Mux0~9_combout\,
	datag => \Random|ALT_INV_Mux0~11_combout\,
	combout => \Random|Mux3~4_combout\);

-- Location: LABCELL_X79_Y23_N48
\Random|Mux0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Mux0~7_combout\ = ( \Random|k\(0) & ( \Random|s_saida\(8) ) ) # ( !\Random|k\(0) & ( \Random|s_saida\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Random|ALT_INV_s_saida\(8),
	datad => \Random|ALT_INV_s_saida\(9),
	dataf => \Random|ALT_INV_k\(0),
	combout => \Random|Mux0~7_combout\);

-- Location: LABCELL_X80_Y23_N54
\Random|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Mux3~0_combout\ = ( !\Random|Add2~1_combout\ & ( (!\Random|Add2~0_combout\ & ((((\Random|Mux3~4_combout\))))) # (\Random|Add2~0_combout\ & (((!\Random|Mux3~4_combout\ & ((\Random|Mux0~7_combout\))) # (\Random|Mux3~4_combout\ & 
-- (\Random|Mux0~5_combout\))))) ) ) # ( \Random|Add2~1_combout\ & ( (!\Random|Add2~0_combout\ & ((((\Random|Mux3~4_combout\))))) # (\Random|Add2~0_combout\ & (((!\Random|Mux3~4_combout\ & (\Random|Mux0~8_combout\)) # (\Random|Mux3~4_combout\ & 
-- ((\Random|Mux0~6_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000001010000010110111011101110111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Add2~0_combout\,
	datab => \Random|ALT_INV_Mux0~5_combout\,
	datac => \Random|ALT_INV_Mux0~8_combout\,
	datad => \Random|ALT_INV_Mux0~6_combout\,
	datae => \Random|ALT_INV_Add2~1_combout\,
	dataf => \Random|ALT_INV_Mux3~4_combout\,
	datag => \Random|ALT_INV_Mux0~7_combout\,
	combout => \Random|Mux3~0_combout\);

-- Location: LABCELL_X81_Y23_N21
\Random|s_saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~1_combout\ = ( \Random|Mux3~0_combout\ & ( (\Controle|WideNor0~combout\ & !\Random|Mux2~4_combout\) ) ) # ( !\Random|Mux3~0_combout\ & ( (\Controle|WideNor0~combout\ & \Random|Mux2~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Controle|ALT_INV_WideNor0~combout\,
	datad => \Random|ALT_INV_Mux2~4_combout\,
	dataf => \Random|ALT_INV_Mux3~0_combout\,
	combout => \Random|s_saida~1_combout\);

-- Location: LABCELL_X83_Y24_N54
\Random|s_saida~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~61_combout\ = ( \Random|k[3]~DUPLICATE_q\ & ( \Random|k\(1) & ( (!\Random|k\(2) & (!\Controle|Ereg.Jogador1~q\ & (!\Controle|Ereg.Jogador2~q\))) # (\Random|k\(2) & (((!\Controle|Ereg.Jogador1~q\ & !\Controle|Ereg.Jogador2~q\)) # 
-- (\Random|k\(0)))) ) ) ) # ( !\Random|k[3]~DUPLICATE_q\ & ( \Random|k\(1) & ( (!\Controle|Ereg.Jogador1~q\ & !\Controle|Ereg.Jogador2~q\) ) ) ) # ( \Random|k[3]~DUPLICATE_q\ & ( !\Random|k\(1) & ( (!\Random|k\(2) & (!\Controle|Ereg.Jogador1~q\ & 
-- (!\Controle|Ereg.Jogador2~q\))) # (\Random|k\(2) & (((!\Controle|Ereg.Jogador1~q\ & !\Controle|Ereg.Jogador2~q\)) # (\Random|k\(0)))) ) ) ) # ( !\Random|k[3]~DUPLICATE_q\ & ( !\Random|k\(1) & ( (!\Random|k\(2) & (((!\Controle|Ereg.Jogador1~q\ & 
-- !\Controle|Ereg.Jogador2~q\)) # (\Random|k\(0)))) # (\Random|k\(2) & (!\Controle|Ereg.Jogador1~q\ & (!\Controle|Ereg.Jogador2~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011101010110000001101010111000000110000001100000011010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_k\(2),
	datab => \Controle|ALT_INV_Ereg.Jogador1~q\,
	datac => \Controle|ALT_INV_Ereg.Jogador2~q\,
	datad => \Random|ALT_INV_k\(0),
	datae => \Random|ALT_INV_k[3]~DUPLICATE_q\,
	dataf => \Random|ALT_INV_k\(1),
	combout => \Random|s_saida~61_combout\);

-- Location: MLABCELL_X82_Y24_N54
\Random|s_saida~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~60_combout\ = ( \Random|Decoder0~11_combout\ & ( \Random|Mux1~4_combout\ ) ) # ( !\Random|Decoder0~11_combout\ & ( (!\Random|Decoder0~10_combout\ & ((\Random|s_saida\(13)))) # (\Random|Decoder0~10_combout\ & (\Random|Mux0~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Mux1~4_combout\,
	datab => \Random|ALT_INV_Mux0~4_combout\,
	datac => \Random|ALT_INV_s_saida\(13),
	datad => \Random|ALT_INV_Decoder0~10_combout\,
	dataf => \Random|ALT_INV_Decoder0~11_combout\,
	combout => \Random|s_saida~60_combout\);

-- Location: MLABCELL_X82_Y24_N48
\Random|s_saida~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~62_combout\ = ( \Controle|WideNor0~combout\ & ( (\Random|Decoder0~2_combout\ & (!\Random|Mux1~4_combout\ $ (!\Random|Mux0~4_combout\))) ) ) # ( !\Controle|WideNor0~combout\ & ( \Tent|C|IQ[13]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000110000001100000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Mux1~4_combout\,
	datab => \Random|ALT_INV_Mux0~4_combout\,
	datac => \Random|ALT_INV_Decoder0~2_combout\,
	datad => \Tent|C|ALT_INV_IQ[13]~DUPLICATE_q\,
	dataf => \Controle|ALT_INV_WideNor0~combout\,
	combout => \Random|s_saida~62_combout\);

-- Location: MLABCELL_X82_Y24_N30
\Random|s_saida~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~63_combout\ = ( !\Random|s_saida~62_combout\ & ( (!\Random|Decoder3~0_combout\ & (((!\Random|s_saida~60_combout\) # (\Random|s_saida~61_combout\)))) # (\Random|Decoder3~0_combout\ & (!\Random|s_saida~0_combout\ & 
-- ((!\Random|s_saida~60_combout\) # (\Random|s_saida~61_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111000001110111011100000111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Decoder3~0_combout\,
	datab => \Random|ALT_INV_s_saida~0_combout\,
	datac => \Random|ALT_INV_s_saida~61_combout\,
	datad => \Random|ALT_INV_s_saida~60_combout\,
	dataf => \Random|ALT_INV_s_saida~62_combout\,
	combout => \Random|s_saida~63_combout\);

-- Location: MLABCELL_X82_Y24_N33
\Random|s_saida~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~64_combout\ = ( \Random|s_saida~63_combout\ & ( (!\Random|Decoder3~0_combout\ & (\Random|Decoder0~0_combout\ & \Random|s_saida~1_combout\)) ) ) # ( !\Random|s_saida~63_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Decoder3~0_combout\,
	datac => \Random|ALT_INV_Decoder0~0_combout\,
	datad => \Random|ALT_INV_s_saida~1_combout\,
	dataf => \Random|ALT_INV_s_saida~63_combout\,
	combout => \Random|s_saida~64_combout\);

-- Location: FF_X82_Y24_N35
\Random|s_saida[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Random|s_saida~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Random|s_saida\(13));

-- Location: LABCELL_X81_Y24_N54
\Random|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Mux0~1_combout\ = ( \Random|s_saida\(14) & ( \Random|s_saida\(12) & ( (!\Random|k[0]~DUPLICATE_q\) # ((!\Random|k\(1) & (\Random|s_saida\(15))) # (\Random|k\(1) & ((\Random|s_saida\(13))))) ) ) ) # ( !\Random|s_saida\(14) & ( \Random|s_saida\(12) 
-- & ( (!\Random|k\(1) & (\Random|s_saida\(15) & ((\Random|k[0]~DUPLICATE_q\)))) # (\Random|k\(1) & (((!\Random|k[0]~DUPLICATE_q\) # (\Random|s_saida\(13))))) ) ) ) # ( \Random|s_saida\(14) & ( !\Random|s_saida\(12) & ( (!\Random|k\(1) & 
-- (((!\Random|k[0]~DUPLICATE_q\)) # (\Random|s_saida\(15)))) # (\Random|k\(1) & (((\Random|s_saida\(13) & \Random|k[0]~DUPLICATE_q\)))) ) ) ) # ( !\Random|s_saida\(14) & ( !\Random|s_saida\(12) & ( (\Random|k[0]~DUPLICATE_q\ & ((!\Random|k\(1) & 
-- (\Random|s_saida\(15))) # (\Random|k\(1) & ((\Random|s_saida\(13)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011111100000101001100001111010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_s_saida\(15),
	datab => \Random|ALT_INV_s_saida\(13),
	datac => \Random|ALT_INV_k\(1),
	datad => \Random|ALT_INV_k[0]~DUPLICATE_q\,
	datae => \Random|ALT_INV_s_saida\(14),
	dataf => \Random|ALT_INV_s_saida\(12),
	combout => \Random|Mux0~1_combout\);

-- Location: LABCELL_X81_Y24_N42
\Random|Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Mux0~4_combout\ = ( \Random|Mux0~0_combout\ & ( \Random|Mux0~3_combout\ & ( (!\Random|k\(3) & (((\Random|k\(2))) # (\Random|Mux0~1_combout\))) # (\Random|k\(3) & (((!\Random|k\(2)) # (\Random|Mux0~2_combout\)))) ) ) ) # ( !\Random|Mux0~0_combout\ 
-- & ( \Random|Mux0~3_combout\ & ( (!\Random|k\(3) & (((\Random|k\(2))) # (\Random|Mux0~1_combout\))) # (\Random|k\(3) & (((\Random|k\(2) & \Random|Mux0~2_combout\)))) ) ) ) # ( \Random|Mux0~0_combout\ & ( !\Random|Mux0~3_combout\ & ( (!\Random|k\(3) & 
-- (\Random|Mux0~1_combout\ & (!\Random|k\(2)))) # (\Random|k\(3) & (((!\Random|k\(2)) # (\Random|Mux0~2_combout\)))) ) ) ) # ( !\Random|Mux0~0_combout\ & ( !\Random|Mux0~3_combout\ & ( (!\Random|k\(3) & (\Random|Mux0~1_combout\ & (!\Random|k\(2)))) # 
-- (\Random|k\(3) & (((\Random|k\(2) & \Random|Mux0~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000011011100000111001101001100010011110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Mux0~1_combout\,
	datab => \Random|ALT_INV_k\(3),
	datac => \Random|ALT_INV_k\(2),
	datad => \Random|ALT_INV_Mux0~2_combout\,
	datae => \Random|ALT_INV_Mux0~0_combout\,
	dataf => \Random|ALT_INV_Mux0~3_combout\,
	combout => \Random|Mux0~4_combout\);

-- Location: MLABCELL_X82_Y24_N57
\Random|s_saida~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~8_combout\ = ( \Random|Decoder0~0_combout\ & ( \Random|Mux1~4_combout\ ) ) # ( !\Random|Decoder0~0_combout\ & ( (!\Random|Decoder0~1_combout\ & ((\Random|s_saida\(0)))) # (\Random|Decoder0~1_combout\ & (\Random|Mux0~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Mux1~4_combout\,
	datab => \Random|ALT_INV_Mux0~4_combout\,
	datac => \Random|ALT_INV_Decoder0~1_combout\,
	datad => \Random|ALT_INV_s_saida\(0),
	dataf => \Random|ALT_INV_Decoder0~0_combout\,
	combout => \Random|s_saida~8_combout\);

-- Location: MLABCELL_X82_Y24_N0
\Random|s_saida~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~9_combout\ = ( \Random|Decoder3~1_combout\ & ( \Random|s_saida~6_combout\ & ( (!\Random|s_saida~7_combout\) # ((!\Controle|WideNor0~combout\ & \Tent|C|IQ[0]~DUPLICATE_q\)) ) ) ) # ( !\Random|Decoder3~1_combout\ & ( 
-- \Random|s_saida~6_combout\ & ( (!\Controle|WideNor0~combout\ & (((\Tent|C|IQ[0]~DUPLICATE_q\)))) # (\Controle|WideNor0~combout\ & (!\Random|s_saida~7_combout\ & ((\Random|s_saida~8_combout\)))) ) ) ) # ( \Random|Decoder3~1_combout\ & ( 
-- !\Random|s_saida~6_combout\ & ( (!\Controle|WideNor0~combout\ & \Tent|C|IQ[0]~DUPLICATE_q\) ) ) ) # ( !\Random|Decoder3~1_combout\ & ( !\Random|s_saida~6_combout\ & ( (!\Controle|WideNor0~combout\ & (((\Tent|C|IQ[0]~DUPLICATE_q\)))) # 
-- (\Controle|WideNor0~combout\ & (!\Random|s_saida~7_combout\ & ((\Random|s_saida~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000101110000011000000110000001100001011101010111010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_s_saida~7_combout\,
	datab => \Controle|ALT_INV_WideNor0~combout\,
	datac => \Tent|C|ALT_INV_IQ[0]~DUPLICATE_q\,
	datad => \Random|ALT_INV_s_saida~8_combout\,
	datae => \Random|ALT_INV_Decoder3~1_combout\,
	dataf => \Random|ALT_INV_s_saida~6_combout\,
	combout => \Random|s_saida~9_combout\);

-- Location: LABCELL_X81_Y24_N36
\Random|s_saida~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~10_combout\ = ( \Random|s_saida~0_combout\ & ( (((\Random|s_saida~1_combout\ & \Random|Decoder4~1_combout\)) # (\Random|Decoder0~3_combout\)) # (\Random|s_saida~9_combout\) ) ) # ( !\Random|s_saida~0_combout\ & ( 
-- ((\Random|s_saida~1_combout\ & (\Random|Decoder4~1_combout\ & !\Random|Decoder0~3_combout\))) # (\Random|s_saida~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101010101010101110101010101010111111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_s_saida~9_combout\,
	datab => \Random|ALT_INV_s_saida~1_combout\,
	datac => \Random|ALT_INV_Decoder4~1_combout\,
	datad => \Random|ALT_INV_Decoder0~3_combout\,
	dataf => \Random|ALT_INV_s_saida~0_combout\,
	combout => \Random|s_saida~10_combout\);

-- Location: FF_X81_Y24_N38
\Random|s_saida[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Random|s_saida~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Random|s_saida\(0));

-- Location: LABCELL_X81_Y24_N21
\Random|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Mux1~1_combout\ = ( \Random|s_saida\(2) & ( \Random|s_saida\(1) & ( (!\Random|k\(1)) # ((!\Random|k[0]~DUPLICATE_q\ & (\Random|s_saida\(15))) # (\Random|k[0]~DUPLICATE_q\ & ((\Random|s_saida\(0))))) ) ) ) # ( !\Random|s_saida\(2) & ( 
-- \Random|s_saida\(1) & ( (!\Random|k\(1) & (((!\Random|k[0]~DUPLICATE_q\)))) # (\Random|k\(1) & ((!\Random|k[0]~DUPLICATE_q\ & (\Random|s_saida\(15))) # (\Random|k[0]~DUPLICATE_q\ & ((\Random|s_saida\(0)))))) ) ) ) # ( \Random|s_saida\(2) & ( 
-- !\Random|s_saida\(1) & ( (!\Random|k\(1) & (((\Random|k[0]~DUPLICATE_q\)))) # (\Random|k\(1) & ((!\Random|k[0]~DUPLICATE_q\ & (\Random|s_saida\(15))) # (\Random|k[0]~DUPLICATE_q\ & ((\Random|s_saida\(0)))))) ) ) ) # ( !\Random|s_saida\(2) & ( 
-- !\Random|s_saida\(1) & ( (\Random|k\(1) & ((!\Random|k[0]~DUPLICATE_q\ & (\Random|s_saida\(15))) # (\Random|k[0]~DUPLICATE_q\ & ((\Random|s_saida\(0)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000111000001111111010000110100111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_s_saida\(15),
	datab => \Random|ALT_INV_k\(1),
	datac => \Random|ALT_INV_k[0]~DUPLICATE_q\,
	datad => \Random|ALT_INV_s_saida\(0),
	datae => \Random|ALT_INV_s_saida\(2),
	dataf => \Random|ALT_INV_s_saida\(1),
	combout => \Random|Mux1~1_combout\);

-- Location: LABCELL_X81_Y24_N24
\Random|Mux1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|Mux1~4_combout\ = ( \Random|Mux1~0_combout\ & ( \Random|Mux1~3_combout\ & ( (!\Random|k\(3)) # ((!\Random|k\(2) & ((\Random|Mux1~2_combout\))) # (\Random|k\(2) & (\Random|Mux1~1_combout\))) ) ) ) # ( !\Random|Mux1~0_combout\ & ( 
-- \Random|Mux1~3_combout\ & ( (!\Random|k\(3) & (((!\Random|k\(2))))) # (\Random|k\(3) & ((!\Random|k\(2) & ((\Random|Mux1~2_combout\))) # (\Random|k\(2) & (\Random|Mux1~1_combout\)))) ) ) ) # ( \Random|Mux1~0_combout\ & ( !\Random|Mux1~3_combout\ & ( 
-- (!\Random|k\(3) & (((\Random|k\(2))))) # (\Random|k\(3) & ((!\Random|k\(2) & ((\Random|Mux1~2_combout\))) # (\Random|k\(2) & (\Random|Mux1~1_combout\)))) ) ) ) # ( !\Random|Mux1~0_combout\ & ( !\Random|Mux1~3_combout\ & ( (\Random|k\(3) & ((!\Random|k\(2) 
-- & ((\Random|Mux1~2_combout\))) # (\Random|k\(2) & (\Random|Mux1~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001000011010011110111000001111100011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Mux1~1_combout\,
	datab => \Random|ALT_INV_k\(3),
	datac => \Random|ALT_INV_k\(2),
	datad => \Random|ALT_INV_Mux1~2_combout\,
	datae => \Random|ALT_INV_Mux1~0_combout\,
	dataf => \Random|ALT_INV_Mux1~3_combout\,
	combout => \Random|Mux1~4_combout\);

-- Location: LABCELL_X83_Y24_N36
\Random|s_saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~3_combout\ = ( \Random|Mux1~4_combout\ & ( \Random|Mux0~4_combout\ & ( (!\Controle|WideNor0~combout\ & \Tent|C|IQ[15]~DUPLICATE_q\) ) ) ) # ( !\Random|Mux1~4_combout\ & ( \Random|Mux0~4_combout\ & ( (!\Controle|WideNor0~combout\ & 
-- (\Tent|C|IQ[15]~DUPLICATE_q\)) # (\Controle|WideNor0~combout\ & ((\Random|Decoder0~0_combout\))) ) ) ) # ( \Random|Mux1~4_combout\ & ( !\Random|Mux0~4_combout\ & ( (!\Controle|WideNor0~combout\ & (\Tent|C|IQ[15]~DUPLICATE_q\)) # 
-- (\Controle|WideNor0~combout\ & ((\Random|Decoder0~0_combout\))) ) ) ) # ( !\Random|Mux1~4_combout\ & ( !\Random|Mux0~4_combout\ & ( (!\Controle|WideNor0~combout\ & \Tent|C|IQ[15]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000011111100001100001111110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Controle|ALT_INV_WideNor0~combout\,
	datac => \Tent|C|ALT_INV_IQ[15]~DUPLICATE_q\,
	datad => \Random|ALT_INV_Decoder0~0_combout\,
	datae => \Random|ALT_INV_Mux1~4_combout\,
	dataf => \Random|ALT_INV_Mux0~4_combout\,
	combout => \Random|s_saida~3_combout\);

-- Location: LABCELL_X83_Y24_N45
\Random|s_saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~2_combout\ = ( \Random|Mux1~4_combout\ & ( \Random|Mux0~4_combout\ & ( ((\Random|Decoder0~1_combout\) # (\Random|s_saida\(15))) # (\Random|Decoder0~2_combout\) ) ) ) # ( !\Random|Mux1~4_combout\ & ( \Random|Mux0~4_combout\ & ( 
-- (!\Random|Decoder0~1_combout\ & ((\Random|s_saida\(15)) # (\Random|Decoder0~2_combout\))) ) ) ) # ( \Random|Mux1~4_combout\ & ( !\Random|Mux0~4_combout\ & ( ((!\Random|Decoder0~2_combout\ & \Random|s_saida\(15))) # (\Random|Decoder0~1_combout\) ) ) ) # ( 
-- !\Random|Mux1~4_combout\ & ( !\Random|Mux0~4_combout\ & ( (!\Random|Decoder0~2_combout\ & (\Random|s_saida\(15) & !\Random|Decoder0~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010101111111101011111000000000101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_Decoder0~2_combout\,
	datac => \Random|ALT_INV_s_saida\(15),
	datad => \Random|ALT_INV_Decoder0~1_combout\,
	datae => \Random|ALT_INV_Mux1~4_combout\,
	dataf => \Random|ALT_INV_Mux0~4_combout\,
	combout => \Random|s_saida~2_combout\);

-- Location: LABCELL_X83_Y24_N18
\Random|s_saida~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~4_combout\ = ( \Random|s_saida~2_combout\ & ( \Controle|WideNor0~combout\ & ( (!\Random|s_saida~3_combout\ & (((\Random|Decoder0~0_combout\) # (\Random|Decoder3~0_combout\)) # (\Random|Decoder4~0_combout\))) ) ) ) # ( 
-- !\Random|s_saida~2_combout\ & ( \Controle|WideNor0~combout\ & ( !\Random|s_saida~3_combout\ ) ) ) # ( \Random|s_saida~2_combout\ & ( !\Controle|WideNor0~combout\ & ( !\Random|s_saida~3_combout\ ) ) ) # ( !\Random|s_saida~2_combout\ & ( 
-- !\Controle|WideNor0~combout\ & ( !\Random|s_saida~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010100010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_s_saida~3_combout\,
	datab => \Random|ALT_INV_Decoder4~0_combout\,
	datac => \Random|ALT_INV_Decoder3~0_combout\,
	datad => \Random|ALT_INV_Decoder0~0_combout\,
	datae => \Random|ALT_INV_s_saida~2_combout\,
	dataf => \Controle|ALT_INV_WideNor0~combout\,
	combout => \Random|s_saida~4_combout\);

-- Location: MLABCELL_X82_Y24_N6
\Random|s_saida~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Random|s_saida~5_combout\ = ( \Random|Decoder3~0_combout\ & ( \Random|s_saida~1_combout\ & ( (!\Random|s_saida~4_combout\) # ((!\Random|Decoder4~0_combout\) # (\Random|s_saida~0_combout\)) ) ) ) # ( !\Random|Decoder3~0_combout\ & ( 
-- \Random|s_saida~1_combout\ & ( (!\Random|s_saida~4_combout\) # ((\Random|s_saida~0_combout\ & \Random|Decoder4~0_combout\)) ) ) ) # ( \Random|Decoder3~0_combout\ & ( !\Random|s_saida~1_combout\ & ( (!\Random|s_saida~4_combout\) # 
-- ((\Random|s_saida~0_combout\ & \Random|Decoder4~0_combout\)) ) ) ) # ( !\Random|Decoder3~0_combout\ & ( !\Random|s_saida~1_combout\ & ( (!\Random|s_saida~4_combout\) # ((\Random|s_saida~0_combout\ & \Random|Decoder4~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010111011101010101011101110101010101110111111111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_s_saida~4_combout\,
	datab => \Random|ALT_INV_s_saida~0_combout\,
	datad => \Random|ALT_INV_Decoder4~0_combout\,
	datae => \Random|ALT_INV_Decoder3~0_combout\,
	dataf => \Random|ALT_INV_s_saida~1_combout\,
	combout => \Random|s_saida~5_combout\);

-- Location: FF_X82_Y24_N8
\Random|s_saida[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Random|s_saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Random|s_saida\(15));

-- Location: LABCELL_X81_Y23_N48
\Tent|C|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|C|Equal0~0_combout\ = ( \Tent|C|IQ[15]~DUPLICATE_q\ & ( !\Random|s_saida\(15) ) ) # ( !\Tent|C|IQ[15]~DUPLICATE_q\ & ( \Random|s_saida\(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Random|ALT_INV_s_saida\(15),
	dataf => \Tent|C|ALT_INV_IQ[15]~DUPLICATE_q\,
	combout => \Tent|C|Equal0~0_combout\);

-- Location: FF_X82_Y25_N37
\Tent|C|IQ[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|C|Add0~53_sumout\,
	clrn => \Controle|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|C|IQ\(13));

-- Location: LABCELL_X81_Y23_N42
\Tent|C|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|C|Equal0~5_combout\ = ( \Random|s_saida\(13) & ( \Random|s_saida\(14) & ( (\Tent|C|IQ\(14) & (\Tent|C|IQ\(13) & (!\Tent|C|IQ[12]~DUPLICATE_q\ $ (\Random|s_saida\(12))))) ) ) ) # ( !\Random|s_saida\(13) & ( \Random|s_saida\(14) & ( (\Tent|C|IQ\(14) & 
-- (!\Tent|C|IQ\(13) & (!\Tent|C|IQ[12]~DUPLICATE_q\ $ (\Random|s_saida\(12))))) ) ) ) # ( \Random|s_saida\(13) & ( !\Random|s_saida\(14) & ( (!\Tent|C|IQ\(14) & (\Tent|C|IQ\(13) & (!\Tent|C|IQ[12]~DUPLICATE_q\ $ (\Random|s_saida\(12))))) ) ) ) # ( 
-- !\Random|s_saida\(13) & ( !\Random|s_saida\(14) & ( (!\Tent|C|IQ\(14) & (!\Tent|C|IQ\(13) & (!\Tent|C|IQ[12]~DUPLICATE_q\ $ (\Random|s_saida\(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000000000001000010000100001000000000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tent|C|ALT_INV_IQ[12]~DUPLICATE_q\,
	datab => \Tent|C|ALT_INV_IQ\(14),
	datac => \Random|ALT_INV_s_saida\(12),
	datad => \Tent|C|ALT_INV_IQ\(13),
	datae => \Random|ALT_INV_s_saida\(13),
	dataf => \Random|ALT_INV_s_saida\(14),
	combout => \Tent|C|Equal0~5_combout\);

-- Location: FF_X82_Y25_N55
\Tent|C|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Tent|C|IQ[0]~0_combout\,
	clrn => \Controle|WideNor0~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|C|IQ\(0));

-- Location: MLABCELL_X82_Y25_N48
\Tent|C|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|C|Equal0~1_combout\ = ( \Random|s_saida\(1) & ( \Random|s_saida\(0) & ( (\Tent|C|IQ\(0) & (\Tent|C|IQ\(1) & (!\Tent|C|IQ[2]~DUPLICATE_q\ $ (\Random|s_saida\(2))))) ) ) ) # ( !\Random|s_saida\(1) & ( \Random|s_saida\(0) & ( (\Tent|C|IQ\(0) & 
-- (!\Tent|C|IQ\(1) & (!\Tent|C|IQ[2]~DUPLICATE_q\ $ (\Random|s_saida\(2))))) ) ) ) # ( \Random|s_saida\(1) & ( !\Random|s_saida\(0) & ( (!\Tent|C|IQ\(0) & (\Tent|C|IQ\(1) & (!\Tent|C|IQ[2]~DUPLICATE_q\ $ (\Random|s_saida\(2))))) ) ) ) # ( 
-- !\Random|s_saida\(1) & ( !\Random|s_saida\(0) & ( (!\Tent|C|IQ\(0) & (!\Tent|C|IQ\(1) & (!\Tent|C|IQ[2]~DUPLICATE_q\ $ (\Random|s_saida\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000000010000000010000100000000100000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tent|C|ALT_INV_IQ[2]~DUPLICATE_q\,
	datab => \Tent|C|ALT_INV_IQ\(0),
	datac => \Tent|C|ALT_INV_IQ\(1),
	datad => \Random|ALT_INV_s_saida\(2),
	datae => \Random|ALT_INV_s_saida\(1),
	dataf => \Random|ALT_INV_s_saida\(0),
	combout => \Tent|C|Equal0~1_combout\);

-- Location: FF_X82_Y25_N8
\Tent|C|IQ[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|C|Add0~13_sumout\,
	clrn => \Controle|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|C|IQ[3]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y23_N54
\Tent|C|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|C|Equal0~2_combout\ = ( \Tent|C|IQ[3]~DUPLICATE_q\ & ( \Tent|C|IQ\(4) & ( (\Random|s_saida\(4) & (\Random|s_saida\(3) & (!\Random|s_saida\(5) $ (\Tent|C|IQ\(5))))) ) ) ) # ( !\Tent|C|IQ[3]~DUPLICATE_q\ & ( \Tent|C|IQ\(4) & ( (\Random|s_saida\(4) & 
-- (!\Random|s_saida\(3) & (!\Random|s_saida\(5) $ (\Tent|C|IQ\(5))))) ) ) ) # ( \Tent|C|IQ[3]~DUPLICATE_q\ & ( !\Tent|C|IQ\(4) & ( (!\Random|s_saida\(4) & (\Random|s_saida\(3) & (!\Random|s_saida\(5) $ (\Tent|C|IQ\(5))))) ) ) ) # ( 
-- !\Tent|C|IQ[3]~DUPLICATE_q\ & ( !\Tent|C|IQ\(4) & ( (!\Random|s_saida\(4) & (!\Random|s_saida\(3) & (!\Random|s_saida\(5) $ (\Tent|C|IQ\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000000000001000001001000001000000000000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_s_saida\(4),
	datab => \Random|ALT_INV_s_saida\(5),
	datac => \Tent|C|ALT_INV_IQ\(5),
	datad => \Random|ALT_INV_s_saida\(3),
	datae => \Tent|C|ALT_INV_IQ[3]~DUPLICATE_q\,
	dataf => \Tent|C|ALT_INV_IQ\(4),
	combout => \Tent|C|Equal0~2_combout\);

-- Location: FF_X82_Y25_N19
\Tent|C|IQ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|C|Add0~29_sumout\,
	clrn => \Controle|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|C|IQ\(7));

-- Location: LABCELL_X81_Y23_N36
\Tent|C|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|C|Equal0~3_combout\ = ( \Tent|C|IQ[8]~DUPLICATE_q\ & ( \Tent|C|IQ\(7) & ( (\Random|s_saida\(7) & (\Random|s_saida\(8) & (!\Random|s_saida\(6) $ (\Tent|C|IQ[6]~DUPLICATE_q\)))) ) ) ) # ( !\Tent|C|IQ[8]~DUPLICATE_q\ & ( \Tent|C|IQ\(7) & ( 
-- (\Random|s_saida\(7) & (!\Random|s_saida\(8) & (!\Random|s_saida\(6) $ (\Tent|C|IQ[6]~DUPLICATE_q\)))) ) ) ) # ( \Tent|C|IQ[8]~DUPLICATE_q\ & ( !\Tent|C|IQ\(7) & ( (!\Random|s_saida\(7) & (\Random|s_saida\(8) & (!\Random|s_saida\(6) $ 
-- (\Tent|C|IQ[6]~DUPLICATE_q\)))) ) ) ) # ( !\Tent|C|IQ[8]~DUPLICATE_q\ & ( !\Tent|C|IQ\(7) & ( (!\Random|s_saida\(7) & (!\Random|s_saida\(8) & (!\Random|s_saida\(6) $ (\Tent|C|IQ[6]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000000001001000000001001000000000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Random|ALT_INV_s_saida\(6),
	datab => \Tent|C|ALT_INV_IQ[6]~DUPLICATE_q\,
	datac => \Random|ALT_INV_s_saida\(7),
	datad => \Random|ALT_INV_s_saida\(8),
	datae => \Tent|C|ALT_INV_IQ[8]~DUPLICATE_q\,
	dataf => \Tent|C|ALT_INV_IQ\(7),
	combout => \Tent|C|Equal0~3_combout\);

-- Location: MLABCELL_X82_Y25_N57
\Tent|C|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|C|Equal0~4_combout\ = ( \Random|s_saida\(10) & ( \Random|s_saida\(11) & ( (\Tent|C|IQ[11]~DUPLICATE_q\ & (\Tent|C|IQ\(10) & (!\Tent|C|IQ\(9) $ (\Random|s_saida\(9))))) ) ) ) # ( !\Random|s_saida\(10) & ( \Random|s_saida\(11) & ( 
-- (\Tent|C|IQ[11]~DUPLICATE_q\ & (!\Tent|C|IQ\(10) & (!\Tent|C|IQ\(9) $ (\Random|s_saida\(9))))) ) ) ) # ( \Random|s_saida\(10) & ( !\Random|s_saida\(11) & ( (!\Tent|C|IQ[11]~DUPLICATE_q\ & (\Tent|C|IQ\(10) & (!\Tent|C|IQ\(9) $ (\Random|s_saida\(9))))) ) ) 
-- ) # ( !\Random|s_saida\(10) & ( !\Random|s_saida\(11) & ( (!\Tent|C|IQ[11]~DUPLICATE_q\ & (!\Tent|C|IQ\(10) & (!\Tent|C|IQ\(9) $ (\Random|s_saida\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000000000001000010000100001000000000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tent|C|ALT_INV_IQ\(9),
	datab => \Tent|C|ALT_INV_IQ[11]~DUPLICATE_q\,
	datac => \Random|ALT_INV_s_saida\(9),
	datad => \Tent|C|ALT_INV_IQ\(10),
	datae => \Random|ALT_INV_s_saida\(10),
	dataf => \Random|ALT_INV_s_saida\(11),
	combout => \Tent|C|Equal0~4_combout\);

-- Location: LABCELL_X81_Y23_N24
\Tent|C|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|C|Equal0~6_combout\ = ( \Tent|C|Equal0~3_combout\ & ( \Tent|C|Equal0~4_combout\ & ( (!\Tent|C|Equal0~0_combout\ & (\Tent|C|Equal0~5_combout\ & (\Tent|C|Equal0~1_combout\ & \Tent|C|Equal0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tent|C|ALT_INV_Equal0~0_combout\,
	datab => \Tent|C|ALT_INV_Equal0~5_combout\,
	datac => \Tent|C|ALT_INV_Equal0~1_combout\,
	datad => \Tent|C|ALT_INV_Equal0~2_combout\,
	datae => \Tent|C|ALT_INV_Equal0~3_combout\,
	dataf => \Tent|C|ALT_INV_Equal0~4_combout\,
	combout => \Tent|C|Equal0~6_combout\);

-- Location: LABCELL_X81_Y23_N30
\Tent|C|sinal\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|C|sinal~combout\ = ( \Tent|C|Equal0~6_combout\ & ( (\Controle|WideNor0~combout\) # (\Tent|C|sinal~combout\) ) ) # ( !\Tent|C|Equal0~6_combout\ & ( (\Tent|C|sinal~combout\ & !\Controle|WideNor0~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Tent|C|ALT_INV_sinal~combout\,
	datad => \Controle|ALT_INV_WideNor0~combout\,
	dataf => \Tent|C|ALT_INV_Equal0~6_combout\,
	combout => \Tent|C|sinal~combout\);

-- Location: LABCELL_X80_Y22_N54
\Tent|E|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|E|Selector3~0_combout\ = ( \Tent|C|sinal~combout\ & ( !\Tent|E|Ereg.E_Atraso~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tent|E|ALT_INV_Ereg.E_Atraso~q\,
	dataf => \Tent|C|ALT_INV_sinal~combout\,
	combout => \Tent|E|Selector3~0_combout\);

-- Location: LABCELL_X80_Y22_N30
\Tent|E|Eprox.Aguarda_135\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|E|Eprox.Aguarda_135~combout\ = ( \Tent|E|Selector0~0_combout\ & ( \Tent|E|Selector3~0_combout\ ) ) # ( !\Tent|E|Selector0~0_combout\ & ( \Tent|E|Selector3~0_combout\ & ( \Tent|E|Eprox.Aguarda_135~combout\ ) ) ) # ( !\Tent|E|Selector0~0_combout\ & ( 
-- !\Tent|E|Selector3~0_combout\ & ( \Tent|E|Eprox.Aguarda_135~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Tent|E|ALT_INV_Eprox.Aguarda_135~combout\,
	datae => \Tent|E|ALT_INV_Selector0~0_combout\,
	dataf => \Tent|E|ALT_INV_Selector3~0_combout\,
	combout => \Tent|E|Eprox.Aguarda_135~combout\);

-- Location: FF_X80_Y22_N32
\Tent|E|Ereg.Aguarda\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|E|Eprox.Aguarda_135~combout\,
	clrn => \Controle|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|E|Ereg.Aguarda~q\);

-- Location: LABCELL_X79_Y22_N27
\Tent|E|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|E|Selector0~1_combout\ = ( \Tent|E|Ereg.Aguarda~q\ & ( \resposta~input_o\ ) ) # ( !\Tent|E|Ereg.Aguarda~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_resposta~input_o\,
	dataf => \Tent|E|ALT_INV_Ereg.Aguarda~q\,
	combout => \Tent|E|Selector0~1_combout\);

-- Location: LABCELL_X80_Y22_N36
\Tent|E|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|E|Selector0~0_combout\ = ( \Tent|E|Ereg.E_Atraso~q\ & ( \Tent|E|Selector0~1_combout\ ) ) # ( !\Tent|E|Ereg.E_Atraso~q\ & ( (\Tent|E|Selector0~1_combout\ & ((\Tent|C|sinal~combout\) # (\resposta~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tent|E|ALT_INV_Selector0~1_combout\,
	datac => \ALT_INV_resposta~input_o\,
	datad => \Tent|C|ALT_INV_sinal~combout\,
	dataf => \Tent|E|ALT_INV_Ereg.E_Atraso~q\,
	combout => \Tent|E|Selector0~0_combout\);

-- Location: LABCELL_X80_Y22_N57
\Tent|E|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|E|Selector1~0_combout\ = ( \Tent|E|Ereg.Errado~q\ ) # ( !\Tent|E|Ereg.Errado~q\ & ( (!\Tent|C|sinal~combout\ & !\Tent|E|Ereg.E_Atraso~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tent|C|ALT_INV_sinal~combout\,
	datac => \Tent|E|ALT_INV_Ereg.E_Atraso~q\,
	dataf => \Tent|E|ALT_INV_Ereg.Errado~q\,
	combout => \Tent|E|Selector1~0_combout\);

-- Location: LABCELL_X80_Y22_N6
\Tent|E|Eprox.Errado_121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|E|Eprox.Errado_121~combout\ = ( \Tent|E|Selector1~0_combout\ & ( (\Tent|E|Selector0~0_combout\) # (\Tent|E|Eprox.Errado_121~combout\) ) ) # ( !\Tent|E|Selector1~0_combout\ & ( (\Tent|E|Eprox.Errado_121~combout\ & !\Tent|E|Selector0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Tent|E|ALT_INV_Eprox.Errado_121~combout\,
	datad => \Tent|E|ALT_INV_Selector0~0_combout\,
	dataf => \Tent|E|ALT_INV_Selector1~0_combout\,
	combout => \Tent|E|Eprox.Errado_121~combout\);

-- Location: FF_X80_Y22_N8
\Tent|E|Ereg.Errado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|E|Eprox.Errado_121~combout\,
	clrn => \Controle|WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|E|Ereg.Errado~q\);

-- Location: IOIBUF_X89_Y35_N61
\contaDisplay~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_contaDisplay,
	o => \contaDisplay~input_o\);

-- Location: CLKCTRL_G8
\contaDisplay~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \contaDisplay~input_o\,
	outclk => \contaDisplay~inputCLKENA0_outclk\);

-- Location: FF_X88_Y34_N50
\ContDispl|I[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contaDisplay~inputCLKENA0_outclk\,
	d => \muxD|Equal1~0_combout\,
	clrn => \inicia~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContDispl|I\(1));

-- Location: LABCELL_X88_Y34_N57
\muxD|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxD|Equal0~0_combout\ = ( !\ContDispl|I\(0) & ( !\ContDispl|I\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ContDispl|ALT_INV_I\(0),
	dataf => \ContDispl|ALT_INV_I\(1),
	combout => \muxD|Equal0~0_combout\);

-- Location: FF_X88_Y34_N59
\ContDispl|I[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contaDisplay~inputCLKENA0_outclk\,
	d => \muxD|Equal0~0_combout\,
	clrn => \inicia~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContDispl|I\(0));

-- Location: LABCELL_X88_Y34_N48
\muxD|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxD|Equal1~0_combout\ = ( !\ContDispl|I\(1) & ( \ContDispl|I\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ContDispl|ALT_INV_I\(1),
	dataf => \ContDispl|ALT_INV_I\(0),
	combout => \muxD|Equal1~0_combout\);

-- Location: FF_X88_Y34_N49
\ContDispl|I[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contaDisplay~inputCLKENA0_outclk\,
	d => \muxD|Equal1~0_combout\,
	clrn => \inicia~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContDispl|I[1]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y22_N18
\Tent|R|IQ~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ~97_combout\ = ( \resposta~input_o\ & ( \Tent|R|IQ[0]~2_combout\ ) ) # ( !\resposta~input_o\ & ( (\Tent|E|Ereg.Aguarda~q\ & \Tent|R|IQ[0]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Tent|E|ALT_INV_Ereg.Aguarda~q\,
	datad => \Tent|R|ALT_INV_IQ[0]~2_combout\,
	dataf => \ALT_INV_resposta~input_o\,
	combout => \Tent|R|IQ~97_combout\);

-- Location: LABCELL_X79_Y22_N15
\Tent|R|IQ[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[0]~1_combout\ = ( \Tent|R|IQ~97_combout\ & ( (\Tent|E|Selector0~1_combout\) # (\Tent|R|IQ[0]~1_combout\) ) ) # ( !\Tent|R|IQ~97_combout\ & ( (\Tent|R|IQ[0]~1_combout\ & !\Tent|E|Selector0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Tent|R|ALT_INV_IQ[0]~1_combout\,
	datad => \Tent|E|ALT_INV_Selector0~1_combout\,
	dataf => \Tent|R|ALT_INV_IQ~97_combout\,
	combout => \Tent|R|IQ[0]~1_combout\);

-- Location: LABCELL_X79_Y22_N12
\Tent|R|IQ[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[0]~3_combout\ = ( \Tent|R|IQ[0]~1_combout\ & ( \Tent|R|IQ[0]~2_combout\ ) ) # ( !\Tent|R|IQ[0]~1_combout\ & ( !\Tent|R|IQ[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tent|R|ALT_INV_IQ[0]~2_combout\,
	dataf => \Tent|R|ALT_INV_IQ[0]~1_combout\,
	combout => \Tent|R|IQ[0]~3_combout\);

-- Location: FF_X79_Y22_N14
\Tent|R|IQ[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|R|IQ[0]~3_combout\,
	clrn => \Tent|E|ALT_INV_Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|R|IQ[0]~_emulated_q\);

-- Location: LABCELL_X79_Y22_N42
\Tent|R|IQ[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[0]~2_combout\ = ( \Tent|R|IQ[0]~1_combout\ & ( (!\Tent|E|Selector0~1_combout\ & (!\Tent|R|IQ[0]~_emulated_q\)) # (\Tent|E|Selector0~1_combout\ & ((\Tent|R|IQ~97_combout\))) ) ) # ( !\Tent|R|IQ[0]~1_combout\ & ( (!\Tent|E|Selector0~1_combout\ & 
-- (\Tent|R|IQ[0]~_emulated_q\)) # (\Tent|E|Selector0~1_combout\ & ((\Tent|R|IQ~97_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111111000000110011111100000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tent|R|ALT_INV_IQ[0]~_emulated_q\,
	datac => \Tent|E|ALT_INV_Selector0~1_combout\,
	datad => \Tent|R|ALT_INV_IQ~97_combout\,
	dataf => \Tent|R|ALT_INV_IQ[0]~1_combout\,
	combout => \Tent|R|IQ[0]~2_combout\);

-- Location: LABCELL_X79_Y22_N54
\Tent|D|saida1[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|D|saida1\(0) = ( \Tent|R|IQ[0]~2_combout\ & ( (\Tent|D|saida1\(0)) # (\Controle|Ereg.Jogador1~q\) ) ) # ( !\Tent|R|IQ[0]~2_combout\ & ( (!\Controle|Ereg.Jogador1~q\ & \Tent|D|saida1\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Controle|ALT_INV_Ereg.Jogador1~q\,
	datad => \Tent|D|ALT_INV_saida1\(0),
	dataf => \Tent|R|ALT_INV_IQ[0]~2_combout\,
	combout => \Tent|D|saida1\(0));

-- Location: LABCELL_X79_Y22_N45
\Tent|D|saida2[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|D|saida2\(0) = ( \Tent|R|IQ[0]~2_combout\ & ( (!\Controle|Ereg.Jogador1~q\) # (\Tent|D|saida2\(0)) ) ) # ( !\Tent|R|IQ[0]~2_combout\ & ( (\Controle|Ereg.Jogador1~q\ & \Tent|D|saida2\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Controle|ALT_INV_Ereg.Jogador1~q\,
	datad => \Tent|D|ALT_INV_saida2\(0),
	dataf => \Tent|R|ALT_INV_IQ[0]~2_combout\,
	combout => \Tent|D|saida2\(0));

-- Location: FF_X88_Y34_N58
\ContDispl|I[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \contaDisplay~inputCLKENA0_outclk\,
	d => \muxD|Equal0~0_combout\,
	clrn => \inicia~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContDispl|I[0]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y22_N36
\muxD|s_saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxD|s_saida[0]~0_combout\ = ( \ContDispl|I[0]~DUPLICATE_q\ & ( (!\ContDispl|I[1]~DUPLICATE_q\ & \Tent|D|saida2\(0)) ) ) # ( !\ContDispl|I[0]~DUPLICATE_q\ & ( \Tent|D|saida1\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ContDispl|ALT_INV_I[1]~DUPLICATE_q\,
	datac => \Tent|D|ALT_INV_saida1\(0),
	datad => \Tent|D|ALT_INV_saida2\(0),
	dataf => \ContDispl|ALT_INV_I[0]~DUPLICATE_q\,
	combout => \muxD|s_saida[0]~0_combout\);

-- Location: LABCELL_X83_Y22_N45
\Tent|R|IQ~98\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ~98_combout\ = ( \resposta~input_o\ & ( \Tent|R|IQ[1]~6_combout\ ) ) # ( !\resposta~input_o\ & ( (\Tent|E|Ereg.Aguarda~q\ & \Tent|R|IQ[1]~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tent|E|ALT_INV_Ereg.Aguarda~q\,
	datac => \Tent|R|ALT_INV_IQ[1]~6_combout\,
	dataf => \ALT_INV_resposta~input_o\,
	combout => \Tent|R|IQ~98_combout\);

-- Location: LABCELL_X83_Y22_N48
\Tent|R|IQ[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[1]~5_combout\ = ( \Tent|R|IQ[1]~5_combout\ & ( \Tent|R|IQ~98_combout\ ) ) # ( !\Tent|R|IQ[1]~5_combout\ & ( \Tent|R|IQ~98_combout\ & ( \Tent|E|Selector0~1_combout\ ) ) ) # ( \Tent|R|IQ[1]~5_combout\ & ( !\Tent|R|IQ~98_combout\ & ( 
-- !\Tent|E|Selector0~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Tent|E|ALT_INV_Selector0~1_combout\,
	datae => \Tent|R|ALT_INV_IQ[1]~5_combout\,
	dataf => \Tent|R|ALT_INV_IQ~98_combout\,
	combout => \Tent|R|IQ[1]~5_combout\);

-- Location: MLABCELL_X78_Y22_N0
\Tent|R|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|Add0~1_sumout\ = SUM(( \Tent|R|IQ[1]~6_combout\ ) + ( \Tent|R|IQ[0]~2_combout\ ) + ( !VCC ))
-- \Tent|R|Add0~2\ = CARRY(( \Tent|R|IQ[1]~6_combout\ ) + ( \Tent|R|IQ[0]~2_combout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tent|R|ALT_INV_IQ[0]~2_combout\,
	datad => \Tent|R|ALT_INV_IQ[1]~6_combout\,
	cin => GND,
	sumout => \Tent|R|Add0~1_sumout\,
	cout => \Tent|R|Add0~2\);

-- Location: LABCELL_X79_Y22_N30
\Tent|R|IQ[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[1]~7_combout\ = ( \Tent|R|Add0~1_sumout\ & ( !\Tent|R|IQ[1]~5_combout\ ) ) # ( !\Tent|R|Add0~1_sumout\ & ( \Tent|R|IQ[1]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Tent|R|ALT_INV_IQ[1]~5_combout\,
	dataf => \Tent|R|ALT_INV_Add0~1_sumout\,
	combout => \Tent|R|IQ[1]~7_combout\);

-- Location: FF_X79_Y22_N31
\Tent|R|IQ[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|R|IQ[1]~7_combout\,
	clrn => \Tent|E|ALT_INV_Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|R|IQ[1]~_emulated_q\);

-- Location: LABCELL_X83_Y22_N12
\Tent|R|IQ[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[1]~6_combout\ = ( \Tent|R|IQ[1]~5_combout\ & ( (!\Tent|E|Selector0~1_combout\ & (!\Tent|R|IQ[1]~_emulated_q\)) # (\Tent|E|Selector0~1_combout\ & ((\Tent|R|IQ~98_combout\))) ) ) # ( !\Tent|R|IQ[1]~5_combout\ & ( (!\Tent|E|Selector0~1_combout\ & 
-- (\Tent|R|IQ[1]~_emulated_q\)) # (\Tent|E|Selector0~1_combout\ & ((\Tent|R|IQ~98_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111111000000111100111100000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tent|E|ALT_INV_Selector0~1_combout\,
	datac => \Tent|R|ALT_INV_IQ[1]~_emulated_q\,
	datad => \Tent|R|ALT_INV_IQ~98_combout\,
	dataf => \Tent|R|ALT_INV_IQ[1]~5_combout\,
	combout => \Tent|R|IQ[1]~6_combout\);

-- Location: LABCELL_X83_Y22_N57
\Tent|D|saida2[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|D|saida2\(1) = ( \Tent|D|saida2\(1) & ( \Tent|R|IQ[1]~6_combout\ ) ) # ( !\Tent|D|saida2\(1) & ( \Tent|R|IQ[1]~6_combout\ & ( !\Controle|Ereg.Jogador1~q\ ) ) ) # ( \Tent|D|saida2\(1) & ( !\Tent|R|IQ[1]~6_combout\ & ( \Controle|Ereg.Jogador1~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111001100110011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Controle|ALT_INV_Ereg.Jogador1~q\,
	datae => \Tent|D|ALT_INV_saida2\(1),
	dataf => \Tent|R|ALT_INV_IQ[1]~6_combout\,
	combout => \Tent|D|saida2\(1));

-- Location: LABCELL_X83_Y22_N27
\Tent|D|saida1[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|D|saida1\(1) = ( \Tent|D|saida1\(1) & ( \Tent|R|IQ[1]~6_combout\ ) ) # ( !\Tent|D|saida1\(1) & ( \Tent|R|IQ[1]~6_combout\ & ( \Controle|Ereg.Jogador1~q\ ) ) ) # ( \Tent|D|saida1\(1) & ( !\Tent|R|IQ[1]~6_combout\ & ( !\Controle|Ereg.Jogador1~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Controle|ALT_INV_Ereg.Jogador1~q\,
	datae => \Tent|D|ALT_INV_saida1\(1),
	dataf => \Tent|R|ALT_INV_IQ[1]~6_combout\,
	combout => \Tent|D|saida1\(1));

-- Location: LABCELL_X83_Y22_N30
\muxD|s_saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxD|s_saida[1]~1_combout\ = ( \Tent|D|saida1\(1) & ( \ContDispl|I[1]~DUPLICATE_q\ & ( !\ContDispl|I[0]~DUPLICATE_q\ ) ) ) # ( \Tent|D|saida1\(1) & ( !\ContDispl|I[1]~DUPLICATE_q\ & ( (!\ContDispl|I[0]~DUPLICATE_q\) # (\Tent|D|saida2\(1)) ) ) ) # ( 
-- !\Tent|D|saida1\(1) & ( !\ContDispl|I[1]~DUPLICATE_q\ & ( (\ContDispl|I[0]~DUPLICATE_q\ & \Tent|D|saida2\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001101110111011101100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContDispl|ALT_INV_I[0]~DUPLICATE_q\,
	datab => \Tent|D|ALT_INV_saida2\(1),
	datae => \Tent|D|ALT_INV_saida1\(1),
	dataf => \ContDispl|ALT_INV_I[1]~DUPLICATE_q\,
	combout => \muxD|s_saida[1]~1_combout\);

-- Location: LABCELL_X80_Y22_N24
\Tent|R|IQ~100\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ~100_combout\ = ( \resposta~input_o\ & ( \Tent|R|IQ[3]~14_combout\ ) ) # ( !\resposta~input_o\ & ( (\Tent|E|Ereg.Aguarda~q\ & \Tent|R|IQ[3]~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tent|E|ALT_INV_Ereg.Aguarda~q\,
	datac => \Tent|R|ALT_INV_IQ[3]~14_combout\,
	dataf => \ALT_INV_resposta~input_o\,
	combout => \Tent|R|IQ~100_combout\);

-- Location: LABCELL_X80_Y22_N15
\Tent|R|IQ[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[3]~13_combout\ = ( \Tent|R|IQ~100_combout\ & ( (\Tent|E|Selector0~1_combout\) # (\Tent|R|IQ[3]~13_combout\) ) ) # ( !\Tent|R|IQ~100_combout\ & ( (\Tent|R|IQ[3]~13_combout\ & !\Tent|E|Selector0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Tent|R|ALT_INV_IQ[3]~13_combout\,
	datad => \Tent|E|ALT_INV_Selector0~1_combout\,
	dataf => \Tent|R|ALT_INV_IQ~100_combout\,
	combout => \Tent|R|IQ[3]~13_combout\);

-- Location: MLABCELL_X82_Y22_N24
\Tent|R|IQ~99\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ~99_combout\ = ( \resposta~input_o\ & ( \Tent|R|IQ[2]~10_combout\ ) ) # ( !\resposta~input_o\ & ( (\Tent|R|IQ[2]~10_combout\ & \Tent|E|Ereg.Aguarda~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tent|R|ALT_INV_IQ[2]~10_combout\,
	datac => \Tent|E|ALT_INV_Ereg.Aguarda~q\,
	dataf => \ALT_INV_resposta~input_o\,
	combout => \Tent|R|IQ~99_combout\);

-- Location: MLABCELL_X82_Y22_N51
\Tent|R|IQ[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[2]~9_combout\ = ( \Tent|E|Selector0~1_combout\ & ( \Tent|R|IQ~99_combout\ ) ) # ( !\Tent|E|Selector0~1_combout\ & ( \Tent|R|IQ[2]~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tent|R|ALT_INV_IQ~99_combout\,
	datad => \Tent|R|ALT_INV_IQ[2]~9_combout\,
	dataf => \Tent|E|ALT_INV_Selector0~1_combout\,
	combout => \Tent|R|IQ[2]~9_combout\);

-- Location: MLABCELL_X78_Y22_N3
\Tent|R|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|Add0~5_sumout\ = SUM(( \Tent|R|IQ[2]~10_combout\ ) + ( GND ) + ( \Tent|R|Add0~2\ ))
-- \Tent|R|Add0~6\ = CARRY(( \Tent|R|IQ[2]~10_combout\ ) + ( GND ) + ( \Tent|R|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Tent|R|ALT_INV_IQ[2]~10_combout\,
	cin => \Tent|R|Add0~2\,
	sumout => \Tent|R|Add0~5_sumout\,
	cout => \Tent|R|Add0~6\);

-- Location: LABCELL_X79_Y22_N57
\Tent|R|IQ[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[2]~11_combout\ = ( \Tent|R|Add0~5_sumout\ & ( !\Tent|R|IQ[2]~9_combout\ ) ) # ( !\Tent|R|Add0~5_sumout\ & ( \Tent|R|IQ[2]~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Tent|R|ALT_INV_IQ[2]~9_combout\,
	dataf => \Tent|R|ALT_INV_Add0~5_sumout\,
	combout => \Tent|R|IQ[2]~11_combout\);

-- Location: FF_X79_Y22_N59
\Tent|R|IQ[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|R|IQ[2]~11_combout\,
	clrn => \Tent|E|ALT_INV_Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|R|IQ[2]~_emulated_q\);

-- Location: MLABCELL_X82_Y22_N15
\Tent|R|IQ[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[2]~10_combout\ = ( \Tent|R|IQ[2]~9_combout\ & ( (!\Tent|E|Selector0~1_combout\ & ((!\Tent|R|IQ[2]~_emulated_q\))) # (\Tent|E|Selector0~1_combout\ & (\Tent|R|IQ~99_combout\)) ) ) # ( !\Tent|R|IQ[2]~9_combout\ & ( (!\Tent|E|Selector0~1_combout\ & 
-- ((\Tent|R|IQ[2]~_emulated_q\))) # (\Tent|E|Selector0~1_combout\ & (\Tent|R|IQ~99_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111110101111000001011010111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tent|E|ALT_INV_Selector0~1_combout\,
	datac => \Tent|R|ALT_INV_IQ~99_combout\,
	datad => \Tent|R|ALT_INV_IQ[2]~_emulated_q\,
	dataf => \Tent|R|ALT_INV_IQ[2]~9_combout\,
	combout => \Tent|R|IQ[2]~10_combout\);

-- Location: MLABCELL_X78_Y22_N6
\Tent|R|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|Add0~9_sumout\ = SUM(( \Tent|R|IQ[3]~14_combout\ ) + ( GND ) + ( \Tent|R|Add0~6\ ))
-- \Tent|R|Add0~10\ = CARRY(( \Tent|R|IQ[3]~14_combout\ ) + ( GND ) + ( \Tent|R|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Tent|R|ALT_INV_IQ[3]~14_combout\,
	cin => \Tent|R|Add0~6\,
	sumout => \Tent|R|Add0~9_sumout\,
	cout => \Tent|R|Add0~10\);

-- Location: LABCELL_X80_Y22_N12
\Tent|R|IQ[3]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[3]~15_combout\ = ( \Tent|R|Add0~9_sumout\ & ( !\Tent|R|IQ[3]~13_combout\ ) ) # ( !\Tent|R|Add0~9_sumout\ & ( \Tent|R|IQ[3]~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tent|R|ALT_INV_IQ[3]~13_combout\,
	dataf => \Tent|R|ALT_INV_Add0~9_sumout\,
	combout => \Tent|R|IQ[3]~15_combout\);

-- Location: FF_X80_Y22_N13
\Tent|R|IQ[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|R|IQ[3]~15_combout\,
	clrn => \Tent|E|ALT_INV_Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|R|IQ[3]~_emulated_q\);

-- Location: LABCELL_X80_Y22_N42
\Tent|R|IQ[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[3]~14_combout\ = ( \Tent|R|IQ[3]~13_combout\ & ( (!\Tent|E|Selector0~1_combout\ & ((!\Tent|R|IQ[3]~_emulated_q\))) # (\Tent|E|Selector0~1_combout\ & (\Tent|R|IQ~100_combout\)) ) ) # ( !\Tent|R|IQ[3]~13_combout\ & ( 
-- (!\Tent|E|Selector0~1_combout\ & ((\Tent|R|IQ[3]~_emulated_q\))) # (\Tent|E|Selector0~1_combout\ & (\Tent|R|IQ~100_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111111001111000000111100111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tent|E|ALT_INV_Selector0~1_combout\,
	datac => \Tent|R|ALT_INV_IQ~100_combout\,
	datad => \Tent|R|ALT_INV_IQ[3]~_emulated_q\,
	dataf => \Tent|R|ALT_INV_IQ[3]~13_combout\,
	combout => \Tent|R|IQ[3]~14_combout\);

-- Location: LABCELL_X80_Y22_N45
\Tent|D|saida1[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|D|saida1\(3) = ( \Tent|R|IQ[3]~14_combout\ & ( (\Tent|D|saida1\(3)) # (\Controle|Ereg.Jogador1~q\) ) ) # ( !\Tent|R|IQ[3]~14_combout\ & ( (!\Controle|Ereg.Jogador1~q\ & \Tent|D|saida1\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Controle|ALT_INV_Ereg.Jogador1~q\,
	datad => \Tent|D|ALT_INV_saida1\(3),
	dataf => \Tent|R|ALT_INV_IQ[3]~14_combout\,
	combout => \Tent|D|saida1\(3));

-- Location: LABCELL_X80_Y22_N27
\Tent|D|saida2[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|D|saida2\(3) = ( \Tent|R|IQ[3]~14_combout\ & ( (!\Controle|Ereg.Jogador1~q\) # (\Tent|D|saida2\(3)) ) ) # ( !\Tent|R|IQ[3]~14_combout\ & ( (\Controle|Ereg.Jogador1~q\ & \Tent|D|saida2\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Controle|ALT_INV_Ereg.Jogador1~q\,
	datad => \Tent|D|ALT_INV_saida2\(3),
	dataf => \Tent|R|ALT_INV_IQ[3]~14_combout\,
	combout => \Tent|D|saida2\(3));

-- Location: LABCELL_X83_Y22_N18
\muxD|s_saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxD|s_saida[3]~3_combout\ = ( \Tent|D|saida2\(3) & ( (!\ContDispl|I[0]~DUPLICATE_q\ & (\Tent|D|saida1\(3))) # (\ContDispl|I[0]~DUPLICATE_q\ & ((!\ContDispl|I[1]~DUPLICATE_q\))) ) ) # ( !\Tent|D|saida2\(3) & ( (!\ContDispl|I[0]~DUPLICATE_q\ & 
-- \Tent|D|saida1\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011101110010001000100010001000100111011100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContDispl|ALT_INV_I[0]~DUPLICATE_q\,
	datab => \Tent|D|ALT_INV_saida1\(3),
	datad => \ContDispl|ALT_INV_I[1]~DUPLICATE_q\,
	datae => \Tent|D|ALT_INV_saida2\(3),
	combout => \muxD|s_saida[3]~3_combout\);

-- Location: MLABCELL_X82_Y22_N27
\Tent|D|saida2[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|D|saida2\(2) = ( \Tent|R|IQ[2]~10_combout\ & ( (!\Controle|Ereg.Jogador1~q\) # (\Tent|D|saida2\(2)) ) ) # ( !\Tent|R|IQ[2]~10_combout\ & ( (\Controle|Ereg.Jogador1~q\ & \Tent|D|saida2\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Controle|ALT_INV_Ereg.Jogador1~q\,
	datad => \Tent|D|ALT_INV_saida2\(2),
	dataf => \Tent|R|ALT_INV_IQ[2]~10_combout\,
	combout => \Tent|D|saida2\(2));

-- Location: MLABCELL_X82_Y22_N12
\Tent|D|saida1[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|D|saida1\(2) = ( \Tent|R|IQ[2]~10_combout\ & ( (\Controle|Ereg.Jogador1~q\) # (\Tent|D|saida1\(2)) ) ) # ( !\Tent|R|IQ[2]~10_combout\ & ( (\Tent|D|saida1\(2) & !\Controle|Ereg.Jogador1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tent|D|ALT_INV_saida1\(2),
	datac => \Controle|ALT_INV_Ereg.Jogador1~q\,
	dataf => \Tent|R|ALT_INV_IQ[2]~10_combout\,
	combout => \Tent|D|saida1\(2));

-- Location: MLABCELL_X82_Y22_N57
\muxD|s_saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxD|s_saida[2]~2_combout\ = ( \ContDispl|I[1]~DUPLICATE_q\ & ( (\Tent|D|saida1\(2) & !\ContDispl|I[0]~DUPLICATE_q\) ) ) # ( !\ContDispl|I[1]~DUPLICATE_q\ & ( (!\ContDispl|I[0]~DUPLICATE_q\ & ((\Tent|D|saida1\(2)))) # (\ContDispl|I[0]~DUPLICATE_q\ & 
-- (\Tent|D|saida2\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tent|D|ALT_INV_saida2\(2),
	datac => \Tent|D|ALT_INV_saida1\(2),
	datad => \ContDispl|ALT_INV_I[0]~DUPLICATE_q\,
	dataf => \ContDispl|ALT_INV_I[1]~DUPLICATE_q\,
	combout => \muxD|s_saida[2]~2_combout\);

-- Location: MLABCELL_X78_Y26_N51
\DisplayPonto1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DisplayPonto1|Mux6~0_combout\ = ( \muxD|s_saida[3]~3_combout\ & ( \muxD|s_saida[2]~2_combout\ & ( (\muxD|s_saida[1]~1_combout\) # (\muxD|s_saida[0]~0_combout\) ) ) ) # ( !\muxD|s_saida[3]~3_combout\ & ( \muxD|s_saida[2]~2_combout\ & ( 
-- (!\muxD|s_saida[0]~0_combout\) # (!\muxD|s_saida[1]~1_combout\) ) ) ) # ( \muxD|s_saida[3]~3_combout\ & ( !\muxD|s_saida[2]~2_combout\ ) ) # ( !\muxD|s_saida[3]~3_combout\ & ( !\muxD|s_saida[2]~2_combout\ & ( \muxD|s_saida[1]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111111111010111110100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxD|ALT_INV_s_saida[0]~0_combout\,
	datac => \muxD|ALT_INV_s_saida[1]~1_combout\,
	datae => \muxD|ALT_INV_s_saida[3]~3_combout\,
	dataf => \muxD|ALT_INV_s_saida[2]~2_combout\,
	combout => \DisplayPonto1|Mux6~0_combout\);

-- Location: MLABCELL_X78_Y26_N30
\DisplayPonto1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DisplayPonto1|Mux5~0_combout\ = ( \muxD|s_saida[3]~3_combout\ & ( \muxD|s_saida[2]~2_combout\ & ( (!\muxD|s_saida[1]~1_combout\ & \muxD|s_saida[0]~0_combout\) ) ) ) # ( !\muxD|s_saida[3]~3_combout\ & ( !\muxD|s_saida[2]~2_combout\ & ( 
-- (\muxD|s_saida[0]~0_combout\) # (\muxD|s_saida[1]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111000000000000000000000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \muxD|ALT_INV_s_saida[1]~1_combout\,
	datac => \muxD|ALT_INV_s_saida[0]~0_combout\,
	datae => \muxD|ALT_INV_s_saida[3]~3_combout\,
	dataf => \muxD|ALT_INV_s_saida[2]~2_combout\,
	combout => \DisplayPonto1|Mux5~0_combout\);

-- Location: MLABCELL_X78_Y26_N27
\DisplayPonto1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DisplayPonto1|Mux4~0_combout\ = ( !\muxD|s_saida[3]~3_combout\ & ( \muxD|s_saida[2]~2_combout\ & ( (!\muxD|s_saida[1]~1_combout\) # (\muxD|s_saida[0]~0_combout\) ) ) ) # ( \muxD|s_saida[3]~3_combout\ & ( !\muxD|s_saida[2]~2_combout\ & ( 
-- (\muxD|s_saida[0]~0_combout\ & !\muxD|s_saida[1]~1_combout\) ) ) ) # ( !\muxD|s_saida[3]~3_combout\ & ( !\muxD|s_saida[2]~2_combout\ & ( \muxD|s_saida[0]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010100000101000011110101111101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxD|ALT_INV_s_saida[0]~0_combout\,
	datac => \muxD|ALT_INV_s_saida[1]~1_combout\,
	datae => \muxD|ALT_INV_s_saida[3]~3_combout\,
	dataf => \muxD|ALT_INV_s_saida[2]~2_combout\,
	combout => \DisplayPonto1|Mux4~0_combout\);

-- Location: MLABCELL_X78_Y26_N18
\DisplayPonto1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DisplayPonto1|Mux3~0_combout\ = ( \muxD|s_saida[3]~3_combout\ & ( \muxD|s_saida[2]~2_combout\ & ( (\muxD|s_saida[1]~1_combout\ & \muxD|s_saida[0]~0_combout\) ) ) ) # ( !\muxD|s_saida[3]~3_combout\ & ( \muxD|s_saida[2]~2_combout\ & ( 
-- !\muxD|s_saida[1]~1_combout\ $ (\muxD|s_saida[0]~0_combout\) ) ) ) # ( \muxD|s_saida[3]~3_combout\ & ( !\muxD|s_saida[2]~2_combout\ & ( (\muxD|s_saida[1]~1_combout\ & !\muxD|s_saida[0]~0_combout\) ) ) ) # ( !\muxD|s_saida[3]~3_combout\ & ( 
-- !\muxD|s_saida[2]~2_combout\ & ( (!\muxD|s_saida[1]~1_combout\ & \muxD|s_saida[0]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001100000011000011000011110000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \muxD|ALT_INV_s_saida[1]~1_combout\,
	datac => \muxD|ALT_INV_s_saida[0]~0_combout\,
	datae => \muxD|ALT_INV_s_saida[3]~3_combout\,
	dataf => \muxD|ALT_INV_s_saida[2]~2_combout\,
	combout => \DisplayPonto1|Mux3~0_combout\);

-- Location: MLABCELL_X78_Y26_N3
\DisplayPonto1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DisplayPonto1|Mux2~0_combout\ = ( \muxD|s_saida[3]~3_combout\ & ( \muxD|s_saida[2]~2_combout\ & ( (!\muxD|s_saida[0]~0_combout\) # (\muxD|s_saida[1]~1_combout\) ) ) ) # ( !\muxD|s_saida[3]~3_combout\ & ( !\muxD|s_saida[2]~2_combout\ & ( 
-- (!\muxD|s_saida[0]~0_combout\ & \muxD|s_saida[1]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000000000000000000000000000000001010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxD|ALT_INV_s_saida[0]~0_combout\,
	datac => \muxD|ALT_INV_s_saida[1]~1_combout\,
	datae => \muxD|ALT_INV_s_saida[3]~3_combout\,
	dataf => \muxD|ALT_INV_s_saida[2]~2_combout\,
	combout => \DisplayPonto1|Mux2~0_combout\);

-- Location: MLABCELL_X78_Y26_N42
\DisplayPonto1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DisplayPonto1|Mux1~0_combout\ = ( \muxD|s_saida[2]~2_combout\ & ( (!\muxD|s_saida[1]~1_combout\ & (!\muxD|s_saida[0]~0_combout\ $ (!\muxD|s_saida[3]~3_combout\))) # (\muxD|s_saida[1]~1_combout\ & ((!\muxD|s_saida[0]~0_combout\) # 
-- (\muxD|s_saida[3]~3_combout\))) ) ) # ( !\muxD|s_saida[2]~2_combout\ & ( (\muxD|s_saida[1]~1_combout\ & (\muxD|s_saida[0]~0_combout\ & \muxD|s_saida[3]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100111100111100110011110011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \muxD|ALT_INV_s_saida[1]~1_combout\,
	datac => \muxD|ALT_INV_s_saida[0]~0_combout\,
	datad => \muxD|ALT_INV_s_saida[3]~3_combout\,
	dataf => \muxD|ALT_INV_s_saida[2]~2_combout\,
	combout => \DisplayPonto1|Mux1~0_combout\);

-- Location: MLABCELL_X78_Y26_N36
\DisplayPonto1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DisplayPonto1|Mux0~0_combout\ = ( \muxD|s_saida[3]~3_combout\ & ( \muxD|s_saida[2]~2_combout\ & ( (!\muxD|s_saida[1]~1_combout\ & \muxD|s_saida[0]~0_combout\) ) ) ) # ( !\muxD|s_saida[3]~3_combout\ & ( \muxD|s_saida[2]~2_combout\ & ( 
-- (!\muxD|s_saida[1]~1_combout\ & !\muxD|s_saida[0]~0_combout\) ) ) ) # ( \muxD|s_saida[3]~3_combout\ & ( !\muxD|s_saida[2]~2_combout\ & ( (\muxD|s_saida[1]~1_combout\ & \muxD|s_saida[0]~0_combout\) ) ) ) # ( !\muxD|s_saida[3]~3_combout\ & ( 
-- !\muxD|s_saida[2]~2_combout\ & ( (!\muxD|s_saida[1]~1_combout\ & \muxD|s_saida[0]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000110000001111000000110000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \muxD|ALT_INV_s_saida[1]~1_combout\,
	datac => \muxD|ALT_INV_s_saida[0]~0_combout\,
	datae => \muxD|ALT_INV_s_saida[3]~3_combout\,
	dataf => \muxD|ALT_INV_s_saida[2]~2_combout\,
	combout => \DisplayPonto1|Mux0~0_combout\);

-- Location: LABCELL_X79_Y23_N51
\Tent|R|IQ~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ~101_combout\ = ( \resposta~input_o\ & ( \Tent|R|IQ[4]~18_combout\ ) ) # ( !\resposta~input_o\ & ( (\Tent|R|IQ[4]~18_combout\ & \Tent|E|Ereg.Aguarda~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tent|R|ALT_INV_IQ[4]~18_combout\,
	datac => \Tent|E|ALT_INV_Ereg.Aguarda~q\,
	dataf => \ALT_INV_resposta~input_o\,
	combout => \Tent|R|IQ~101_combout\);

-- Location: LABCELL_X79_Y23_N24
\Tent|R|IQ[4]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[4]~17_combout\ = ( \Tent|E|Selector0~1_combout\ & ( \Tent|R|IQ~101_combout\ ) ) # ( !\Tent|E|Selector0~1_combout\ & ( \Tent|R|IQ~101_combout\ & ( \Tent|R|IQ[4]~17_combout\ ) ) ) # ( !\Tent|E|Selector0~1_combout\ & ( !\Tent|R|IQ~101_combout\ & ( 
-- \Tent|R|IQ[4]~17_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Tent|R|ALT_INV_IQ[4]~17_combout\,
	datae => \Tent|E|ALT_INV_Selector0~1_combout\,
	dataf => \Tent|R|ALT_INV_IQ~101_combout\,
	combout => \Tent|R|IQ[4]~17_combout\);

-- Location: MLABCELL_X78_Y22_N9
\Tent|R|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|Add0~13_sumout\ = SUM(( \Tent|R|IQ[4]~18_combout\ ) + ( GND ) + ( \Tent|R|Add0~10\ ))
-- \Tent|R|Add0~14\ = CARRY(( \Tent|R|IQ[4]~18_combout\ ) + ( GND ) + ( \Tent|R|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Tent|R|ALT_INV_IQ[4]~18_combout\,
	cin => \Tent|R|Add0~10\,
	sumout => \Tent|R|Add0~13_sumout\,
	cout => \Tent|R|Add0~14\);

-- Location: LABCELL_X79_Y22_N24
\Tent|R|IQ[4]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[4]~19_combout\ = ( \Tent|R|Add0~13_sumout\ & ( !\Tent|R|IQ[4]~17_combout\ ) ) # ( !\Tent|R|Add0~13_sumout\ & ( \Tent|R|IQ[4]~17_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Tent|R|ALT_INV_IQ[4]~17_combout\,
	dataf => \Tent|R|ALT_INV_Add0~13_sumout\,
	combout => \Tent|R|IQ[4]~19_combout\);

-- Location: FF_X79_Y22_N26
\Tent|R|IQ[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|R|IQ[4]~19_combout\,
	clrn => \Tent|E|ALT_INV_Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|R|IQ[4]~_emulated_q\);

-- Location: LABCELL_X79_Y23_N30
\Tent|R|IQ[4]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[4]~18_combout\ = ( \Tent|R|IQ[4]~17_combout\ & ( (!\Tent|E|Selector0~1_combout\ & ((!\Tent|R|IQ[4]~_emulated_q\))) # (\Tent|E|Selector0~1_combout\ & (\Tent|R|IQ~101_combout\)) ) ) # ( !\Tent|R|IQ[4]~17_combout\ & ( 
-- (!\Tent|E|Selector0~1_combout\ & ((\Tent|R|IQ[4]~_emulated_q\))) # (\Tent|E|Selector0~1_combout\ & (\Tent|R|IQ~101_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111110101111000001011010111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tent|E|ALT_INV_Selector0~1_combout\,
	datac => \Tent|R|ALT_INV_IQ~101_combout\,
	datad => \Tent|R|ALT_INV_IQ[4]~_emulated_q\,
	dataf => \Tent|R|ALT_INV_IQ[4]~17_combout\,
	combout => \Tent|R|IQ[4]~18_combout\);

-- Location: LABCELL_X79_Y23_N33
\Tent|D|saida1[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|D|saida1\(4) = ( \Tent|R|IQ[4]~18_combout\ & ( (\Tent|D|saida1\(4)) # (\Controle|Ereg.Jogador1~q\) ) ) # ( !\Tent|R|IQ[4]~18_combout\ & ( (!\Controle|Ereg.Jogador1~q\ & \Tent|D|saida1\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Controle|ALT_INV_Ereg.Jogador1~q\,
	datad => \Tent|D|ALT_INV_saida1\(4),
	dataf => \Tent|R|ALT_INV_IQ[4]~18_combout\,
	combout => \Tent|D|saida1\(4));

-- Location: LABCELL_X79_Y23_N39
\Tent|D|saida2[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|D|saida2\(4) = ( \Tent|R|IQ[4]~18_combout\ & ( (!\Controle|Ereg.Jogador1~q\) # (\Tent|D|saida2\(4)) ) ) # ( !\Tent|R|IQ[4]~18_combout\ & ( (\Controle|Ereg.Jogador1~q\ & \Tent|D|saida2\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Controle|ALT_INV_Ereg.Jogador1~q\,
	datac => \Tent|D|ALT_INV_saida2\(4),
	dataf => \Tent|R|ALT_INV_IQ[4]~18_combout\,
	combout => \Tent|D|saida2\(4));

-- Location: LABCELL_X79_Y23_N54
\muxD|s_saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxD|s_saida[4]~4_combout\ = ( \Tent|D|saida2\(4) & ( (!\ContDispl|I[0]~DUPLICATE_q\ & (\Tent|D|saida1\(4))) # (\ContDispl|I[0]~DUPLICATE_q\ & ((!\ContDispl|I[1]~DUPLICATE_q\))) ) ) # ( !\Tent|D|saida2\(4) & ( (!\ContDispl|I[0]~DUPLICATE_q\ & 
-- \Tent|D|saida1\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111000011000011111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ContDispl|ALT_INV_I[0]~DUPLICATE_q\,
	datac => \Tent|D|ALT_INV_saida1\(4),
	datad => \ContDispl|ALT_INV_I[1]~DUPLICATE_q\,
	dataf => \Tent|D|ALT_INV_saida2\(4),
	combout => \muxD|s_saida[4]~4_combout\);

-- Location: MLABCELL_X82_Y22_N54
\Tent|R|IQ~103\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ~103_combout\ = ( \resposta~input_o\ & ( \Tent|R|IQ[6]~26_combout\ ) ) # ( !\resposta~input_o\ & ( (\Tent|E|Ereg.Aguarda~q\ & \Tent|R|IQ[6]~26_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tent|E|ALT_INV_Ereg.Aguarda~q\,
	datad => \Tent|R|ALT_INV_IQ[6]~26_combout\,
	dataf => \ALT_INV_resposta~input_o\,
	combout => \Tent|R|IQ~103_combout\);

-- Location: MLABCELL_X82_Y22_N33
\Tent|R|IQ[6]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[6]~25_combout\ = ( \Tent|R|IQ~103_combout\ & ( (\Tent|E|Selector0~1_combout\) # (\Tent|R|IQ[6]~25_combout\) ) ) # ( !\Tent|R|IQ~103_combout\ & ( (\Tent|R|IQ[6]~25_combout\ & !\Tent|E|Selector0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tent|R|ALT_INV_IQ[6]~25_combout\,
	datac => \Tent|E|ALT_INV_Selector0~1_combout\,
	dataf => \Tent|R|ALT_INV_IQ~103_combout\,
	combout => \Tent|R|IQ[6]~25_combout\);

-- Location: MLABCELL_X78_Y23_N57
\Tent|R|IQ~102\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ~102_combout\ = ( \Tent|R|IQ[5]~22_combout\ & ( \resposta~input_o\ ) ) # ( \Tent|R|IQ[5]~22_combout\ & ( !\resposta~input_o\ & ( \Tent|E|Ereg.Aguarda~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tent|E|ALT_INV_Ereg.Aguarda~q\,
	datae => \Tent|R|ALT_INV_IQ[5]~22_combout\,
	dataf => \ALT_INV_resposta~input_o\,
	combout => \Tent|R|IQ~102_combout\);

-- Location: MLABCELL_X78_Y23_N33
\Tent|R|IQ[5]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[5]~21_combout\ = ( \Tent|E|Selector0~1_combout\ & ( \Tent|R|IQ~102_combout\ ) ) # ( !\Tent|E|Selector0~1_combout\ & ( \Tent|R|IQ~102_combout\ & ( \Tent|R|IQ[5]~21_combout\ ) ) ) # ( !\Tent|E|Selector0~1_combout\ & ( !\Tent|R|IQ~102_combout\ & ( 
-- \Tent|R|IQ[5]~21_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Tent|R|ALT_INV_IQ[5]~21_combout\,
	datae => \Tent|E|ALT_INV_Selector0~1_combout\,
	dataf => \Tent|R|ALT_INV_IQ~102_combout\,
	combout => \Tent|R|IQ[5]~21_combout\);

-- Location: MLABCELL_X78_Y22_N12
\Tent|R|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|Add0~17_sumout\ = SUM(( \Tent|R|IQ[5]~22_combout\ ) + ( GND ) + ( \Tent|R|Add0~14\ ))
-- \Tent|R|Add0~18\ = CARRY(( \Tent|R|IQ[5]~22_combout\ ) + ( GND ) + ( \Tent|R|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Tent|R|ALT_INV_IQ[5]~22_combout\,
	cin => \Tent|R|Add0~14\,
	sumout => \Tent|R|Add0~17_sumout\,
	cout => \Tent|R|Add0~18\);

-- Location: MLABCELL_X78_Y22_N48
\Tent|R|IQ[5]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[5]~23_combout\ = ( \Tent|R|Add0~17_sumout\ & ( !\Tent|R|IQ[5]~21_combout\ ) ) # ( !\Tent|R|Add0~17_sumout\ & ( \Tent|R|IQ[5]~21_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Tent|R|ALT_INV_IQ[5]~21_combout\,
	dataf => \Tent|R|ALT_INV_Add0~17_sumout\,
	combout => \Tent|R|IQ[5]~23_combout\);

-- Location: FF_X78_Y22_N50
\Tent|R|IQ[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|R|IQ[5]~23_combout\,
	clrn => \Tent|E|ALT_INV_Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|R|IQ[5]~_emulated_q\);

-- Location: MLABCELL_X78_Y23_N51
\Tent|R|IQ[5]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[5]~22_combout\ = ( \Tent|R|IQ[5]~21_combout\ & ( (!\Tent|E|Selector0~1_combout\ & (!\Tent|R|IQ[5]~_emulated_q\)) # (\Tent|E|Selector0~1_combout\ & ((\Tent|R|IQ~102_combout\))) ) ) # ( !\Tent|R|IQ[5]~21_combout\ & ( 
-- (!\Tent|E|Selector0~1_combout\ & (\Tent|R|IQ[5]~_emulated_q\)) # (\Tent|E|Selector0~1_combout\ & ((\Tent|R|IQ~102_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111111000000111100111100000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tent|E|ALT_INV_Selector0~1_combout\,
	datac => \Tent|R|ALT_INV_IQ[5]~_emulated_q\,
	datad => \Tent|R|ALT_INV_IQ~102_combout\,
	dataf => \Tent|R|ALT_INV_IQ[5]~21_combout\,
	combout => \Tent|R|IQ[5]~22_combout\);

-- Location: MLABCELL_X78_Y22_N15
\Tent|R|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|Add0~21_sumout\ = SUM(( \Tent|R|IQ[6]~26_combout\ ) + ( GND ) + ( \Tent|R|Add0~18\ ))
-- \Tent|R|Add0~22\ = CARRY(( \Tent|R|IQ[6]~26_combout\ ) + ( GND ) + ( \Tent|R|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Tent|R|ALT_INV_IQ[6]~26_combout\,
	cin => \Tent|R|Add0~18\,
	sumout => \Tent|R|Add0~21_sumout\,
	cout => \Tent|R|Add0~22\);

-- Location: LABCELL_X79_Y22_N9
\Tent|R|IQ[6]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[6]~27_combout\ = ( \Tent|R|Add0~21_sumout\ & ( !\Tent|R|IQ[6]~25_combout\ ) ) # ( !\Tent|R|Add0~21_sumout\ & ( \Tent|R|IQ[6]~25_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Tent|R|ALT_INV_IQ[6]~25_combout\,
	dataf => \Tent|R|ALT_INV_Add0~21_sumout\,
	combout => \Tent|R|IQ[6]~27_combout\);

-- Location: FF_X79_Y22_N11
\Tent|R|IQ[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|R|IQ[6]~27_combout\,
	clrn => \Tent|E|ALT_INV_Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|R|IQ[6]~_emulated_q\);

-- Location: MLABCELL_X82_Y22_N42
\Tent|R|IQ[6]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[6]~26_combout\ = ( \Tent|R|IQ[6]~25_combout\ & ( (!\Tent|E|Selector0~1_combout\ & ((!\Tent|R|IQ[6]~_emulated_q\))) # (\Tent|E|Selector0~1_combout\ & (\Tent|R|IQ~103_combout\)) ) ) # ( !\Tent|R|IQ[6]~25_combout\ & ( 
-- (!\Tent|E|Selector0~1_combout\ & ((\Tent|R|IQ[6]~_emulated_q\))) # (\Tent|E|Selector0~1_combout\ & (\Tent|R|IQ~103_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111110101111000001011010111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tent|E|ALT_INV_Selector0~1_combout\,
	datac => \Tent|R|ALT_INV_IQ~103_combout\,
	datad => \Tent|R|ALT_INV_IQ[6]~_emulated_q\,
	dataf => \Tent|R|ALT_INV_IQ[6]~25_combout\,
	combout => \Tent|R|IQ[6]~26_combout\);

-- Location: MLABCELL_X82_Y22_N0
\Tent|D|saida1[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|D|saida1\(6) = ( \Tent|R|IQ[6]~26_combout\ & ( (\Tent|D|saida1\(6)) # (\Controle|Ereg.Jogador1~q\) ) ) # ( !\Tent|R|IQ[6]~26_combout\ & ( (!\Controle|Ereg.Jogador1~q\ & \Tent|D|saida1\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Controle|ALT_INV_Ereg.Jogador1~q\,
	datad => \Tent|D|ALT_INV_saida1\(6),
	dataf => \Tent|R|ALT_INV_IQ[6]~26_combout\,
	combout => \Tent|D|saida1\(6));

-- Location: MLABCELL_X82_Y22_N45
\Tent|D|saida2[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|D|saida2\(6) = ( \Tent|R|IQ[6]~26_combout\ & ( (!\Controle|Ereg.Jogador1~q\) # (\Tent|D|saida2\(6)) ) ) # ( !\Tent|R|IQ[6]~26_combout\ & ( (\Controle|Ereg.Jogador1~q\ & \Tent|D|saida2\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Controle|ALT_INV_Ereg.Jogador1~q\,
	datad => \Tent|D|ALT_INV_saida2\(6),
	dataf => \Tent|R|ALT_INV_IQ[6]~26_combout\,
	combout => \Tent|D|saida2\(6));

-- Location: MLABCELL_X82_Y22_N30
\muxD|s_saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxD|s_saida[6]~6_combout\ = ( \ContDispl|I[1]~DUPLICATE_q\ & ( (!\ContDispl|I[0]~DUPLICATE_q\ & \Tent|D|saida1\(6)) ) ) # ( !\ContDispl|I[1]~DUPLICATE_q\ & ( (!\ContDispl|I[0]~DUPLICATE_q\ & (\Tent|D|saida1\(6))) # (\ContDispl|I[0]~DUPLICATE_q\ & 
-- ((\Tent|D|saida2\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ContDispl|ALT_INV_I[0]~DUPLICATE_q\,
	datac => \Tent|D|ALT_INV_saida1\(6),
	datad => \Tent|D|ALT_INV_saida2\(6),
	dataf => \ContDispl|ALT_INV_I[1]~DUPLICATE_q\,
	combout => \muxD|s_saida[6]~6_combout\);

-- Location: LABCELL_X77_Y22_N6
\Tent|R|IQ~104\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ~104_combout\ = ( \resposta~input_o\ & ( \Tent|R|IQ[7]~30_combout\ ) ) # ( !\resposta~input_o\ & ( (\Tent|E|Ereg.Aguarda~q\ & \Tent|R|IQ[7]~30_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tent|E|ALT_INV_Ereg.Aguarda~q\,
	datac => \Tent|R|ALT_INV_IQ[7]~30_combout\,
	dataf => \ALT_INV_resposta~input_o\,
	combout => \Tent|R|IQ~104_combout\);

-- Location: LABCELL_X77_Y22_N51
\Tent|R|IQ[7]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[7]~29_combout\ = ( \Tent|R|IQ~104_combout\ & ( (\Tent|E|Selector0~1_combout\) # (\Tent|R|IQ[7]~29_combout\) ) ) # ( !\Tent|R|IQ~104_combout\ & ( (\Tent|R|IQ[7]~29_combout\ & !\Tent|E|Selector0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Tent|R|ALT_INV_IQ[7]~29_combout\,
	datad => \Tent|E|ALT_INV_Selector0~1_combout\,
	dataf => \Tent|R|ALT_INV_IQ~104_combout\,
	combout => \Tent|R|IQ[7]~29_combout\);

-- Location: MLABCELL_X78_Y22_N18
\Tent|R|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|Add0~25_sumout\ = SUM(( \Tent|R|IQ[7]~30_combout\ ) + ( GND ) + ( \Tent|R|Add0~22\ ))
-- \Tent|R|Add0~26\ = CARRY(( \Tent|R|IQ[7]~30_combout\ ) + ( GND ) + ( \Tent|R|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Tent|R|ALT_INV_IQ[7]~30_combout\,
	cin => \Tent|R|Add0~22\,
	sumout => \Tent|R|Add0~25_sumout\,
	cout => \Tent|R|Add0~26\);

-- Location: LABCELL_X77_Y22_N27
\Tent|R|IQ[7]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[7]~31_combout\ = ( \Tent|R|Add0~25_sumout\ & ( !\Tent|R|IQ[7]~29_combout\ ) ) # ( !\Tent|R|Add0~25_sumout\ & ( \Tent|R|IQ[7]~29_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Tent|R|ALT_INV_IQ[7]~29_combout\,
	dataf => \Tent|R|ALT_INV_Add0~25_sumout\,
	combout => \Tent|R|IQ[7]~31_combout\);

-- Location: FF_X77_Y22_N29
\Tent|R|IQ[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|R|IQ[7]~31_combout\,
	clrn => \Tent|E|ALT_INV_Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|R|IQ[7]~_emulated_q\);

-- Location: LABCELL_X77_Y22_N42
\Tent|R|IQ[7]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[7]~30_combout\ = ( \Tent|R|IQ[7]~29_combout\ & ( (!\Tent|E|Selector0~1_combout\ & ((!\Tent|R|IQ[7]~_emulated_q\))) # (\Tent|E|Selector0~1_combout\ & (\Tent|R|IQ~104_combout\)) ) ) # ( !\Tent|R|IQ[7]~29_combout\ & ( 
-- (!\Tent|E|Selector0~1_combout\ & ((\Tent|R|IQ[7]~_emulated_q\))) # (\Tent|E|Selector0~1_combout\ & (\Tent|R|IQ~104_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110111010001110100011101000111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tent|R|ALT_INV_IQ~104_combout\,
	datab => \Tent|E|ALT_INV_Selector0~1_combout\,
	datac => \Tent|R|ALT_INV_IQ[7]~_emulated_q\,
	dataf => \Tent|R|ALT_INV_IQ[7]~29_combout\,
	combout => \Tent|R|IQ[7]~30_combout\);

-- Location: LABCELL_X77_Y22_N12
\Tent|D|saida1[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|D|saida1\(7) = ( \Tent|R|IQ[7]~30_combout\ & ( (\Tent|D|saida1\(7)) # (\Controle|Ereg.Jogador1~q\) ) ) # ( !\Tent|R|IQ[7]~30_combout\ & ( (!\Controle|Ereg.Jogador1~q\ & \Tent|D|saida1\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Controle|ALT_INV_Ereg.Jogador1~q\,
	datad => \Tent|D|ALT_INV_saida1\(7),
	dataf => \Tent|R|ALT_INV_IQ[7]~30_combout\,
	combout => \Tent|D|saida1\(7));

-- Location: LABCELL_X77_Y22_N9
\Tent|D|saida2[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|D|saida2\(7) = ( \Tent|R|IQ[7]~30_combout\ & ( (!\Controle|Ereg.Jogador1~q\) # (\Tent|D|saida2\(7)) ) ) # ( !\Tent|R|IQ[7]~30_combout\ & ( (\Controle|Ereg.Jogador1~q\ & \Tent|D|saida2\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Controle|ALT_INV_Ereg.Jogador1~q\,
	datac => \Tent|D|ALT_INV_saida2\(7),
	dataf => \Tent|R|ALT_INV_IQ[7]~30_combout\,
	combout => \Tent|D|saida2\(7));

-- Location: LABCELL_X83_Y22_N36
\muxD|s_saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxD|s_saida[7]~7_combout\ = ( \ContDispl|I[1]~DUPLICATE_q\ & ( (\Tent|D|saida1\(7) & !\ContDispl|I[0]~DUPLICATE_q\) ) ) # ( !\ContDispl|I[1]~DUPLICATE_q\ & ( (!\ContDispl|I[0]~DUPLICATE_q\ & (\Tent|D|saida1\(7))) # (\ContDispl|I[0]~DUPLICATE_q\ & 
-- ((\Tent|D|saida2\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tent|D|ALT_INV_saida1\(7),
	datab => \Tent|D|ALT_INV_saida2\(7),
	datac => \ContDispl|ALT_INV_I[0]~DUPLICATE_q\,
	dataf => \ContDispl|ALT_INV_I[1]~DUPLICATE_q\,
	combout => \muxD|s_saida[7]~7_combout\);

-- Location: MLABCELL_X78_Y23_N36
\Tent|D|saida1[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|D|saida1\(5) = ( \Tent|D|saida1\(5) & ( \Tent|R|IQ[5]~22_combout\ ) ) # ( !\Tent|D|saida1\(5) & ( \Tent|R|IQ[5]~22_combout\ & ( \Controle|Ereg.Jogador1~q\ ) ) ) # ( \Tent|D|saida1\(5) & ( !\Tent|R|IQ[5]~22_combout\ & ( !\Controle|Ereg.Jogador1~q\ ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Controle|ALT_INV_Ereg.Jogador1~q\,
	datae => \Tent|D|ALT_INV_saida1\(5),
	dataf => \Tent|R|ALT_INV_IQ[5]~22_combout\,
	combout => \Tent|D|saida1\(5));

-- Location: MLABCELL_X78_Y23_N24
\Tent|D|saida2[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|D|saida2\(5) = ( \Tent|R|IQ[5]~22_combout\ & ( (!\Controle|Ereg.Jogador1~q\) # (\Tent|D|saida2\(5)) ) ) # ( !\Tent|R|IQ[5]~22_combout\ & ( (\Controle|Ereg.Jogador1~q\ & \Tent|D|saida2\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Controle|ALT_INV_Ereg.Jogador1~q\,
	datac => \Tent|D|ALT_INV_saida2\(5),
	dataf => \Tent|R|ALT_INV_IQ[5]~22_combout\,
	combout => \Tent|D|saida2\(5));

-- Location: MLABCELL_X78_Y23_N48
\muxD|s_saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxD|s_saida[5]~5_combout\ = ( \Tent|D|saida2\(5) & ( (!\ContDispl|I[0]~DUPLICATE_q\ & ((\Tent|D|saida1\(5)))) # (\ContDispl|I[0]~DUPLICATE_q\ & (!\ContDispl|I[1]~DUPLICATE_q\)) ) ) # ( !\Tent|D|saida2\(5) & ( (\Tent|D|saida1\(5) & 
-- !\ContDispl|I[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111101010100000111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContDispl|ALT_INV_I[1]~DUPLICATE_q\,
	datac => \Tent|D|ALT_INV_saida1\(5),
	datad => \ContDispl|ALT_INV_I[0]~DUPLICATE_q\,
	dataf => \Tent|D|ALT_INV_saida2\(5),
	combout => \muxD|s_saida[5]~5_combout\);

-- Location: MLABCELL_X78_Y26_N45
\DisplayPonto2|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DisplayPonto2|Mux6~0_combout\ = ( \muxD|s_saida[5]~5_combout\ & ( (!\muxD|s_saida[4]~4_combout\) # ((!\muxD|s_saida[6]~6_combout\) # (\muxD|s_saida[7]~7_combout\)) ) ) # ( !\muxD|s_saida[5]~5_combout\ & ( (!\muxD|s_saida[6]~6_combout\ & 
-- ((\muxD|s_saida[7]~7_combout\))) # (\muxD|s_saida[6]~6_combout\ & ((!\muxD|s_saida[7]~7_combout\) # (\muxD|s_saida[4]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110101000011111111010111111010111111111111101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxD|ALT_INV_s_saida[4]~4_combout\,
	datac => \muxD|ALT_INV_s_saida[6]~6_combout\,
	datad => \muxD|ALT_INV_s_saida[7]~7_combout\,
	dataf => \muxD|ALT_INV_s_saida[5]~5_combout\,
	combout => \DisplayPonto2|Mux6~0_combout\);

-- Location: MLABCELL_X78_Y26_N6
\DisplayPonto2|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DisplayPonto2|Mux5~0_combout\ = (!\muxD|s_saida[5]~5_combout\ & (\muxD|s_saida[4]~4_combout\ & (!\muxD|s_saida[7]~7_combout\ $ (\muxD|s_saida[6]~6_combout\)))) # (\muxD|s_saida[5]~5_combout\ & (((!\muxD|s_saida[7]~7_combout\ & 
-- !\muxD|s_saida[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000000100011100000000010001110000000001000111000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxD|ALT_INV_s_saida[4]~4_combout\,
	datab => \muxD|ALT_INV_s_saida[5]~5_combout\,
	datac => \muxD|ALT_INV_s_saida[7]~7_combout\,
	datad => \muxD|ALT_INV_s_saida[6]~6_combout\,
	combout => \DisplayPonto2|Mux5~0_combout\);

-- Location: MLABCELL_X78_Y26_N9
\DisplayPonto2|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DisplayPonto2|Mux4~0_combout\ = ( \muxD|s_saida[7]~7_combout\ & ( (\muxD|s_saida[4]~4_combout\ & (!\muxD|s_saida[5]~5_combout\ & !\muxD|s_saida[6]~6_combout\)) ) ) # ( !\muxD|s_saida[7]~7_combout\ & ( ((!\muxD|s_saida[5]~5_combout\ & 
-- \muxD|s_saida[6]~6_combout\)) # (\muxD|s_saida[4]~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101011101010111010101110101000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxD|ALT_INV_s_saida[4]~4_combout\,
	datab => \muxD|ALT_INV_s_saida[5]~5_combout\,
	datac => \muxD|ALT_INV_s_saida[6]~6_combout\,
	dataf => \muxD|ALT_INV_s_saida[7]~7_combout\,
	combout => \DisplayPonto2|Mux4~0_combout\);

-- Location: MLABCELL_X78_Y26_N12
\DisplayPonto2|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DisplayPonto2|Mux3~0_combout\ = (!\muxD|s_saida[5]~5_combout\ & (!\muxD|s_saida[7]~7_combout\ & (!\muxD|s_saida[4]~4_combout\ $ (!\muxD|s_saida[6]~6_combout\)))) # (\muxD|s_saida[5]~5_combout\ & ((!\muxD|s_saida[4]~4_combout\ & 
-- (\muxD|s_saida[7]~7_combout\ & !\muxD|s_saida[6]~6_combout\)) # (\muxD|s_saida[4]~4_combout\ & ((\muxD|s_saida[6]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001010010001010000101001000101000010100100010100001010010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxD|ALT_INV_s_saida[4]~4_combout\,
	datab => \muxD|ALT_INV_s_saida[5]~5_combout\,
	datac => \muxD|ALT_INV_s_saida[7]~7_combout\,
	datad => \muxD|ALT_INV_s_saida[6]~6_combout\,
	combout => \DisplayPonto2|Mux3~0_combout\);

-- Location: MLABCELL_X78_Y26_N57
\DisplayPonto2|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DisplayPonto2|Mux2~0_combout\ = ( \muxD|s_saida[7]~7_combout\ & ( (\muxD|s_saida[6]~6_combout\ & ((!\muxD|s_saida[4]~4_combout\) # (\muxD|s_saida[5]~5_combout\))) ) ) # ( !\muxD|s_saida[7]~7_combout\ & ( (!\muxD|s_saida[4]~4_combout\ & 
-- (\muxD|s_saida[5]~5_combout\ & !\muxD|s_saida[6]~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000001011000010110000101100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxD|ALT_INV_s_saida[4]~4_combout\,
	datab => \muxD|ALT_INV_s_saida[5]~5_combout\,
	datac => \muxD|ALT_INV_s_saida[6]~6_combout\,
	dataf => \muxD|ALT_INV_s_saida[7]~7_combout\,
	combout => \DisplayPonto2|Mux2~0_combout\);

-- Location: MLABCELL_X78_Y26_N15
\DisplayPonto2|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DisplayPonto2|Mux1~0_combout\ = ( \muxD|s_saida[7]~7_combout\ & ( (!\muxD|s_saida[4]~4_combout\ & ((\muxD|s_saida[6]~6_combout\))) # (\muxD|s_saida[4]~4_combout\ & (\muxD|s_saida[5]~5_combout\)) ) ) # ( !\muxD|s_saida[7]~7_combout\ & ( 
-- (\muxD|s_saida[6]~6_combout\ & (!\muxD|s_saida[4]~4_combout\ $ (!\muxD|s_saida[5]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011000011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxD|ALT_INV_s_saida[4]~4_combout\,
	datab => \muxD|ALT_INV_s_saida[5]~5_combout\,
	datac => \muxD|ALT_INV_s_saida[6]~6_combout\,
	dataf => \muxD|ALT_INV_s_saida[7]~7_combout\,
	combout => \DisplayPonto2|Mux1~0_combout\);

-- Location: MLABCELL_X78_Y26_N54
\DisplayPonto2|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DisplayPonto2|Mux0~0_combout\ = ( \muxD|s_saida[7]~7_combout\ & ( (\muxD|s_saida[4]~4_combout\ & (!\muxD|s_saida[5]~5_combout\ $ (!\muxD|s_saida[6]~6_combout\))) ) ) # ( !\muxD|s_saida[7]~7_combout\ & ( (!\muxD|s_saida[5]~5_combout\ & 
-- (!\muxD|s_saida[4]~4_combout\ $ (!\muxD|s_saida[6]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010001000010001001000100000010001010001000001000101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxD|ALT_INV_s_saida[4]~4_combout\,
	datab => \muxD|ALT_INV_s_saida[5]~5_combout\,
	datad => \muxD|ALT_INV_s_saida[6]~6_combout\,
	dataf => \muxD|ALT_INV_s_saida[7]~7_combout\,
	combout => \DisplayPonto2|Mux0~0_combout\);

-- Location: LABCELL_X81_Y22_N27
\Tent|R|IQ~106\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ~106_combout\ = ( \resposta~input_o\ & ( \Tent|R|IQ[9]~38_combout\ ) ) # ( !\resposta~input_o\ & ( (\Tent|R|IQ[9]~38_combout\ & \Tent|E|Ereg.Aguarda~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tent|R|ALT_INV_IQ[9]~38_combout\,
	datab => \Tent|E|ALT_INV_Ereg.Aguarda~q\,
	dataf => \ALT_INV_resposta~input_o\,
	combout => \Tent|R|IQ~106_combout\);

-- Location: LABCELL_X81_Y22_N30
\Tent|R|IQ[9]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[9]~37_combout\ = ( \Tent|R|IQ~106_combout\ & ( (\Tent|E|Selector0~1_combout\) # (\Tent|R|IQ[9]~37_combout\) ) ) # ( !\Tent|R|IQ~106_combout\ & ( (\Tent|R|IQ[9]~37_combout\ & !\Tent|E|Selector0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Tent|R|ALT_INV_IQ[9]~37_combout\,
	datad => \Tent|E|ALT_INV_Selector0~1_combout\,
	dataf => \Tent|R|ALT_INV_IQ~106_combout\,
	combout => \Tent|R|IQ[9]~37_combout\);

-- Location: MLABCELL_X82_Y22_N6
\Tent|R|IQ~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ~105_combout\ = ( \resposta~input_o\ & ( \Tent|R|IQ[8]~34_combout\ ) ) # ( !\resposta~input_o\ & ( (\Tent|R|IQ[8]~34_combout\ & \Tent|E|Ereg.Aguarda~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tent|R|ALT_INV_IQ[8]~34_combout\,
	datac => \Tent|E|ALT_INV_Ereg.Aguarda~q\,
	dataf => \ALT_INV_resposta~input_o\,
	combout => \Tent|R|IQ~105_combout\);

-- Location: MLABCELL_X82_Y22_N39
\Tent|R|IQ[8]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[8]~33_combout\ = ( \Tent|R|IQ[8]~33_combout\ & ( (!\Tent|E|Selector0~1_combout\) # (\Tent|R|IQ~105_combout\) ) ) # ( !\Tent|R|IQ[8]~33_combout\ & ( (\Tent|R|IQ~105_combout\ & \Tent|E|Selector0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tent|R|ALT_INV_IQ~105_combout\,
	datac => \Tent|E|ALT_INV_Selector0~1_combout\,
	dataf => \Tent|R|ALT_INV_IQ[8]~33_combout\,
	combout => \Tent|R|IQ[8]~33_combout\);

-- Location: MLABCELL_X78_Y22_N21
\Tent|R|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|Add0~29_sumout\ = SUM(( \Tent|R|IQ[8]~34_combout\ ) + ( GND ) + ( \Tent|R|Add0~26\ ))
-- \Tent|R|Add0~30\ = CARRY(( \Tent|R|IQ[8]~34_combout\ ) + ( GND ) + ( \Tent|R|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Tent|R|ALT_INV_IQ[8]~34_combout\,
	cin => \Tent|R|Add0~26\,
	sumout => \Tent|R|Add0~29_sumout\,
	cout => \Tent|R|Add0~30\);

-- Location: LABCELL_X79_Y22_N3
\Tent|R|IQ[8]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[8]~35_combout\ = ( \Tent|R|Add0~29_sumout\ & ( !\Tent|R|IQ[8]~33_combout\ ) ) # ( !\Tent|R|Add0~29_sumout\ & ( \Tent|R|IQ[8]~33_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Tent|R|ALT_INV_IQ[8]~33_combout\,
	dataf => \Tent|R|ALT_INV_Add0~29_sumout\,
	combout => \Tent|R|IQ[8]~35_combout\);

-- Location: FF_X79_Y22_N4
\Tent|R|IQ[8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|R|IQ[8]~35_combout\,
	clrn => \Tent|E|ALT_INV_Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|R|IQ[8]~_emulated_q\);

-- Location: MLABCELL_X82_Y22_N18
\Tent|R|IQ[8]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[8]~34_combout\ = ( \Tent|R|IQ[8]~33_combout\ & ( (!\Tent|E|Selector0~1_combout\ & ((!\Tent|R|IQ[8]~_emulated_q\))) # (\Tent|E|Selector0~1_combout\ & (\Tent|R|IQ~105_combout\)) ) ) # ( !\Tent|R|IQ[8]~33_combout\ & ( 
-- (!\Tent|E|Selector0~1_combout\ & ((\Tent|R|IQ[8]~_emulated_q\))) # (\Tent|E|Selector0~1_combout\ & (\Tent|R|IQ~105_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111111001111000000111100111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tent|E|ALT_INV_Selector0~1_combout\,
	datac => \Tent|R|ALT_INV_IQ~105_combout\,
	datad => \Tent|R|ALT_INV_IQ[8]~_emulated_q\,
	dataf => \Tent|R|ALT_INV_IQ[8]~33_combout\,
	combout => \Tent|R|IQ[8]~34_combout\);

-- Location: MLABCELL_X78_Y22_N24
\Tent|R|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|Add0~33_sumout\ = SUM(( \Tent|R|IQ[9]~38_combout\ ) + ( GND ) + ( \Tent|R|Add0~30\ ))
-- \Tent|R|Add0~34\ = CARRY(( \Tent|R|IQ[9]~38_combout\ ) + ( GND ) + ( \Tent|R|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Tent|R|ALT_INV_IQ[9]~38_combout\,
	cin => \Tent|R|Add0~30\,
	sumout => \Tent|R|Add0~33_sumout\,
	cout => \Tent|R|Add0~34\);

-- Location: LABCELL_X79_Y22_N48
\Tent|R|IQ[9]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[9]~39_combout\ = ( \Tent|R|Add0~33_sumout\ & ( !\Tent|R|IQ[9]~37_combout\ ) ) # ( !\Tent|R|Add0~33_sumout\ & ( \Tent|R|IQ[9]~37_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Tent|R|ALT_INV_IQ[9]~37_combout\,
	dataf => \Tent|R|ALT_INV_Add0~33_sumout\,
	combout => \Tent|R|IQ[9]~39_combout\);

-- Location: FF_X79_Y22_N50
\Tent|R|IQ[9]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|R|IQ[9]~39_combout\,
	clrn => \Tent|E|ALT_INV_Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|R|IQ[9]~_emulated_q\);

-- Location: LABCELL_X81_Y22_N39
\Tent|R|IQ[9]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[9]~38_combout\ = ( \Tent|R|IQ[9]~37_combout\ & ( (!\Tent|E|Selector0~1_combout\ & (!\Tent|R|IQ[9]~_emulated_q\)) # (\Tent|E|Selector0~1_combout\ & ((\Tent|R|IQ~106_combout\))) ) ) # ( !\Tent|R|IQ[9]~37_combout\ & ( 
-- (!\Tent|E|Selector0~1_combout\ & (\Tent|R|IQ[9]~_emulated_q\)) # (\Tent|E|Selector0~1_combout\ & ((\Tent|R|IQ~106_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111110100000101011111010000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tent|R|ALT_INV_IQ[9]~_emulated_q\,
	datac => \Tent|E|ALT_INV_Selector0~1_combout\,
	datad => \Tent|R|ALT_INV_IQ~106_combout\,
	dataf => \Tent|R|ALT_INV_IQ[9]~37_combout\,
	combout => \Tent|R|IQ[9]~38_combout\);

-- Location: LABCELL_X81_Y22_N45
\Tent|D|saida2[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|D|saida2\(9) = ( \Tent|R|IQ[9]~38_combout\ & ( (!\Controle|Ereg.Jogador1~q\) # (\Tent|D|saida2\(9)) ) ) # ( !\Tent|R|IQ[9]~38_combout\ & ( (\Controle|Ereg.Jogador1~q\ & \Tent|D|saida2\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Controle|ALT_INV_Ereg.Jogador1~q\,
	datad => \Tent|D|ALT_INV_saida2\(9),
	dataf => \Tent|R|ALT_INV_IQ[9]~38_combout\,
	combout => \Tent|D|saida2\(9));

-- Location: LABCELL_X81_Y22_N36
\Tent|D|saida1[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|D|saida1\(9) = ( \Tent|R|IQ[9]~38_combout\ & ( (\Tent|D|saida1\(9)) # (\Controle|Ereg.Jogador1~q\) ) ) # ( !\Tent|R|IQ[9]~38_combout\ & ( (!\Controle|Ereg.Jogador1~q\ & \Tent|D|saida1\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Controle|ALT_INV_Ereg.Jogador1~q\,
	datad => \Tent|D|ALT_INV_saida1\(9),
	dataf => \Tent|R|ALT_INV_IQ[9]~38_combout\,
	combout => \Tent|D|saida1\(9));

-- Location: MLABCELL_X82_Y22_N9
\muxD|s_saida[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxD|s_saida[9]~9_combout\ = ( \Tent|D|saida1\(9) & ( (!\ContDispl|I[0]~DUPLICATE_q\) # ((!\ContDispl|I[1]~DUPLICATE_q\ & \Tent|D|saida2\(9))) ) ) # ( !\Tent|D|saida1\(9) & ( (!\ContDispl|I[1]~DUPLICATE_q\ & (\Tent|D|saida2\(9) & 
-- \ContDispl|I[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101011111111000010101111111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContDispl|ALT_INV_I[1]~DUPLICATE_q\,
	datac => \Tent|D|ALT_INV_saida2\(9),
	datad => \ContDispl|ALT_INV_I[0]~DUPLICATE_q\,
	dataf => \Tent|D|ALT_INV_saida1\(9),
	combout => \muxD|s_saida[9]~9_combout\);

-- Location: LABCELL_X79_Y23_N18
\Tent|R|IQ~107\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ~107_combout\ = ( \resposta~input_o\ & ( \Tent|R|IQ[10]~42_combout\ ) ) # ( !\resposta~input_o\ & ( (\Tent|E|Ereg.Aguarda~q\ & \Tent|R|IQ[10]~42_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tent|E|ALT_INV_Ereg.Aguarda~q\,
	datac => \Tent|R|ALT_INV_IQ[10]~42_combout\,
	dataf => \ALT_INV_resposta~input_o\,
	combout => \Tent|R|IQ~107_combout\);

-- Location: LABCELL_X79_Y23_N15
\Tent|R|IQ[10]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[10]~41_combout\ = ( \Tent|R|IQ~107_combout\ & ( (\Tent|E|Selector0~1_combout\) # (\Tent|R|IQ[10]~41_combout\) ) ) # ( !\Tent|R|IQ~107_combout\ & ( (\Tent|R|IQ[10]~41_combout\ & !\Tent|E|Selector0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Tent|R|ALT_INV_IQ[10]~41_combout\,
	datad => \Tent|E|ALT_INV_Selector0~1_combout\,
	dataf => \Tent|R|ALT_INV_IQ~107_combout\,
	combout => \Tent|R|IQ[10]~41_combout\);

-- Location: MLABCELL_X78_Y22_N27
\Tent|R|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|Add0~37_sumout\ = SUM(( \Tent|R|IQ[10]~42_combout\ ) + ( GND ) + ( \Tent|R|Add0~34\ ))
-- \Tent|R|Add0~38\ = CARRY(( \Tent|R|IQ[10]~42_combout\ ) + ( GND ) + ( \Tent|R|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Tent|R|ALT_INV_IQ[10]~42_combout\,
	cin => \Tent|R|Add0~34\,
	sumout => \Tent|R|Add0~37_sumout\,
	cout => \Tent|R|Add0~38\);

-- Location: LABCELL_X79_Y22_N33
\Tent|R|IQ[10]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[10]~43_combout\ = ( \Tent|R|Add0~37_sumout\ & ( !\Tent|R|IQ[10]~41_combout\ ) ) # ( !\Tent|R|Add0~37_sumout\ & ( \Tent|R|IQ[10]~41_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tent|R|ALT_INV_IQ[10]~41_combout\,
	dataf => \Tent|R|ALT_INV_Add0~37_sumout\,
	combout => \Tent|R|IQ[10]~43_combout\);

-- Location: FF_X79_Y22_N35
\Tent|R|IQ[10]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|R|IQ[10]~43_combout\,
	clrn => \Tent|E|ALT_INV_Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|R|IQ[10]~_emulated_q\);

-- Location: LABCELL_X79_Y23_N6
\Tent|R|IQ[10]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[10]~42_combout\ = ( \Tent|R|IQ[10]~41_combout\ & ( (!\Tent|E|Selector0~1_combout\ & ((!\Tent|R|IQ[10]~_emulated_q\))) # (\Tent|E|Selector0~1_combout\ & (\Tent|R|IQ~107_combout\)) ) ) # ( !\Tent|R|IQ[10]~41_combout\ & ( 
-- (!\Tent|E|Selector0~1_combout\ & ((\Tent|R|IQ[10]~_emulated_q\))) # (\Tent|E|Selector0~1_combout\ & (\Tent|R|IQ~107_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111110101111000001011010111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tent|E|ALT_INV_Selector0~1_combout\,
	datac => \Tent|R|ALT_INV_IQ~107_combout\,
	datad => \Tent|R|ALT_INV_IQ[10]~_emulated_q\,
	dataf => \Tent|R|ALT_INV_IQ[10]~41_combout\,
	combout => \Tent|R|IQ[10]~42_combout\);

-- Location: LABCELL_X79_Y23_N12
\Tent|D|saida1[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|D|saida1\(10) = ( \Tent|R|IQ[10]~42_combout\ & ( (\Tent|D|saida1\(10)) # (\Controle|Ereg.Jogador1~q\) ) ) # ( !\Tent|R|IQ[10]~42_combout\ & ( (!\Controle|Ereg.Jogador1~q\ & \Tent|D|saida1\(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Controle|ALT_INV_Ereg.Jogador1~q\,
	datab => \Tent|D|ALT_INV_saida1\(10),
	dataf => \Tent|R|ALT_INV_IQ[10]~42_combout\,
	combout => \Tent|D|saida1\(10));

-- Location: LABCELL_X79_Y23_N9
\Tent|D|saida2[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|D|saida2\(10) = ( \Tent|R|IQ[10]~42_combout\ & ( (!\Controle|Ereg.Jogador1~q\) # (\Tent|D|saida2\(10)) ) ) # ( !\Tent|R|IQ[10]~42_combout\ & ( (\Controle|Ereg.Jogador1~q\ & \Tent|D|saida2\(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Controle|ALT_INV_Ereg.Jogador1~q\,
	datac => \Tent|D|ALT_INV_saida2\(10),
	dataf => \Tent|R|ALT_INV_IQ[10]~42_combout\,
	combout => \Tent|D|saida2\(10));

-- Location: LABCELL_X79_Y23_N36
\muxD|s_saida[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxD|s_saida[10]~10_combout\ = ( \Tent|D|saida2\(10) & ( (!\ContDispl|I[0]~DUPLICATE_q\ & ((\Tent|D|saida1\(10)))) # (\ContDispl|I[0]~DUPLICATE_q\ & (!\ContDispl|I[1]~DUPLICATE_q\)) ) ) # ( !\Tent|D|saida2\(10) & ( (\Tent|D|saida1\(10) & 
-- !\ContDispl|I[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111101010100000111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContDispl|ALT_INV_I[1]~DUPLICATE_q\,
	datac => \Tent|D|ALT_INV_saida1\(10),
	datad => \ContDispl|ALT_INV_I[0]~DUPLICATE_q\,
	dataf => \Tent|D|ALT_INV_saida2\(10),
	combout => \muxD|s_saida[10]~10_combout\);

-- Location: MLABCELL_X82_Y22_N48
\Tent|D|saida1[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|D|saida1\(8) = ( \Tent|R|IQ[8]~34_combout\ & ( (\Tent|D|saida1\(8)) # (\Controle|Ereg.Jogador1~q\) ) ) # ( !\Tent|R|IQ[8]~34_combout\ & ( (!\Controle|Ereg.Jogador1~q\ & \Tent|D|saida1\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Controle|ALT_INV_Ereg.Jogador1~q\,
	datac => \Tent|D|ALT_INV_saida1\(8),
	dataf => \Tent|R|ALT_INV_IQ[8]~34_combout\,
	combout => \Tent|D|saida1\(8));

-- Location: MLABCELL_X82_Y22_N21
\Tent|D|saida2[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|D|saida2\(8) = ( \Tent|R|IQ[8]~34_combout\ & ( (!\Controle|Ereg.Jogador1~q\) # (\Tent|D|saida2\(8)) ) ) # ( !\Tent|R|IQ[8]~34_combout\ & ( (\Controle|Ereg.Jogador1~q\ & \Tent|D|saida2\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Controle|ALT_INV_Ereg.Jogador1~q\,
	datad => \Tent|D|ALT_INV_saida2\(8),
	dataf => \Tent|R|ALT_INV_IQ[8]~34_combout\,
	combout => \Tent|D|saida2\(8));

-- Location: MLABCELL_X82_Y22_N36
\muxD|s_saida[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxD|s_saida[8]~8_combout\ = ( \ContDispl|I[1]~DUPLICATE_q\ & ( (!\ContDispl|I[0]~DUPLICATE_q\ & \Tent|D|saida1\(8)) ) ) # ( !\ContDispl|I[1]~DUPLICATE_q\ & ( (!\ContDispl|I[0]~DUPLICATE_q\ & (\Tent|D|saida1\(8))) # (\ContDispl|I[0]~DUPLICATE_q\ & 
-- ((\Tent|D|saida2\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContDispl|ALT_INV_I[0]~DUPLICATE_q\,
	datac => \Tent|D|ALT_INV_saida1\(8),
	datad => \Tent|D|ALT_INV_saida2\(8),
	dataf => \ContDispl|ALT_INV_I[1]~DUPLICATE_q\,
	combout => \muxD|s_saida[8]~8_combout\);

-- Location: LABCELL_X80_Y22_N18
\Tent|R|IQ~108\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ~108_combout\ = ( \resposta~input_o\ & ( \Tent|R|IQ[11]~46_combout\ ) ) # ( !\resposta~input_o\ & ( (\Tent|E|Ereg.Aguarda~q\ & \Tent|R|IQ[11]~46_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tent|E|ALT_INV_Ereg.Aguarda~q\,
	datad => \Tent|R|ALT_INV_IQ[11]~46_combout\,
	dataf => \ALT_INV_resposta~input_o\,
	combout => \Tent|R|IQ~108_combout\);

-- Location: LABCELL_X80_Y22_N48
\Tent|R|IQ[11]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[11]~45_combout\ = ( \Tent|R|IQ~108_combout\ & ( (\Tent|E|Selector0~1_combout\) # (\Tent|R|IQ[11]~45_combout\) ) ) # ( !\Tent|R|IQ~108_combout\ & ( (\Tent|R|IQ[11]~45_combout\ & !\Tent|E|Selector0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Tent|R|ALT_INV_IQ[11]~45_combout\,
	datad => \Tent|E|ALT_INV_Selector0~1_combout\,
	dataf => \Tent|R|ALT_INV_IQ~108_combout\,
	combout => \Tent|R|IQ[11]~45_combout\);

-- Location: MLABCELL_X78_Y22_N30
\Tent|R|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|Add0~41_sumout\ = SUM(( \Tent|R|IQ[11]~46_combout\ ) + ( GND ) + ( \Tent|R|Add0~38\ ))
-- \Tent|R|Add0~42\ = CARRY(( \Tent|R|IQ[11]~46_combout\ ) + ( GND ) + ( \Tent|R|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Tent|R|ALT_INV_IQ[11]~46_combout\,
	cin => \Tent|R|Add0~38\,
	sumout => \Tent|R|Add0~41_sumout\,
	cout => \Tent|R|Add0~42\);

-- Location: MLABCELL_X78_Y22_N54
\Tent|R|IQ[11]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[11]~47_combout\ = ( \Tent|R|Add0~41_sumout\ & ( !\Tent|R|IQ[11]~45_combout\ ) ) # ( !\Tent|R|Add0~41_sumout\ & ( \Tent|R|IQ[11]~45_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Tent|R|ALT_INV_IQ[11]~45_combout\,
	dataf => \Tent|R|ALT_INV_Add0~41_sumout\,
	combout => \Tent|R|IQ[11]~47_combout\);

-- Location: FF_X78_Y22_N55
\Tent|R|IQ[11]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|R|IQ[11]~47_combout\,
	clrn => \Tent|E|ALT_INV_Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|R|IQ[11]~_emulated_q\);

-- Location: LABCELL_X80_Y22_N39
\Tent|R|IQ[11]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[11]~46_combout\ = ( \Tent|R|IQ[11]~45_combout\ & ( (!\Tent|E|Selector0~1_combout\ & ((!\Tent|R|IQ[11]~_emulated_q\))) # (\Tent|E|Selector0~1_combout\ & (\Tent|R|IQ~108_combout\)) ) ) # ( !\Tent|R|IQ[11]~45_combout\ & ( 
-- (!\Tent|E|Selector0~1_combout\ & ((\Tent|R|IQ[11]~_emulated_q\))) # (\Tent|E|Selector0~1_combout\ & (\Tent|R|IQ~108_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111111001111000000111100111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tent|E|ALT_INV_Selector0~1_combout\,
	datac => \Tent|R|ALT_INV_IQ~108_combout\,
	datad => \Tent|R|ALT_INV_IQ[11]~_emulated_q\,
	dataf => \Tent|R|ALT_INV_IQ[11]~45_combout\,
	combout => \Tent|R|IQ[11]~46_combout\);

-- Location: LABCELL_X80_Y22_N51
\Tent|D|saida1[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|D|saida1\(11) = ( \Tent|R|IQ[11]~46_combout\ & ( (\Controle|Ereg.Jogador1~q\) # (\Tent|D|saida1\(11)) ) ) # ( !\Tent|R|IQ[11]~46_combout\ & ( (\Tent|D|saida1\(11) & !\Controle|Ereg.Jogador1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tent|D|ALT_INV_saida1\(11),
	datab => \Controle|ALT_INV_Ereg.Jogador1~q\,
	dataf => \Tent|R|ALT_INV_IQ[11]~46_combout\,
	combout => \Tent|D|saida1\(11));

-- Location: LABCELL_X80_Y22_N21
\Tent|D|saida2[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|D|saida2\(11) = ( \Tent|R|IQ[11]~46_combout\ & ( (!\Controle|Ereg.Jogador1~q\) # (\Tent|D|saida2\(11)) ) ) # ( !\Tent|R|IQ[11]~46_combout\ & ( (\Controle|Ereg.Jogador1~q\ & \Tent|D|saida2\(11)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Controle|ALT_INV_Ereg.Jogador1~q\,
	datad => \Tent|D|ALT_INV_saida2\(11),
	dataf => \Tent|R|ALT_INV_IQ[11]~46_combout\,
	combout => \Tent|D|saida2\(11));

-- Location: LABCELL_X79_Y23_N21
\muxD|s_saida[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxD|s_saida[11]~11_combout\ = ( \Tent|D|saida2\(11) & ( (!\ContDispl|I[0]~DUPLICATE_q\ & ((\Tent|D|saida1\(11)))) # (\ContDispl|I[0]~DUPLICATE_q\ & (!\ContDispl|I[1]~DUPLICATE_q\)) ) ) # ( !\Tent|D|saida2\(11) & ( (!\ContDispl|I[0]~DUPLICATE_q\ & 
-- \Tent|D|saida1\(11)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001010111110100000101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContDispl|ALT_INV_I[1]~DUPLICATE_q\,
	datac => \ContDispl|ALT_INV_I[0]~DUPLICATE_q\,
	datad => \Tent|D|ALT_INV_saida1\(11),
	dataf => \Tent|D|ALT_INV_saida2\(11),
	combout => \muxD|s_saida[11]~11_combout\);

-- Location: LABCELL_X79_Y24_N24
\DisplayPonto3|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DisplayPonto3|Mux6~0_combout\ = ( \muxD|s_saida[11]~11_combout\ & ( ((!\muxD|s_saida[10]~10_combout\) # (\muxD|s_saida[8]~8_combout\)) # (\muxD|s_saida[9]~9_combout\) ) ) # ( !\muxD|s_saida[11]~11_combout\ & ( (!\muxD|s_saida[9]~9_combout\ & 
-- (\muxD|s_saida[10]~10_combout\)) # (\muxD|s_saida[9]~9_combout\ & ((!\muxD|s_saida[10]~10_combout\) # (!\muxD|s_saida[8]~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111100001111110011110011110011111111111111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \muxD|ALT_INV_s_saida[9]~9_combout\,
	datac => \muxD|ALT_INV_s_saida[10]~10_combout\,
	datad => \muxD|ALT_INV_s_saida[8]~8_combout\,
	dataf => \muxD|ALT_INV_s_saida[11]~11_combout\,
	combout => \DisplayPonto3|Mux6~0_combout\);

-- Location: LABCELL_X79_Y24_N18
\DisplayPonto3|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DisplayPonto3|Mux5~0_combout\ = ( \muxD|s_saida[8]~8_combout\ & ( \muxD|s_saida[11]~11_combout\ & ( (\muxD|s_saida[10]~10_combout\ & !\muxD|s_saida[9]~9_combout\) ) ) ) # ( \muxD|s_saida[8]~8_combout\ & ( !\muxD|s_saida[11]~11_combout\ & ( 
-- !\muxD|s_saida[10]~10_combout\ ) ) ) # ( !\muxD|s_saida[8]~8_combout\ & ( !\muxD|s_saida[11]~11_combout\ & ( (!\muxD|s_saida[10]~10_combout\ & \muxD|s_saida[9]~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100110011001100110000000000000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \muxD|ALT_INV_s_saida[10]~10_combout\,
	datad => \muxD|ALT_INV_s_saida[9]~9_combout\,
	datae => \muxD|ALT_INV_s_saida[8]~8_combout\,
	dataf => \muxD|ALT_INV_s_saida[11]~11_combout\,
	combout => \DisplayPonto3|Mux5~0_combout\);

-- Location: LABCELL_X79_Y24_N39
\DisplayPonto3|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DisplayPonto3|Mux4~0_combout\ = ( \muxD|s_saida[11]~11_combout\ & ( (!\muxD|s_saida[10]~10_combout\ & (!\muxD|s_saida[9]~9_combout\ & \muxD|s_saida[8]~8_combout\)) ) ) # ( !\muxD|s_saida[11]~11_combout\ & ( ((\muxD|s_saida[10]~10_combout\ & 
-- !\muxD|s_saida[9]~9_combout\)) # (\muxD|s_saida[8]~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011111111010100001111111100000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxD|ALT_INV_s_saida[10]~10_combout\,
	datac => \muxD|ALT_INV_s_saida[9]~9_combout\,
	datad => \muxD|ALT_INV_s_saida[8]~8_combout\,
	dataf => \muxD|ALT_INV_s_saida[11]~11_combout\,
	combout => \DisplayPonto3|Mux4~0_combout\);

-- Location: LABCELL_X81_Y21_N36
\DisplayPonto3|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DisplayPonto3|Mux3~0_combout\ = ( \muxD|s_saida[11]~11_combout\ & ( \muxD|s_saida[8]~8_combout\ & ( (\muxD|s_saida[10]~10_combout\ & \muxD|s_saida[9]~9_combout\) ) ) ) # ( !\muxD|s_saida[11]~11_combout\ & ( \muxD|s_saida[8]~8_combout\ & ( 
-- !\muxD|s_saida[10]~10_combout\ $ (\muxD|s_saida[9]~9_combout\) ) ) ) # ( \muxD|s_saida[11]~11_combout\ & ( !\muxD|s_saida[8]~8_combout\ & ( (!\muxD|s_saida[10]~10_combout\ & \muxD|s_saida[9]~9_combout\) ) ) ) # ( !\muxD|s_saida[11]~11_combout\ & ( 
-- !\muxD|s_saida[8]~8_combout\ & ( (\muxD|s_saida[10]~10_combout\ & !\muxD|s_saida[9]~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100001000100010001010011001100110010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxD|ALT_INV_s_saida[10]~10_combout\,
	datab => \muxD|ALT_INV_s_saida[9]~9_combout\,
	datae => \muxD|ALT_INV_s_saida[11]~11_combout\,
	dataf => \muxD|ALT_INV_s_saida[8]~8_combout\,
	combout => \DisplayPonto3|Mux3~0_combout\);

-- Location: LABCELL_X81_Y21_N6
\DisplayPonto3|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DisplayPonto3|Mux2~0_combout\ = ( \muxD|s_saida[11]~11_combout\ & ( \muxD|s_saida[8]~8_combout\ & ( (\muxD|s_saida[10]~10_combout\ & \muxD|s_saida[9]~9_combout\) ) ) ) # ( \muxD|s_saida[11]~11_combout\ & ( !\muxD|s_saida[8]~8_combout\ & ( 
-- \muxD|s_saida[10]~10_combout\ ) ) ) # ( !\muxD|s_saida[11]~11_combout\ & ( !\muxD|s_saida[8]~8_combout\ & ( (!\muxD|s_saida[10]~10_combout\ & \muxD|s_saida[9]~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010010101010101010100000000000000000001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxD|ALT_INV_s_saida[10]~10_combout\,
	datab => \muxD|ALT_INV_s_saida[9]~9_combout\,
	datae => \muxD|ALT_INV_s_saida[11]~11_combout\,
	dataf => \muxD|ALT_INV_s_saida[8]~8_combout\,
	combout => \DisplayPonto3|Mux2~0_combout\);

-- Location: LABCELL_X79_Y24_N33
\DisplayPonto3|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DisplayPonto3|Mux1~0_combout\ = ( \muxD|s_saida[11]~11_combout\ & ( (!\muxD|s_saida[8]~8_combout\ & (\muxD|s_saida[10]~10_combout\)) # (\muxD|s_saida[8]~8_combout\ & ((\muxD|s_saida[9]~9_combout\))) ) ) # ( !\muxD|s_saida[11]~11_combout\ & ( 
-- (\muxD|s_saida[10]~10_combout\ & (!\muxD|s_saida[9]~9_combout\ $ (!\muxD|s_saida[8]~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000001010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxD|ALT_INV_s_saida[10]~10_combout\,
	datac => \muxD|ALT_INV_s_saida[9]~9_combout\,
	datad => \muxD|ALT_INV_s_saida[8]~8_combout\,
	dataf => \muxD|ALT_INV_s_saida[11]~11_combout\,
	combout => \DisplayPonto3|Mux1~0_combout\);

-- Location: LABCELL_X81_Y21_N51
\DisplayPonto3|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DisplayPonto3|Mux0~0_combout\ = ( \muxD|s_saida[11]~11_combout\ & ( \muxD|s_saida[10]~10_combout\ & ( (\muxD|s_saida[8]~8_combout\ & !\muxD|s_saida[9]~9_combout\) ) ) ) # ( !\muxD|s_saida[11]~11_combout\ & ( \muxD|s_saida[10]~10_combout\ & ( 
-- (!\muxD|s_saida[8]~8_combout\ & !\muxD|s_saida[9]~9_combout\) ) ) ) # ( \muxD|s_saida[11]~11_combout\ & ( !\muxD|s_saida[10]~10_combout\ & ( (\muxD|s_saida[8]~8_combout\ & \muxD|s_saida[9]~9_combout\) ) ) ) # ( !\muxD|s_saida[11]~11_combout\ & ( 
-- !\muxD|s_saida[10]~10_combout\ & ( (\muxD|s_saida[8]~8_combout\ & !\muxD|s_saida[9]~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000001010000010110100000101000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxD|ALT_INV_s_saida[8]~8_combout\,
	datac => \muxD|ALT_INV_s_saida[9]~9_combout\,
	datae => \muxD|ALT_INV_s_saida[11]~11_combout\,
	dataf => \muxD|ALT_INV_s_saida[10]~10_combout\,
	combout => \DisplayPonto3|Mux0~0_combout\);

-- Location: LABCELL_X81_Y22_N3
\Tent|R|IQ~111\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ~111_combout\ = ( \resposta~input_o\ & ( \Tent|R|IQ[14]~58_combout\ ) ) # ( !\resposta~input_o\ & ( (\Tent|E|Ereg.Aguarda~q\ & \Tent|R|IQ[14]~58_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tent|E|ALT_INV_Ereg.Aguarda~q\,
	datac => \Tent|R|ALT_INV_IQ[14]~58_combout\,
	dataf => \ALT_INV_resposta~input_o\,
	combout => \Tent|R|IQ~111_combout\);

-- Location: LABCELL_X81_Y22_N12
\Tent|R|IQ[14]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[14]~57_combout\ = ( \Tent|E|Selector0~1_combout\ & ( \Tent|R|IQ~111_combout\ ) ) # ( !\Tent|E|Selector0~1_combout\ & ( \Tent|R|IQ~111_combout\ & ( \Tent|R|IQ[14]~57_combout\ ) ) ) # ( !\Tent|E|Selector0~1_combout\ & ( !\Tent|R|IQ~111_combout\ & 
-- ( \Tent|R|IQ[14]~57_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Tent|R|ALT_INV_IQ[14]~57_combout\,
	datae => \Tent|E|ALT_INV_Selector0~1_combout\,
	dataf => \Tent|R|ALT_INV_IQ~111_combout\,
	combout => \Tent|R|IQ[14]~57_combout\);

-- Location: LABCELL_X77_Y22_N57
\Tent|R|IQ~110\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ~110_combout\ = ( \resposta~input_o\ & ( \Tent|R|IQ[13]~54_combout\ ) ) # ( !\resposta~input_o\ & ( (\Tent|E|Ereg.Aguarda~q\ & \Tent|R|IQ[13]~54_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tent|E|ALT_INV_Ereg.Aguarda~q\,
	datac => \Tent|R|ALT_INV_IQ[13]~54_combout\,
	dataf => \ALT_INV_resposta~input_o\,
	combout => \Tent|R|IQ~110_combout\);

-- Location: LABCELL_X77_Y22_N24
\Tent|R|IQ[13]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[13]~53_combout\ = ( \Tent|R|IQ~110_combout\ & ( (\Tent|E|Selector0~1_combout\) # (\Tent|R|IQ[13]~53_combout\) ) ) # ( !\Tent|R|IQ~110_combout\ & ( (\Tent|R|IQ[13]~53_combout\ & !\Tent|E|Selector0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Tent|R|ALT_INV_IQ[13]~53_combout\,
	datad => \Tent|E|ALT_INV_Selector0~1_combout\,
	dataf => \Tent|R|ALT_INV_IQ~110_combout\,
	combout => \Tent|R|IQ[13]~53_combout\);

-- Location: LABCELL_X77_Y22_N0
\Tent|R|IQ~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ~109_combout\ = ( \resposta~input_o\ & ( \Tent|R|IQ[12]~50_combout\ ) ) # ( !\resposta~input_o\ & ( (\Tent|E|Ereg.Aguarda~q\ & \Tent|R|IQ[12]~50_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tent|E|ALT_INV_Ereg.Aguarda~q\,
	datac => \Tent|R|ALT_INV_IQ[12]~50_combout\,
	dataf => \ALT_INV_resposta~input_o\,
	combout => \Tent|R|IQ~109_combout\);

-- Location: LABCELL_X77_Y22_N39
\Tent|R|IQ[12]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[12]~49_combout\ = ( \Tent|R|IQ~109_combout\ & ( (\Tent|E|Selector0~1_combout\) # (\Tent|R|IQ[12]~49_combout\) ) ) # ( !\Tent|R|IQ~109_combout\ & ( (\Tent|R|IQ[12]~49_combout\ & !\Tent|E|Selector0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Tent|R|ALT_INV_IQ[12]~49_combout\,
	datad => \Tent|E|ALT_INV_Selector0~1_combout\,
	dataf => \Tent|R|ALT_INV_IQ~109_combout\,
	combout => \Tent|R|IQ[12]~49_combout\);

-- Location: MLABCELL_X78_Y22_N33
\Tent|R|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|Add0~45_sumout\ = SUM(( \Tent|R|IQ[12]~50_combout\ ) + ( GND ) + ( \Tent|R|Add0~42\ ))
-- \Tent|R|Add0~46\ = CARRY(( \Tent|R|IQ[12]~50_combout\ ) + ( GND ) + ( \Tent|R|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Tent|R|ALT_INV_IQ[12]~50_combout\,
	cin => \Tent|R|Add0~42\,
	sumout => \Tent|R|Add0~45_sumout\,
	cout => \Tent|R|Add0~46\);

-- Location: LABCELL_X77_Y22_N45
\Tent|R|IQ[12]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[12]~51_combout\ = ( \Tent|R|Add0~45_sumout\ & ( !\Tent|R|IQ[12]~49_combout\ ) ) # ( !\Tent|R|Add0~45_sumout\ & ( \Tent|R|IQ[12]~49_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Tent|R|ALT_INV_IQ[12]~49_combout\,
	dataf => \Tent|R|ALT_INV_Add0~45_sumout\,
	combout => \Tent|R|IQ[12]~51_combout\);

-- Location: FF_X77_Y22_N47
\Tent|R|IQ[12]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|R|IQ[12]~51_combout\,
	clrn => \Tent|E|ALT_INV_Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|R|IQ[12]~_emulated_q\);

-- Location: LABCELL_X77_Y22_N18
\Tent|R|IQ[12]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[12]~50_combout\ = ( \Tent|R|IQ[12]~49_combout\ & ( (!\Tent|E|Selector0~1_combout\ & ((!\Tent|R|IQ[12]~_emulated_q\))) # (\Tent|E|Selector0~1_combout\ & (\Tent|R|IQ~109_combout\)) ) ) # ( !\Tent|R|IQ[12]~49_combout\ & ( 
-- (!\Tent|E|Selector0~1_combout\ & ((\Tent|R|IQ[12]~_emulated_q\))) # (\Tent|E|Selector0~1_combout\ & (\Tent|R|IQ~109_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111111001111000000111100111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tent|E|ALT_INV_Selector0~1_combout\,
	datac => \Tent|R|ALT_INV_IQ~109_combout\,
	datad => \Tent|R|ALT_INV_IQ[12]~_emulated_q\,
	dataf => \Tent|R|ALT_INV_IQ[12]~49_combout\,
	combout => \Tent|R|IQ[12]~50_combout\);

-- Location: MLABCELL_X78_Y22_N36
\Tent|R|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|Add0~49_sumout\ = SUM(( \Tent|R|IQ[13]~54_combout\ ) + ( GND ) + ( \Tent|R|Add0~46\ ))
-- \Tent|R|Add0~50\ = CARRY(( \Tent|R|IQ[13]~54_combout\ ) + ( GND ) + ( \Tent|R|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tent|R|ALT_INV_IQ[13]~54_combout\,
	cin => \Tent|R|Add0~46\,
	sumout => \Tent|R|Add0~49_sumout\,
	cout => \Tent|R|Add0~50\);

-- Location: LABCELL_X77_Y22_N36
\Tent|R|IQ[13]~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[13]~55_combout\ = ( \Tent|R|Add0~49_sumout\ & ( !\Tent|R|IQ[13]~53_combout\ ) ) # ( !\Tent|R|Add0~49_sumout\ & ( \Tent|R|IQ[13]~53_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Tent|R|ALT_INV_IQ[13]~53_combout\,
	dataf => \Tent|R|ALT_INV_Add0~49_sumout\,
	combout => \Tent|R|IQ[13]~55_combout\);

-- Location: FF_X77_Y22_N38
\Tent|R|IQ[13]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|R|IQ[13]~55_combout\,
	clrn => \Tent|E|ALT_INV_Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|R|IQ[13]~_emulated_q\);

-- Location: LABCELL_X77_Y22_N15
\Tent|R|IQ[13]~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[13]~54_combout\ = ( \Tent|R|IQ[13]~53_combout\ & ( (!\Tent|E|Selector0~1_combout\ & ((!\Tent|R|IQ[13]~_emulated_q\))) # (\Tent|E|Selector0~1_combout\ & (\Tent|R|IQ~110_combout\)) ) ) # ( !\Tent|R|IQ[13]~53_combout\ & ( 
-- (!\Tent|E|Selector0~1_combout\ & ((\Tent|R|IQ[13]~_emulated_q\))) # (\Tent|E|Selector0~1_combout\ & (\Tent|R|IQ~110_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111110101111000001011010111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tent|E|ALT_INV_Selector0~1_combout\,
	datac => \Tent|R|ALT_INV_IQ~110_combout\,
	datad => \Tent|R|ALT_INV_IQ[13]~_emulated_q\,
	dataf => \Tent|R|ALT_INV_IQ[13]~53_combout\,
	combout => \Tent|R|IQ[13]~54_combout\);

-- Location: MLABCELL_X78_Y22_N39
\Tent|R|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|Add0~53_sumout\ = SUM(( \Tent|R|IQ[14]~58_combout\ ) + ( GND ) + ( \Tent|R|Add0~50\ ))
-- \Tent|R|Add0~54\ = CARRY(( \Tent|R|IQ[14]~58_combout\ ) + ( GND ) + ( \Tent|R|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Tent|R|ALT_INV_IQ[14]~58_combout\,
	cin => \Tent|R|Add0~50\,
	sumout => \Tent|R|Add0~53_sumout\,
	cout => \Tent|R|Add0~54\);

-- Location: MLABCELL_X78_Y22_N57
\Tent|R|IQ[14]~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[14]~59_combout\ = ( \Tent|R|Add0~53_sumout\ & ( !\Tent|R|IQ[14]~57_combout\ ) ) # ( !\Tent|R|Add0~53_sumout\ & ( \Tent|R|IQ[14]~57_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Tent|R|ALT_INV_IQ[14]~57_combout\,
	dataf => \Tent|R|ALT_INV_Add0~53_sumout\,
	combout => \Tent|R|IQ[14]~59_combout\);

-- Location: FF_X78_Y22_N58
\Tent|R|IQ[14]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|R|IQ[14]~59_combout\,
	clrn => \Tent|E|ALT_INV_Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|R|IQ[14]~_emulated_q\);

-- Location: LABCELL_X81_Y22_N42
\Tent|R|IQ[14]~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[14]~58_combout\ = ( \Tent|R|IQ[14]~57_combout\ & ( (!\Tent|E|Selector0~1_combout\ & ((!\Tent|R|IQ[14]~_emulated_q\))) # (\Tent|E|Selector0~1_combout\ & (\Tent|R|IQ~111_combout\)) ) ) # ( !\Tent|R|IQ[14]~57_combout\ & ( 
-- (!\Tent|E|Selector0~1_combout\ & ((\Tent|R|IQ[14]~_emulated_q\))) # (\Tent|E|Selector0~1_combout\ & (\Tent|R|IQ~111_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111110101111000001011010111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tent|E|ALT_INV_Selector0~1_combout\,
	datac => \Tent|R|ALT_INV_IQ~111_combout\,
	datad => \Tent|R|ALT_INV_IQ[14]~_emulated_q\,
	dataf => \Tent|R|ALT_INV_IQ[14]~57_combout\,
	combout => \Tent|R|IQ[14]~58_combout\);

-- Location: LABCELL_X81_Y22_N33
\Tent|D|saida2[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|D|saida2\(14) = ( \Tent|R|IQ[14]~58_combout\ & ( (!\Controle|Ereg.Jogador1~q\) # (\Tent|D|saida2\(14)) ) ) # ( !\Tent|R|IQ[14]~58_combout\ & ( (\Tent|D|saida2\(14) & \Controle|Ereg.Jogador1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tent|D|ALT_INV_saida2\(14),
	datac => \Controle|ALT_INV_Ereg.Jogador1~q\,
	dataf => \Tent|R|ALT_INV_IQ[14]~58_combout\,
	combout => \Tent|D|saida2\(14));

-- Location: LABCELL_X81_Y22_N0
\Tent|D|saida1[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|D|saida1\(14) = ( \Tent|R|IQ[14]~58_combout\ & ( (\Tent|D|saida1\(14)) # (\Controle|Ereg.Jogador1~q\) ) ) # ( !\Tent|R|IQ[14]~58_combout\ & ( (!\Controle|Ereg.Jogador1~q\ & \Tent|D|saida1\(14)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Controle|ALT_INV_Ereg.Jogador1~q\,
	datad => \Tent|D|ALT_INV_saida1\(14),
	dataf => \Tent|R|ALT_INV_IQ[14]~58_combout\,
	combout => \Tent|D|saida1\(14));

-- Location: LABCELL_X83_Y22_N15
\muxD|s_saida[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxD|s_saida[14]~14_combout\ = ( \ContDispl|I[1]~DUPLICATE_q\ & ( (!\ContDispl|I[0]~DUPLICATE_q\ & \Tent|D|saida1\(14)) ) ) # ( !\ContDispl|I[1]~DUPLICATE_q\ & ( (!\ContDispl|I[0]~DUPLICATE_q\ & ((\Tent|D|saida1\(14)))) # (\ContDispl|I[0]~DUPLICATE_q\ & 
-- (\Tent|D|saida2\(14))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContDispl|ALT_INV_I[0]~DUPLICATE_q\,
	datac => \Tent|D|ALT_INV_saida2\(14),
	datad => \Tent|D|ALT_INV_saida1\(14),
	dataf => \ContDispl|ALT_INV_I[1]~DUPLICATE_q\,
	combout => \muxD|s_saida[14]~14_combout\);

-- Location: LABCELL_X77_Y22_N30
\Tent|D|saida2[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|D|saida2\(13) = ( \Tent|R|IQ[13]~54_combout\ & ( (!\Controle|Ereg.Jogador1~q\) # (\Tent|D|saida2\(13)) ) ) # ( !\Tent|R|IQ[13]~54_combout\ & ( (\Controle|Ereg.Jogador1~q\ & \Tent|D|saida2\(13)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Controle|ALT_INV_Ereg.Jogador1~q\,
	datac => \Tent|D|ALT_INV_saida2\(13),
	dataf => \Tent|R|ALT_INV_IQ[13]~54_combout\,
	combout => \Tent|D|saida2\(13));

-- Location: LABCELL_X77_Y22_N33
\Tent|D|saida1[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|D|saida1\(13) = ( \Tent|R|IQ[13]~54_combout\ & ( (\Controle|Ereg.Jogador1~q\) # (\Tent|D|saida1\(13)) ) ) # ( !\Tent|R|IQ[13]~54_combout\ & ( (\Tent|D|saida1\(13) & !\Controle|Ereg.Jogador1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tent|D|ALT_INV_saida1\(13),
	datab => \Controle|ALT_INV_Ereg.Jogador1~q\,
	dataf => \Tent|R|ALT_INV_IQ[13]~54_combout\,
	combout => \Tent|D|saida1\(13));

-- Location: LABCELL_X77_Y22_N3
\muxD|s_saida[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxD|s_saida[13]~13_combout\ = ( \Tent|D|saida1\(13) & ( (!\ContDispl|I[0]~DUPLICATE_q\) # ((\Tent|D|saida2\(13) & !\ContDispl|I[1]~DUPLICATE_q\)) ) ) # ( !\Tent|D|saida1\(13) & ( (\ContDispl|I[0]~DUPLICATE_q\ & (\Tent|D|saida2\(13) & 
-- !\ContDispl|I[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000010101111101010101010111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContDispl|ALT_INV_I[0]~DUPLICATE_q\,
	datac => \Tent|D|ALT_INV_saida2\(13),
	datad => \ContDispl|ALT_INV_I[1]~DUPLICATE_q\,
	dataf => \Tent|D|ALT_INV_saida1\(13),
	combout => \muxD|s_saida[13]~13_combout\);

-- Location: LABCELL_X77_Y22_N48
\Tent|D|saida1[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|D|saida1\(12) = ( \Tent|R|IQ[12]~50_combout\ & ( (\Tent|D|saida1\(12)) # (\Controle|Ereg.Jogador1~q\) ) ) # ( !\Tent|R|IQ[12]~50_combout\ & ( (!\Controle|Ereg.Jogador1~q\ & \Tent|D|saida1\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Controle|ALT_INV_Ereg.Jogador1~q\,
	datac => \Tent|D|ALT_INV_saida1\(12),
	dataf => \Tent|R|ALT_INV_IQ[12]~50_combout\,
	combout => \Tent|D|saida1\(12));

-- Location: LABCELL_X77_Y22_N21
\Tent|D|saida2[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|D|saida2\(12) = ( \Tent|R|IQ[12]~50_combout\ & ( (!\Controle|Ereg.Jogador1~q\) # (\Tent|D|saida2\(12)) ) ) # ( !\Tent|R|IQ[12]~50_combout\ & ( (\Controle|Ereg.Jogador1~q\ & \Tent|D|saida2\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Controle|ALT_INV_Ereg.Jogador1~q\,
	datad => \Tent|D|ALT_INV_saida2\(12),
	dataf => \Tent|R|ALT_INV_IQ[12]~50_combout\,
	combout => \Tent|D|saida2\(12));

-- Location: LABCELL_X77_Y22_N54
\muxD|s_saida[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxD|s_saida[12]~12_combout\ = ( \ContDispl|I[0]~DUPLICATE_q\ & ( (!\ContDispl|I[1]~DUPLICATE_q\ & \Tent|D|saida2\(12)) ) ) # ( !\ContDispl|I[0]~DUPLICATE_q\ & ( \Tent|D|saida1\(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContDispl|ALT_INV_I[1]~DUPLICATE_q\,
	datac => \Tent|D|ALT_INV_saida1\(12),
	datad => \Tent|D|ALT_INV_saida2\(12),
	dataf => \ContDispl|ALT_INV_I[0]~DUPLICATE_q\,
	combout => \muxD|s_saida[12]~12_combout\);

-- Location: LABCELL_X79_Y22_N39
\Tent|R|IQ~112\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ~112_combout\ = ( \resposta~input_o\ & ( \Tent|R|IQ[15]~62_combout\ ) ) # ( !\resposta~input_o\ & ( (\Tent|E|Ereg.Aguarda~q\ & \Tent|R|IQ[15]~62_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tent|E|ALT_INV_Ereg.Aguarda~q\,
	datac => \Tent|R|ALT_INV_IQ[15]~62_combout\,
	dataf => \ALT_INV_resposta~input_o\,
	combout => \Tent|R|IQ~112_combout\);

-- Location: LABCELL_X79_Y22_N6
\Tent|R|IQ[15]~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[15]~61_combout\ = ( \Tent|R|IQ~112_combout\ & ( (\Tent|E|Selector0~1_combout\) # (\Tent|R|IQ[15]~61_combout\) ) ) # ( !\Tent|R|IQ~112_combout\ & ( (\Tent|R|IQ[15]~61_combout\ & !\Tent|E|Selector0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Tent|R|ALT_INV_IQ[15]~61_combout\,
	datad => \Tent|E|ALT_INV_Selector0~1_combout\,
	dataf => \Tent|R|ALT_INV_IQ~112_combout\,
	combout => \Tent|R|IQ[15]~61_combout\);

-- Location: MLABCELL_X78_Y22_N42
\Tent|R|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|Add0~57_sumout\ = SUM(( \Tent|R|IQ[15]~62_combout\ ) + ( GND ) + ( \Tent|R|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Tent|R|ALT_INV_IQ[15]~62_combout\,
	cin => \Tent|R|Add0~54\,
	sumout => \Tent|R|Add0~57_sumout\);

-- Location: MLABCELL_X78_Y22_N51
\Tent|R|IQ[15]~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[15]~63_combout\ = ( \Tent|R|Add0~57_sumout\ & ( !\Tent|R|IQ[15]~61_combout\ ) ) # ( !\Tent|R|Add0~57_sumout\ & ( \Tent|R|IQ[15]~61_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Tent|R|ALT_INV_IQ[15]~61_combout\,
	dataf => \Tent|R|ALT_INV_Add0~57_sumout\,
	combout => \Tent|R|IQ[15]~63_combout\);

-- Location: FF_X78_Y22_N53
\Tent|R|IQ[15]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Tent|R|IQ[15]~63_combout\,
	clrn => \Tent|E|ALT_INV_Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tent|R|IQ[15]~_emulated_q\);

-- Location: LABCELL_X79_Y22_N51
\Tent|R|IQ[15]~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|R|IQ[15]~62_combout\ = ( \Tent|R|IQ[15]~61_combout\ & ( (!\Tent|E|Selector0~1_combout\ & ((!\Tent|R|IQ[15]~_emulated_q\))) # (\Tent|E|Selector0~1_combout\ & (\Tent|R|IQ~112_combout\)) ) ) # ( !\Tent|R|IQ[15]~61_combout\ & ( 
-- (!\Tent|E|Selector0~1_combout\ & ((\Tent|R|IQ[15]~_emulated_q\))) # (\Tent|E|Selector0~1_combout\ & (\Tent|R|IQ~112_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111110101111000001011010111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tent|E|ALT_INV_Selector0~1_combout\,
	datac => \Tent|R|ALT_INV_IQ~112_combout\,
	datad => \Tent|R|ALT_INV_IQ[15]~_emulated_q\,
	dataf => \Tent|R|ALT_INV_IQ[15]~61_combout\,
	combout => \Tent|R|IQ[15]~62_combout\);

-- Location: LABCELL_X79_Y22_N0
\Tent|D|saida2[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|D|saida2\(15) = ( \Tent|R|IQ[15]~62_combout\ & ( (!\Controle|Ereg.Jogador1~q\) # (\Tent|D|saida2\(15)) ) ) # ( !\Tent|R|IQ[15]~62_combout\ & ( (\Controle|Ereg.Jogador1~q\ & \Tent|D|saida2\(15)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Controle|ALT_INV_Ereg.Jogador1~q\,
	datad => \Tent|D|ALT_INV_saida2\(15),
	dataf => \Tent|R|ALT_INV_IQ[15]~62_combout\,
	combout => \Tent|D|saida2\(15));

-- Location: LABCELL_X79_Y22_N21
\Tent|D|saida1[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|D|saida1\(15) = ( \Tent|R|IQ[15]~62_combout\ & ( (\Tent|D|saida1\(15)) # (\Controle|Ereg.Jogador1~q\) ) ) # ( !\Tent|R|IQ[15]~62_combout\ & ( (!\Controle|Ereg.Jogador1~q\ & \Tent|D|saida1\(15)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Controle|ALT_INV_Ereg.Jogador1~q\,
	datad => \Tent|D|ALT_INV_saida1\(15),
	dataf => \Tent|R|ALT_INV_IQ[15]~62_combout\,
	combout => \Tent|D|saida1\(15));

-- Location: MLABCELL_X78_Y23_N3
\muxD|s_saida[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \muxD|s_saida[15]~15_combout\ = ( !\ContDispl|I[0]~DUPLICATE_q\ & ( \ContDispl|I[1]~DUPLICATE_q\ & ( \Tent|D|saida1\(15) ) ) ) # ( \ContDispl|I[0]~DUPLICATE_q\ & ( !\ContDispl|I[1]~DUPLICATE_q\ & ( \Tent|D|saida2\(15) ) ) ) # ( 
-- !\ContDispl|I[0]~DUPLICATE_q\ & ( !\ContDispl|I[1]~DUPLICATE_q\ & ( \Tent|D|saida1\(15) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tent|D|ALT_INV_saida2\(15),
	datac => \Tent|D|ALT_INV_saida1\(15),
	datae => \ContDispl|ALT_INV_I[0]~DUPLICATE_q\,
	dataf => \ContDispl|ALT_INV_I[1]~DUPLICATE_q\,
	combout => \muxD|s_saida[15]~15_combout\);

-- Location: LABCELL_X83_Y18_N51
\DisplayPonto4|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DisplayPonto4|Mux6~0_combout\ = ( \muxD|s_saida[15]~15_combout\ & ( (!\muxD|s_saida[14]~14_combout\) # ((\muxD|s_saida[12]~12_combout\) # (\muxD|s_saida[13]~13_combout\)) ) ) # ( !\muxD|s_saida[15]~15_combout\ & ( (!\muxD|s_saida[14]~14_combout\ & 
-- (\muxD|s_saida[13]~13_combout\)) # (\muxD|s_saida[14]~14_combout\ & ((!\muxD|s_saida[13]~13_combout\) # (!\muxD|s_saida[12]~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011001110110101111111011111101110110011101101011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxD|ALT_INV_s_saida[14]~14_combout\,
	datab => \muxD|ALT_INV_s_saida[13]~13_combout\,
	datac => \muxD|ALT_INV_s_saida[12]~12_combout\,
	datae => \muxD|ALT_INV_s_saida[15]~15_combout\,
	combout => \DisplayPonto4|Mux6~0_combout\);

-- Location: LABCELL_X83_Y18_N30
\DisplayPonto4|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DisplayPonto4|Mux5~0_combout\ = ( !\muxD|s_saida[15]~15_combout\ & ( \muxD|s_saida[13]~13_combout\ & ( !\muxD|s_saida[14]~14_combout\ ) ) ) # ( \muxD|s_saida[15]~15_combout\ & ( !\muxD|s_saida[13]~13_combout\ & ( (\muxD|s_saida[12]~12_combout\ & 
-- \muxD|s_saida[14]~14_combout\) ) ) ) # ( !\muxD|s_saida[15]~15_combout\ & ( !\muxD|s_saida[13]~13_combout\ & ( (\muxD|s_saida[12]~12_combout\ & !\muxD|s_saida[14]~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000110000001111110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \muxD|ALT_INV_s_saida[12]~12_combout\,
	datac => \muxD|ALT_INV_s_saida[14]~14_combout\,
	datae => \muxD|ALT_INV_s_saida[15]~15_combout\,
	dataf => \muxD|ALT_INV_s_saida[13]~13_combout\,
	combout => \DisplayPonto4|Mux5~0_combout\);

-- Location: LABCELL_X83_Y18_N3
\DisplayPonto4|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DisplayPonto4|Mux4~0_combout\ = ( \muxD|s_saida[15]~15_combout\ & ( (!\muxD|s_saida[14]~14_combout\ & (!\muxD|s_saida[13]~13_combout\ & \muxD|s_saida[12]~12_combout\)) ) ) # ( !\muxD|s_saida[15]~15_combout\ & ( ((\muxD|s_saida[14]~14_combout\ & 
-- !\muxD|s_saida[13]~13_combout\)) # (\muxD|s_saida[12]~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111101001111000010000000100001001111010011110000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxD|ALT_INV_s_saida[14]~14_combout\,
	datab => \muxD|ALT_INV_s_saida[13]~13_combout\,
	datac => \muxD|ALT_INV_s_saida[12]~12_combout\,
	datae => \muxD|ALT_INV_s_saida[15]~15_combout\,
	combout => \DisplayPonto4|Mux4~0_combout\);

-- Location: LABCELL_X83_Y18_N21
\DisplayPonto4|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DisplayPonto4|Mux3~0_combout\ = ( \muxD|s_saida[15]~15_combout\ & ( (\muxD|s_saida[13]~13_combout\ & (!\muxD|s_saida[14]~14_combout\ $ (\muxD|s_saida[12]~12_combout\))) ) ) # ( !\muxD|s_saida[15]~15_combout\ & ( (!\muxD|s_saida[14]~14_combout\ & 
-- (!\muxD|s_saida[13]~13_combout\ & \muxD|s_saida[12]~12_combout\)) # (\muxD|s_saida[14]~14_combout\ & (!\muxD|s_saida[13]~13_combout\ $ (\muxD|s_saida[12]~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100101001001001000010010000101001001010010010010000100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxD|ALT_INV_s_saida[14]~14_combout\,
	datab => \muxD|ALT_INV_s_saida[13]~13_combout\,
	datac => \muxD|ALT_INV_s_saida[12]~12_combout\,
	datae => \muxD|ALT_INV_s_saida[15]~15_combout\,
	combout => \DisplayPonto4|Mux3~0_combout\);

-- Location: LABCELL_X83_Y18_N24
\DisplayPonto4|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DisplayPonto4|Mux2~0_combout\ = ( \muxD|s_saida[15]~15_combout\ & ( \muxD|s_saida[13]~13_combout\ & ( \muxD|s_saida[14]~14_combout\ ) ) ) # ( !\muxD|s_saida[15]~15_combout\ & ( \muxD|s_saida[13]~13_combout\ & ( (!\muxD|s_saida[12]~12_combout\ & 
-- !\muxD|s_saida[14]~14_combout\) ) ) ) # ( \muxD|s_saida[15]~15_combout\ & ( !\muxD|s_saida[13]~13_combout\ & ( (!\muxD|s_saida[12]~12_combout\ & \muxD|s_saida[14]~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110011000000110000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \muxD|ALT_INV_s_saida[12]~12_combout\,
	datac => \muxD|ALT_INV_s_saida[14]~14_combout\,
	datae => \muxD|ALT_INV_s_saida[15]~15_combout\,
	dataf => \muxD|ALT_INV_s_saida[13]~13_combout\,
	combout => \DisplayPonto4|Mux2~0_combout\);

-- Location: LABCELL_X83_Y18_N54
\DisplayPonto4|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DisplayPonto4|Mux1~0_combout\ = ( \muxD|s_saida[15]~15_combout\ & ( \muxD|s_saida[13]~13_combout\ & ( (\muxD|s_saida[14]~14_combout\) # (\muxD|s_saida[12]~12_combout\) ) ) ) # ( !\muxD|s_saida[15]~15_combout\ & ( \muxD|s_saida[13]~13_combout\ & ( 
-- (!\muxD|s_saida[12]~12_combout\ & \muxD|s_saida[14]~14_combout\) ) ) ) # ( \muxD|s_saida[15]~15_combout\ & ( !\muxD|s_saida[13]~13_combout\ & ( (!\muxD|s_saida[12]~12_combout\ & \muxD|s_saida[14]~14_combout\) ) ) ) # ( !\muxD|s_saida[15]~15_combout\ & ( 
-- !\muxD|s_saida[13]~13_combout\ & ( (\muxD|s_saida[12]~12_combout\ & \muxD|s_saida[14]~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000011000000110000001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \muxD|ALT_INV_s_saida[12]~12_combout\,
	datac => \muxD|ALT_INV_s_saida[14]~14_combout\,
	datae => \muxD|ALT_INV_s_saida[15]~15_combout\,
	dataf => \muxD|ALT_INV_s_saida[13]~13_combout\,
	combout => \DisplayPonto4|Mux1~0_combout\);

-- Location: LABCELL_X83_Y18_N15
\DisplayPonto4|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DisplayPonto4|Mux0~0_combout\ = ( \muxD|s_saida[15]~15_combout\ & ( (\muxD|s_saida[12]~12_combout\ & (!\muxD|s_saida[14]~14_combout\ $ (!\muxD|s_saida[13]~13_combout\))) ) ) # ( !\muxD|s_saida[15]~15_combout\ & ( (!\muxD|s_saida[13]~13_combout\ & 
-- (!\muxD|s_saida[14]~14_combout\ $ (!\muxD|s_saida[12]~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000000001100000011001001000010010000000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \muxD|ALT_INV_s_saida[14]~14_combout\,
	datab => \muxD|ALT_INV_s_saida[13]~13_combout\,
	datac => \muxD|ALT_INV_s_saida[12]~12_combout\,
	datae => \muxD|ALT_INV_s_saida[15]~15_combout\,
	combout => \DisplayPonto4|Mux0~0_combout\);

-- Location: LABCELL_X81_Y24_N33
\Controle|estado[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controle|estado\(0) = ( \Controle|WideNor0~combout\ & ( (\Controle|Selector6~0_combout\) # (\Controle|estado\(0)) ) ) # ( !\Controle|WideNor0~combout\ & ( (\Controle|estado\(0) & !\Controle|Selector6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Controle|ALT_INV_estado\(0),
	datad => \Controle|ALT_INV_Selector6~0_combout\,
	dataf => \Controle|ALT_INV_WideNor0~combout\,
	combout => \Controle|estado\(0));

-- Location: LABCELL_X81_Y22_N6
\Controle|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controle|Selector5~0_combout\ = ( \Controle|Ereg.Jogador2~q\ ) # ( !\Controle|Ereg.Jogador2~q\ & ( \Controle|Ereg.Intervalo~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Controle|ALT_INV_Ereg.Intervalo~q\,
	dataf => \Controle|ALT_INV_Ereg.Jogador2~q\,
	combout => \Controle|Selector5~0_combout\);

-- Location: LABCELL_X81_Y22_N9
\Controle|estado[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controle|estado\(1) = ( \Controle|estado\(1) & ( (!\Controle|Selector6~0_combout\) # (\Controle|Selector5~0_combout\) ) ) # ( !\Controle|estado\(1) & ( (\Controle|Selector5~0_combout\ & \Controle|Selector6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Controle|ALT_INV_Selector5~0_combout\,
	datad => \Controle|ALT_INV_Selector6~0_combout\,
	dataf => \Controle|ALT_INV_estado\(1),
	combout => \Controle|estado\(1));

-- Location: MLABCELL_X82_Y22_N3
\Tent|E|estadoJogo~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Tent|E|estadoJogo~3_combout\ = ( \Tent|E|Ereg.Aguarda~q\ ) # ( !\Tent|E|Ereg.Aguarda~q\ & ( !\Tent|E|Ereg.E_Atraso~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Tent|E|ALT_INV_Ereg.E_Atraso~q\,
	dataf => \Tent|E|ALT_INV_Ereg.Aguarda~q\,
	combout => \Tent|E|estadoJogo~3_combout\);

-- Location: LABCELL_X62_Y27_N3
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


