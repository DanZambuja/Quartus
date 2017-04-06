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

-- DATE "04/06/2017 11:40:28"

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

ENTITY 	CircuitoBase IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	finalizaRodada : IN std_logic;
	rodada : IN std_logic;
	resposta : IN std_logic;
	selectDisplay : IN std_logic_vector(3 DOWNTO 0);
	contaAtraso : BUFFER std_logic;
	aguardando : BUFFER std_logic;
	fimRodada : BUFFER std_logic;
	erro : BUFFER std_logic;
	demora : BUFFER std_logic;
	MostraSinalAtraso : BUFFER std_logic;
	MostraContaAtraso : BUFFER std_logic;
	fimHierarquico : BUFFER std_logic;
	estadoRodada : BUFFER std_logic_vector(3 DOWNTO 0);
	estadoAtrasador : BUFFER std_logic_vector(3 DOWNTO 0);
	pulso : BUFFER std_logic_vector(15 DOWNTO 0);
	saida : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END CircuitoBase;

-- Design Ports Information
-- selectDisplay[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selectDisplay[1]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selectDisplay[2]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selectDisplay[3]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- contaAtraso	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aguardando	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fimRodada	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- erro	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- demora	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MostraSinalAtraso	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MostraContaAtraso	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fimHierarquico	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estadoRodada[0]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estadoRodada[1]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estadoRodada[2]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estadoRodada[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estadoAtrasador[0]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estadoAtrasador[1]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estadoAtrasador[2]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estadoAtrasador[3]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[0]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[1]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[2]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[3]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[4]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[5]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[6]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[7]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[8]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[9]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[10]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[11]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[12]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[13]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[14]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[15]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[1]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[2]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[3]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[4]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[5]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[6]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[7]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[8]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[9]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[10]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[11]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[12]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[13]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[14]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[15]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- finalizaRodada	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rodada	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CircuitoBase IS
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
SIGNAL ww_finalizaRodada : std_logic;
SIGNAL ww_rodada : std_logic;
SIGNAL ww_resposta : std_logic;
SIGNAL ww_selectDisplay : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_contaAtraso : std_logic;
SIGNAL ww_aguardando : std_logic;
SIGNAL ww_fimRodada : std_logic;
SIGNAL ww_erro : std_logic;
SIGNAL ww_demora : std_logic;
SIGNAL ww_MostraSinalAtraso : std_logic;
SIGNAL ww_MostraContaAtraso : std_logic;
SIGNAL ww_fimHierarquico : std_logic;
SIGNAL ww_estadoRodada : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_estadoAtrasador : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_pulso : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_saida : std_logic_vector(15 DOWNTO 0);
SIGNAL \selectDisplay[0]~input_o\ : std_logic;
SIGNAL \selectDisplay[1]~input_o\ : std_logic;
SIGNAL \selectDisplay[2]~input_o\ : std_logic;
SIGNAL \selectDisplay[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \resposta~input_o\ : std_logic;
SIGNAL \finalizaRodada~input_o\ : std_logic;
SIGNAL \INTERFACE|C|Selector5~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_1|Qout~1_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_1|Qout[2]~2_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_1|Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_1|Qout~3_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_1|Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_1|Qout[3]~4_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_1|Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_1|Qout[0]~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_1|Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_2|Qout[3]~1_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_2|Qout[0]~4_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_2|Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|ClrN2~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_2|Qout~5_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_2|Qout[3]~2_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_2|Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_2|Qout~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_2|Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_2|Add0~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_2|Qout[3]~3_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_2|Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|Converte|Selector35~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|Selector34~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|shift_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|D|Converte|Selector33~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|Selector32~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|state_next.done~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|state.done~q\ : std_logic;
SIGNAL \INTERFACE|D|Converte|state.start~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|state.start~q\ : std_logic;
SIGNAL \INTERFACE|D|Converte|Selector1~1_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|state.shift~q\ : std_logic;
SIGNAL \INTERFACE|D|Converte|Selector1~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|binary[8]~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|binary_next~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_1|Qout~1_combout\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_1|Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|C|Eatual.Contando~q\ : std_logic;
SIGNAL \INTERFACE|D|s_sinalAtraso~6_combout\ : std_logic;
SIGNAL \INTERFACE|D|C|Eatual.Fim~q\ : std_logic;
SIGNAL \INTERFACE|D|C|Selector0~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|C|Eatual.Inicial~q\ : std_logic;
SIGNAL \INTERFACE|D|C|Eprox.RegistraSeed1~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|C|Eatual.RegistraSeed1~q\ : std_logic;
SIGNAL \INTERFACE|D|C|Eatual.RegistraSeed2~q\ : std_logic;
SIGNAL \INTERFACE|D|Registrador|process_0~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \INTERFACE|C|Selector4~0_combout\ : std_logic;
SIGNAL \INTERFACE|C|Selector4~1_combout\ : std_logic;
SIGNAL \INTERFACE|C|Eatual.Respondeu~q\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_1|Qout[0]~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_1|Qout~2_combout\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_1|Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_1|Qout~3_combout\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_1|Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_1|Qout~4_combout\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_1|Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|ClrN1~combout\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_2|Qout[0]~2_combout\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_2|Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_2|Qout~3_combout\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_2|Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_2|Qout~4_combout\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_2|Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_2|Qout[3]~1_combout\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_2|Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|ClrN2~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_3|Qout~2_combout\ : std_logic;
SIGNAL \INTERFACE|C|WideNor1~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_2|Qout[0]~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_3|Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|ClrN4~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_3|Qout~3_combout\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_3|Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_3|Qout~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_3|Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_3|Qout[3]~1_combout\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_3|Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[11]~9_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[10]~13_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[9]~17_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[6]~29_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[5]~33_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[4]~37_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[2]~45_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[1]~49_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[1]~51_combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout~1_combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[2]~2_combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[3]~4_combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[0]~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout~3_combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|S~4_combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout~3_combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[3]~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[3]~4_combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout~5_combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Add0~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[3]~1_combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|ClrN2~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[0]~2_combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[0]~3_combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|ClrN3~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout~4_combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[0]~1_combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Add0~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[3]~2_combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|S~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|S~1_combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|S~2_combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[0]~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout~1_combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[0]~2_combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout~3_combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Add0~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[3]~4_combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|S~3_combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|S~combout\ : std_logic;
SIGNAL \INTERFACE|D|C|Selector1~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|C|Eatual.Cicla~q\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[1]~_emulated_q\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[1]~50_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[2]~47_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[2]~_emulated_q\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[2]~46_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[3]~41_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[3]~43_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[3]~_emulated_q\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[3]~42_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[4]~39_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[4]~_emulated_q\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[4]~38_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[5]~35_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[5]~_emulated_q\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[5]~34_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[6]~31_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[6]~_emulated_q\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[6]~30_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[7]~25_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[7]~27_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[7]~_emulated_q\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[7]~26_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[8]~21_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[8]~23_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[8]~_emulated_q\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[8]~22_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[9]~19_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[9]~_emulated_q\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[9]~18_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[10]~15_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[10]~_emulated_q\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[10]~14_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[11]~11_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[11]~_emulated_q\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[11]~10_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[0]~53_combout\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_4|Qout~1_combout\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_3|Qout~4_combout\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_4|Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_4|Qout~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_4|Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_4|Qout~3_combout\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_4|Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_4|Qout[3]~2_combout\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_4|Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[14]~61_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[13]~1_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[12]~5_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[12]~7_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[12]~_emulated_q\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[12]~6_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[13]~3_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[13]~_emulated_q\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[13]~2_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[14]~63_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[14]~_emulated_q\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[14]~62_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[15]~57_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[15]~59_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[15]~_emulated_q\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[15]~58_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[0]~55_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[0]~_emulated_q\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|count[0]~54_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|binary[1]~feeder_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|binary[2]~feeder_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|binary[3]~feeder_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|binary[4]~feeder_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|binary[5]~feeder_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|binary[6]~feeder_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|binary[7]~feeder_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|binary[8]~feeder_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|binary[9]~feeder_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|binary[10]~feeder_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|binary[11]~feeder_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|binary[12]~feeder_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|binary[13]~feeder_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|Selector31~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|bcds[0]~DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|D|Converte|Selector28~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|Selector30~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|Selector29~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|bcds[2]~DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|D|Converte|bcds[3]~DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|D|Converte|Selector27~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|Selector27~1_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|bcds[4]~DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|D|Converte|bcds[5]~DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|D|Converte|bcds[7]~DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|D|Converte|Selector25~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|bcds[6]~DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|D|Converte|Selector24~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|Selector26~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|Selector23~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|Selector23~1_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|bcds[8]~DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|D|Converte|Selector21~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|Selector22~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|Selector20~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|bcds[11]~DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|ClrN3~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_3|Qout~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_3|Qout[1]~1_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_3|Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_3|Qout~2_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_3|Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_3|Add0~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_3|Qout[3]~3_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_3|Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_3|Qout[0]~4_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_3|Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|s_sinalAtraso~2_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|bcds[9]~DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|D|Converte|Selector19~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|Selector19~1_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|Selector18~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|Selector16~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|Selector17~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|bcds[14]~DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|D|Converte|bcds_out_reg[14]~feeder_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|bcds_out_reg[12]~feeder_combout\ : std_logic;
SIGNAL \INTERFACE|D|s_sinalAtraso~3_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_4|Qout[0]~1_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_4|Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_4|Qout~2_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_4|Qout[3]~3_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_4|Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_4|Qout~4_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_4|Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_4|Add0~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_4|Qout[3]~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_4|Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|C4|Equal0~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|s_sinalAtraso~1_combout\ : std_logic;
SIGNAL \INTERFACE|D|s_sinalAtraso~4_combout\ : std_logic;
SIGNAL \INTERFACE|D|s_sinalAtraso~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|s_sinalAtraso~5_combout\ : std_logic;
SIGNAL \INTERFACE|C|Selector5~1_combout\ : std_logic;
SIGNAL \INTERFACE|C|Eatual.Afobado~q\ : std_logic;
SIGNAL \INTERFACE|comb~0_combout\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_1|Qout~2_combout\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_1|Qout[3]~3_combout\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_1|Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_1|Qout~4_combout\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_1|Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_1|Qout[3]~1_combout\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_1|Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_1|Qout[0]~0_combout\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_1|Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_2|Qout[3]~0_combout\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_2|Qout~3_combout\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_2|Qout[1]~4_combout\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_2|Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_2|Qout~5_combout\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_2|Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_2|Add0~0_combout\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_2|Qout[3]~2_combout\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_2|Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|ClrN2~combout\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_2|Qout[0]~1_combout\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_2|Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_3|process_0~0_combout\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_3|Qout[0]~0_combout\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_3|Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_3|Qout~2_combout\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_3|Qout[2]~3_combout\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_3|Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_3|Qout~4_combout\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_3|Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_3|Add0~0_combout\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_3|Qout[3]~1_combout\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_3|Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|ClrN3~0_combout\ : std_logic;
SIGNAL \INTERFACE|s_demorou~3_combout\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_4|Qout~3_combout\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_4|Qout[1]~4_combout\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_4|Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_4|Qout~5_combout\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_4|Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_4|Qout[3]~1_combout\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_4|Qout[3]~2_combout\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_4|Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_4|Qout[0]~0_combout\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_4|Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|s_demorou~0_combout\ : std_logic;
SIGNAL \INTERFACE|s_demorou~2_combout\ : std_logic;
SIGNAL \INTERFACE|s_demorou~1_combout\ : std_logic;
SIGNAL \INTERFACE|s_demorou~combout\ : std_logic;
SIGNAL \INTERFACE|C|Selector3~0_combout\ : std_logic;
SIGNAL \INTERFACE|C|Eatual.Demorado~q\ : std_logic;
SIGNAL \INTERFACE|D|comb~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|C|Eatual.Conversao~q\ : std_logic;
SIGNAL \INTERFACE|D|C|Selector2~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|C|Eatual.Conversao~DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout~1_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[3]~2_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout~3_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[3]~4_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[0]~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_2|process_0~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[0]~3_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout~1_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[3]~2_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout~4_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_2|Add0~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[3]~5_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[3]~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[0]~1_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|ClrN3~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout~2_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[0]~3_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout~4_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_3|Add0~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[3]~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[0]~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout~1_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[2]~2_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout~3_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_4|Add0~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[3]~4_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|S~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|S~1_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|S~2_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|S~combout\ : std_logic;
SIGNAL \INTERFACE|D|C|Selector3~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|C|Eatual.Contando~DUPLICATE_q\ : std_logic;
SIGNAL \rodada~input_o\ : std_logic;
SIGNAL \INTERFACE|C|Selector0~0_combout\ : std_logic;
SIGNAL \INTERFACE|C|Selector0~1_combout\ : std_logic;
SIGNAL \INTERFACE|C|Eatual.Inicial~q\ : std_logic;
SIGNAL \INTERFACE|C|Selector1~0_combout\ : std_logic;
SIGNAL \INTERFACE|C|Selector1~1_combout\ : std_logic;
SIGNAL \INTERFACE|C|Eatual.Atraso~q\ : std_logic;
SIGNAL \INTERFACE|C|Selector2~0_combout\ : std_logic;
SIGNAL \INTERFACE|C|Eatual.Aguarda~q\ : std_logic;
SIGNAL \INTERFACE|C|WideNor2~0_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|C1|Ereg.LIMPA~q\ : std_logic;
SIGNAL \INTERFACE|Medicao|C1|Selector0~0_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|C1|Ereg.parado~q\ : std_logic;
SIGNAL \INTERFACE|Medicao|C1|Eprox.iniciado~0_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|C1|Ereg.iniciado~q\ : std_logic;
SIGNAL \INTERFACE|Medicao|C1|Selector2~0_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|C1|Ereg.medindo~q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|C1|Selector0~0_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|C1|Ereg.INICIAL~q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|C1|Eprox.CONTA~1_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|C1|Ereg.CONTA~q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|C1|Eprox.EPRONTO~0_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|C1|Ereg.EPRONTO~q\ : std_logic;
SIGNAL \INTERFACE|Medicao|C1|Eprox.registra~0_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|C1|Ereg.registra~q\ : std_logic;
SIGNAL \INTERFACE|Medicao|C1|Ereg.soma~q\ : std_logic;
SIGNAL \INTERFACE|Medicao|C1|Ereg.esperasoma~q\ : std_logic;
SIGNAL \INTERFACE|Medicao|C1|Selector3~0_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|C1|Ereg.espera~q\ : std_logic;
SIGNAL \INTERFACE|C|WideOr7~combout\ : std_logic;
SIGNAL \INTERFACE|C|WideOr6~combout\ : std_logic;
SIGNAL \INTERFACE|C|WideOr5~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|C|WideOr6~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|C|WideOr5~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|C|WideOr4~0_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_1|Qout~2_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_1|Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_1|Qout~3_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_1|Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_1|Qout[1]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_1|Qout[3]~4_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_1|Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_1|Qout[0]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_1|Qout[2]~0_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_1|Qout[0]~1_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_1|Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|R1|IQ[0]~feeder_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|C1|WideNor1~combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|R1|Q[0]~feeder_combout\ : std_logic;
SIGNAL \INTERFACE|R|IQ~0_combout\ : std_logic;
SIGNAL \INTERFACE|R|IQ[4]~1_combout\ : std_logic;
SIGNAL \INTERFACE|R|process_0~0_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|R1|IQ[1]~feeder_combout\ : std_logic;
SIGNAL \INTERFACE|R|IQ[1]~feeder_combout\ : std_logic;
SIGNAL \INTERFACE|comb~1_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|R1|Q[2]~feeder_combout\ : std_logic;
SIGNAL \INTERFACE|R|IQ[2]~feeder_combout\ : std_logic;
SIGNAL \INTERFACE|R|IQ~2_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_2|Qout[3]~0_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_2|Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_2|Qout~2_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_2|Qout[1]~3_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_2|Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_2|Qout~4_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_2|Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_2|Add0~0_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_2|Qout[3]~5_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_2|Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|ClrN2~0_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_2|Qout[0]~1_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_2|Qout[0]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|R1|IQ[4]~feeder_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|R1|Q[4]~feeder_combout\ : std_logic;
SIGNAL \INTERFACE|R|IQ~3_combout\ : std_logic;
SIGNAL \INTERFACE|R|Q[4]~feeder_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|R1|IQ[5]~feeder_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|R1|Q[6]~feeder_combout\ : std_logic;
SIGNAL \INTERFACE|R|IQ~4_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_3|Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|ClrN3~0_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_3|Qout~1_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_3|Qout[3]~2_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_3|Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_3|Qout~3_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_3|Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_3|Add0~0_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_3|Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_3|Qout[3]~4_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_3|Qout[3]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_3|Qout[0]~0_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_3|Qout[0]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|R1|IQ[8]~feeder_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|R1|Q[8]~feeder_combout\ : std_logic;
SIGNAL \INTERFACE|R|IQ~5_combout\ : std_logic;
SIGNAL \INTERFACE|R|IQ[9]~feeder_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|R1|IQ[11]~feeder_combout\ : std_logic;
SIGNAL \INTERFACE|R|IQ~6_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_4|Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_4|Qout~1_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_4|Qout[3]~2_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_4|Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_4|Qout~3_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_4|Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_4|Add0~0_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_4|Qout[3]~4_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_4|Qout[3]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_4|Qout[0]~0_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_4|Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|R1|IQ[12]~feeder_combout\ : std_logic;
SIGNAL \INTERFACE|R|IQ~7_combout\ : std_logic;
SIGNAL \INTERFACE|R|Q[12]~feeder_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|R1|Q[13]~feeder_combout\ : std_logic;
SIGNAL \INTERFACE|R|IQ[13]~feeder_combout\ : std_logic;
SIGNAL \INTERFACE|R|Q[14]~feeder_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|R1|IQ[15]~feeder_combout\ : std_logic;
SIGNAL \INTERFACE|R|IQ~8_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|shift_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INTERFACE|D|Registrador|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \INTERFACE|D|Converte|bcds\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \INTERFACE|R|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \INTERFACE|D|Converte|bcds_out_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \INTERFACE|Medicao|R1|IQ\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \INTERFACE|Medicao|R1|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \INTERFACE|D|Registrador|IQ\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \INTERFACE|D|Converte|binary\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \INTERFACE|R|IQ\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \INTERFACE|D|geraSeed|IC_4|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[10]~14_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[10]~_emulated_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|C1|ALT_INV_Ereg.parado~q\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_4|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_4|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[11]~10_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[11]~_emulated_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_4|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_3|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|ALT_INV_ClrN3~0_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_2|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_2|ALT_INV_Qout[3]~0_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|ALT_INV_ClrN2~0_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_1|ALT_INV_Qout[2]~0_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|C1|ALT_INV_Ereg.LIMPA~q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|C1|ALT_INV_Ereg.INICIAL~q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|C1|ALT_INV_Ereg.CONTA~q\ : std_logic;
SIGNAL \INTERFACE|Medicao|C1|ALT_INV_Ereg.iniciado~q\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_4|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[12]~6_combout\ : std_logic;
SIGNAL \INTERFACE|D|Registrador|ALT_INV_Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[12]~_emulated_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_4|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_4|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_4|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_4|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_3|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_3|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_3|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_3|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_2|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_2|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_2|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_2|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_1|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_1|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_1|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_1|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_1|ALT_INV_Qout[0]~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|ALT_INV_ClrN1~combout\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|ALT_INV_ClrN2~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|ALT_INV_ClrN4~0_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|C1|ALT_INV_Ereg.EPRONTO~q\ : std_logic;
SIGNAL \INTERFACE|Medicao|C1|ALT_INV_Ereg.medindo~q\ : std_logic;
SIGNAL \INTERFACE|Medicao|R1|ALT_INV_IQ\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \INTERFACE|D|geraSeed|IC_1|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_1|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_1|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_1|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_2|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_2|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_2|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_3|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_3|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_2|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_3|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|geraSeed|IC_3|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|C1|ALT_INV_Ereg.registra~q\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[13]~2_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[13]~_emulated_q\ : std_logic;
SIGNAL \INTERFACE|D|Converte|ALT_INV_state.start~q\ : std_logic;
SIGNAL \INTERFACE|Medicao|R1|ALT_INV_Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_4|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_2|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[3]~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_3|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|ALT_INV_ClrN2~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|ALT_INV_ClrN3~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|ALT_INV_Selector23~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|ALT_INV_Selector19~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|ALT_INV_Selector27~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|ALT_INV_binary[8]~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|ALT_INV_state.shift~q\ : std_logic;
SIGNAL \INTERFACE|D|Converte|ALT_INV_shift_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INTERFACE|D|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_4|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|ALT_INV_ClrN3~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_3|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[3]~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \INTERFACE|R|ALT_INV_IQ\ : std_logic_vector(14 DOWNTO 4);
SIGNAL \INTERFACE|D|ciclagensLFSR|ALT_INV_S~combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|ALT_INV_S~4_combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|ALT_INV_S~3_combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|ALT_INV_S~2_combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|ALT_INV_S~1_combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|ALT_INV_S~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|C|ALT_INV_Eatual.Inicial~q\ : std_logic;
SIGNAL \INTERFACE|C|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \INTERFACE|Medicao|C1|ALT_INV_Ereg.esperasoma~q\ : std_logic;
SIGNAL \INTERFACE|C|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|ALT_INV_bcds\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_2|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_2|ALT_INV_Qout[3]~1_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_3|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|ALT_INV_ClrN2~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|ALT_INV_state.done~q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_4|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|ALT_INV_ClrN3~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|ALT_INV_S~combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|ALT_INV_S~2_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|ALT_INV_S~1_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|ALT_INV_S~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_4|ALT_INV_Qout[3]~1_combout\ : std_logic;
SIGNAL \INTERFACE|ALT_INV_s_demorou~3_combout\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_2|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_2|ALT_INV_Qout[3]~0_combout\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|ALT_INV_ClrN2~combout\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_3|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_3|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \INTERFACE|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \INTERFACE|C|ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \INTERFACE|C|ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|C|ALT_INV_Eatual.Conversao~q\ : std_logic;
SIGNAL \INTERFACE|D|C|ALT_INV_Eatual.Fim~q\ : std_logic;
SIGNAL \INTERFACE|D|C|ALT_INV_Eatual.RegistraSeed2~q\ : std_logic;
SIGNAL \INTERFACE|D|C|ALT_INV_Eatual.Cicla~q\ : std_logic;
SIGNAL \INTERFACE|D|C|ALT_INV_Eatual.RegistraSeed1~q\ : std_logic;
SIGNAL \INTERFACE|C|ALT_INV_WideOr5~0_combout\ : std_logic;
SIGNAL \INTERFACE|C|ALT_INV_WideOr7~combout\ : std_logic;
SIGNAL \INTERFACE|C|ALT_INV_Eatual.Inicial~q\ : std_logic;
SIGNAL \INTERFACE|Medicao|C1|ALT_INV_Ereg.espera~q\ : std_logic;
SIGNAL \INTERFACE|C|ALT_INV_Eatual.Atraso~q\ : std_logic;
SIGNAL \INTERFACE|D|ALT_INV_s_sinalAtraso~5_combout\ : std_logic;
SIGNAL \INTERFACE|D|ALT_INV_s_sinalAtraso~4_combout\ : std_logic;
SIGNAL \INTERFACE|D|Converte|ALT_INV_bcds_out_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_2|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_2|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_1|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ALT_INV_s_sinalAtraso~3_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_1|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_1|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_1|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ALT_INV_s_sinalAtraso~2_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_3|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_2|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_2|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ALT_INV_s_sinalAtraso~1_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_3|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_3|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_3|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ALT_INV_s_sinalAtraso~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_4|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_4|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_4|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|C4|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \INTERFACE|D|ContadordoAtraso|IC_4|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|D|C|ALT_INV_Eatual.Contando~q\ : std_logic;
SIGNAL \INTERFACE|ALT_INV_s_demorou~combout\ : std_logic;
SIGNAL \INTERFACE|ALT_INV_s_demorou~2_combout\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_4|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_4|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|ALT_INV_s_demorou~1_combout\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_3|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_3|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_2|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_2|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_1|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_1|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|ALT_INV_s_demorou~0_combout\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_4|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_4|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|ALT_INV_ClrN3~0_combout\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_1|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_1|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_2|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_2|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_3|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|ContaDemora|IC_3|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \INTERFACE|C|ALT_INV_WideNor2~0_combout\ : std_logic;
SIGNAL \INTERFACE|C|ALT_INV_WideNor1~0_combout\ : std_logic;
SIGNAL \INTERFACE|C|ALT_INV_Eatual.Afobado~q\ : std_logic;
SIGNAL \INTERFACE|C|ALT_INV_Eatual.Demorado~q\ : std_logic;
SIGNAL \INTERFACE|C|ALT_INV_Eatual.Respondeu~q\ : std_logic;
SIGNAL \INTERFACE|C|ALT_INV_Eatual.Aguarda~q\ : std_logic;
SIGNAL \INTERFACE|D|Converte|ALT_INV_binary\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \INTERFACE|Medicao|M1|D1|IC_4|ALT_INV_Qout[3]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_3|ALT_INV_Qout[3]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_3|ALT_INV_Qout[0]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_2|ALT_INV_Qout[0]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_1|ALT_INV_Qout[1]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|Medicao|M1|D1|IC_1|ALT_INV_Qout[0]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|D|Converte|ALT_INV_shift_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|D|Converte|ALT_INV_bcds[9]~DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|D|Converte|ALT_INV_bcds[8]~DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|D|Converte|ALT_INV_bcds[14]~DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|D|Converte|ALT_INV_bcds[4]~DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|D|Converte|ALT_INV_bcds[11]~DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|D|Converte|ALT_INV_bcds[7]~DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|D|Converte|ALT_INV_bcds[6]~DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|D|Converte|ALT_INV_bcds[5]~DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|D|Converte|ALT_INV_bcds[2]~DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|D|Converte|ALT_INV_bcds[0]~DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|D|Converte|ALT_INV_bcds[3]~DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|D|C|ALT_INV_Eatual.Conversao~DUPLICATE_q\ : std_logic;
SIGNAL \INTERFACE|D|C|ALT_INV_Eatual.Contando~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_rodada~input_o\ : std_logic;
SIGNAL \ALT_INV_finalizaRodada~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_resposta~input_o\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[14]~61_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[15]~57_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[0]~53_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[1]~49_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[2]~45_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[3]~41_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[4]~37_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[5]~33_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[6]~29_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[7]~25_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[8]~21_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[9]~17_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[10]~13_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[11]~9_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[12]~5_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[13]~1_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[14]~62_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[14]~_emulated_q\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[15]~58_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[15]~_emulated_q\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[0]~54_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[0]~_emulated_q\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[1]~50_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[1]~_emulated_q\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[2]~46_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[2]~_emulated_q\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[3]~42_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[3]~_emulated_q\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[4]~38_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[4]~_emulated_q\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[5]~34_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[5]~_emulated_q\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[6]~30_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[6]~_emulated_q\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[7]~26_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[7]~_emulated_q\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[8]~22_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[8]~_emulated_q\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[9]~18_combout\ : std_logic;
SIGNAL \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[9]~_emulated_q\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_finalizaRodada <= finalizaRodada;
ww_rodada <= rodada;
ww_resposta <= resposta;
ww_selectDisplay <= selectDisplay;
contaAtraso <= ww_contaAtraso;
aguardando <= ww_aguardando;
fimRodada <= ww_fimRodada;
erro <= ww_erro;
demora <= ww_demora;
MostraSinalAtraso <= ww_MostraSinalAtraso;
MostraContaAtraso <= ww_MostraContaAtraso;
fimHierarquico <= ww_fimHierarquico;
estadoRodada <= ww_estadoRodada;
estadoAtrasador <= ww_estadoAtrasador;
pulso <= ww_pulso;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\INTERFACE|D|geraSeed|IC_4|ALT_INV_Qout[2]~reg0_q\ <= NOT \INTERFACE|D|geraSeed|IC_4|Qout[2]~reg0_q\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[10]~14_combout\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[10]~14_combout\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[10]~_emulated_q\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[10]~_emulated_q\;
\INTERFACE|Medicao|C1|ALT_INV_Ereg.parado~q\ <= NOT \INTERFACE|Medicao|C1|Ereg.parado~q\;
\INTERFACE|D|geraSeed|IC_4|ALT_INV_Qout[3]~reg0_q\ <= NOT \INTERFACE|D|geraSeed|IC_4|Qout[3]~reg0_q\;
\INTERFACE|D|geraSeed|IC_4|ALT_INV_Qout[0]~reg0_q\ <= NOT \INTERFACE|D|geraSeed|IC_4|Qout[0]~reg0_q\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[11]~10_combout\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[11]~10_combout\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[11]~_emulated_q\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[11]~_emulated_q\;
\INTERFACE|Medicao|M1|D1|IC_4|ALT_INV_Add0~0_combout\ <= NOT \INTERFACE|Medicao|M1|D1|IC_4|Add0~0_combout\;
\INTERFACE|Medicao|M1|D1|IC_3|ALT_INV_Add0~0_combout\ <= NOT \INTERFACE|Medicao|M1|D1|IC_3|Add0~0_combout\;
\INTERFACE|Medicao|M1|D1|ALT_INV_ClrN3~0_combout\ <= NOT \INTERFACE|Medicao|M1|D1|ClrN3~0_combout\;
\INTERFACE|Medicao|M1|D1|IC_2|ALT_INV_Add0~0_combout\ <= NOT \INTERFACE|Medicao|M1|D1|IC_2|Add0~0_combout\;
\INTERFACE|Medicao|M1|D1|IC_2|ALT_INV_Qout[3]~0_combout\ <= NOT \INTERFACE|Medicao|M1|D1|IC_2|Qout[3]~0_combout\;
\INTERFACE|Medicao|M1|D1|ALT_INV_ClrN2~0_combout\ <= NOT \INTERFACE|Medicao|M1|D1|ClrN2~0_combout\;
\INTERFACE|Medicao|M1|D1|IC_1|ALT_INV_Qout[2]~0_combout\ <= NOT \INTERFACE|Medicao|M1|D1|IC_1|Qout[2]~0_combout\;
\INTERFACE|Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\ <= NOT \INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\;
\INTERFACE|Medicao|M1|C1|ALT_INV_Ereg.LIMPA~q\ <= NOT \INTERFACE|Medicao|M1|C1|Ereg.LIMPA~q\;
\INTERFACE|Medicao|M1|C1|ALT_INV_Ereg.INICIAL~q\ <= NOT \INTERFACE|Medicao|M1|C1|Ereg.INICIAL~q\;
\INTERFACE|Medicao|M1|C1|ALT_INV_Ereg.CONTA~q\ <= NOT \INTERFACE|Medicao|M1|C1|Ereg.CONTA~q\;
\INTERFACE|Medicao|C1|ALT_INV_Ereg.iniciado~q\ <= NOT \INTERFACE|Medicao|C1|Ereg.iniciado~q\;
\INTERFACE|D|geraSeed|IC_4|ALT_INV_Qout[1]~reg0_q\ <= NOT \INTERFACE|D|geraSeed|IC_4|Qout[1]~reg0_q\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[12]~6_combout\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[12]~6_combout\;
\INTERFACE|D|Registrador|ALT_INV_Q\(12) <= NOT \INTERFACE|D|Registrador|Q\(12);
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[12]~_emulated_q\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[12]~_emulated_q\;
\INTERFACE|Medicao|M1|D1|IC_4|ALT_INV_Qout[3]~reg0_q\ <= NOT \INTERFACE|Medicao|M1|D1|IC_4|Qout[3]~reg0_q\;
\INTERFACE|Medicao|M1|D1|IC_4|ALT_INV_Qout[2]~reg0_q\ <= NOT \INTERFACE|Medicao|M1|D1|IC_4|Qout[2]~reg0_q\;
\INTERFACE|Medicao|M1|D1|IC_4|ALT_INV_Qout[1]~reg0_q\ <= NOT \INTERFACE|Medicao|M1|D1|IC_4|Qout[1]~reg0_q\;
\INTERFACE|Medicao|M1|D1|IC_4|ALT_INV_Qout[0]~reg0_q\ <= NOT \INTERFACE|Medicao|M1|D1|IC_4|Qout[0]~reg0_q\;
\INTERFACE|Medicao|M1|D1|IC_3|ALT_INV_Qout[3]~reg0_q\ <= NOT \INTERFACE|Medicao|M1|D1|IC_3|Qout[3]~reg0_q\;
\INTERFACE|Medicao|M1|D1|IC_3|ALT_INV_Qout[2]~reg0_q\ <= NOT \INTERFACE|Medicao|M1|D1|IC_3|Qout[2]~reg0_q\;
\INTERFACE|Medicao|M1|D1|IC_3|ALT_INV_Qout[1]~reg0_q\ <= NOT \INTERFACE|Medicao|M1|D1|IC_3|Qout[1]~reg0_q\;
\INTERFACE|Medicao|M1|D1|IC_3|ALT_INV_Qout[0]~reg0_q\ <= NOT \INTERFACE|Medicao|M1|D1|IC_3|Qout[0]~reg0_q\;
\INTERFACE|Medicao|M1|D1|IC_2|ALT_INV_Qout[3]~reg0_q\ <= NOT \INTERFACE|Medicao|M1|D1|IC_2|Qout[3]~reg0_q\;
\INTERFACE|Medicao|M1|D1|IC_2|ALT_INV_Qout[2]~reg0_q\ <= NOT \INTERFACE|Medicao|M1|D1|IC_2|Qout[2]~reg0_q\;
\INTERFACE|Medicao|M1|D1|IC_2|ALT_INV_Qout[1]~reg0_q\ <= NOT \INTERFACE|Medicao|M1|D1|IC_2|Qout[1]~reg0_q\;
\INTERFACE|Medicao|M1|D1|IC_2|ALT_INV_Qout[0]~reg0_q\ <= NOT \INTERFACE|Medicao|M1|D1|IC_2|Qout[0]~reg0_q\;
\INTERFACE|Medicao|M1|D1|IC_1|ALT_INV_Qout[3]~reg0_q\ <= NOT \INTERFACE|Medicao|M1|D1|IC_1|Qout[3]~reg0_q\;
\INTERFACE|Medicao|M1|D1|IC_1|ALT_INV_Qout[2]~reg0_q\ <= NOT \INTERFACE|Medicao|M1|D1|IC_1|Qout[2]~reg0_q\;
\INTERFACE|Medicao|M1|D1|IC_1|ALT_INV_Qout[1]~reg0_q\ <= NOT \INTERFACE|Medicao|M1|D1|IC_1|Qout[1]~reg0_q\;
\INTERFACE|Medicao|M1|D1|IC_1|ALT_INV_Qout[0]~reg0_q\ <= NOT \INTERFACE|Medicao|M1|D1|IC_1|Qout[0]~reg0_q\;
\INTERFACE|D|geraSeed|IC_1|ALT_INV_Qout[0]~0_combout\ <= NOT \INTERFACE|D|geraSeed|IC_1|Qout[0]~0_combout\;
\INTERFACE|D|geraSeed|ALT_INV_ClrN1~combout\ <= NOT \INTERFACE|D|geraSeed|ClrN1~combout\;
\INTERFACE|D|geraSeed|ALT_INV_ClrN2~0_combout\ <= NOT \INTERFACE|D|geraSeed|ClrN2~0_combout\;
\INTERFACE|D|geraSeed|ALT_INV_ClrN4~0_combout\ <= NOT \INTERFACE|D|geraSeed|ClrN4~0_combout\;
\INTERFACE|Medicao|M1|C1|ALT_INV_Ereg.EPRONTO~q\ <= NOT \INTERFACE|Medicao|M1|C1|Ereg.EPRONTO~q\;
\INTERFACE|Medicao|C1|ALT_INV_Ereg.medindo~q\ <= NOT \INTERFACE|Medicao|C1|Ereg.medindo~q\;
\INTERFACE|Medicao|R1|ALT_INV_IQ\(8) <= NOT \INTERFACE|Medicao|R1|IQ\(8);
\INTERFACE|Medicao|R1|ALT_INV_IQ\(4) <= NOT \INTERFACE|Medicao|R1|IQ\(4);
\INTERFACE|Medicao|R1|ALT_INV_IQ\(0) <= NOT \INTERFACE|Medicao|R1|IQ\(0);
\INTERFACE|D|geraSeed|IC_1|ALT_INV_Qout[3]~reg0_q\ <= NOT \INTERFACE|D|geraSeed|IC_1|Qout[3]~reg0_q\;
\INTERFACE|D|geraSeed|IC_1|ALT_INV_Qout[2]~reg0_q\ <= NOT \INTERFACE|D|geraSeed|IC_1|Qout[2]~reg0_q\;
\INTERFACE|D|geraSeed|IC_1|ALT_INV_Qout[1]~reg0_q\ <= NOT \INTERFACE|D|geraSeed|IC_1|Qout[1]~reg0_q\;
\INTERFACE|D|geraSeed|IC_1|ALT_INV_Qout[0]~reg0_q\ <= NOT \INTERFACE|D|geraSeed|IC_1|Qout[0]~reg0_q\;
\INTERFACE|D|geraSeed|IC_2|ALT_INV_Qout[2]~reg0_q\ <= NOT \INTERFACE|D|geraSeed|IC_2|Qout[2]~reg0_q\;
\INTERFACE|D|geraSeed|IC_2|ALT_INV_Qout[1]~reg0_q\ <= NOT \INTERFACE|D|geraSeed|IC_2|Qout[1]~reg0_q\;
\INTERFACE|D|geraSeed|IC_2|ALT_INV_Qout[0]~reg0_q\ <= NOT \INTERFACE|D|geraSeed|IC_2|Qout[0]~reg0_q\;
\INTERFACE|D|geraSeed|IC_3|ALT_INV_Qout[1]~reg0_q\ <= NOT \INTERFACE|D|geraSeed|IC_3|Qout[1]~reg0_q\;
\INTERFACE|D|geraSeed|IC_3|ALT_INV_Qout[0]~reg0_q\ <= NOT \INTERFACE|D|geraSeed|IC_3|Qout[0]~reg0_q\;
\INTERFACE|D|geraSeed|IC_2|ALT_INV_Qout[3]~reg0_q\ <= NOT \INTERFACE|D|geraSeed|IC_2|Qout[3]~reg0_q\;
\INTERFACE|D|geraSeed|IC_3|ALT_INV_Qout[3]~reg0_q\ <= NOT \INTERFACE|D|geraSeed|IC_3|Qout[3]~reg0_q\;
\INTERFACE|D|geraSeed|IC_3|ALT_INV_Qout[2]~reg0_q\ <= NOT \INTERFACE|D|geraSeed|IC_3|Qout[2]~reg0_q\;
\INTERFACE|Medicao|C1|ALT_INV_Ereg.registra~q\ <= NOT \INTERFACE|Medicao|C1|Ereg.registra~q\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[13]~2_combout\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[13]~2_combout\;
\INTERFACE|D|Registrador|ALT_INV_Q\(13) <= NOT \INTERFACE|D|Registrador|Q\(13);
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[13]~_emulated_q\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[13]~_emulated_q\;
\INTERFACE|D|Converte|ALT_INV_state.start~q\ <= NOT \INTERFACE|D|Converte|state.start~q\;
\INTERFACE|Medicao|R1|ALT_INV_Q\(15) <= NOT \INTERFACE|Medicao|R1|Q\(15);
\INTERFACE|Medicao|R1|ALT_INV_Q\(13) <= NOT \INTERFACE|Medicao|R1|Q\(13);
\INTERFACE|Medicao|R1|ALT_INV_Q\(12) <= NOT \INTERFACE|Medicao|R1|Q\(12);
\INTERFACE|Medicao|R1|ALT_INV_Q\(11) <= NOT \INTERFACE|Medicao|R1|Q\(11);
\INTERFACE|Medicao|R1|ALT_INV_Q\(9) <= NOT \INTERFACE|Medicao|R1|Q\(9);
\INTERFACE|Medicao|R1|ALT_INV_Q\(8) <= NOT \INTERFACE|Medicao|R1|Q\(8);
\INTERFACE|Medicao|R1|ALT_INV_Q\(7) <= NOT \INTERFACE|Medicao|R1|Q\(7);
\INTERFACE|Medicao|R1|ALT_INV_Q\(4) <= NOT \INTERFACE|Medicao|R1|Q\(4);
\INTERFACE|Medicao|R1|ALT_INV_Q\(3) <= NOT \INTERFACE|Medicao|R1|Q\(3);
\INTERFACE|Medicao|R1|ALT_INV_Q\(2) <= NOT \INTERFACE|Medicao|R1|Q\(2);
\INTERFACE|Medicao|R1|ALT_INV_Q\(1) <= NOT \INTERFACE|Medicao|R1|Q\(1);
\INTERFACE|Medicao|R1|ALT_INV_Q\(0) <= NOT \INTERFACE|Medicao|R1|Q\(0);
\INTERFACE|D|ciclagensLFSR|Contador|IC_4|ALT_INV_Add0~0_combout\ <= NOT \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Add0~0_combout\;
\INTERFACE|D|ciclagensLFSR|Contador|IC_2|ALT_INV_Add0~0_combout\ <= NOT \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Add0~0_combout\;
\INTERFACE|D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[3]~0_combout\ <= NOT \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[3]~0_combout\;
\INTERFACE|D|ciclagensLFSR|Contador|IC_3|ALT_INV_Add0~0_combout\ <= NOT \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Add0~0_combout\;
\INTERFACE|D|ciclagensLFSR|Contador|ALT_INV_ClrN2~0_combout\ <= NOT \INTERFACE|D|ciclagensLFSR|Contador|ClrN2~0_combout\;
\INTERFACE|D|ciclagensLFSR|Contador|ALT_INV_ClrN3~0_combout\ <= NOT \INTERFACE|D|ciclagensLFSR|Contador|ClrN3~0_combout\;
\INTERFACE|D|Converte|ALT_INV_Selector23~0_combout\ <= NOT \INTERFACE|D|Converte|Selector23~0_combout\;
\INTERFACE|D|Converte|ALT_INV_Selector19~0_combout\ <= NOT \INTERFACE|D|Converte|Selector19~0_combout\;
\INTERFACE|D|Converte|ALT_INV_Selector27~0_combout\ <= NOT \INTERFACE|D|Converte|Selector27~0_combout\;
\INTERFACE|D|Converte|ALT_INV_binary[8]~0_combout\ <= NOT \INTERFACE|D|Converte|binary[8]~0_combout\;
\INTERFACE|D|Converte|ALT_INV_Selector1~0_combout\ <= NOT \INTERFACE|D|Converte|Selector1~0_combout\;
\INTERFACE|D|Converte|ALT_INV_state.shift~q\ <= NOT \INTERFACE|D|Converte|state.shift~q\;
\INTERFACE|D|Converte|ALT_INV_shift_counter\(0) <= NOT \INTERFACE|D|Converte|shift_counter\(0);
\INTERFACE|D|Converte|ALT_INV_shift_counter\(1) <= NOT \INTERFACE|D|Converte|shift_counter\(1);
\INTERFACE|D|Converte|ALT_INV_shift_counter\(2) <= NOT \INTERFACE|D|Converte|shift_counter\(2);
\INTERFACE|D|Converte|ALT_INV_shift_counter\(3) <= NOT \INTERFACE|D|Converte|shift_counter\(3);
\INTERFACE|D|ALT_INV_comb~0_combout\ <= NOT \INTERFACE|D|comb~0_combout\;
\INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_Add0~0_combout\ <= NOT \INTERFACE|D|ContadordeConversao|Contador|IC_2|Add0~0_combout\;
\INTERFACE|D|ContadordeConversao|Contador|IC_4|ALT_INV_Add0~0_combout\ <= NOT \INTERFACE|D|ContadordeConversao|Contador|IC_4|Add0~0_combout\;
\INTERFACE|D|ContadordeConversao|Contador|ALT_INV_ClrN3~0_combout\ <= NOT \INTERFACE|D|ContadordeConversao|Contador|ClrN3~0_combout\;
\INTERFACE|D|ContadordeConversao|Contador|IC_3|ALT_INV_Add0~0_combout\ <= NOT \INTERFACE|D|ContadordeConversao|Contador|IC_3|Add0~0_combout\;
\INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[3]~0_combout\ <= NOT \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[3]~0_combout\;
\INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_process_0~0_combout\ <= NOT \INTERFACE|D|ContadordeConversao|Contador|IC_2|process_0~0_combout\;
\INTERFACE|R|ALT_INV_IQ\(12) <= NOT \INTERFACE|R|IQ\(12);
\INTERFACE|R|ALT_INV_IQ\(4) <= NOT \INTERFACE|R|IQ\(4);
\INTERFACE|D|ciclagensLFSR|ALT_INV_S~combout\ <= NOT \INTERFACE|D|ciclagensLFSR|S~combout\;
\INTERFACE|D|ciclagensLFSR|ALT_INV_S~4_combout\ <= NOT \INTERFACE|D|ciclagensLFSR|S~4_combout\;
\INTERFACE|D|Registrador|ALT_INV_Q\(3) <= NOT \INTERFACE|D|Registrador|Q\(3);
\INTERFACE|D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\ <= NOT \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\;
\INTERFACE|D|Registrador|ALT_INV_Q\(2) <= NOT \INTERFACE|D|Registrador|Q\(2);
\INTERFACE|D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[2]~reg0_q\ <= NOT \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[2]~reg0_q\;
\INTERFACE|D|Registrador|ALT_INV_Q\(1) <= NOT \INTERFACE|D|Registrador|Q\(1);
\INTERFACE|D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[1]~reg0_q\ <= NOT \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[1]~reg0_q\;
\INTERFACE|D|ciclagensLFSR|ALT_INV_S~3_combout\ <= NOT \INTERFACE|D|ciclagensLFSR|S~3_combout\;
\INTERFACE|D|Registrador|ALT_INV_Q\(0) <= NOT \INTERFACE|D|Registrador|Q\(0);
\INTERFACE|D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\ <= NOT \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\;
\INTERFACE|D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\ <= NOT \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\;
\INTERFACE|D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[2]~reg0_q\ <= NOT \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[2]~reg0_q\;
\INTERFACE|D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[1]~reg0_q\ <= NOT \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[1]~reg0_q\;
\INTERFACE|D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\ <= NOT \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\;
\INTERFACE|D|ciclagensLFSR|ALT_INV_S~2_combout\ <= NOT \INTERFACE|D|ciclagensLFSR|S~2_combout\;
\INTERFACE|D|Registrador|ALT_INV_Q\(6) <= NOT \INTERFACE|D|Registrador|Q\(6);
\INTERFACE|D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[2]~reg0_q\ <= NOT \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[2]~reg0_q\;
\INTERFACE|D|Registrador|ALT_INV_Q\(5) <= NOT \INTERFACE|D|Registrador|Q\(5);
\INTERFACE|D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[1]~reg0_q\ <= NOT \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[1]~reg0_q\;
\INTERFACE|D|Registrador|ALT_INV_Q\(4) <= NOT \INTERFACE|D|Registrador|Q\(4);
\INTERFACE|D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\ <= NOT \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\;
\INTERFACE|D|ciclagensLFSR|ALT_INV_S~1_combout\ <= NOT \INTERFACE|D|ciclagensLFSR|S~1_combout\;
\INTERFACE|D|Registrador|ALT_INV_Q\(9) <= NOT \INTERFACE|D|Registrador|Q\(9);
\INTERFACE|D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[1]~reg0_q\ <= NOT \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[1]~reg0_q\;
\INTERFACE|D|Registrador|ALT_INV_Q\(8) <= NOT \INTERFACE|D|Registrador|Q\(8);
\INTERFACE|D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\ <= NOT \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\;
\INTERFACE|D|Registrador|ALT_INV_Q\(7) <= NOT \INTERFACE|D|Registrador|Q\(7);
\INTERFACE|D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[3]~reg0_q\ <= NOT \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[3]~reg0_q\;
\INTERFACE|D|ciclagensLFSR|ALT_INV_S~0_combout\ <= NOT \INTERFACE|D|ciclagensLFSR|S~0_combout\;
\INTERFACE|D|Registrador|ALT_INV_Q\(11) <= NOT \INTERFACE|D|Registrador|Q\(11);
\INTERFACE|D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[3]~reg0_q\ <= NOT \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[3]~reg0_q\;
\INTERFACE|D|Registrador|ALT_INV_Q\(10) <= NOT \INTERFACE|D|Registrador|Q\(10);
\INTERFACE|D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[2]~reg0_q\ <= NOT \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[2]~reg0_q\;
\INTERFACE|D|C|ALT_INV_Eatual.Inicial~q\ <= NOT \INTERFACE|D|C|Eatual.Inicial~q\;
\INTERFACE|C|ALT_INV_Selector0~0_combout\ <= NOT \INTERFACE|C|Selector0~0_combout\;
\INTERFACE|Medicao|C1|ALT_INV_Ereg.esperasoma~q\ <= NOT \INTERFACE|Medicao|C1|Ereg.esperasoma~q\;
\INTERFACE|C|ALT_INV_Selector1~0_combout\ <= NOT \INTERFACE|C|Selector1~0_combout\;
\INTERFACE|D|Converte|ALT_INV_bcds\(9) <= NOT \INTERFACE|D|Converte|bcds\(9);
\INTERFACE|D|Converte|ALT_INV_bcds\(8) <= NOT \INTERFACE|D|Converte|bcds\(8);
\INTERFACE|D|Converte|ALT_INV_bcds\(15) <= NOT \INTERFACE|D|Converte|bcds\(15);
\INTERFACE|D|Converte|ALT_INV_bcds\(14) <= NOT \INTERFACE|D|Converte|bcds\(14);
\INTERFACE|D|Converte|ALT_INV_bcds\(13) <= NOT \INTERFACE|D|Converte|bcds\(13);
\INTERFACE|D|Converte|ALT_INV_bcds\(12) <= NOT \INTERFACE|D|Converte|bcds\(12);
\INTERFACE|D|Converte|ALT_INV_bcds\(4) <= NOT \INTERFACE|D|Converte|bcds\(4);
\INTERFACE|D|Converte|ALT_INV_bcds\(11) <= NOT \INTERFACE|D|Converte|bcds\(11);
\INTERFACE|D|ContadordoAtraso|IC_2|ALT_INV_Add0~0_combout\ <= NOT \INTERFACE|D|ContadordoAtraso|IC_2|Add0~0_combout\;
\INTERFACE|D|Converte|ALT_INV_bcds\(10) <= NOT \INTERFACE|D|Converte|bcds\(10);
\INTERFACE|D|ContadordoAtraso|IC_2|ALT_INV_Qout[3]~1_combout\ <= NOT \INTERFACE|D|ContadordoAtraso|IC_2|Qout[3]~1_combout\;
\INTERFACE|D|Converte|ALT_INV_bcds\(7) <= NOT \INTERFACE|D|Converte|bcds\(7);
\INTERFACE|D|ContadordoAtraso|IC_3|ALT_INV_Add0~0_combout\ <= NOT \INTERFACE|D|ContadordoAtraso|IC_3|Add0~0_combout\;
\INTERFACE|D|Converte|ALT_INV_bcds\(6) <= NOT \INTERFACE|D|Converte|bcds\(6);
\INTERFACE|D|Converte|ALT_INV_bcds\(5) <= NOT \INTERFACE|D|Converte|bcds\(5);
\INTERFACE|D|ContadordoAtraso|ALT_INV_ClrN2~0_combout\ <= NOT \INTERFACE|D|ContadordoAtraso|ClrN2~0_combout\;
\INTERFACE|D|Converte|ALT_INV_bcds\(2) <= NOT \INTERFACE|D|Converte|bcds\(2);
\INTERFACE|D|Converte|ALT_INV_bcds\(1) <= NOT \INTERFACE|D|Converte|bcds\(1);
\INTERFACE|D|Converte|ALT_INV_bcds\(0) <= NOT \INTERFACE|D|Converte|bcds\(0);
\INTERFACE|D|Converte|ALT_INV_state.done~q\ <= NOT \INTERFACE|D|Converte|state.done~q\;
\INTERFACE|D|Converte|ALT_INV_bcds\(3) <= NOT \INTERFACE|D|Converte|bcds\(3);
\INTERFACE|D|ContadordoAtraso|IC_4|ALT_INV_Add0~0_combout\ <= NOT \INTERFACE|D|ContadordoAtraso|IC_4|Add0~0_combout\;
\INTERFACE|D|ContadordoAtraso|ALT_INV_ClrN3~0_combout\ <= NOT \INTERFACE|D|ContadordoAtraso|ClrN3~0_combout\;
\INTERFACE|D|ContadordeConversao|ALT_INV_S~combout\ <= NOT \INTERFACE|D|ContadordeConversao|S~combout\;
\INTERFACE|D|ContadordeConversao|ALT_INV_S~2_combout\ <= NOT \INTERFACE|D|ContadordeConversao|S~2_combout\;
\INTERFACE|D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[2]~reg0_q\ <= NOT \INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[2]~reg0_q\;
\INTERFACE|D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[1]~reg0_q\ <= NOT \INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[1]~reg0_q\;
\INTERFACE|D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\ <= NOT \INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[0]~reg0_q\;
\INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[3]~reg0_q\ <= NOT \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[3]~reg0_q\;
\INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[2]~reg0_q\ <= NOT \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[2]~reg0_q\;
\INTERFACE|D|ContadordeConversao|ALT_INV_S~1_combout\ <= NOT \INTERFACE|D|ContadordeConversao|S~1_combout\;
\INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\ <= NOT \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[0]~reg0_q\;
\INTERFACE|D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\ <= NOT \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\;
\INTERFACE|D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[2]~reg0_q\ <= NOT \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[2]~reg0_q\;
\INTERFACE|D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[1]~reg0_q\ <= NOT \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[1]~reg0_q\;
\INTERFACE|D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\ <= NOT \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\;
\INTERFACE|D|ContadordeConversao|ALT_INV_S~0_combout\ <= NOT \INTERFACE|D|ContadordeConversao|S~0_combout\;
\INTERFACE|D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\ <= NOT \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[3]~reg0_q\;
\INTERFACE|D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[2]~reg0_q\ <= NOT \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[2]~reg0_q\;
\INTERFACE|D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[1]~reg0_q\ <= NOT \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[1]~reg0_q\;
\INTERFACE|D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\ <= NOT \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\;
\INTERFACE|D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[3]~reg0_q\ <= NOT \INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[3]~reg0_q\;
\INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[1]~reg0_q\ <= NOT \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[1]~reg0_q\;
\INTERFACE|ContaDemora|IC_4|ALT_INV_Qout[3]~1_combout\ <= NOT \INTERFACE|ContaDemora|IC_4|Qout[3]~1_combout\;
\INTERFACE|ALT_INV_s_demorou~3_combout\ <= NOT \INTERFACE|s_demorou~3_combout\;
\INTERFACE|ContaDemora|IC_2|ALT_INV_Add0~0_combout\ <= NOT \INTERFACE|ContaDemora|IC_2|Add0~0_combout\;
\INTERFACE|ContaDemora|IC_2|ALT_INV_Qout[3]~0_combout\ <= NOT \INTERFACE|ContaDemora|IC_2|Qout[3]~0_combout\;
\INTERFACE|ContaDemora|ALT_INV_ClrN2~combout\ <= NOT \INTERFACE|ContaDemora|ClrN2~combout\;
\INTERFACE|ContaDemora|IC_3|ALT_INV_Add0~0_combout\ <= NOT \INTERFACE|ContaDemora|IC_3|Add0~0_combout\;
\INTERFACE|ContaDemora|IC_3|ALT_INV_process_0~0_combout\ <= NOT \INTERFACE|ContaDemora|IC_3|process_0~0_combout\;
\INTERFACE|ALT_INV_comb~0_combout\ <= NOT \INTERFACE|comb~0_combout\;
\INTERFACE|C|ALT_INV_Selector5~0_combout\ <= NOT \INTERFACE|C|Selector5~0_combout\;
\INTERFACE|C|ALT_INV_Selector4~0_combout\ <= NOT \INTERFACE|C|Selector4~0_combout\;
\INTERFACE|D|C|ALT_INV_Eatual.Conversao~q\ <= NOT \INTERFACE|D|C|Eatual.Conversao~q\;
\INTERFACE|D|C|ALT_INV_Eatual.Fim~q\ <= NOT \INTERFACE|D|C|Eatual.Fim~q\;
\INTERFACE|D|C|ALT_INV_Eatual.RegistraSeed2~q\ <= NOT \INTERFACE|D|C|Eatual.RegistraSeed2~q\;
\INTERFACE|D|C|ALT_INV_Eatual.Cicla~q\ <= NOT \INTERFACE|D|C|Eatual.Cicla~q\;
\INTERFACE|D|C|ALT_INV_Eatual.RegistraSeed1~q\ <= NOT \INTERFACE|D|C|Eatual.RegistraSeed1~q\;
\INTERFACE|C|ALT_INV_WideOr5~0_combout\ <= NOT \INTERFACE|C|WideOr5~0_combout\;
\INTERFACE|C|ALT_INV_WideOr7~combout\ <= NOT \INTERFACE|C|WideOr7~combout\;
\INTERFACE|C|ALT_INV_Eatual.Inicial~q\ <= NOT \INTERFACE|C|Eatual.Inicial~q\;
\INTERFACE|Medicao|C1|ALT_INV_Ereg.espera~q\ <= NOT \INTERFACE|Medicao|C1|Ereg.espera~q\;
\INTERFACE|C|ALT_INV_Eatual.Atraso~q\ <= NOT \INTERFACE|C|Eatual.Atraso~q\;
\INTERFACE|D|ALT_INV_s_sinalAtraso~5_combout\ <= NOT \INTERFACE|D|s_sinalAtraso~5_combout\;
\INTERFACE|D|ALT_INV_s_sinalAtraso~4_combout\ <= NOT \INTERFACE|D|s_sinalAtraso~4_combout\;
\INTERFACE|D|Converte|ALT_INV_bcds_out_reg\(9) <= NOT \INTERFACE|D|Converte|bcds_out_reg\(9);
\INTERFACE|D|ContadordoAtraso|IC_2|ALT_INV_Qout[1]~reg0_q\ <= NOT \INTERFACE|D|ContadordoAtraso|IC_2|Qout[1]~reg0_q\;
\INTERFACE|D|Converte|ALT_INV_bcds_out_reg\(8) <= NOT \INTERFACE|D|Converte|bcds_out_reg\(8);
\INTERFACE|D|ContadordoAtraso|IC_2|ALT_INV_Qout[0]~reg0_q\ <= NOT \INTERFACE|D|ContadordoAtraso|IC_2|Qout[0]~reg0_q\;
\INTERFACE|D|Converte|ALT_INV_bcds_out_reg\(15) <= NOT \INTERFACE|D|Converte|bcds_out_reg\(15);
\INTERFACE|D|ContadordoAtraso|IC_1|ALT_INV_Qout[3]~reg0_q\ <= NOT \INTERFACE|D|ContadordoAtraso|IC_1|Qout[3]~reg0_q\;
\INTERFACE|D|ALT_INV_s_sinalAtraso~3_combout\ <= NOT \INTERFACE|D|s_sinalAtraso~3_combout\;
\INTERFACE|D|Converte|ALT_INV_bcds_out_reg\(14) <= NOT \INTERFACE|D|Converte|bcds_out_reg\(14);
\INTERFACE|D|ContadordoAtraso|IC_1|ALT_INV_Qout[2]~reg0_q\ <= NOT \INTERFACE|D|ContadordoAtraso|IC_1|Qout[2]~reg0_q\;
\INTERFACE|D|Converte|ALT_INV_bcds_out_reg\(13) <= NOT \INTERFACE|D|Converte|bcds_out_reg\(13);
\INTERFACE|D|ContadordoAtraso|IC_1|ALT_INV_Qout[1]~reg0_q\ <= NOT \INTERFACE|D|ContadordoAtraso|IC_1|Qout[1]~reg0_q\;
\INTERFACE|D|Converte|ALT_INV_bcds_out_reg\(12) <= NOT \INTERFACE|D|Converte|bcds_out_reg\(12);
\INTERFACE|D|ContadordoAtraso|IC_1|ALT_INV_Qout[0]~reg0_q\ <= NOT \INTERFACE|D|ContadordoAtraso|IC_1|Qout[0]~reg0_q\;
\INTERFACE|D|ALT_INV_s_sinalAtraso~2_combout\ <= NOT \INTERFACE|D|s_sinalAtraso~2_combout\;
\INTERFACE|D|Converte|ALT_INV_bcds_out_reg\(4) <= NOT \INTERFACE|D|Converte|bcds_out_reg\(4);
\INTERFACE|D|ContadordoAtraso|IC_3|ALT_INV_Qout[0]~reg0_q\ <= NOT \INTERFACE|D|ContadordoAtraso|IC_3|Qout[0]~reg0_q\;
\INTERFACE|D|Converte|ALT_INV_bcds_out_reg\(11) <= NOT \INTERFACE|D|Converte|bcds_out_reg\(11);
\INTERFACE|D|ContadordoAtraso|IC_2|ALT_INV_Qout[3]~reg0_q\ <= NOT \INTERFACE|D|ContadordoAtraso|IC_2|Qout[3]~reg0_q\;
\INTERFACE|D|Converte|ALT_INV_bcds_out_reg\(10) <= NOT \INTERFACE|D|Converte|bcds_out_reg\(10);
\INTERFACE|D|ContadordoAtraso|IC_2|ALT_INV_Qout[2]~reg0_q\ <= NOT \INTERFACE|D|ContadordoAtraso|IC_2|Qout[2]~reg0_q\;
\INTERFACE|D|ALT_INV_s_sinalAtraso~1_combout\ <= NOT \INTERFACE|D|s_sinalAtraso~1_combout\;
\INTERFACE|D|Converte|ALT_INV_bcds_out_reg\(7) <= NOT \INTERFACE|D|Converte|bcds_out_reg\(7);
\INTERFACE|D|ContadordoAtraso|IC_3|ALT_INV_Qout[3]~reg0_q\ <= NOT \INTERFACE|D|ContadordoAtraso|IC_3|Qout[3]~reg0_q\;
\INTERFACE|D|Converte|ALT_INV_bcds_out_reg\(6) <= NOT \INTERFACE|D|Converte|bcds_out_reg\(6);
\INTERFACE|D|ContadordoAtraso|IC_3|ALT_INV_Qout[2]~reg0_q\ <= NOT \INTERFACE|D|ContadordoAtraso|IC_3|Qout[2]~reg0_q\;
\INTERFACE|D|Converte|ALT_INV_bcds_out_reg\(5) <= NOT \INTERFACE|D|Converte|bcds_out_reg\(5);
\INTERFACE|D|ContadordoAtraso|IC_3|ALT_INV_Qout[1]~reg0_q\ <= NOT \INTERFACE|D|ContadordoAtraso|IC_3|Qout[1]~reg0_q\;
\INTERFACE|D|ALT_INV_s_sinalAtraso~0_combout\ <= NOT \INTERFACE|D|s_sinalAtraso~0_combout\;
\INTERFACE|D|Converte|ALT_INV_bcds_out_reg\(2) <= NOT \INTERFACE|D|Converte|bcds_out_reg\(2);
\INTERFACE|D|ContadordoAtraso|IC_4|ALT_INV_Qout[2]~reg0_q\ <= NOT \INTERFACE|D|ContadordoAtraso|IC_4|Qout[2]~reg0_q\;
\INTERFACE|D|Converte|ALT_INV_bcds_out_reg\(1) <= NOT \INTERFACE|D|Converte|bcds_out_reg\(1);
\INTERFACE|D|ContadordoAtraso|IC_4|ALT_INV_Qout[1]~reg0_q\ <= NOT \INTERFACE|D|ContadordoAtraso|IC_4|Qout[1]~reg0_q\;
\INTERFACE|D|Converte|ALT_INV_bcds_out_reg\(0) <= NOT \INTERFACE|D|Converte|bcds_out_reg\(0);
\INTERFACE|D|ContadordoAtraso|IC_4|ALT_INV_Qout[0]~reg0_q\ <= NOT \INTERFACE|D|ContadordoAtraso|IC_4|Qout[0]~reg0_q\;
\INTERFACE|D|C4|ALT_INV_Equal0~0_combout\ <= NOT \INTERFACE|D|C4|Equal0~0_combout\;
\INTERFACE|D|Converte|ALT_INV_bcds_out_reg\(3) <= NOT \INTERFACE|D|Converte|bcds_out_reg\(3);
\INTERFACE|D|ContadordoAtraso|IC_4|ALT_INV_Qout[3]~reg0_q\ <= NOT \INTERFACE|D|ContadordoAtraso|IC_4|Qout[3]~reg0_q\;
\INTERFACE|D|C|ALT_INV_Eatual.Contando~q\ <= NOT \INTERFACE|D|C|Eatual.Contando~q\;
\INTERFACE|ALT_INV_s_demorou~combout\ <= NOT \INTERFACE|s_demorou~combout\;
\INTERFACE|ALT_INV_s_demorou~2_combout\ <= NOT \INTERFACE|s_demorou~2_combout\;
\INTERFACE|ContaDemora|IC_4|ALT_INV_Qout[2]~reg0_q\ <= NOT \INTERFACE|ContaDemora|IC_4|Qout[2]~reg0_q\;
\INTERFACE|ContaDemora|IC_4|ALT_INV_Qout[1]~reg0_q\ <= NOT \INTERFACE|ContaDemora|IC_4|Qout[1]~reg0_q\;
\INTERFACE|ALT_INV_s_demorou~1_combout\ <= NOT \INTERFACE|s_demorou~1_combout\;
\INTERFACE|ContaDemora|IC_3|ALT_INV_Qout[2]~reg0_q\ <= NOT \INTERFACE|ContaDemora|IC_3|Qout[2]~reg0_q\;
\INTERFACE|ContaDemora|IC_3|ALT_INV_Qout[1]~reg0_q\ <= NOT \INTERFACE|ContaDemora|IC_3|Qout[1]~reg0_q\;
\INTERFACE|ContaDemora|IC_2|ALT_INV_Qout[2]~reg0_q\ <= NOT \INTERFACE|ContaDemora|IC_2|Qout[2]~reg0_q\;
\INTERFACE|ContaDemora|IC_2|ALT_INV_Qout[1]~reg0_q\ <= NOT \INTERFACE|ContaDemora|IC_2|Qout[1]~reg0_q\;
\INTERFACE|ContaDemora|IC_1|ALT_INV_Qout[2]~reg0_q\ <= NOT \INTERFACE|ContaDemora|IC_1|Qout[2]~reg0_q\;
\INTERFACE|ContaDemora|IC_1|ALT_INV_Qout[1]~reg0_q\ <= NOT \INTERFACE|ContaDemora|IC_1|Qout[1]~reg0_q\;
\INTERFACE|ALT_INV_s_demorou~0_combout\ <= NOT \INTERFACE|s_demorou~0_combout\;
\INTERFACE|ContaDemora|IC_4|ALT_INV_Qout[3]~reg0_q\ <= NOT \INTERFACE|ContaDemora|IC_4|Qout[3]~reg0_q\;
\INTERFACE|ContaDemora|IC_4|ALT_INV_Qout[0]~reg0_q\ <= NOT \INTERFACE|ContaDemora|IC_4|Qout[0]~reg0_q\;
\INTERFACE|ContaDemora|ALT_INV_ClrN3~0_combout\ <= NOT \INTERFACE|ContaDemora|ClrN3~0_combout\;
\INTERFACE|ContaDemora|IC_1|ALT_INV_Qout[3]~reg0_q\ <= NOT \INTERFACE|ContaDemora|IC_1|Qout[3]~reg0_q\;
\INTERFACE|ContaDemora|IC_1|ALT_INV_Qout[0]~reg0_q\ <= NOT \INTERFACE|ContaDemora|IC_1|Qout[0]~reg0_q\;
\INTERFACE|ContaDemora|IC_2|ALT_INV_Qout[3]~reg0_q\ <= NOT \INTERFACE|ContaDemora|IC_2|Qout[3]~reg0_q\;
\INTERFACE|ContaDemora|IC_2|ALT_INV_Qout[0]~reg0_q\ <= NOT \INTERFACE|ContaDemora|IC_2|Qout[0]~reg0_q\;
\INTERFACE|ContaDemora|IC_3|ALT_INV_Qout[3]~reg0_q\ <= NOT \INTERFACE|ContaDemora|IC_3|Qout[3]~reg0_q\;
\INTERFACE|ContaDemora|IC_3|ALT_INV_Qout[0]~reg0_q\ <= NOT \INTERFACE|ContaDemora|IC_3|Qout[0]~reg0_q\;
\INTERFACE|C|ALT_INV_WideNor2~0_combout\ <= NOT \INTERFACE|C|WideNor2~0_combout\;
\INTERFACE|C|ALT_INV_WideNor1~0_combout\ <= NOT \INTERFACE|C|WideNor1~0_combout\;
\INTERFACE|C|ALT_INV_Eatual.Afobado~q\ <= NOT \INTERFACE|C|Eatual.Afobado~q\;
\INTERFACE|C|ALT_INV_Eatual.Demorado~q\ <= NOT \INTERFACE|C|Eatual.Demorado~q\;
\INTERFACE|C|ALT_INV_Eatual.Respondeu~q\ <= NOT \INTERFACE|C|Eatual.Respondeu~q\;
\INTERFACE|C|ALT_INV_Eatual.Aguarda~q\ <= NOT \INTERFACE|C|Eatual.Aguarda~q\;
\INTERFACE|D|Converte|ALT_INV_binary\(0) <= NOT \INTERFACE|D|Converte|binary\(0);
\INTERFACE|D|Converte|ALT_INV_binary\(1) <= NOT \INTERFACE|D|Converte|binary\(1);
\INTERFACE|D|Converte|ALT_INV_binary\(2) <= NOT \INTERFACE|D|Converte|binary\(2);
\INTERFACE|D|Converte|ALT_INV_binary\(3) <= NOT \INTERFACE|D|Converte|binary\(3);
\INTERFACE|D|Converte|ALT_INV_binary\(4) <= NOT \INTERFACE|D|Converte|binary\(4);
\INTERFACE|D|Converte|ALT_INV_binary\(5) <= NOT \INTERFACE|D|Converte|binary\(5);
\INTERFACE|D|Converte|ALT_INV_binary\(6) <= NOT \INTERFACE|D|Converte|binary\(6);
\INTERFACE|D|Converte|ALT_INV_binary\(7) <= NOT \INTERFACE|D|Converte|binary\(7);
\INTERFACE|D|Converte|ALT_INV_binary\(8) <= NOT \INTERFACE|D|Converte|binary\(8);
\INTERFACE|D|Converte|ALT_INV_binary\(9) <= NOT \INTERFACE|D|Converte|binary\(9);
\INTERFACE|D|Converte|ALT_INV_binary\(10) <= NOT \INTERFACE|D|Converte|binary\(10);
\INTERFACE|D|Converte|ALT_INV_binary\(11) <= NOT \INTERFACE|D|Converte|binary\(11);
\INTERFACE|Medicao|R1|ALT_INV_IQ\(13) <= NOT \INTERFACE|Medicao|R1|IQ\(13);
\INTERFACE|Medicao|R1|ALT_INV_IQ\(6) <= NOT \INTERFACE|Medicao|R1|IQ\(6);
\INTERFACE|Medicao|R1|ALT_INV_IQ\(2) <= NOT \INTERFACE|Medicao|R1|IQ\(2);
\INTERFACE|D|Converte|ALT_INV_binary\(12) <= NOT \INTERFACE|D|Converte|binary\(12);
\INTERFACE|D|Converte|ALT_INV_binary\(13) <= NOT \INTERFACE|D|Converte|binary\(13);
\INTERFACE|R|ALT_INV_IQ\(14) <= NOT \INTERFACE|R|IQ\(14);
\INTERFACE|Medicao|M1|D1|IC_4|ALT_INV_Qout[3]~reg0DUPLICATE_q\ <= NOT \INTERFACE|Medicao|M1|D1|IC_4|Qout[3]~reg0DUPLICATE_q\;
\INTERFACE|Medicao|M1|D1|IC_3|ALT_INV_Qout[3]~reg0DUPLICATE_q\ <= NOT \INTERFACE|Medicao|M1|D1|IC_3|Qout[3]~reg0DUPLICATE_q\;
\INTERFACE|Medicao|M1|D1|IC_3|ALT_INV_Qout[0]~reg0DUPLICATE_q\ <= NOT \INTERFACE|Medicao|M1|D1|IC_3|Qout[0]~reg0DUPLICATE_q\;
\INTERFACE|Medicao|M1|D1|IC_2|ALT_INV_Qout[0]~reg0DUPLICATE_q\ <= NOT \INTERFACE|Medicao|M1|D1|IC_2|Qout[0]~reg0DUPLICATE_q\;
\INTERFACE|Medicao|M1|D1|IC_1|ALT_INV_Qout[1]~reg0DUPLICATE_q\ <= NOT \INTERFACE|Medicao|M1|D1|IC_1|Qout[1]~reg0DUPLICATE_q\;
\INTERFACE|Medicao|M1|D1|IC_1|ALT_INV_Qout[0]~reg0DUPLICATE_q\ <= NOT \INTERFACE|Medicao|M1|D1|IC_1|Qout[0]~reg0DUPLICATE_q\;
\INTERFACE|D|Converte|ALT_INV_shift_counter[1]~DUPLICATE_q\ <= NOT \INTERFACE|D|Converte|shift_counter[1]~DUPLICATE_q\;
\INTERFACE|D|Converte|ALT_INV_bcds[9]~DUPLICATE_q\ <= NOT \INTERFACE|D|Converte|bcds[9]~DUPLICATE_q\;
\INTERFACE|D|Converte|ALT_INV_bcds[8]~DUPLICATE_q\ <= NOT \INTERFACE|D|Converte|bcds[8]~DUPLICATE_q\;
\INTERFACE|D|Converte|ALT_INV_bcds[14]~DUPLICATE_q\ <= NOT \INTERFACE|D|Converte|bcds[14]~DUPLICATE_q\;
\INTERFACE|D|Converte|ALT_INV_bcds[4]~DUPLICATE_q\ <= NOT \INTERFACE|D|Converte|bcds[4]~DUPLICATE_q\;
\INTERFACE|D|Converte|ALT_INV_bcds[11]~DUPLICATE_q\ <= NOT \INTERFACE|D|Converte|bcds[11]~DUPLICATE_q\;
\INTERFACE|D|Converte|ALT_INV_bcds[7]~DUPLICATE_q\ <= NOT \INTERFACE|D|Converte|bcds[7]~DUPLICATE_q\;
\INTERFACE|D|Converte|ALT_INV_bcds[6]~DUPLICATE_q\ <= NOT \INTERFACE|D|Converte|bcds[6]~DUPLICATE_q\;
\INTERFACE|D|Converte|ALT_INV_bcds[5]~DUPLICATE_q\ <= NOT \INTERFACE|D|Converte|bcds[5]~DUPLICATE_q\;
\INTERFACE|D|Converte|ALT_INV_bcds[2]~DUPLICATE_q\ <= NOT \INTERFACE|D|Converte|bcds[2]~DUPLICATE_q\;
\INTERFACE|D|Converte|ALT_INV_bcds[0]~DUPLICATE_q\ <= NOT \INTERFACE|D|Converte|bcds[0]~DUPLICATE_q\;
\INTERFACE|D|Converte|ALT_INV_bcds[3]~DUPLICATE_q\ <= NOT \INTERFACE|D|Converte|bcds[3]~DUPLICATE_q\;
\INTERFACE|D|C|ALT_INV_Eatual.Conversao~DUPLICATE_q\ <= NOT \INTERFACE|D|C|Eatual.Conversao~DUPLICATE_q\;
\INTERFACE|D|C|ALT_INV_Eatual.Contando~DUPLICATE_q\ <= NOT \INTERFACE|D|C|Eatual.Contando~DUPLICATE_q\;
\ALT_INV_rodada~input_o\ <= NOT \rodada~input_o\;
\ALT_INV_finalizaRodada~input_o\ <= NOT \finalizaRodada~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_resposta~input_o\ <= NOT \resposta~input_o\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[14]~61_combout\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[14]~61_combout\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[15]~57_combout\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[15]~57_combout\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[0]~53_combout\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[0]~53_combout\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[1]~49_combout\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[1]~49_combout\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[2]~45_combout\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[2]~45_combout\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[3]~41_combout\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[3]~41_combout\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[4]~37_combout\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[4]~37_combout\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[5]~33_combout\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[5]~33_combout\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[6]~29_combout\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[6]~29_combout\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[7]~25_combout\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[7]~25_combout\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[8]~21_combout\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[8]~21_combout\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[9]~17_combout\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[9]~17_combout\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[10]~13_combout\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[10]~13_combout\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[11]~9_combout\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[11]~9_combout\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[12]~5_combout\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[12]~5_combout\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[13]~1_combout\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[13]~1_combout\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[14]~62_combout\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[14]~62_combout\;
\INTERFACE|D|Registrador|ALT_INV_Q\(14) <= NOT \INTERFACE|D|Registrador|Q\(14);
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[14]~_emulated_q\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[14]~_emulated_q\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[15]~58_combout\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[15]~58_combout\;
\INTERFACE|D|Registrador|ALT_INV_Q\(15) <= NOT \INTERFACE|D|Registrador|Q\(15);
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[15]~_emulated_q\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[15]~_emulated_q\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[0]~54_combout\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[0]~54_combout\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[0]~_emulated_q\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[0]~_emulated_q\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[1]~50_combout\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[1]~50_combout\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[1]~_emulated_q\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[1]~_emulated_q\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[2]~46_combout\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[2]~46_combout\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[2]~_emulated_q\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[2]~_emulated_q\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[3]~42_combout\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[3]~42_combout\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[3]~_emulated_q\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[3]~_emulated_q\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[4]~38_combout\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[4]~38_combout\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[4]~_emulated_q\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[4]~_emulated_q\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[5]~34_combout\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[5]~34_combout\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[5]~_emulated_q\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[5]~_emulated_q\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[6]~30_combout\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[6]~30_combout\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[6]~_emulated_q\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[6]~_emulated_q\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[7]~26_combout\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[7]~26_combout\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[7]~_emulated_q\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[7]~_emulated_q\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[8]~22_combout\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[8]~22_combout\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[8]~_emulated_q\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[8]~_emulated_q\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[9]~18_combout\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[9]~18_combout\;
\INTERFACE|D|PSEUDORANDOM|ALT_INV_count[9]~_emulated_q\ <= NOT \INTERFACE|D|PSEUDORANDOM|count[9]~_emulated_q\;

-- Location: IOOBUF_X52_Y0_N53
\contaAtraso~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_contaAtraso);

-- Location: IOOBUF_X89_Y9_N22
\aguardando~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \INTERFACE|C|Eatual.Aguarda~q\,
	devoe => ww_devoe,
	o => ww_aguardando);

-- Location: IOOBUF_X89_Y35_N79
\fimRodada~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \INTERFACE|C|ALT_INV_WideNor1~0_combout\,
	devoe => ww_devoe,
	o => ww_fimRodada);

-- Location: IOOBUF_X89_Y8_N22
\erro~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \INTERFACE|C|ALT_INV_WideNor2~0_combout\,
	devoe => ww_devoe,
	o => ww_erro);

-- Location: IOOBUF_X82_Y81_N42
\demora~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \INTERFACE|s_demorou~combout\,
	devoe => ww_devoe,
	o => ww_demora);

-- Location: IOOBUF_X89_Y6_N39
\MostraSinalAtraso~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \INTERFACE|D|s_sinalAtraso~6_combout\,
	devoe => ww_devoe,
	o => ww_MostraSinalAtraso);

-- Location: IOOBUF_X89_Y9_N5
\MostraContaAtraso~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \INTERFACE|C|Eatual.Atraso~q\,
	devoe => ww_devoe,
	o => ww_MostraContaAtraso);

-- Location: IOOBUF_X89_Y8_N5
\fimHierarquico~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \INTERFACE|Medicao|C1|Ereg.espera~q\,
	devoe => ww_devoe,
	o => ww_fimHierarquico);

-- Location: IOOBUF_X89_Y8_N56
\estadoRodada[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \INTERFACE|C|ALT_INV_WideOr7~combout\,
	devoe => ww_devoe,
	o => ww_estadoRodada(0));

-- Location: IOOBUF_X89_Y6_N56
\estadoRodada[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \INTERFACE|C|WideOr6~combout\,
	devoe => ww_devoe,
	o => ww_estadoRodada(1));

-- Location: IOOBUF_X89_Y36_N22
\estadoRodada[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \INTERFACE|C|ALT_INV_WideOr5~0_combout\,
	devoe => ww_devoe,
	o => ww_estadoRodada(2));

-- Location: IOOBUF_X58_Y0_N59
\estadoRodada[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_estadoRodada(3));

-- Location: IOOBUF_X89_Y9_N39
\estadoAtrasador[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \INTERFACE|D|C|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => ww_estadoAtrasador(0));

-- Location: IOOBUF_X89_Y9_N56
\estadoAtrasador[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \INTERFACE|D|C|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => ww_estadoAtrasador(1));

-- Location: IOOBUF_X89_Y6_N5
\estadoAtrasador[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \INTERFACE|D|C|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => ww_estadoAtrasador(2));

-- Location: IOOBUF_X40_Y0_N53
\estadoAtrasador[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_estadoAtrasador(3));

-- Location: IOOBUF_X89_Y37_N39
\pulso[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \INTERFACE|R|Q\(0),
	devoe => ww_devoe,
	o => ww_pulso(0));

-- Location: IOOBUF_X89_Y36_N39
\pulso[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \INTERFACE|R|Q\(1),
	devoe => ww_devoe,
	o => ww_pulso(1));

-- Location: IOOBUF_X89_Y37_N22
\pulso[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \INTERFACE|R|Q\(2),
	devoe => ww_devoe,
	o => ww_pulso(2));

-- Location: IOOBUF_X89_Y38_N22
\pulso[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \INTERFACE|R|Q\(3),
	devoe => ww_devoe,
	o => ww_pulso(3));

-- Location: IOOBUF_X89_Y38_N39
\pulso[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \INTERFACE|R|Q\(4),
	devoe => ww_devoe,
	o => ww_pulso(4));

-- Location: IOOBUF_X72_Y0_N53
\pulso[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \INTERFACE|R|Q\(5),
	devoe => ww_devoe,
	o => ww_pulso(5));

-- Location: IOOBUF_X89_Y37_N56
\pulso[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \INTERFACE|R|Q\(6),
	devoe => ww_devoe,
	o => ww_pulso(6));

-- Location: IOOBUF_X89_Y36_N56
\pulso[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \INTERFACE|R|Q\(7),
	devoe => ww_devoe,
	o => ww_pulso(7));

-- Location: IOOBUF_X89_Y35_N45
\pulso[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \INTERFACE|R|Q\(8),
	devoe => ww_devoe,
	o => ww_pulso(8));

-- Location: IOOBUF_X89_Y37_N5
\pulso[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \INTERFACE|R|Q\(9),
	devoe => ww_devoe,
	o => ww_pulso(9));

-- Location: IOOBUF_X72_Y0_N19
\pulso[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \INTERFACE|R|Q\(10),
	devoe => ww_devoe,
	o => ww_pulso(10));

-- Location: IOOBUF_X89_Y36_N5
\pulso[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \INTERFACE|R|Q\(11),
	devoe => ww_devoe,
	o => ww_pulso(11));

-- Location: IOOBUF_X89_Y38_N56
\pulso[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \INTERFACE|R|Q\(12),
	devoe => ww_devoe,
	o => ww_pulso(12));

-- Location: IOOBUF_X89_Y4_N79
\pulso[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \INTERFACE|R|Q\(13),
	devoe => ww_devoe,
	o => ww_pulso(13));

-- Location: IOOBUF_X89_Y38_N5
\pulso[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \INTERFACE|R|Q\(14),
	devoe => ww_devoe,
	o => ww_pulso(14));

-- Location: IOOBUF_X84_Y81_N53
\pulso[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \INTERFACE|R|Q\(15),
	devoe => ww_devoe,
	o => ww_pulso(15));

-- Location: IOOBUF_X40_Y0_N36
\saida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_saida(0));

-- Location: IOOBUF_X32_Y81_N19
\saida[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_saida(1));

-- Location: IOOBUF_X84_Y81_N2
\saida[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida(2));

-- Location: IOOBUF_X58_Y0_N42
\saida[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida(3));

-- Location: IOOBUF_X68_Y81_N53
\saida[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida(4));

-- Location: IOOBUF_X70_Y0_N19
\saida[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida(5));

-- Location: IOOBUF_X52_Y0_N19
\saida[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida(6));

-- Location: IOOBUF_X70_Y81_N36
\saida[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida(7));

-- Location: IOOBUF_X6_Y0_N19
\saida[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida(8));

-- Location: IOOBUF_X52_Y0_N36
\saida[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida(9));

-- Location: IOOBUF_X64_Y81_N2
\saida[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida(10));

-- Location: IOOBUF_X88_Y81_N20
\saida[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida(11));

-- Location: IOOBUF_X66_Y81_N59
\saida[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida(12));

-- Location: IOOBUF_X26_Y0_N42
\saida[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida(13));

-- Location: IOOBUF_X34_Y81_N59
\saida[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida(14));

-- Location: IOOBUF_X34_Y81_N93
\saida[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida(15));

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

-- Location: IOIBUF_X89_Y4_N61
\resposta~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resposta,
	o => \resposta~input_o\);

-- Location: IOIBUF_X89_Y8_N38
\finalizaRodada~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_finalizaRodada,
	o => \finalizaRodada~input_o\);

-- Location: MLABCELL_X82_Y22_N18
\INTERFACE|C|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|C|Selector5~0_combout\ = ( \INTERFACE|C|Eatual.Atraso~q\ & ( \resposta~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_resposta~input_o\,
	dataf => \INTERFACE|C|ALT_INV_Eatual.Atraso~q\,
	combout => \INTERFACE|C|Selector5~0_combout\);

-- Location: MLABCELL_X82_Y21_N21
\INTERFACE|D|ContadordoAtraso|IC_1|Qout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordoAtraso|IC_1|Qout~1_combout\ = ( !\INTERFACE|D|ContadordoAtraso|IC_1|Qout[1]~reg0_q\ & ( \INTERFACE|D|ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & ( (!\INTERFACE|D|ContadordoAtraso|IC_1|Qout[3]~reg0_q\ & !\INTERFACE|D|comb~0_combout\) ) ) 
-- ) # ( \INTERFACE|D|ContadordoAtraso|IC_1|Qout[1]~reg0_q\ & ( !\INTERFACE|D|ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & ( !\INTERFACE|D|comb~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110010001000100010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ContadordoAtraso|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datab => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datae => \INTERFACE|D|ContadordoAtraso|IC_1|ALT_INV_Qout[1]~reg0_q\,
	dataf => \INTERFACE|D|ContadordoAtraso|IC_1|ALT_INV_Qout[0]~reg0_q\,
	combout => \INTERFACE|D|ContadordoAtraso|IC_1|Qout~1_combout\);

-- Location: MLABCELL_X82_Y21_N51
\INTERFACE|D|ContadordoAtraso|IC_1|Qout[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordoAtraso|IC_1|Qout[2]~2_combout\ = ( \INTERFACE|D|C|Eatual.Contando~DUPLICATE_q\ & ( \INTERFACE|D|comb~0_combout\ ) ) # ( !\INTERFACE|D|C|Eatual.Contando~DUPLICATE_q\ & ( \INTERFACE|D|comb~0_combout\ ) ) # ( 
-- \INTERFACE|D|C|Eatual.Contando~DUPLICATE_q\ & ( !\INTERFACE|D|comb~0_combout\ ) ) # ( !\INTERFACE|D|C|Eatual.Contando~DUPLICATE_q\ & ( !\INTERFACE|D|comb~0_combout\ & ( (\INTERFACE|D|ContadordoAtraso|IC_1|Qout[3]~reg0_q\ & 
-- \INTERFACE|D|ContadordoAtraso|IC_1|Qout[0]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ContadordoAtraso|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datad => \INTERFACE|D|ContadordoAtraso|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datae => \INTERFACE|D|C|ALT_INV_Eatual.Contando~DUPLICATE_q\,
	dataf => \INTERFACE|D|ALT_INV_comb~0_combout\,
	combout => \INTERFACE|D|ContadordoAtraso|IC_1|Qout[2]~2_combout\);

-- Location: FF_X82_Y21_N23
\INTERFACE|D|ContadordoAtraso|IC_1|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ContadordoAtraso|IC_1|Qout~1_combout\,
	ena => \INTERFACE|D|ContadordoAtraso|IC_1|Qout[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ContadordoAtraso|IC_1|Qout[1]~reg0_q\);

-- Location: MLABCELL_X82_Y21_N24
\INTERFACE|D|ContadordoAtraso|IC_1|Qout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordoAtraso|IC_1|Qout~3_combout\ = ( \INTERFACE|D|ContadordoAtraso|IC_1|Qout[2]~reg0_q\ & ( \INTERFACE|D|ContadordoAtraso|IC_1|Qout[1]~reg0_q\ & ( (!\INTERFACE|D|ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & !\INTERFACE|D|comb~0_combout\) ) ) 
-- ) # ( !\INTERFACE|D|ContadordoAtraso|IC_1|Qout[2]~reg0_q\ & ( \INTERFACE|D|ContadordoAtraso|IC_1|Qout[1]~reg0_q\ & ( (\INTERFACE|D|ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & (!\INTERFACE|D|comb~0_combout\ & 
-- !\INTERFACE|D|ContadordoAtraso|IC_1|Qout[3]~reg0_q\)) ) ) ) # ( \INTERFACE|D|ContadordoAtraso|IC_1|Qout[2]~reg0_q\ & ( !\INTERFACE|D|ContadordoAtraso|IC_1|Qout[1]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & 
-- ((!\INTERFACE|D|ContadordoAtraso|IC_1|Qout[0]~reg0_q\) # (!\INTERFACE|D|ContadordoAtraso|IC_1|Qout[3]~reg0_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010001100100001000000010000001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ContadordoAtraso|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datab => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datac => \INTERFACE|D|ContadordoAtraso|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datae => \INTERFACE|D|ContadordoAtraso|IC_1|ALT_INV_Qout[2]~reg0_q\,
	dataf => \INTERFACE|D|ContadordoAtraso|IC_1|ALT_INV_Qout[1]~reg0_q\,
	combout => \INTERFACE|D|ContadordoAtraso|IC_1|Qout~3_combout\);

-- Location: FF_X82_Y21_N26
\INTERFACE|D|ContadordoAtraso|IC_1|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ContadordoAtraso|IC_1|Qout~3_combout\,
	ena => \INTERFACE|D|ContadordoAtraso|IC_1|Qout[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ContadordoAtraso|IC_1|Qout[2]~reg0_q\);

-- Location: LABCELL_X81_Y22_N18
\INTERFACE|D|ContadordoAtraso|IC_1|Qout[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordoAtraso|IC_1|Qout[3]~4_combout\ = ( \INTERFACE|D|ContadordoAtraso|IC_1|Qout[3]~reg0_q\ & ( \INTERFACE|D|C|Eatual.Contando~DUPLICATE_q\ & ( (!\INTERFACE|D|comb~0_combout\ & !\INTERFACE|D|ContadordoAtraso|IC_1|Qout[0]~reg0_q\) ) ) ) # 
-- ( !\INTERFACE|D|ContadordoAtraso|IC_1|Qout[3]~reg0_q\ & ( \INTERFACE|D|C|Eatual.Contando~DUPLICATE_q\ & ( (\INTERFACE|D|ContadordoAtraso|IC_1|Qout[2]~reg0_q\ & (!\INTERFACE|D|comb~0_combout\ & (\INTERFACE|D|ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & 
-- \INTERFACE|D|ContadordoAtraso|IC_1|Qout[1]~reg0_q\))) ) ) ) # ( \INTERFACE|D|ContadordoAtraso|IC_1|Qout[3]~reg0_q\ & ( !\INTERFACE|D|C|Eatual.Contando~DUPLICATE_q\ & ( (!\INTERFACE|D|comb~0_combout\ & !\INTERFACE|D|ContadordoAtraso|IC_1|Qout[0]~reg0_q\) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000000000000000001001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ContadordoAtraso|IC_1|ALT_INV_Qout[2]~reg0_q\,
	datab => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datac => \INTERFACE|D|ContadordoAtraso|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datad => \INTERFACE|D|ContadordoAtraso|IC_1|ALT_INV_Qout[1]~reg0_q\,
	datae => \INTERFACE|D|ContadordoAtraso|IC_1|ALT_INV_Qout[3]~reg0_q\,
	dataf => \INTERFACE|D|C|ALT_INV_Eatual.Contando~DUPLICATE_q\,
	combout => \INTERFACE|D|ContadordoAtraso|IC_1|Qout[3]~4_combout\);

-- Location: FF_X81_Y22_N20
\INTERFACE|D|ContadordoAtraso|IC_1|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ContadordoAtraso|IC_1|Qout[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ContadordoAtraso|IC_1|Qout[3]~reg0_q\);

-- Location: LABCELL_X81_Y22_N51
\INTERFACE|D|ContadordoAtraso|IC_1|Qout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordoAtraso|IC_1|Qout[0]~0_combout\ = ( !\INTERFACE|D|comb~0_combout\ & ( (!\INTERFACE|D|C|Eatual.Contando~DUPLICATE_q\ & (!\INTERFACE|D|ContadordoAtraso|IC_1|Qout[3]~reg0_q\ & \INTERFACE|D|ContadordoAtraso|IC_1|Qout[0]~reg0_q\)) # 
-- (\INTERFACE|D|C|Eatual.Contando~DUPLICATE_q\ & ((!\INTERFACE|D|ContadordoAtraso|IC_1|Qout[0]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111000000001100111100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|D|C|ALT_INV_Eatual.Contando~DUPLICATE_q\,
	datac => \INTERFACE|D|ContadordoAtraso|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datad => \INTERFACE|D|ContadordoAtraso|IC_1|ALT_INV_Qout[0]~reg0_q\,
	dataf => \INTERFACE|D|ALT_INV_comb~0_combout\,
	combout => \INTERFACE|D|ContadordoAtraso|IC_1|Qout[0]~0_combout\);

-- Location: FF_X81_Y22_N23
\INTERFACE|D|ContadordoAtraso|IC_1|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|ContadordoAtraso|IC_1|Qout[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ContadordoAtraso|IC_1|Qout[0]~reg0_q\);

-- Location: LABCELL_X81_Y22_N48
\INTERFACE|D|ContadordoAtraso|IC_2|Qout[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordoAtraso|IC_2|Qout[3]~1_combout\ = ( \INTERFACE|D|C|Eatual.Contando~DUPLICATE_q\ & ( (\INTERFACE|D|ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & \INTERFACE|D|ContadordoAtraso|IC_1|Qout[3]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ContadordoAtraso|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datac => \INTERFACE|D|ContadordoAtraso|IC_1|ALT_INV_Qout[3]~reg0_q\,
	dataf => \INTERFACE|D|C|ALT_INV_Eatual.Contando~DUPLICATE_q\,
	combout => \INTERFACE|D|ContadordoAtraso|IC_2|Qout[3]~1_combout\);

-- Location: LABCELL_X81_Y22_N12
\INTERFACE|D|ContadordoAtraso|IC_2|Qout[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordoAtraso|IC_2|Qout[0]~4_combout\ = ( \INTERFACE|D|ContadordoAtraso|IC_2|Qout[3]~1_combout\ & ( (!\INTERFACE|D|comb~0_combout\ & !\INTERFACE|D|ContadordoAtraso|IC_2|Qout[0]~reg0_q\) ) ) # ( 
-- !\INTERFACE|D|ContadordoAtraso|IC_2|Qout[3]~1_combout\ & ( (!\INTERFACE|D|comb~0_combout\ & (!\INTERFACE|D|ContadordoAtraso|ClrN2~0_combout\ $ (!\INTERFACE|D|ContadordoAtraso|IC_2|Qout[0]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000010101010000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datac => \INTERFACE|D|ContadordoAtraso|ALT_INV_ClrN2~0_combout\,
	datad => \INTERFACE|D|ContadordoAtraso|IC_2|ALT_INV_Qout[0]~reg0_q\,
	dataf => \INTERFACE|D|ContadordoAtraso|IC_2|ALT_INV_Qout[3]~1_combout\,
	combout => \INTERFACE|D|ContadordoAtraso|IC_2|Qout[0]~4_combout\);

-- Location: FF_X81_Y22_N14
\INTERFACE|D|ContadordoAtraso|IC_2|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ContadordoAtraso|IC_2|Qout[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ContadordoAtraso|IC_2|Qout[0]~reg0_q\);

-- Location: LABCELL_X81_Y22_N30
\INTERFACE|D|ContadordoAtraso|ClrN2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordoAtraso|ClrN2~0_combout\ = ( \INTERFACE|D|ContadordoAtraso|IC_2|Qout[0]~reg0_q\ & ( (\INTERFACE|D|ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & (\INTERFACE|D|ContadordoAtraso|IC_1|Qout[3]~reg0_q\ & 
-- \INTERFACE|D|ContadordoAtraso|IC_2|Qout[3]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ContadordoAtraso|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datac => \INTERFACE|D|ContadordoAtraso|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datad => \INTERFACE|D|ContadordoAtraso|IC_2|ALT_INV_Qout[3]~reg0_q\,
	dataf => \INTERFACE|D|ContadordoAtraso|IC_2|ALT_INV_Qout[0]~reg0_q\,
	combout => \INTERFACE|D|ContadordoAtraso|ClrN2~0_combout\);

-- Location: LABCELL_X81_Y23_N57
\INTERFACE|D|ContadordoAtraso|IC_2|Qout~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordoAtraso|IC_2|Qout~5_combout\ = ( !\INTERFACE|D|ContadordoAtraso|ClrN2~0_combout\ & ( (!\INTERFACE|D|comb~0_combout\ & (!\INTERFACE|D|ContadordoAtraso|IC_2|Qout[0]~reg0_q\ $ (!\INTERFACE|D|ContadordoAtraso|IC_2|Qout[1]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000000011001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datac => \INTERFACE|D|ContadordoAtraso|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datad => \INTERFACE|D|ContadordoAtraso|IC_2|ALT_INV_Qout[1]~reg0_q\,
	dataf => \INTERFACE|D|ContadordoAtraso|ALT_INV_ClrN2~0_combout\,
	combout => \INTERFACE|D|ContadordoAtraso|IC_2|Qout~5_combout\);

-- Location: LABCELL_X81_Y23_N54
\INTERFACE|D|ContadordoAtraso|IC_2|Qout[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordoAtraso|IC_2|Qout[3]~2_combout\ = ( \INTERFACE|D|comb~0_combout\ ) # ( !\INTERFACE|D|comb~0_combout\ & ( (\INTERFACE|D|ContadordoAtraso|IC_2|Qout[3]~1_combout\) # (\INTERFACE|D|ContadordoAtraso|ClrN2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|D|ContadordoAtraso|ALT_INV_ClrN2~0_combout\,
	datad => \INTERFACE|D|ContadordoAtraso|IC_2|ALT_INV_Qout[3]~1_combout\,
	dataf => \INTERFACE|D|ALT_INV_comb~0_combout\,
	combout => \INTERFACE|D|ContadordoAtraso|IC_2|Qout[3]~2_combout\);

-- Location: FF_X81_Y23_N59
\INTERFACE|D|ContadordoAtraso|IC_2|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ContadordoAtraso|IC_2|Qout~5_combout\,
	ena => \INTERFACE|D|ContadordoAtraso|IC_2|Qout[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ContadordoAtraso|IC_2|Qout[1]~reg0_q\);

-- Location: LABCELL_X81_Y23_N6
\INTERFACE|D|ContadordoAtraso|IC_2|Qout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordoAtraso|IC_2|Qout~0_combout\ = ( \INTERFACE|D|ContadordoAtraso|IC_2|Qout[1]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & (!\INTERFACE|D|ContadordoAtraso|ClrN2~0_combout\ & (!\INTERFACE|D|ContadordoAtraso|IC_2|Qout[0]~reg0_q\ $ 
-- (!\INTERFACE|D|ContadordoAtraso|IC_2|Qout[2]~reg0_q\)))) ) ) # ( !\INTERFACE|D|ContadordoAtraso|IC_2|Qout[1]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & (!\INTERFACE|D|ContadordoAtraso|ClrN2~0_combout\ & 
-- \INTERFACE|D|ContadordoAtraso|IC_2|Qout[2]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000001000000100000000100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ContadordoAtraso|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datab => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datac => \INTERFACE|D|ContadordoAtraso|ALT_INV_ClrN2~0_combout\,
	datad => \INTERFACE|D|ContadordoAtraso|IC_2|ALT_INV_Qout[2]~reg0_q\,
	dataf => \INTERFACE|D|ContadordoAtraso|IC_2|ALT_INV_Qout[1]~reg0_q\,
	combout => \INTERFACE|D|ContadordoAtraso|IC_2|Qout~0_combout\);

-- Location: FF_X81_Y23_N8
\INTERFACE|D|ContadordoAtraso|IC_2|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ContadordoAtraso|IC_2|Qout~0_combout\,
	ena => \INTERFACE|D|ContadordoAtraso|IC_2|Qout[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ContadordoAtraso|IC_2|Qout[2]~reg0_q\);

-- Location: LABCELL_X81_Y23_N9
\INTERFACE|D|ContadordoAtraso|IC_2|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordoAtraso|IC_2|Add0~0_combout\ = ( \INTERFACE|D|ContadordoAtraso|IC_2|Qout[2]~reg0_q\ & ( (\INTERFACE|D|ContadordoAtraso|IC_2|Qout[1]~reg0_q\ & \INTERFACE|D|ContadordoAtraso|IC_2|Qout[0]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|D|ContadordoAtraso|IC_2|ALT_INV_Qout[1]~reg0_q\,
	datad => \INTERFACE|D|ContadordoAtraso|IC_2|ALT_INV_Qout[0]~reg0_q\,
	dataf => \INTERFACE|D|ContadordoAtraso|IC_2|ALT_INV_Qout[2]~reg0_q\,
	combout => \INTERFACE|D|ContadordoAtraso|IC_2|Add0~0_combout\);

-- Location: LABCELL_X81_Y22_N0
\INTERFACE|D|ContadordoAtraso|IC_2|Qout[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordoAtraso|IC_2|Qout[3]~3_combout\ = ( \INTERFACE|D|ContadordoAtraso|IC_2|Qout[3]~1_combout\ & ( (!\INTERFACE|D|comb~0_combout\ & (!\INTERFACE|D|ContadordoAtraso|ClrN2~0_combout\ & (!\INTERFACE|D|ContadordoAtraso|IC_2|Add0~0_combout\ $ 
-- (!\INTERFACE|D|ContadordoAtraso|IC_2|Qout[3]~reg0_q\)))) ) ) # ( !\INTERFACE|D|ContadordoAtraso|IC_2|Qout[3]~1_combout\ & ( (!\INTERFACE|D|comb~0_combout\ & (!\INTERFACE|D|ContadordoAtraso|ClrN2~0_combout\ & 
-- \INTERFACE|D|ContadordoAtraso|IC_2|Qout[3]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000001000100000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datab => \INTERFACE|D|ContadordoAtraso|ALT_INV_ClrN2~0_combout\,
	datac => \INTERFACE|D|ContadordoAtraso|IC_2|ALT_INV_Add0~0_combout\,
	datad => \INTERFACE|D|ContadordoAtraso|IC_2|ALT_INV_Qout[3]~reg0_q\,
	dataf => \INTERFACE|D|ContadordoAtraso|IC_2|ALT_INV_Qout[3]~1_combout\,
	combout => \INTERFACE|D|ContadordoAtraso|IC_2|Qout[3]~3_combout\);

-- Location: FF_X81_Y22_N2
\INTERFACE|D|ContadordoAtraso|IC_2|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ContadordoAtraso|IC_2|Qout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ContadordoAtraso|IC_2|Qout[3]~reg0_q\);

-- Location: LABCELL_X83_Y21_N12
\INTERFACE|D|Converte|Selector35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|Selector35~0_combout\ = ( \INTERFACE|D|Converte|Selector1~0_combout\ & ( (!\INTERFACE|D|Converte|shift_counter\(0)) # (\INTERFACE|D|Converte|state.done~q\) ) ) # ( !\INTERFACE|D|Converte|Selector1~0_combout\ & ( 
-- (\INTERFACE|D|Converte|state.done~q\ & \INTERFACE|D|Converte|shift_counter\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|D|Converte|ALT_INV_state.done~q\,
	datad => \INTERFACE|D|Converte|ALT_INV_shift_counter\(0),
	dataf => \INTERFACE|D|Converte|ALT_INV_Selector1~0_combout\,
	combout => \INTERFACE|D|Converte|Selector35~0_combout\);

-- Location: FF_X83_Y21_N14
\INTERFACE|D|Converte|shift_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|Selector35~0_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|shift_counter\(0));

-- Location: FF_X83_Y21_N58
\INTERFACE|D|Converte|shift_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|Selector34~0_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|shift_counter\(1));

-- Location: LABCELL_X83_Y21_N57
\INTERFACE|D|Converte|Selector34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|Selector34~0_combout\ = ( \INTERFACE|D|Converte|state.done~q\ & ( ((\INTERFACE|D|Converte|state.shift~q\ & \INTERFACE|D|Converte|shift_counter\(0))) # (\INTERFACE|D|Converte|shift_counter\(1)) ) ) # ( 
-- !\INTERFACE|D|Converte|state.done~q\ & ( (\INTERFACE|D|Converte|state.shift~q\ & (!\INTERFACE|D|Converte|shift_counter\(0) $ (!\INTERFACE|D|Converte|shift_counter\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010000010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|Converte|ALT_INV_state.shift~q\,
	datab => \INTERFACE|D|Converte|ALT_INV_shift_counter\(0),
	datad => \INTERFACE|D|Converte|ALT_INV_shift_counter\(1),
	dataf => \INTERFACE|D|Converte|ALT_INV_state.done~q\,
	combout => \INTERFACE|D|Converte|Selector34~0_combout\);

-- Location: FF_X83_Y21_N59
\INTERFACE|D|Converte|shift_counter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|Selector34~0_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|shift_counter[1]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y21_N15
\INTERFACE|D|Converte|Selector33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|Selector33~0_combout\ = ( \INTERFACE|D|Converte|shift_counter\(0) & ( (!\INTERFACE|D|Converte|shift_counter\(2) & (((\INTERFACE|D|Converte|state.shift~q\ & \INTERFACE|D|Converte|shift_counter[1]~DUPLICATE_q\)))) # 
-- (\INTERFACE|D|Converte|shift_counter\(2) & (((\INTERFACE|D|Converte|state.shift~q\ & !\INTERFACE|D|Converte|shift_counter[1]~DUPLICATE_q\)) # (\INTERFACE|D|Converte|state.done~q\))) ) ) # ( !\INTERFACE|D|Converte|shift_counter\(0) & ( 
-- (\INTERFACE|D|Converte|shift_counter\(2) & ((\INTERFACE|D|Converte|state.shift~q\) # (\INTERFACE|D|Converte|state.done~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011100000011011101010000001101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|Converte|ALT_INV_state.done~q\,
	datab => \INTERFACE|D|Converte|ALT_INV_state.shift~q\,
	datac => \INTERFACE|D|Converte|ALT_INV_shift_counter[1]~DUPLICATE_q\,
	datad => \INTERFACE|D|Converte|ALT_INV_shift_counter\(2),
	dataf => \INTERFACE|D|Converte|ALT_INV_shift_counter\(0),
	combout => \INTERFACE|D|Converte|Selector33~0_combout\);

-- Location: FF_X83_Y21_N17
\INTERFACE|D|Converte|shift_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|Selector33~0_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|shift_counter\(2));

-- Location: LABCELL_X83_Y21_N18
\INTERFACE|D|Converte|Selector32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|Selector32~0_combout\ = ( \INTERFACE|D|Converte|shift_counter\(3) & ( \INTERFACE|D|Converte|shift_counter\(1) & ( ((\INTERFACE|D|Converte|state.shift~q\ & ((!\INTERFACE|D|Converte|shift_counter\(0)) # 
-- (!\INTERFACE|D|Converte|shift_counter\(2))))) # (\INTERFACE|D|Converte|state.done~q\) ) ) ) # ( !\INTERFACE|D|Converte|shift_counter\(3) & ( \INTERFACE|D|Converte|shift_counter\(1) & ( (\INTERFACE|D|Converte|state.shift~q\ & 
-- (\INTERFACE|D|Converte|shift_counter\(0) & \INTERFACE|D|Converte|shift_counter\(2))) ) ) ) # ( \INTERFACE|D|Converte|shift_counter\(3) & ( !\INTERFACE|D|Converte|shift_counter\(1) & ( (\INTERFACE|D|Converte|state.done~q\) # 
-- (\INTERFACE|D|Converte|state.shift~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111110101111100000000000100010101111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|Converte|ALT_INV_state.shift~q\,
	datab => \INTERFACE|D|Converte|ALT_INV_shift_counter\(0),
	datac => \INTERFACE|D|Converte|ALT_INV_state.done~q\,
	datad => \INTERFACE|D|Converte|ALT_INV_shift_counter\(2),
	datae => \INTERFACE|D|Converte|ALT_INV_shift_counter\(3),
	dataf => \INTERFACE|D|Converte|ALT_INV_shift_counter\(1),
	combout => \INTERFACE|D|Converte|Selector32~0_combout\);

-- Location: FF_X83_Y21_N20
\INTERFACE|D|Converte|shift_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|Selector32~0_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|shift_counter\(3));

-- Location: LABCELL_X83_Y21_N54
\INTERFACE|D|Converte|state_next.done~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|state_next.done~0_combout\ = ( \INTERFACE|D|Converte|shift_counter\(2) & ( (\INTERFACE|D|Converte|state.shift~q\ & (!\INTERFACE|D|Converte|shift_counter\(0) & (\INTERFACE|D|Converte|shift_counter\(3) & 
-- \INTERFACE|D|Converte|shift_counter[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|Converte|ALT_INV_state.shift~q\,
	datab => \INTERFACE|D|Converte|ALT_INV_shift_counter\(0),
	datac => \INTERFACE|D|Converte|ALT_INV_shift_counter\(3),
	datad => \INTERFACE|D|Converte|ALT_INV_shift_counter[1]~DUPLICATE_q\,
	dataf => \INTERFACE|D|Converte|ALT_INV_shift_counter\(2),
	combout => \INTERFACE|D|Converte|state_next.done~0_combout\);

-- Location: FF_X83_Y21_N56
\INTERFACE|D|Converte|state.done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|state_next.done~0_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|state.done~q\);

-- Location: LABCELL_X85_Y22_N51
\INTERFACE|D|Converte|state.start~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|state.start~0_combout\ = ( !\INTERFACE|D|Converte|state.done~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \INTERFACE|D|Converte|ALT_INV_state.done~q\,
	combout => \INTERFACE|D|Converte|state.start~0_combout\);

-- Location: FF_X85_Y22_N52
\INTERFACE|D|Converte|state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|state.start~0_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|state.start~q\);

-- Location: LABCELL_X83_Y21_N33
\INTERFACE|D|Converte|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|Selector1~1_combout\ = ( \INTERFACE|D|Converte|state.start~q\ & ( \INTERFACE|D|Converte|Selector1~0_combout\ ) ) # ( !\INTERFACE|D|Converte|state.start~q\ & ( \INTERFACE|D|Converte|Selector1~0_combout\ ) ) # ( 
-- !\INTERFACE|D|Converte|state.start~q\ & ( !\INTERFACE|D|Converte|Selector1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \INTERFACE|D|Converte|ALT_INV_state.start~q\,
	dataf => \INTERFACE|D|Converte|ALT_INV_Selector1~0_combout\,
	combout => \INTERFACE|D|Converte|Selector1~1_combout\);

-- Location: FF_X83_Y21_N35
\INTERFACE|D|Converte|state.shift\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|Selector1~1_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|state.shift~q\);

-- Location: LABCELL_X83_Y21_N24
\INTERFACE|D|Converte|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|Selector1~0_combout\ = ( \INTERFACE|D|Converte|shift_counter[1]~DUPLICATE_q\ & ( \INTERFACE|D|Converte|shift_counter\(0) & ( \INTERFACE|D|Converte|state.shift~q\ ) ) ) # ( !\INTERFACE|D|Converte|shift_counter[1]~DUPLICATE_q\ & ( 
-- \INTERFACE|D|Converte|shift_counter\(0) & ( \INTERFACE|D|Converte|state.shift~q\ ) ) ) # ( \INTERFACE|D|Converte|shift_counter[1]~DUPLICATE_q\ & ( !\INTERFACE|D|Converte|shift_counter\(0) & ( (\INTERFACE|D|Converte|state.shift~q\ & 
-- ((!\INTERFACE|D|Converte|shift_counter\(3)) # (!\INTERFACE|D|Converte|shift_counter\(2)))) ) ) ) # ( !\INTERFACE|D|Converte|shift_counter[1]~DUPLICATE_q\ & ( !\INTERFACE|D|Converte|shift_counter\(0) & ( \INTERFACE|D|Converte|state.shift~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|Converte|ALT_INV_state.shift~q\,
	datac => \INTERFACE|D|Converte|ALT_INV_shift_counter\(3),
	datad => \INTERFACE|D|Converte|ALT_INV_shift_counter\(2),
	datae => \INTERFACE|D|Converte|ALT_INV_shift_counter[1]~DUPLICATE_q\,
	dataf => \INTERFACE|D|Converte|ALT_INV_shift_counter\(0),
	combout => \INTERFACE|D|Converte|Selector1~0_combout\);

-- Location: LABCELL_X83_Y21_N6
\INTERFACE|D|Converte|binary[8]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|binary[8]~0_combout\ = ( !\INTERFACE|D|Converte|state.done~q\ & ( \INTERFACE|D|Converte|shift_counter[1]~DUPLICATE_q\ & ( (!\INTERFACE|D|Converte|shift_counter\(3)) # (((!\INTERFACE|D|Converte|state.shift~q\) # 
-- (!\INTERFACE|D|Converte|shift_counter\(2))) # (\INTERFACE|D|Converte|shift_counter\(0))) ) ) ) # ( !\INTERFACE|D|Converte|state.done~q\ & ( !\INTERFACE|D|Converte|shift_counter[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111110110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|Converte|ALT_INV_shift_counter\(3),
	datab => \INTERFACE|D|Converte|ALT_INV_shift_counter\(0),
	datac => \INTERFACE|D|Converte|ALT_INV_state.shift~q\,
	datad => \INTERFACE|D|Converte|ALT_INV_shift_counter\(2),
	datae => \INTERFACE|D|Converte|ALT_INV_state.done~q\,
	dataf => \INTERFACE|D|Converte|ALT_INV_shift_counter[1]~DUPLICATE_q\,
	combout => \INTERFACE|D|Converte|binary[8]~0_combout\);

-- Location: FF_X81_Y22_N11
\INTERFACE|D|Converte|bcds[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|Selector23~1_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds\(8));

-- Location: FF_X81_Y22_N8
\INTERFACE|D|Converte|bcds[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|Selector27~1_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds\(4));

-- Location: FF_X80_Y22_N49
\INTERFACE|D|Converte|bcds[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|Converte|Selector31~0_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds\(0));

-- Location: LABCELL_X83_Y21_N0
\INTERFACE|D|Converte|binary_next~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|binary_next~0_combout\ = ( \INTERFACE|D|Converte|binary\(0) & ( \INTERFACE|D|Converte|shift_counter\(1) & ( (!\INTERFACE|D|Converte|shift_counter\(0) & (\INTERFACE|D|Converte|shift_counter\(3) & 
-- \INTERFACE|D|Converte|shift_counter\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|D|Converte|ALT_INV_shift_counter\(0),
	datac => \INTERFACE|D|Converte|ALT_INV_shift_counter\(3),
	datad => \INTERFACE|D|Converte|ALT_INV_shift_counter\(2),
	datae => \INTERFACE|D|Converte|ALT_INV_binary\(0),
	dataf => \INTERFACE|D|Converte|ALT_INV_shift_counter\(1),
	combout => \INTERFACE|D|Converte|binary_next~0_combout\);

-- Location: LABCELL_X81_Y24_N33
\INTERFACE|D|geraSeed|IC_1|Qout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|geraSeed|IC_1|Qout~1_combout\ = ( !\INTERFACE|comb~0_combout\ & ( !\INTERFACE|D|geraSeed|IC_1|Qout[0]~reg0_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INTERFACE|D|geraSeed|IC_1|ALT_INV_Qout[0]~reg0_q\,
	dataf => \INTERFACE|ALT_INV_comb~0_combout\,
	combout => \INTERFACE|D|geraSeed|IC_1|Qout~1_combout\);

-- Location: FF_X81_Y24_N35
\INTERFACE|D|geraSeed|IC_1|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|geraSeed|IC_1|Qout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|geraSeed|IC_1|Qout[0]~reg0_q\);

-- Location: FF_X82_Y22_N50
\INTERFACE|D|C|Eatual.Contando\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|C|Selector3~0_combout\,
	clrn => \INTERFACE|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|C|Eatual.Contando~q\);

-- Location: MLABCELL_X82_Y22_N0
\INTERFACE|D|s_sinalAtraso~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|s_sinalAtraso~6_combout\ = ( \INTERFACE|D|s_sinalAtraso~5_combout\ & ( \INTERFACE|D|C|Eatual.Contando~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|D|C|ALT_INV_Eatual.Contando~q\,
	dataf => \INTERFACE|D|ALT_INV_s_sinalAtraso~5_combout\,
	combout => \INTERFACE|D|s_sinalAtraso~6_combout\);

-- Location: FF_X82_Y22_N11
\INTERFACE|D|C|Eatual.Fim\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|s_sinalAtraso~6_combout\,
	clrn => \INTERFACE|ALT_INV_comb~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|C|Eatual.Fim~q\);

-- Location: MLABCELL_X82_Y22_N51
\INTERFACE|D|C|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|C|Selector0~0_combout\ = ( !\INTERFACE|D|C|Eatual.Fim~q\ & ( (\INTERFACE|D|C|Eatual.Inicial~q\) # (\INTERFACE|C|Eatual.Atraso~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|C|ALT_INV_Eatual.Atraso~q\,
	datad => \INTERFACE|D|C|ALT_INV_Eatual.Inicial~q\,
	dataf => \INTERFACE|D|C|ALT_INV_Eatual.Fim~q\,
	combout => \INTERFACE|D|C|Selector0~0_combout\);

-- Location: FF_X82_Y22_N52
\INTERFACE|D|C|Eatual.Inicial\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|C|Selector0~0_combout\,
	clrn => \INTERFACE|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|C|Eatual.Inicial~q\);

-- Location: MLABCELL_X82_Y20_N51
\INTERFACE|D|C|Eprox.RegistraSeed1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|C|Eprox.RegistraSeed1~0_combout\ = ( \INTERFACE|C|Eatual.Atraso~q\ & ( !\INTERFACE|D|C|Eatual.Inicial~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \INTERFACE|C|ALT_INV_Eatual.Atraso~q\,
	dataf => \INTERFACE|D|C|ALT_INV_Eatual.Inicial~q\,
	combout => \INTERFACE|D|C|Eprox.RegistraSeed1~0_combout\);

-- Location: FF_X82_Y22_N17
\INTERFACE|D|C|Eatual.RegistraSeed1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|C|Eprox.RegistraSeed1~0_combout\,
	clrn => \INTERFACE|ALT_INV_comb~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|C|Eatual.RegistraSeed1~q\);

-- Location: FF_X82_Y22_N20
\INTERFACE|D|C|Eatual.RegistraSeed2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|C|Eatual.RegistraSeed1~q\,
	clrn => \INTERFACE|ALT_INV_comb~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|C|Eatual.RegistraSeed2~q\);

-- Location: MLABCELL_X82_Y22_N30
\INTERFACE|D|Registrador|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Registrador|process_0~0_combout\ = ( \INTERFACE|D|comb~0_combout\ ) # ( !\INTERFACE|D|comb~0_combout\ & ( (\INTERFACE|D|C|Eatual.RegistraSeed2~q\) # (\INTERFACE|D|C|Eatual.RegistraSeed1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|D|C|ALT_INV_Eatual.RegistraSeed1~q\,
	datac => \INTERFACE|D|C|ALT_INV_Eatual.RegistraSeed2~q\,
	dataf => \INTERFACE|D|ALT_INV_comb~0_combout\,
	combout => \INTERFACE|D|Registrador|process_0~0_combout\);

-- Location: FF_X82_Y24_N11
\INTERFACE|D|Registrador|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|geraSeed|IC_1|Qout[0]~reg0_q\,
	sclr => \INTERFACE|D|comb~0_combout\,
	sload => VCC,
	ena => \INTERFACE|D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Registrador|IQ\(0));

-- Location: FF_X83_Y24_N47
\INTERFACE|D|Registrador|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|Registrador|IQ\(0),
	sload => VCC,
	ena => \INTERFACE|D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Registrador|Q\(0));

-- Location: IOIBUF_X89_Y35_N95
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LABCELL_X85_Y22_N42
\INTERFACE|C|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|C|Selector4~0_combout\ = ( \resposta~input_o\ & ( \INTERFACE|C|Eatual.Aguarda~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_resposta~input_o\,
	dataf => \INTERFACE|C|ALT_INV_Eatual.Aguarda~q\,
	combout => \INTERFACE|C|Selector4~0_combout\);

-- Location: MLABCELL_X82_Y22_N36
\INTERFACE|C|Selector4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|C|Selector4~1_combout\ = ( \INTERFACE|C|Eatual.Respondeu~q\ & ( \INTERFACE|s_demorou~combout\ ) ) # ( \INTERFACE|C|Eatual.Respondeu~q\ & ( !\INTERFACE|s_demorou~combout\ & ( (!\finalizaRodada~input_o\) # (((\INTERFACE|D|C|Eatual.Contando~q\ & 
-- \INTERFACE|D|s_sinalAtraso~5_combout\)) # (\INTERFACE|C|Selector4~0_combout\)) ) ) ) # ( !\INTERFACE|C|Eatual.Respondeu~q\ & ( !\INTERFACE|s_demorou~combout\ & ( (\INTERFACE|C|Selector4~0_combout\ & ((!\INTERFACE|D|C|Eatual.Contando~q\) # 
-- (!\INTERFACE|D|s_sinalAtraso~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110000101110111011111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_finalizaRodada~input_o\,
	datab => \INTERFACE|C|ALT_INV_Selector4~0_combout\,
	datac => \INTERFACE|D|C|ALT_INV_Eatual.Contando~q\,
	datad => \INTERFACE|D|ALT_INV_s_sinalAtraso~5_combout\,
	datae => \INTERFACE|C|ALT_INV_Eatual.Respondeu~q\,
	dataf => \INTERFACE|ALT_INV_s_demorou~combout\,
	combout => \INTERFACE|C|Selector4~1_combout\);

-- Location: FF_X82_Y22_N38
\INTERFACE|C|Eatual.Respondeu\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|C|Selector4~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|C|Eatual.Respondeu~q\);

-- Location: MLABCELL_X82_Y24_N18
\INTERFACE|D|geraSeed|IC_1|Qout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|geraSeed|IC_1|Qout[0]~0_combout\ = ( \INTERFACE|C|Eatual.Respondeu~q\ & ( \INTERFACE|C|Eatual.Demorado~q\ ) ) # ( !\INTERFACE|C|Eatual.Respondeu~q\ & ( \INTERFACE|C|Eatual.Demorado~q\ ) ) # ( \INTERFACE|C|Eatual.Respondeu~q\ & ( 
-- !\INTERFACE|C|Eatual.Demorado~q\ ) ) # ( !\INTERFACE|C|Eatual.Respondeu~q\ & ( !\INTERFACE|C|Eatual.Demorado~q\ & ( (((\INTERFACE|D|geraSeed|IC_1|Qout[3]~reg0_q\ & \INTERFACE|D|geraSeed|IC_1|Qout[0]~reg0_q\)) # (\INTERFACE|C|Eatual.Afobado~q\)) # 
-- (\reset~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \INTERFACE|D|geraSeed|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datac => \INTERFACE|C|ALT_INV_Eatual.Afobado~q\,
	datad => \INTERFACE|D|geraSeed|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datae => \INTERFACE|C|ALT_INV_Eatual.Respondeu~q\,
	dataf => \INTERFACE|C|ALT_INV_Eatual.Demorado~q\,
	combout => \INTERFACE|D|geraSeed|IC_1|Qout[0]~0_combout\);

-- Location: MLABCELL_X82_Y24_N45
\INTERFACE|D|geraSeed|IC_1|Qout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|geraSeed|IC_1|Qout~2_combout\ = (!\INTERFACE|D|geraSeed|IC_1|Qout[0]~0_combout\ & (!\INTERFACE|D|geraSeed|IC_1|Qout[0]~reg0_q\ $ (!\INTERFACE|D|geraSeed|IC_1|Qout[1]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000000011001100000000001100110000000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|D|geraSeed|IC_1|ALT_INV_Qout[0]~0_combout\,
	datac => \INTERFACE|D|geraSeed|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datad => \INTERFACE|D|geraSeed|IC_1|ALT_INV_Qout[1]~reg0_q\,
	combout => \INTERFACE|D|geraSeed|IC_1|Qout~2_combout\);

-- Location: FF_X82_Y24_N47
\INTERFACE|D|geraSeed|IC_1|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|geraSeed|IC_1|Qout~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|geraSeed|IC_1|Qout[1]~reg0_q\);

-- Location: MLABCELL_X82_Y24_N54
\INTERFACE|D|geraSeed|IC_1|Qout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|geraSeed|IC_1|Qout~3_combout\ = ( \INTERFACE|D|geraSeed|IC_1|Qout[1]~reg0_q\ & ( (!\INTERFACE|D|geraSeed|IC_1|Qout[0]~0_combout\ & (!\INTERFACE|D|geraSeed|IC_1|Qout[0]~reg0_q\ $ (!\INTERFACE|D|geraSeed|IC_1|Qout[2]~reg0_q\))) ) ) # ( 
-- !\INTERFACE|D|geraSeed|IC_1|Qout[1]~reg0_q\ & ( (!\INTERFACE|D|geraSeed|IC_1|Qout[0]~0_combout\ & \INTERFACE|D|geraSeed|IC_1|Qout[2]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000001010000101000000101000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|geraSeed|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datac => \INTERFACE|D|geraSeed|IC_1|ALT_INV_Qout[0]~0_combout\,
	datad => \INTERFACE|D|geraSeed|IC_1|ALT_INV_Qout[2]~reg0_q\,
	dataf => \INTERFACE|D|geraSeed|IC_1|ALT_INV_Qout[1]~reg0_q\,
	combout => \INTERFACE|D|geraSeed|IC_1|Qout~3_combout\);

-- Location: FF_X82_Y24_N56
\INTERFACE|D|geraSeed|IC_1|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|geraSeed|IC_1|Qout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|geraSeed|IC_1|Qout[2]~reg0_q\);

-- Location: MLABCELL_X82_Y24_N57
\INTERFACE|D|geraSeed|IC_1|Qout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|geraSeed|IC_1|Qout~4_combout\ = ( \INTERFACE|D|geraSeed|IC_1|Qout[2]~reg0_q\ & ( (!\INTERFACE|comb~0_combout\ & ((!\INTERFACE|D|geraSeed|IC_1|Qout[0]~reg0_q\ & ((\INTERFACE|D|geraSeed|IC_1|Qout[3]~reg0_q\))) # 
-- (\INTERFACE|D|geraSeed|IC_1|Qout[0]~reg0_q\ & (\INTERFACE|D|geraSeed|IC_1|Qout[1]~reg0_q\ & !\INTERFACE|D|geraSeed|IC_1|Qout[3]~reg0_q\)))) ) ) # ( !\INTERFACE|D|geraSeed|IC_1|Qout[2]~reg0_q\ & ( (!\INTERFACE|D|geraSeed|IC_1|Qout[0]~reg0_q\ & 
-- (!\INTERFACE|comb~0_combout\ & \INTERFACE|D|geraSeed|IC_1|Qout[3]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000010000101000000001000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|geraSeed|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datab => \INTERFACE|D|geraSeed|IC_1|ALT_INV_Qout[1]~reg0_q\,
	datac => \INTERFACE|ALT_INV_comb~0_combout\,
	datad => \INTERFACE|D|geraSeed|IC_1|ALT_INV_Qout[3]~reg0_q\,
	dataf => \INTERFACE|D|geraSeed|IC_1|ALT_INV_Qout[2]~reg0_q\,
	combout => \INTERFACE|D|geraSeed|IC_1|Qout~4_combout\);

-- Location: FF_X82_Y24_N59
\INTERFACE|D|geraSeed|IC_1|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|geraSeed|IC_1|Qout~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|geraSeed|IC_1|Qout[3]~reg0_q\);

-- Location: MLABCELL_X82_Y24_N3
\INTERFACE|D|geraSeed|ClrN1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|geraSeed|ClrN1~combout\ = ( \INTERFACE|D|geraSeed|IC_1|Qout[3]~reg0_q\ & ( \INTERFACE|D|geraSeed|IC_1|Qout[0]~reg0_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|D|geraSeed|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datae => \INTERFACE|D|geraSeed|IC_1|ALT_INV_Qout[3]~reg0_q\,
	combout => \INTERFACE|D|geraSeed|ClrN1~combout\);

-- Location: MLABCELL_X82_Y24_N42
\INTERFACE|D|geraSeed|IC_2|Qout[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|geraSeed|IC_2|Qout[0]~2_combout\ = ( !\INTERFACE|comb~0_combout\ & ( !\INTERFACE|D|geraSeed|ClrN1~combout\ $ (!\INTERFACE|D|geraSeed|IC_2|Qout[0]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|D|geraSeed|ALT_INV_ClrN1~combout\,
	datad => \INTERFACE|D|geraSeed|IC_2|ALT_INV_Qout[0]~reg0_q\,
	dataf => \INTERFACE|ALT_INV_comb~0_combout\,
	combout => \INTERFACE|D|geraSeed|IC_2|Qout[0]~2_combout\);

-- Location: FF_X82_Y24_N44
\INTERFACE|D|geraSeed|IC_2|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|geraSeed|IC_2|Qout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|geraSeed|IC_2|Qout[0]~reg0_q\);

-- Location: MLABCELL_X82_Y24_N51
\INTERFACE|D|geraSeed|IC_2|Qout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|geraSeed|IC_2|Qout~3_combout\ = ( !\INTERFACE|D|geraSeed|ClrN2~0_combout\ & ( (!\INTERFACE|comb~0_combout\ & (!\INTERFACE|D|geraSeed|IC_2|Qout[0]~reg0_q\ $ (!\INTERFACE|D|geraSeed|IC_2|Qout[1]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000001100001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|D|geraSeed|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datac => \INTERFACE|ALT_INV_comb~0_combout\,
	datad => \INTERFACE|D|geraSeed|IC_2|ALT_INV_Qout[1]~reg0_q\,
	dataf => \INTERFACE|D|geraSeed|ALT_INV_ClrN2~0_combout\,
	combout => \INTERFACE|D|geraSeed|IC_2|Qout~3_combout\);

-- Location: FF_X82_Y24_N53
\INTERFACE|D|geraSeed|IC_2|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|geraSeed|IC_2|Qout~3_combout\,
	ena => \INTERFACE|D|geraSeed|IC_1|Qout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|geraSeed|IC_2|Qout[1]~reg0_q\);

-- Location: MLABCELL_X82_Y24_N48
\INTERFACE|D|geraSeed|IC_2|Qout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|geraSeed|IC_2|Qout~4_combout\ = ( !\INTERFACE|comb~0_combout\ & ( (!\INTERFACE|D|geraSeed|ClrN2~0_combout\ & (!\INTERFACE|D|geraSeed|IC_2|Qout[2]~reg0_q\ $ (((!\INTERFACE|D|geraSeed|IC_2|Qout[0]~reg0_q\) # 
-- (!\INTERFACE|D|geraSeed|IC_2|Qout[1]~reg0_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010101000000000101010100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|geraSeed|ALT_INV_ClrN2~0_combout\,
	datab => \INTERFACE|D|geraSeed|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datac => \INTERFACE|D|geraSeed|IC_2|ALT_INV_Qout[1]~reg0_q\,
	datad => \INTERFACE|D|geraSeed|IC_2|ALT_INV_Qout[2]~reg0_q\,
	dataf => \INTERFACE|ALT_INV_comb~0_combout\,
	combout => \INTERFACE|D|geraSeed|IC_2|Qout~4_combout\);

-- Location: FF_X82_Y24_N50
\INTERFACE|D|geraSeed|IC_2|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|geraSeed|IC_2|Qout~4_combout\,
	ena => \INTERFACE|D|geraSeed|IC_1|Qout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|geraSeed|IC_2|Qout[2]~reg0_q\);

-- Location: MLABCELL_X82_Y24_N15
\INTERFACE|D|geraSeed|IC_2|Qout[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|geraSeed|IC_2|Qout[3]~1_combout\ = ( \INTERFACE|D|geraSeed|IC_2|Qout[3]~reg0_q\ & ( !\INTERFACE|comb~0_combout\ & ( (!\INTERFACE|D|geraSeed|ClrN1~combout\) # (!\INTERFACE|D|geraSeed|IC_2|Qout[0]~reg0_q\) ) ) ) # ( 
-- !\INTERFACE|D|geraSeed|IC_2|Qout[3]~reg0_q\ & ( !\INTERFACE|comb~0_combout\ & ( (\INTERFACE|D|geraSeed|IC_2|Qout[1]~reg0_q\ & (\INTERFACE|D|geraSeed|ClrN1~combout\ & (\INTERFACE|D|geraSeed|IC_2|Qout[0]~reg0_q\ & 
-- \INTERFACE|D|geraSeed|IC_2|Qout[2]~reg0_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001111111001111110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|geraSeed|IC_2|ALT_INV_Qout[1]~reg0_q\,
	datab => \INTERFACE|D|geraSeed|ALT_INV_ClrN1~combout\,
	datac => \INTERFACE|D|geraSeed|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datad => \INTERFACE|D|geraSeed|IC_2|ALT_INV_Qout[2]~reg0_q\,
	datae => \INTERFACE|D|geraSeed|IC_2|ALT_INV_Qout[3]~reg0_q\,
	dataf => \INTERFACE|ALT_INV_comb~0_combout\,
	combout => \INTERFACE|D|geraSeed|IC_2|Qout[3]~1_combout\);

-- Location: FF_X82_Y24_N17
\INTERFACE|D|geraSeed|IC_2|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|geraSeed|IC_2|Qout[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|geraSeed|IC_2|Qout[3]~reg0_q\);

-- Location: LABCELL_X81_Y24_N42
\INTERFACE|D|geraSeed|ClrN2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|geraSeed|ClrN2~0_combout\ = ( \INTERFACE|D|geraSeed|IC_2|Qout[0]~reg0_q\ & ( (\INTERFACE|D|geraSeed|IC_1|Qout[0]~reg0_q\ & (\INTERFACE|D|geraSeed|IC_2|Qout[3]~reg0_q\ & \INTERFACE|D|geraSeed|IC_1|Qout[3]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|geraSeed|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datac => \INTERFACE|D|geraSeed|IC_2|ALT_INV_Qout[3]~reg0_q\,
	datad => \INTERFACE|D|geraSeed|IC_1|ALT_INV_Qout[3]~reg0_q\,
	dataf => \INTERFACE|D|geraSeed|IC_2|ALT_INV_Qout[0]~reg0_q\,
	combout => \INTERFACE|D|geraSeed|ClrN2~0_combout\);

-- Location: LABCELL_X80_Y24_N42
\INTERFACE|D|geraSeed|IC_3|Qout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|geraSeed|IC_3|Qout~2_combout\ = (!\INTERFACE|comb~0_combout\ & !\INTERFACE|D|geraSeed|IC_3|Qout[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|ALT_INV_comb~0_combout\,
	datad => \INTERFACE|D|geraSeed|IC_3|ALT_INV_Qout[0]~reg0_q\,
	combout => \INTERFACE|D|geraSeed|IC_3|Qout~2_combout\);

-- Location: LABCELL_X83_Y24_N36
\INTERFACE|C|WideNor1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|C|WideNor1~0_combout\ = ( !\INTERFACE|C|Eatual.Demorado~q\ & ( (!\INTERFACE|C|Eatual.Afobado~q\ & !\INTERFACE|C|Eatual.Respondeu~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|C|ALT_INV_Eatual.Afobado~q\,
	datad => \INTERFACE|C|ALT_INV_Eatual.Respondeu~q\,
	dataf => \INTERFACE|C|ALT_INV_Eatual.Demorado~q\,
	combout => \INTERFACE|C|WideNor1~0_combout\);

-- Location: LABCELL_X80_Y24_N27
\INTERFACE|D|geraSeed|IC_2|Qout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|geraSeed|IC_2|Qout[0]~0_combout\ = ( \INTERFACE|C|WideNor1~0_combout\ & ( (\INTERFACE|D|geraSeed|ClrN2~0_combout\) # (\reset~input_o\) ) ) # ( !\INTERFACE|C|WideNor1~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datad => \INTERFACE|D|geraSeed|ALT_INV_ClrN2~0_combout\,
	dataf => \INTERFACE|C|ALT_INV_WideNor1~0_combout\,
	combout => \INTERFACE|D|geraSeed|IC_2|Qout[0]~0_combout\);

-- Location: FF_X80_Y24_N44
\INTERFACE|D|geraSeed|IC_3|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|geraSeed|IC_3|Qout~2_combout\,
	ena => \INTERFACE|D|geraSeed|IC_2|Qout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|geraSeed|IC_3|Qout[0]~reg0_q\);

-- Location: MLABCELL_X82_Y24_N6
\INTERFACE|D|geraSeed|ClrN4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|geraSeed|ClrN4~0_combout\ = ( \INTERFACE|D|geraSeed|IC_1|Qout[3]~reg0_q\ & ( \INTERFACE|D|geraSeed|IC_1|Qout[0]~reg0_q\ & ( (\INTERFACE|D|geraSeed|IC_3|Qout[3]~reg0_q\ & (\INTERFACE|D|geraSeed|IC_2|Qout[0]~reg0_q\ & 
-- (\INTERFACE|D|geraSeed|IC_3|Qout[0]~reg0_q\ & \INTERFACE|D|geraSeed|IC_2|Qout[3]~reg0_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|geraSeed|IC_3|ALT_INV_Qout[3]~reg0_q\,
	datab => \INTERFACE|D|geraSeed|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datac => \INTERFACE|D|geraSeed|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datad => \INTERFACE|D|geraSeed|IC_2|ALT_INV_Qout[3]~reg0_q\,
	datae => \INTERFACE|D|geraSeed|IC_1|ALT_INV_Qout[3]~reg0_q\,
	dataf => \INTERFACE|D|geraSeed|IC_1|ALT_INV_Qout[0]~reg0_q\,
	combout => \INTERFACE|D|geraSeed|ClrN4~0_combout\);

-- Location: LABCELL_X80_Y24_N24
\INTERFACE|D|geraSeed|IC_3|Qout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|geraSeed|IC_3|Qout~3_combout\ = ( !\INTERFACE|comb~0_combout\ & ( (!\INTERFACE|D|geraSeed|ClrN4~0_combout\ & (!\INTERFACE|D|geraSeed|IC_3|Qout[0]~reg0_q\ $ (!\INTERFACE|D|geraSeed|IC_3|Qout[1]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000001100001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|D|geraSeed|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datac => \INTERFACE|D|geraSeed|ALT_INV_ClrN4~0_combout\,
	datad => \INTERFACE|D|geraSeed|IC_3|ALT_INV_Qout[1]~reg0_q\,
	dataf => \INTERFACE|ALT_INV_comb~0_combout\,
	combout => \INTERFACE|D|geraSeed|IC_3|Qout~3_combout\);

-- Location: FF_X80_Y24_N26
\INTERFACE|D|geraSeed|IC_3|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|geraSeed|IC_3|Qout~3_combout\,
	ena => \INTERFACE|D|geraSeed|IC_2|Qout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|geraSeed|IC_3|Qout[1]~reg0_q\);

-- Location: LABCELL_X80_Y24_N45
\INTERFACE|D|geraSeed|IC_3|Qout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|geraSeed|IC_3|Qout~0_combout\ = ( \INTERFACE|D|geraSeed|IC_3|Qout[1]~reg0_q\ & ( (!\INTERFACE|D|geraSeed|ClrN4~0_combout\ & (!\INTERFACE|comb~0_combout\ & (!\INTERFACE|D|geraSeed|IC_3|Qout[0]~reg0_q\ $ 
-- (!\INTERFACE|D|geraSeed|IC_3|Qout[2]~reg0_q\)))) ) ) # ( !\INTERFACE|D|geraSeed|IC_3|Qout[1]~reg0_q\ & ( (!\INTERFACE|D|geraSeed|ClrN4~0_combout\ & (!\INTERFACE|comb~0_combout\ & \INTERFACE|D|geraSeed|IC_3|Qout[2]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000001000100000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|geraSeed|ALT_INV_ClrN4~0_combout\,
	datab => \INTERFACE|ALT_INV_comb~0_combout\,
	datac => \INTERFACE|D|geraSeed|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datad => \INTERFACE|D|geraSeed|IC_3|ALT_INV_Qout[2]~reg0_q\,
	dataf => \INTERFACE|D|geraSeed|IC_3|ALT_INV_Qout[1]~reg0_q\,
	combout => \INTERFACE|D|geraSeed|IC_3|Qout~0_combout\);

-- Location: FF_X80_Y24_N47
\INTERFACE|D|geraSeed|IC_3|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|geraSeed|IC_3|Qout~0_combout\,
	ena => \INTERFACE|D|geraSeed|IC_2|Qout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|geraSeed|IC_3|Qout[2]~reg0_q\);

-- Location: MLABCELL_X82_Y24_N33
\INTERFACE|D|geraSeed|IC_3|Qout[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|geraSeed|IC_3|Qout[3]~1_combout\ = ( \INTERFACE|D|geraSeed|IC_3|Qout[3]~reg0_q\ & ( !\INTERFACE|comb~0_combout\ & ( (!\INTERFACE|D|geraSeed|ClrN2~0_combout\) # (!\INTERFACE|D|geraSeed|IC_3|Qout[0]~reg0_q\) ) ) ) # ( 
-- !\INTERFACE|D|geraSeed|IC_3|Qout[3]~reg0_q\ & ( !\INTERFACE|comb~0_combout\ & ( (\INTERFACE|D|geraSeed|ClrN2~0_combout\ & (\INTERFACE|D|geraSeed|IC_3|Qout[1]~reg0_q\ & (\INTERFACE|D|geraSeed|IC_3|Qout[0]~reg0_q\ & 
-- \INTERFACE|D|geraSeed|IC_3|Qout[2]~reg0_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001111110101111101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|geraSeed|ALT_INV_ClrN2~0_combout\,
	datab => \INTERFACE|D|geraSeed|IC_3|ALT_INV_Qout[1]~reg0_q\,
	datac => \INTERFACE|D|geraSeed|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datad => \INTERFACE|D|geraSeed|IC_3|ALT_INV_Qout[2]~reg0_q\,
	datae => \INTERFACE|D|geraSeed|IC_3|ALT_INV_Qout[3]~reg0_q\,
	dataf => \INTERFACE|ALT_INV_comb~0_combout\,
	combout => \INTERFACE|D|geraSeed|IC_3|Qout[3]~1_combout\);

-- Location: FF_X82_Y24_N35
\INTERFACE|D|geraSeed|IC_3|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|geraSeed|IC_3|Qout[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|geraSeed|IC_3|Qout[3]~reg0_q\);

-- Location: FF_X82_Y24_N25
\INTERFACE|D|Registrador|IQ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|geraSeed|IC_3|Qout[3]~reg0_q\,
	sclr => \INTERFACE|D|comb~0_combout\,
	sload => VCC,
	ena => \INTERFACE|D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Registrador|IQ\(11));

-- Location: FF_X83_Y24_N11
\INTERFACE|D|Registrador|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|Registrador|IQ\(11),
	sload => VCC,
	ena => \INTERFACE|D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Registrador|Q\(11));

-- Location: LABCELL_X83_Y24_N9
\INTERFACE|D|PSEUDORANDOM|count[11]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[11]~9_combout\ = ( \INTERFACE|D|PSEUDORANDOM|count[11]~9_combout\ & ( (!\INTERFACE|D|comb~0_combout\) # (\INTERFACE|D|Registrador|Q\(11)) ) ) # ( !\INTERFACE|D|PSEUDORANDOM|count[11]~9_combout\ & ( 
-- (\INTERFACE|D|comb~0_combout\ & \INTERFACE|D|Registrador|Q\(11)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datad => \INTERFACE|D|Registrador|ALT_INV_Q\(11),
	dataf => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[11]~9_combout\,
	combout => \INTERFACE|D|PSEUDORANDOM|count[11]~9_combout\);

-- Location: FF_X84_Y22_N10
\INTERFACE|D|Registrador|IQ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|geraSeed|IC_3|Qout[2]~reg0_q\,
	sclr => \INTERFACE|D|comb~0_combout\,
	sload => VCC,
	ena => \INTERFACE|D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Registrador|IQ\(10));

-- Location: FF_X84_Y22_N35
\INTERFACE|D|Registrador|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|Registrador|IQ\(10),
	sload => VCC,
	ena => \INTERFACE|D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Registrador|Q\(10));

-- Location: MLABCELL_X84_Y22_N30
\INTERFACE|D|PSEUDORANDOM|count[10]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[10]~13_combout\ = ( \INTERFACE|D|comb~0_combout\ & ( \INTERFACE|D|Registrador|Q\(10) ) ) # ( !\INTERFACE|D|comb~0_combout\ & ( \INTERFACE|D|Registrador|Q\(10) & ( \INTERFACE|D|PSEUDORANDOM|count[10]~13_combout\ ) ) ) # ( 
-- !\INTERFACE|D|comb~0_combout\ & ( !\INTERFACE|D|Registrador|Q\(10) & ( \INTERFACE|D|PSEUDORANDOM|count[10]~13_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[10]~13_combout\,
	datae => \INTERFACE|D|ALT_INV_comb~0_combout\,
	dataf => \INTERFACE|D|Registrador|ALT_INV_Q\(10),
	combout => \INTERFACE|D|PSEUDORANDOM|count[10]~13_combout\);

-- Location: FF_X84_Y22_N59
\INTERFACE|D|Registrador|IQ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|geraSeed|IC_3|Qout[1]~reg0_q\,
	sclr => \INTERFACE|D|comb~0_combout\,
	sload => VCC,
	ena => \INTERFACE|D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Registrador|IQ\(9));

-- Location: FF_X84_Y22_N50
\INTERFACE|D|Registrador|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|Registrador|IQ\(9),
	sload => VCC,
	ena => \INTERFACE|D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Registrador|Q\(9));

-- Location: MLABCELL_X84_Y22_N36
\INTERFACE|D|PSEUDORANDOM|count[9]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[9]~17_combout\ = ( \INTERFACE|D|Registrador|Q\(9) & ( (\INTERFACE|D|comb~0_combout\) # (\INTERFACE|D|PSEUDORANDOM|count[9]~17_combout\) ) ) # ( !\INTERFACE|D|Registrador|Q\(9) & ( 
-- (\INTERFACE|D|PSEUDORANDOM|count[9]~17_combout\ & !\INTERFACE|D|comb~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[9]~17_combout\,
	datad => \INTERFACE|D|ALT_INV_comb~0_combout\,
	dataf => \INTERFACE|D|Registrador|ALT_INV_Q\(9),
	combout => \INTERFACE|D|PSEUDORANDOM|count[9]~17_combout\);

-- Location: FF_X82_Y23_N11
\INTERFACE|D|Registrador|IQ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|geraSeed|IC_3|Qout[0]~reg0_q\,
	sclr => \INTERFACE|D|comb~0_combout\,
	sload => VCC,
	ena => \INTERFACE|D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Registrador|IQ\(8));

-- Location: FF_X82_Y23_N56
\INTERFACE|D|Registrador|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|Registrador|IQ\(8),
	sload => VCC,
	ena => \INTERFACE|D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Registrador|Q\(8));

-- Location: FF_X82_Y23_N29
\INTERFACE|D|Registrador|IQ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|geraSeed|IC_2|Qout[2]~reg0_q\,
	sclr => \INTERFACE|D|comb~0_combout\,
	sload => VCC,
	ena => \INTERFACE|D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Registrador|IQ\(6));

-- Location: FF_X82_Y23_N44
\INTERFACE|D|Registrador|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|Registrador|IQ\(6),
	sload => VCC,
	ena => \INTERFACE|D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Registrador|Q\(6));

-- Location: MLABCELL_X82_Y23_N48
\INTERFACE|D|PSEUDORANDOM|count[6]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[6]~29_combout\ = ( \INTERFACE|D|comb~0_combout\ & ( \INTERFACE|D|Registrador|Q\(6) ) ) # ( !\INTERFACE|D|comb~0_combout\ & ( \INTERFACE|D|PSEUDORANDOM|count[6]~29_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|D|Registrador|ALT_INV_Q\(6),
	datad => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[6]~29_combout\,
	dataf => \INTERFACE|D|ALT_INV_comb~0_combout\,
	combout => \INTERFACE|D|PSEUDORANDOM|count[6]~29_combout\);

-- Location: FF_X84_Y22_N53
\INTERFACE|D|Registrador|IQ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|geraSeed|IC_2|Qout[1]~reg0_q\,
	sclr => \INTERFACE|D|comb~0_combout\,
	sload => VCC,
	ena => \INTERFACE|D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Registrador|IQ\(5));

-- Location: FF_X84_Y22_N8
\INTERFACE|D|Registrador|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|Registrador|IQ\(5),
	sload => VCC,
	ena => \INTERFACE|D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Registrador|Q\(5));

-- Location: MLABCELL_X84_Y22_N57
\INTERFACE|D|PSEUDORANDOM|count[5]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[5]~33_combout\ = ( \INTERFACE|D|comb~0_combout\ & ( \INTERFACE|D|Registrador|Q\(5) ) ) # ( !\INTERFACE|D|comb~0_combout\ & ( \INTERFACE|D|Registrador|Q\(5) & ( \INTERFACE|D|PSEUDORANDOM|count[5]~33_combout\ ) ) ) # ( 
-- !\INTERFACE|D|comb~0_combout\ & ( !\INTERFACE|D|Registrador|Q\(5) & ( \INTERFACE|D|PSEUDORANDOM|count[5]~33_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[5]~33_combout\,
	datae => \INTERFACE|D|ALT_INV_comb~0_combout\,
	dataf => \INTERFACE|D|Registrador|ALT_INV_Q\(5),
	combout => \INTERFACE|D|PSEUDORANDOM|count[5]~33_combout\);

-- Location: FF_X82_Y23_N35
\INTERFACE|D|Registrador|IQ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|geraSeed|IC_2|Qout[0]~reg0_q\,
	sclr => \INTERFACE|D|comb~0_combout\,
	sload => VCC,
	ena => \INTERFACE|D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Registrador|IQ\(4));

-- Location: FF_X82_Y23_N5
\INTERFACE|D|Registrador|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|Registrador|IQ\(4),
	sload => VCC,
	ena => \INTERFACE|D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Registrador|Q\(4));

-- Location: MLABCELL_X82_Y23_N15
\INTERFACE|D|PSEUDORANDOM|count[4]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[4]~37_combout\ = ( \INTERFACE|D|Registrador|Q\(4) & ( (\INTERFACE|D|comb~0_combout\) # (\INTERFACE|D|PSEUDORANDOM|count[4]~37_combout\) ) ) # ( !\INTERFACE|D|Registrador|Q\(4) & ( 
-- (\INTERFACE|D|PSEUDORANDOM|count[4]~37_combout\ & !\INTERFACE|D|comb~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[4]~37_combout\,
	datad => \INTERFACE|D|ALT_INV_comb~0_combout\,
	dataf => \INTERFACE|D|Registrador|ALT_INV_Q\(4),
	combout => \INTERFACE|D|PSEUDORANDOM|count[4]~37_combout\);

-- Location: FF_X82_Y23_N41
\INTERFACE|D|Registrador|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|geraSeed|IC_1|Qout[2]~reg0_q\,
	sclr => \INTERFACE|D|comb~0_combout\,
	sload => VCC,
	ena => \INTERFACE|D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Registrador|IQ\(2));

-- Location: FF_X82_Y23_N23
\INTERFACE|D|Registrador|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|Registrador|IQ\(2),
	sload => VCC,
	ena => \INTERFACE|D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Registrador|Q\(2));

-- Location: MLABCELL_X82_Y23_N6
\INTERFACE|D|PSEUDORANDOM|count[2]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[2]~45_combout\ = ( \INTERFACE|D|comb~0_combout\ & ( \INTERFACE|D|Registrador|Q\(2) ) ) # ( !\INTERFACE|D|comb~0_combout\ & ( \INTERFACE|D|Registrador|Q\(2) & ( \INTERFACE|D|PSEUDORANDOM|count[2]~45_combout\ ) ) ) # ( 
-- !\INTERFACE|D|comb~0_combout\ & ( !\INTERFACE|D|Registrador|Q\(2) & ( \INTERFACE|D|PSEUDORANDOM|count[2]~45_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[2]~45_combout\,
	datae => \INTERFACE|D|ALT_INV_comb~0_combout\,
	dataf => \INTERFACE|D|Registrador|ALT_INV_Q\(2),
	combout => \INTERFACE|D|PSEUDORANDOM|count[2]~45_combout\);

-- Location: FF_X82_Y24_N29
\INTERFACE|D|Registrador|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|geraSeed|IC_1|Qout[1]~reg0_q\,
	sclr => \INTERFACE|D|comb~0_combout\,
	sload => VCC,
	ena => \INTERFACE|D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Registrador|IQ\(1));

-- Location: FF_X83_Y24_N14
\INTERFACE|D|Registrador|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|Registrador|IQ\(1),
	sload => VCC,
	ena => \INTERFACE|D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Registrador|Q\(1));

-- Location: LABCELL_X83_Y24_N12
\INTERFACE|D|PSEUDORANDOM|count[1]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[1]~49_combout\ = ( \INTERFACE|D|comb~0_combout\ & ( \INTERFACE|D|Registrador|Q\(1) ) ) # ( !\INTERFACE|D|comb~0_combout\ & ( \INTERFACE|D|PSEUDORANDOM|count[1]~49_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[1]~49_combout\,
	datad => \INTERFACE|D|Registrador|ALT_INV_Q\(1),
	dataf => \INTERFACE|D|ALT_INV_comb~0_combout\,
	combout => \INTERFACE|D|PSEUDORANDOM|count[1]~49_combout\);

-- Location: LABCELL_X83_Y24_N0
\INTERFACE|D|PSEUDORANDOM|count[1]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[1]~51_combout\ = ( \INTERFACE|D|PSEUDORANDOM|count[0]~54_combout\ & ( !\INTERFACE|D|PSEUDORANDOM|count[1]~49_combout\ ) ) # ( !\INTERFACE|D|PSEUDORANDOM|count[0]~54_combout\ & ( 
-- \INTERFACE|D|PSEUDORANDOM|count[1]~49_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[1]~49_combout\,
	dataf => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[0]~54_combout\,
	combout => \INTERFACE|D|PSEUDORANDOM|count[1]~51_combout\);

-- Location: FF_X82_Y23_N47
\INTERFACE|D|Registrador|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|geraSeed|IC_1|Qout[3]~reg0_q\,
	sclr => \INTERFACE|D|comb~0_combout\,
	sload => VCC,
	ena => \INTERFACE|D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Registrador|IQ\(3));

-- Location: FF_X82_Y23_N26
\INTERFACE|D|Registrador|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|Registrador|IQ\(3),
	sload => VCC,
	ena => \INTERFACE|D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Registrador|Q\(3));

-- Location: LABCELL_X80_Y23_N24
\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout~1_combout\ = ( \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[1]~reg0_q\ & ( \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & 
-- !\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\) ) ) ) # ( \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[1]~reg0_q\ & ( !\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & 
-- !\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\) ) ) ) # ( !\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[1]~reg0_q\ & ( !\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & 
-- \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010101010100000000000000000000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datad => \INTERFACE|D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datae => \INTERFACE|D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[1]~reg0_q\,
	dataf => \INTERFACE|D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	combout => \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout~1_combout\);

-- Location: LABCELL_X80_Y23_N36
\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[2]~2_combout\ = ( \INTERFACE|D|comb~0_combout\ ) # ( !\INTERFACE|D|comb~0_combout\ & ( ((\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\ & \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\)) # 
-- (\INTERFACE|D|C|Eatual.Cicla~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datac => \INTERFACE|D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datad => \INTERFACE|D|C|ALT_INV_Eatual.Cicla~q\,
	dataf => \INTERFACE|D|ALT_INV_comb~0_combout\,
	combout => \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[2]~2_combout\);

-- Location: FF_X80_Y23_N26
\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout~1_combout\,
	ena => \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[1]~reg0_q\);

-- Location: LABCELL_X81_Y23_N12
\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[3]~4_combout\ = ( !\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\ & ( \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\ & ( (\INTERFACE|D|C|Eatual.Cicla~q\ & (!\INTERFACE|D|comb~0_combout\ & 
-- (\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[2]~reg0_q\ & \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[1]~reg0_q\))) ) ) ) # ( \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\ & ( !\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\ & ( 
-- !\INTERFACE|D|comb~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|C|ALT_INV_Eatual.Cicla~q\,
	datab => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datac => \INTERFACE|D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[2]~reg0_q\,
	datad => \INTERFACE|D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[1]~reg0_q\,
	datae => \INTERFACE|D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	dataf => \INTERFACE|D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	combout => \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[3]~4_combout\);

-- Location: FF_X81_Y23_N14
\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\);

-- Location: LABCELL_X80_Y23_N30
\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[0]~0_combout\ = ( !\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\ & ( \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & \INTERFACE|D|C|Eatual.Cicla~q\) ) ) 
-- ) # ( \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\ & ( !\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & !\INTERFACE|D|C|Eatual.Cicla~q\) ) ) ) # ( 
-- !\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\ & ( !\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & \INTERFACE|D|C|Eatual.Cicla~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010101000001010000000001010000010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datac => \INTERFACE|D|C|ALT_INV_Eatual.Cicla~q\,
	datae => \INTERFACE|D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	dataf => \INTERFACE|D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	combout => \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[0]~0_combout\);

-- Location: FF_X80_Y23_N32
\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\);

-- Location: LABCELL_X80_Y23_N39
\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout~3_combout\ = ( \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[1]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & ((!\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\ & 
-- ((\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[2]~reg0_q\))) # (\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\ & (!\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\ & !\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[2]~reg0_q\)))) ) ) # ( 
-- !\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[1]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & (\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[2]~reg0_q\ & ((!\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\) # 
-- (!\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000001010100000100000100010000010000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datab => \INTERFACE|D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datac => \INTERFACE|D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datad => \INTERFACE|D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[2]~reg0_q\,
	dataf => \INTERFACE|D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[1]~reg0_q\,
	combout => \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout~3_combout\);

-- Location: FF_X80_Y23_N41
\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout~3_combout\,
	ena => \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[2]~reg0_q\);

-- Location: LABCELL_X81_Y23_N33
\INTERFACE|D|ciclagensLFSR|S~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ciclagensLFSR|S~4_combout\ = ( \INTERFACE|D|Registrador|Q\(2) & ( \INTERFACE|D|Registrador|Q\(1) & ( (\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[2]~reg0_q\ & (\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[1]~reg0_q\ & 
-- (!\INTERFACE|D|Registrador|Q\(3) $ (\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\)))) ) ) ) # ( !\INTERFACE|D|Registrador|Q\(2) & ( \INTERFACE|D|Registrador|Q\(1) & ( (!\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[2]~reg0_q\ & 
-- (\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[1]~reg0_q\ & (!\INTERFACE|D|Registrador|Q\(3) $ (\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\)))) ) ) ) # ( \INTERFACE|D|Registrador|Q\(2) & ( !\INTERFACE|D|Registrador|Q\(1) & ( 
-- (\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[2]~reg0_q\ & (!\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[1]~reg0_q\ & (!\INTERFACE|D|Registrador|Q\(3) $ (\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\)))) ) ) ) # ( 
-- !\INTERFACE|D|Registrador|Q\(2) & ( !\INTERFACE|D|Registrador|Q\(1) & ( (!\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[2]~reg0_q\ & (!\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[1]~reg0_q\ & (!\INTERFACE|D|Registrador|Q\(3) $ 
-- (\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000001000000001000000001000000001000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|Registrador|ALT_INV_Q\(3),
	datab => \INTERFACE|D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[2]~reg0_q\,
	datac => \INTERFACE|D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[1]~reg0_q\,
	datad => \INTERFACE|D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datae => \INTERFACE|D|Registrador|ALT_INV_Q\(2),
	dataf => \INTERFACE|D|Registrador|ALT_INV_Q\(1),
	combout => \INTERFACE|D|ciclagensLFSR|S~4_combout\);

-- Location: LABCELL_X80_Y23_N18
\INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout~3_combout\ = ( !\INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[1]~reg0_q\ & ( \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & 
-- !\INTERFACE|D|ciclagensLFSR|Contador|ClrN2~0_combout\) ) ) ) # ( \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[1]~reg0_q\ & ( !\INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & 
-- !\INTERFACE|D|ciclagensLFSR|Contador|ClrN2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000010100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datac => \INTERFACE|D|ciclagensLFSR|Contador|ALT_INV_ClrN2~0_combout\,
	datae => \INTERFACE|D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[1]~reg0_q\,
	dataf => \INTERFACE|D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\,
	combout => \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout~3_combout\);

-- Location: LABCELL_X80_Y23_N3
\INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[3]~0_combout\ = ( \INTERFACE|D|C|Eatual.Cicla~q\ & ( (\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\ & \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datac => \INTERFACE|D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	dataf => \INTERFACE|D|C|ALT_INV_Eatual.Cicla~q\,
	combout => \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[3]~0_combout\);

-- Location: LABCELL_X80_Y23_N9
\INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[3]~4_combout\ = ( \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[3]~0_combout\ & ( \INTERFACE|D|comb~0_combout\ ) ) # ( !\INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[3]~0_combout\ & ( 
-- \INTERFACE|D|comb~0_combout\ ) ) # ( \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[3]~0_combout\ & ( !\INTERFACE|D|comb~0_combout\ ) ) # ( !\INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[3]~0_combout\ & ( !\INTERFACE|D|comb~0_combout\ & ( 
-- \INTERFACE|D|ciclagensLFSR|Contador|ClrN2~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INTERFACE|D|ciclagensLFSR|Contador|ALT_INV_ClrN2~0_combout\,
	datae => \INTERFACE|D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[3]~0_combout\,
	dataf => \INTERFACE|D|ALT_INV_comb~0_combout\,
	combout => \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[3]~4_combout\);

-- Location: FF_X80_Y23_N20
\INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout~3_combout\,
	ena => \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[1]~reg0_q\);

-- Location: LABCELL_X80_Y23_N51
\INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout~5_combout\ = ( \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[2]~reg0_q\ & ( \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & 
-- (!\INTERFACE|D|ciclagensLFSR|Contador|ClrN2~0_combout\ & !\INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[1]~reg0_q\)) ) ) ) # ( !\INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[2]~reg0_q\ & ( \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\ & ( 
-- (!\INTERFACE|D|comb~0_combout\ & (!\INTERFACE|D|ciclagensLFSR|Contador|ClrN2~0_combout\ & \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[1]~reg0_q\)) ) ) ) # ( \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[2]~reg0_q\ & ( 
-- !\INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & !\INTERFACE|D|ciclagensLFSR|Contador|ClrN2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000000000000101000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datac => \INTERFACE|D|ciclagensLFSR|Contador|ALT_INV_ClrN2~0_combout\,
	datad => \INTERFACE|D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[1]~reg0_q\,
	datae => \INTERFACE|D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[2]~reg0_q\,
	dataf => \INTERFACE|D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\,
	combout => \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout~5_combout\);

-- Location: FF_X80_Y23_N53
\INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout~5_combout\,
	ena => \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[2]~reg0_q\);

-- Location: LABCELL_X80_Y23_N57
\INTERFACE|D|ciclagensLFSR|Contador|IC_2|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Add0~0_combout\ = ( \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[1]~reg0_q\ & ( (\INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\ & \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[2]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datad => \INTERFACE|D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[2]~reg0_q\,
	dataf => \INTERFACE|D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[1]~reg0_q\,
	combout => \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Add0~0_combout\);

-- Location: LABCELL_X81_Y23_N45
\INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[3]~1_combout\ = ( \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[3]~0_combout\ & ( (!\INTERFACE|D|ciclagensLFSR|Contador|ClrN2~0_combout\ & (!\INTERFACE|D|comb~0_combout\ & 
-- (!\INTERFACE|D|ciclagensLFSR|Contador|IC_2|Add0~0_combout\ $ (!\INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[3]~reg0_q\)))) ) ) # ( !\INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[3]~0_combout\ & ( (!\INTERFACE|D|ciclagensLFSR|Contador|ClrN2~0_combout\ & 
-- (!\INTERFACE|D|comb~0_combout\ & \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[3]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000001000100000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ciclagensLFSR|Contador|ALT_INV_ClrN2~0_combout\,
	datab => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datac => \INTERFACE|D|ciclagensLFSR|Contador|IC_2|ALT_INV_Add0~0_combout\,
	datad => \INTERFACE|D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[3]~reg0_q\,
	dataf => \INTERFACE|D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[3]~0_combout\,
	combout => \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[3]~1_combout\);

-- Location: FF_X81_Y23_N47
\INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[3]~reg0_q\);

-- Location: LABCELL_X81_Y23_N27
\INTERFACE|D|ciclagensLFSR|Contador|ClrN2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ciclagensLFSR|Contador|ClrN2~0_combout\ = ( \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\ & ( (\INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\ & (\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\ & 
-- \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[3]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datac => \INTERFACE|D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datad => \INTERFACE|D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[3]~reg0_q\,
	dataf => \INTERFACE|D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	combout => \INTERFACE|D|ciclagensLFSR|Contador|ClrN2~0_combout\);

-- Location: LABCELL_X81_Y23_N24
\INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[0]~2_combout\ = ( \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[3]~0_combout\ & ( (!\INTERFACE|D|comb~0_combout\ & !\INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\) ) ) # ( 
-- !\INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[3]~0_combout\ & ( (!\INTERFACE|D|comb~0_combout\ & (!\INTERFACE|D|ciclagensLFSR|Contador|ClrN2~0_combout\ $ (!\INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000000011001100000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datac => \INTERFACE|D|ciclagensLFSR|Contador|ALT_INV_ClrN2~0_combout\,
	datad => \INTERFACE|D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\,
	dataf => \INTERFACE|D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[3]~0_combout\,
	combout => \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[0]~2_combout\);

-- Location: FF_X81_Y23_N26
\INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\);

-- Location: LABCELL_X81_Y23_N42
\INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[0]~3_combout\ = ( \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[3]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & ((!\INTERFACE|D|ciclagensLFSR|Contador|ClrN2~0_combout\ & 
-- ((\INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\))) # (\INTERFACE|D|ciclagensLFSR|Contador|ClrN2~0_combout\ & (\INTERFACE|D|C|Eatual.Cicla~q\ & !\INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\)))) ) ) # ( 
-- !\INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[3]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & (!\INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\ $ (((!\INTERFACE|D|ciclagensLFSR|Contador|ClrN2~0_combout\) # (!\INTERFACE|D|C|Eatual.Cicla~q\))))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011001000000001001100100000000100100010000000010010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ciclagensLFSR|Contador|ALT_INV_ClrN2~0_combout\,
	datab => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datac => \INTERFACE|D|C|ALT_INV_Eatual.Cicla~q\,
	datad => \INTERFACE|D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\,
	dataf => \INTERFACE|D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[3]~reg0_q\,
	combout => \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[0]~3_combout\);

-- Location: FF_X81_Y23_N44
\INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\);

-- Location: LABCELL_X81_Y23_N21
\INTERFACE|D|ciclagensLFSR|Contador|ClrN3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ciclagensLFSR|Contador|ClrN3~0_combout\ = ( \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[3]~reg0_q\ & ( \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\ & ( (\INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\ & 
-- (\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\ & (\INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\ & \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[3]~reg0_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datab => \INTERFACE|D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datac => \INTERFACE|D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datad => \INTERFACE|D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[3]~reg0_q\,
	datae => \INTERFACE|D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[3]~reg0_q\,
	dataf => \INTERFACE|D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	combout => \INTERFACE|D|ciclagensLFSR|Contador|ClrN3~0_combout\);

-- Location: MLABCELL_X82_Y20_N24
\INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout~4_combout\ = ( \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & (!\INTERFACE|D|ciclagensLFSR|Contador|ClrN3~0_combout\ & 
-- !\INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[1]~reg0_q\)) ) ) # ( !\INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & (!\INTERFACE|D|ciclagensLFSR|Contador|ClrN3~0_combout\ & 
-- \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[1]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datac => \INTERFACE|D|ciclagensLFSR|Contador|ALT_INV_ClrN3~0_combout\,
	datad => \INTERFACE|D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[1]~reg0_q\,
	dataf => \INTERFACE|D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\,
	combout => \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout~4_combout\);

-- Location: MLABCELL_X82_Y20_N27
\INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[0]~1_combout\ = ( \INTERFACE|D|comb~0_combout\ ) # ( !\INTERFACE|D|comb~0_combout\ & ( ((\INTERFACE|D|C|Eatual.Cicla~q\ & \INTERFACE|D|ciclagensLFSR|Contador|ClrN2~0_combout\)) # 
-- (\INTERFACE|D|ciclagensLFSR|Contador|ClrN3~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011111010101010101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ciclagensLFSR|Contador|ALT_INV_ClrN3~0_combout\,
	datac => \INTERFACE|D|C|ALT_INV_Eatual.Cicla~q\,
	datad => \INTERFACE|D|ciclagensLFSR|Contador|ALT_INV_ClrN2~0_combout\,
	dataf => \INTERFACE|D|ALT_INV_comb~0_combout\,
	combout => \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[0]~1_combout\);

-- Location: FF_X82_Y20_N26
\INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout~4_combout\,
	ena => \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[1]~reg0_q\);

-- Location: MLABCELL_X82_Y20_N18
\INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout~0_combout\ = ( \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[2]~reg0_q\ & ( \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[1]~reg0_q\ & ( (!\INTERFACE|D|ciclagensLFSR|Contador|ClrN3~0_combout\ & 
-- (!\INTERFACE|D|comb~0_combout\ & !\INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\)) ) ) ) # ( !\INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[2]~reg0_q\ & ( \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[1]~reg0_q\ & ( 
-- (!\INTERFACE|D|ciclagensLFSR|Contador|ClrN3~0_combout\ & (!\INTERFACE|D|comb~0_combout\ & \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\)) ) ) ) # ( \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[2]~reg0_q\ & ( 
-- !\INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[1]~reg0_q\ & ( (!\INTERFACE|D|ciclagensLFSR|Contador|ClrN3~0_combout\ & !\INTERFACE|D|comb~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010001000100000001000000010001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ciclagensLFSR|Contador|ALT_INV_ClrN3~0_combout\,
	datab => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datac => \INTERFACE|D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datae => \INTERFACE|D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[2]~reg0_q\,
	dataf => \INTERFACE|D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[1]~reg0_q\,
	combout => \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout~0_combout\);

-- Location: FF_X82_Y20_N20
\INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout~0_combout\,
	ena => \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[2]~reg0_q\);

-- Location: MLABCELL_X82_Y23_N30
\INTERFACE|D|ciclagensLFSR|Contador|IC_3|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Add0~0_combout\ = ( \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[1]~reg0_q\ & ( (\INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[2]~reg0_q\ & \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[2]~reg0_q\,
	datad => \INTERFACE|D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\,
	dataf => \INTERFACE|D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[1]~reg0_q\,
	combout => \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Add0~0_combout\);

-- Location: LABCELL_X81_Y23_N48
\INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[3]~2_combout\ = ( \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[3]~reg0_q\ & ( \INTERFACE|D|ciclagensLFSR|Contador|ClrN2~0_combout\ & ( (!\INTERFACE|D|comb~0_combout\ & 
-- (!\INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\ & ((!\INTERFACE|D|ciclagensLFSR|Contador|IC_3|Add0~0_combout\) # (!\INTERFACE|D|C|Eatual.Cicla~q\)))) ) ) ) # ( !\INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[3]~reg0_q\ & ( 
-- \INTERFACE|D|ciclagensLFSR|Contador|ClrN2~0_combout\ & ( (\INTERFACE|D|ciclagensLFSR|Contador|IC_3|Add0~0_combout\ & (!\INTERFACE|D|comb~0_combout\ & \INTERFACE|D|C|Eatual.Cicla~q\)) ) ) ) # ( \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[3]~reg0_q\ & ( 
-- !\INTERFACE|D|ciclagensLFSR|Contador|ClrN2~0_combout\ & ( !\INTERFACE|D|comb~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000100000001001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ciclagensLFSR|Contador|IC_3|ALT_INV_Add0~0_combout\,
	datab => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datac => \INTERFACE|D|C|ALT_INV_Eatual.Cicla~q\,
	datad => \INTERFACE|D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datae => \INTERFACE|D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[3]~reg0_q\,
	dataf => \INTERFACE|D|ciclagensLFSR|Contador|ALT_INV_ClrN2~0_combout\,
	combout => \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[3]~2_combout\);

-- Location: FF_X81_Y23_N50
\INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[3]~reg0_q\);

-- Location: LABCELL_X81_Y21_N57
\INTERFACE|D|ciclagensLFSR|S~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ciclagensLFSR|S~0_combout\ = ( \INTERFACE|D|Registrador|Q\(10) & ( \INTERFACE|D|Registrador|Q\(11) & ( (\INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[3]~reg0_q\ & \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[2]~reg0_q\) ) ) ) # ( 
-- !\INTERFACE|D|Registrador|Q\(10) & ( \INTERFACE|D|Registrador|Q\(11) & ( (\INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[3]~reg0_q\ & !\INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[2]~reg0_q\) ) ) ) # ( \INTERFACE|D|Registrador|Q\(10) & ( 
-- !\INTERFACE|D|Registrador|Q\(11) & ( (!\INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[3]~reg0_q\ & \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[2]~reg0_q\) ) ) ) # ( !\INTERFACE|D|Registrador|Q\(10) & ( !\INTERFACE|D|Registrador|Q\(11) & ( 
-- (!\INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[3]~reg0_q\ & !\INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[2]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000010100000101001010000010100000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[3]~reg0_q\,
	datac => \INTERFACE|D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[2]~reg0_q\,
	datae => \INTERFACE|D|Registrador|ALT_INV_Q\(10),
	dataf => \INTERFACE|D|Registrador|ALT_INV_Q\(11),
	combout => \INTERFACE|D|ciclagensLFSR|S~0_combout\);

-- Location: FF_X84_Y22_N47
\INTERFACE|D|Registrador|IQ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|geraSeed|IC_2|Qout[3]~reg0_q\,
	sclr => \INTERFACE|D|comb~0_combout\,
	sload => VCC,
	ena => \INTERFACE|D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Registrador|IQ\(7));

-- Location: FF_X84_Y22_N26
\INTERFACE|D|Registrador|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|Registrador|IQ\(7),
	sload => VCC,
	ena => \INTERFACE|D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Registrador|Q\(7));

-- Location: MLABCELL_X82_Y23_N45
\INTERFACE|D|ciclagensLFSR|S~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ciclagensLFSR|S~1_combout\ = ( \INTERFACE|D|Registrador|Q\(9) & ( \INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[1]~reg0_q\ & ( (!\INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[3]~reg0_q\ & (!\INTERFACE|D|Registrador|Q\(7) & 
-- (!\INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\ $ (\INTERFACE|D|Registrador|Q\(8))))) # (\INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[3]~reg0_q\ & (\INTERFACE|D|Registrador|Q\(7) & (!\INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\ $ 
-- (\INTERFACE|D|Registrador|Q\(8))))) ) ) ) # ( !\INTERFACE|D|Registrador|Q\(9) & ( !\INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[1]~reg0_q\ & ( (!\INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[3]~reg0_q\ & (!\INTERFACE|D|Registrador|Q\(7) & 
-- (!\INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\ $ (\INTERFACE|D|Registrador|Q\(8))))) # (\INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[3]~reg0_q\ & (\INTERFACE|D|Registrador|Q\(7) & (!\INTERFACE|D|ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\ $ 
-- (\INTERFACE|D|Registrador|Q\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000100001000000000000000000000000000000001000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[3]~reg0_q\,
	datab => \INTERFACE|D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datac => \INTERFACE|D|Registrador|ALT_INV_Q\(7),
	datad => \INTERFACE|D|Registrador|ALT_INV_Q\(8),
	datae => \INTERFACE|D|Registrador|ALT_INV_Q\(9),
	dataf => \INTERFACE|D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[1]~reg0_q\,
	combout => \INTERFACE|D|ciclagensLFSR|S~1_combout\);

-- Location: MLABCELL_X82_Y23_N18
\INTERFACE|D|ciclagensLFSR|S~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ciclagensLFSR|S~2_combout\ = ( \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[2]~reg0_q\ & ( \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[1]~reg0_q\ & ( (\INTERFACE|D|Registrador|Q\(5) & (\INTERFACE|D|Registrador|Q\(6) & 
-- (!\INTERFACE|D|Registrador|Q\(4) $ (\INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\)))) ) ) ) # ( !\INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[2]~reg0_q\ & ( \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[1]~reg0_q\ & ( 
-- (\INTERFACE|D|Registrador|Q\(5) & (!\INTERFACE|D|Registrador|Q\(6) & (!\INTERFACE|D|Registrador|Q\(4) $ (\INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\)))) ) ) ) # ( \INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[2]~reg0_q\ & ( 
-- !\INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[1]~reg0_q\ & ( (!\INTERFACE|D|Registrador|Q\(5) & (\INTERFACE|D|Registrador|Q\(6) & (!\INTERFACE|D|Registrador|Q\(4) $ (\INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\)))) ) ) ) # ( 
-- !\INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[2]~reg0_q\ & ( !\INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[1]~reg0_q\ & ( (!\INTERFACE|D|Registrador|Q\(5) & (!\INTERFACE|D|Registrador|Q\(6) & (!\INTERFACE|D|Registrador|Q\(4) $ 
-- (\INTERFACE|D|ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000000001001000000001001000000000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|Registrador|ALT_INV_Q\(4),
	datab => \INTERFACE|D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datac => \INTERFACE|D|Registrador|ALT_INV_Q\(5),
	datad => \INTERFACE|D|Registrador|ALT_INV_Q\(6),
	datae => \INTERFACE|D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[2]~reg0_q\,
	dataf => \INTERFACE|D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[1]~reg0_q\,
	combout => \INTERFACE|D|ciclagensLFSR|S~2_combout\);

-- Location: LABCELL_X81_Y24_N12
\INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[0]~0_combout\ = ( \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & ((!\INTERFACE|D|ciclagensLFSR|Contador|ClrN3~0_combout\ & 
-- ((\INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\))) # (\INTERFACE|D|ciclagensLFSR|Contador|ClrN3~0_combout\ & (\INTERFACE|D|C|Eatual.Cicla~q\ & !\INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\)))) ) ) # ( 
-- !\INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & (!\INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\ $ (((!\INTERFACE|D|C|Eatual.Cicla~q\) # (!\INTERFACE|D|ciclagensLFSR|Contador|ClrN3~0_combout\))))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011100000000100001110000000010000110000000001000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|C|ALT_INV_Eatual.Cicla~q\,
	datab => \INTERFACE|D|ciclagensLFSR|Contador|ALT_INV_ClrN3~0_combout\,
	datac => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datad => \INTERFACE|D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\,
	dataf => \INTERFACE|D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\,
	combout => \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[0]~0_combout\);

-- Location: FF_X81_Y24_N14
\INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\);

-- Location: LABCELL_X81_Y24_N18
\INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout~1_combout\ = ( \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & (!\INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[1]~reg0_q\ & 
-- ((!\INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\) # (!\INTERFACE|D|ciclagensLFSR|Contador|ClrN3~0_combout\)))) ) ) # ( !\INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & 
-- \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[1]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011100000000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datab => \INTERFACE|D|ciclagensLFSR|Contador|ALT_INV_ClrN3~0_combout\,
	datac => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datad => \INTERFACE|D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[1]~reg0_q\,
	dataf => \INTERFACE|D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\,
	combout => \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout~1_combout\);

-- Location: LABCELL_X81_Y24_N21
\INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[0]~2_combout\ = ( \INTERFACE|D|comb~0_combout\ ) # ( !\INTERFACE|D|comb~0_combout\ & ( (\INTERFACE|D|ciclagensLFSR|Contador|ClrN3~0_combout\ & (((\INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\ & 
-- \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\)) # (\INTERFACE|D|C|Eatual.Cicla~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110011000000010011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datab => \INTERFACE|D|ciclagensLFSR|Contador|ALT_INV_ClrN3~0_combout\,
	datac => \INTERFACE|D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\,
	datad => \INTERFACE|D|C|ALT_INV_Eatual.Cicla~q\,
	dataf => \INTERFACE|D|ALT_INV_comb~0_combout\,
	combout => \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[0]~2_combout\);

-- Location: FF_X81_Y24_N20
\INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout~1_combout\,
	ena => \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[1]~reg0_q\);

-- Location: LABCELL_X81_Y24_N6
\INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout~3_combout\ = ( \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[2]~reg0_q\ & ( \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[1]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & 
-- !\INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\) ) ) ) # ( !\INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[2]~reg0_q\ & ( \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[1]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & 
-- (\INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\ & ((!\INTERFACE|D|ciclagensLFSR|Contador|ClrN3~0_combout\) # (!\INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\)))) ) ) ) # ( \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[2]~reg0_q\ & ( 
-- !\INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[1]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & ((!\INTERFACE|D|ciclagensLFSR|Contador|ClrN3~0_combout\) # ((!\INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\) # 
-- (!\INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010100000000000101010001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datab => \INTERFACE|D|ciclagensLFSR|Contador|ALT_INV_ClrN3~0_combout\,
	datac => \INTERFACE|D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datad => \INTERFACE|D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\,
	datae => \INTERFACE|D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[2]~reg0_q\,
	dataf => \INTERFACE|D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[1]~reg0_q\,
	combout => \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout~3_combout\);

-- Location: FF_X81_Y24_N8
\INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout~3_combout\,
	ena => \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[2]~reg0_q\);

-- Location: LABCELL_X81_Y24_N36
\INTERFACE|D|ciclagensLFSR|Contador|IC_4|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Add0~0_combout\ = ( \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\ & ( (\INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[2]~reg0_q\ & \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[1]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[2]~reg0_q\,
	datac => \INTERFACE|D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[1]~reg0_q\,
	dataf => \INTERFACE|D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\,
	combout => \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Add0~0_combout\);

-- Location: LABCELL_X81_Y24_N24
\INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[3]~4_combout\ = ( \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\ & ( \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & 
-- !\INTERFACE|D|ciclagensLFSR|Contador|ClrN3~0_combout\) ) ) ) # ( !\INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\ & ( \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & 
-- (\INTERFACE|D|ciclagensLFSR|Contador|IC_4|Add0~0_combout\ & (\INTERFACE|D|C|Eatual.Cicla~q\ & \INTERFACE|D|ciclagensLFSR|Contador|ClrN3~0_combout\))) ) ) ) # ( \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\ & ( 
-- !\INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & ((!\INTERFACE|D|ciclagensLFSR|Contador|IC_4|Add0~0_combout\) # ((!\INTERFACE|D|C|Eatual.Cicla~q\) # (!\INTERFACE|D|ciclagensLFSR|Contador|ClrN3~0_combout\)))) ) 
-- ) ) # ( !\INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\ & ( !\INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & (\INTERFACE|D|ciclagensLFSR|Contador|IC_4|Add0~0_combout\ & 
-- (\INTERFACE|D|C|Eatual.Cicla~q\ & \INTERFACE|D|ciclagensLFSR|Contador|ClrN3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010101010101010100000000000000000101010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datab => \INTERFACE|D|ciclagensLFSR|Contador|IC_4|ALT_INV_Add0~0_combout\,
	datac => \INTERFACE|D|C|ALT_INV_Eatual.Cicla~q\,
	datad => \INTERFACE|D|ciclagensLFSR|Contador|ALT_INV_ClrN3~0_combout\,
	datae => \INTERFACE|D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\,
	dataf => \INTERFACE|D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\,
	combout => \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[3]~4_combout\);

-- Location: FF_X81_Y24_N26
\INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\);

-- Location: LABCELL_X81_Y24_N57
\INTERFACE|D|ciclagensLFSR|S~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ciclagensLFSR|S~3_combout\ = ( !\INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[1]~reg0_q\ & ( \INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\ & ( (!\INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\ & 
-- (!\INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\ & (!\INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[2]~reg0_q\ & \INTERFACE|D|Registrador|Q\(0)))) ) ) ) # ( !\INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[1]~reg0_q\ & ( 
-- !\INTERFACE|D|ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\ & ( (!\INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\ & (!\INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\ & (!\INTERFACE|D|ciclagensLFSR|Contador|IC_4|Qout[2]~reg0_q\ & 
-- !\INTERFACE|D|Registrador|Q\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datab => \INTERFACE|D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\,
	datac => \INTERFACE|D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[2]~reg0_q\,
	datad => \INTERFACE|D|Registrador|ALT_INV_Q\(0),
	datae => \INTERFACE|D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[1]~reg0_q\,
	dataf => \INTERFACE|D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	combout => \INTERFACE|D|ciclagensLFSR|S~3_combout\);

-- Location: LABCELL_X81_Y21_N24
\INTERFACE|D|ciclagensLFSR|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ciclagensLFSR|S~combout\ = ( \INTERFACE|D|ciclagensLFSR|S~3_combout\ & ( (\INTERFACE|D|ciclagensLFSR|S~4_combout\ & (\INTERFACE|D|ciclagensLFSR|S~0_combout\ & (\INTERFACE|D|ciclagensLFSR|S~1_combout\ & 
-- \INTERFACE|D|ciclagensLFSR|S~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ciclagensLFSR|ALT_INV_S~4_combout\,
	datab => \INTERFACE|D|ciclagensLFSR|ALT_INV_S~0_combout\,
	datac => \INTERFACE|D|ciclagensLFSR|ALT_INV_S~1_combout\,
	datad => \INTERFACE|D|ciclagensLFSR|ALT_INV_S~2_combout\,
	dataf => \INTERFACE|D|ciclagensLFSR|ALT_INV_S~3_combout\,
	combout => \INTERFACE|D|ciclagensLFSR|S~combout\);

-- Location: LABCELL_X81_Y21_N51
\INTERFACE|D|C|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|C|Selector1~0_combout\ = ( \INTERFACE|D|C|Eatual.Cicla~q\ & ( \INTERFACE|D|ciclagensLFSR|S~combout\ & ( \INTERFACE|D|C|Eatual.RegistraSeed2~q\ ) ) ) # ( !\INTERFACE|D|C|Eatual.Cicla~q\ & ( \INTERFACE|D|ciclagensLFSR|S~combout\ & ( 
-- \INTERFACE|D|C|Eatual.RegistraSeed2~q\ ) ) ) # ( \INTERFACE|D|C|Eatual.Cicla~q\ & ( !\INTERFACE|D|ciclagensLFSR|S~combout\ ) ) # ( !\INTERFACE|D|C|Eatual.Cicla~q\ & ( !\INTERFACE|D|ciclagensLFSR|S~combout\ & ( \INTERFACE|D|C|Eatual.RegistraSeed2~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|C|ALT_INV_Eatual.RegistraSeed2~q\,
	datae => \INTERFACE|D|C|ALT_INV_Eatual.Cicla~q\,
	dataf => \INTERFACE|D|ciclagensLFSR|ALT_INV_S~combout\,
	combout => \INTERFACE|D|C|Selector1~0_combout\);

-- Location: FF_X81_Y21_N53
\INTERFACE|D|C|Eatual.Cicla\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|C|Selector1~0_combout\,
	clrn => \INTERFACE|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|C|Eatual.Cicla~q\);

-- Location: FF_X83_Y24_N2
\INTERFACE|D|PSEUDORANDOM|count[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|PSEUDORANDOM|count[1]~51_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	ena => \INTERFACE|D|C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|PSEUDORANDOM|count[1]~_emulated_q\);

-- Location: LABCELL_X83_Y24_N42
\INTERFACE|D|PSEUDORANDOM|count[1]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[1]~50_combout\ = ( \INTERFACE|D|comb~0_combout\ & ( \INTERFACE|D|Registrador|Q\(1) ) ) # ( !\INTERFACE|D|comb~0_combout\ & ( !\INTERFACE|D|PSEUDORANDOM|count[1]~49_combout\ $ 
-- (!\INTERFACE|D|PSEUDORANDOM|count[1]~_emulated_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[1]~49_combout\,
	datac => \INTERFACE|D|Registrador|ALT_INV_Q\(1),
	datad => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[1]~_emulated_q\,
	dataf => \INTERFACE|D|ALT_INV_comb~0_combout\,
	combout => \INTERFACE|D|PSEUDORANDOM|count[1]~50_combout\);

-- Location: LABCELL_X83_Y24_N24
\INTERFACE|D|PSEUDORANDOM|count[2]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[2]~47_combout\ = !\INTERFACE|D|PSEUDORANDOM|count[1]~50_combout\ $ (!\INTERFACE|D|PSEUDORANDOM|count[2]~45_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[1]~50_combout\,
	datad => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[2]~45_combout\,
	combout => \INTERFACE|D|PSEUDORANDOM|count[2]~47_combout\);

-- Location: FF_X83_Y24_N25
\INTERFACE|D|PSEUDORANDOM|count[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|PSEUDORANDOM|count[2]~47_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	ena => \INTERFACE|D|C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|PSEUDORANDOM|count[2]~_emulated_q\);

-- Location: MLABCELL_X82_Y23_N36
\INTERFACE|D|PSEUDORANDOM|count[2]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[2]~46_combout\ = ( \INTERFACE|D|PSEUDORANDOM|count[2]~_emulated_q\ & ( \INTERFACE|D|comb~0_combout\ & ( \INTERFACE|D|Registrador|Q\(2) ) ) ) # ( !\INTERFACE|D|PSEUDORANDOM|count[2]~_emulated_q\ & ( 
-- \INTERFACE|D|comb~0_combout\ & ( \INTERFACE|D|Registrador|Q\(2) ) ) ) # ( \INTERFACE|D|PSEUDORANDOM|count[2]~_emulated_q\ & ( !\INTERFACE|D|comb~0_combout\ & ( !\INTERFACE|D|PSEUDORANDOM|count[2]~45_combout\ ) ) ) # ( 
-- !\INTERFACE|D|PSEUDORANDOM|count[2]~_emulated_q\ & ( !\INTERFACE|D|comb~0_combout\ & ( \INTERFACE|D|PSEUDORANDOM|count[2]~45_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|D|Registrador|ALT_INV_Q\(2),
	datad => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[2]~45_combout\,
	datae => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[2]~_emulated_q\,
	dataf => \INTERFACE|D|ALT_INV_comb~0_combout\,
	combout => \INTERFACE|D|PSEUDORANDOM|count[2]~46_combout\);

-- Location: MLABCELL_X82_Y23_N27
\INTERFACE|D|PSEUDORANDOM|count[3]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[3]~41_combout\ = ( \INTERFACE|D|comb~0_combout\ & ( \INTERFACE|D|Registrador|Q\(3) ) ) # ( !\INTERFACE|D|comb~0_combout\ & ( \INTERFACE|D|Registrador|Q\(3) & ( \INTERFACE|D|PSEUDORANDOM|count[3]~41_combout\ ) ) ) # ( 
-- !\INTERFACE|D|comb~0_combout\ & ( !\INTERFACE|D|Registrador|Q\(3) & ( \INTERFACE|D|PSEUDORANDOM|count[3]~41_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[3]~41_combout\,
	datae => \INTERFACE|D|ALT_INV_comb~0_combout\,
	dataf => \INTERFACE|D|Registrador|ALT_INV_Q\(3),
	combout => \INTERFACE|D|PSEUDORANDOM|count[3]~41_combout\);

-- Location: MLABCELL_X82_Y23_N51
\INTERFACE|D|PSEUDORANDOM|count[3]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[3]~43_combout\ = !\INTERFACE|D|PSEUDORANDOM|count[2]~46_combout\ $ (!\INTERFACE|D|PSEUDORANDOM|count[3]~41_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[2]~46_combout\,
	datad => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[3]~41_combout\,
	combout => \INTERFACE|D|PSEUDORANDOM|count[3]~43_combout\);

-- Location: FF_X82_Y23_N53
\INTERFACE|D|PSEUDORANDOM|count[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|PSEUDORANDOM|count[3]~43_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	ena => \INTERFACE|D|C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|PSEUDORANDOM|count[3]~_emulated_q\);

-- Location: LABCELL_X83_Y23_N57
\INTERFACE|D|PSEUDORANDOM|count[3]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[3]~42_combout\ = ( \INTERFACE|D|comb~0_combout\ & ( \INTERFACE|D|Registrador|Q\(3) ) ) # ( !\INTERFACE|D|comb~0_combout\ & ( !\INTERFACE|D|PSEUDORANDOM|count[3]~_emulated_q\ $ 
-- (!\INTERFACE|D|PSEUDORANDOM|count[3]~41_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[3]~_emulated_q\,
	datab => \INTERFACE|D|Registrador|ALT_INV_Q\(3),
	datad => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[3]~41_combout\,
	dataf => \INTERFACE|D|ALT_INV_comb~0_combout\,
	combout => \INTERFACE|D|PSEUDORANDOM|count[3]~42_combout\);

-- Location: MLABCELL_X82_Y23_N12
\INTERFACE|D|PSEUDORANDOM|count[4]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[4]~39_combout\ = ( \INTERFACE|D|PSEUDORANDOM|count[4]~37_combout\ & ( !\INTERFACE|D|PSEUDORANDOM|count[3]~42_combout\ ) ) # ( !\INTERFACE|D|PSEUDORANDOM|count[4]~37_combout\ & ( 
-- \INTERFACE|D|PSEUDORANDOM|count[3]~42_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[3]~42_combout\,
	dataf => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[4]~37_combout\,
	combout => \INTERFACE|D|PSEUDORANDOM|count[4]~39_combout\);

-- Location: FF_X82_Y23_N13
\INTERFACE|D|PSEUDORANDOM|count[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|PSEUDORANDOM|count[4]~39_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	ena => \INTERFACE|D|C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|PSEUDORANDOM|count[4]~_emulated_q\);

-- Location: LABCELL_X83_Y23_N0
\INTERFACE|D|PSEUDORANDOM|count[4]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[4]~38_combout\ = ( \INTERFACE|D|comb~0_combout\ & ( \INTERFACE|D|Registrador|Q\(4) ) ) # ( !\INTERFACE|D|comb~0_combout\ & ( !\INTERFACE|D|PSEUDORANDOM|count[4]~37_combout\ $ 
-- (!\INTERFACE|D|PSEUDORANDOM|count[4]~_emulated_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[4]~37_combout\,
	datac => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[4]~_emulated_q\,
	datad => \INTERFACE|D|Registrador|ALT_INV_Q\(4),
	dataf => \INTERFACE|D|ALT_INV_comb~0_combout\,
	combout => \INTERFACE|D|PSEUDORANDOM|count[4]~38_combout\);

-- Location: LABCELL_X83_Y23_N15
\INTERFACE|D|PSEUDORANDOM|count[5]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[5]~35_combout\ = ( \INTERFACE|D|PSEUDORANDOM|count[4]~38_combout\ & ( !\INTERFACE|D|PSEUDORANDOM|count[5]~33_combout\ ) ) # ( !\INTERFACE|D|PSEUDORANDOM|count[4]~38_combout\ & ( 
-- \INTERFACE|D|PSEUDORANDOM|count[5]~33_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[5]~33_combout\,
	dataf => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[4]~38_combout\,
	combout => \INTERFACE|D|PSEUDORANDOM|count[5]~35_combout\);

-- Location: FF_X83_Y23_N16
\INTERFACE|D|PSEUDORANDOM|count[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|PSEUDORANDOM|count[5]~35_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	ena => \INTERFACE|D|C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|PSEUDORANDOM|count[5]~_emulated_q\);

-- Location: LABCELL_X83_Y23_N21
\INTERFACE|D|PSEUDORANDOM|count[5]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[5]~34_combout\ = ( \INTERFACE|D|PSEUDORANDOM|count[5]~33_combout\ & ( (!\INTERFACE|D|comb~0_combout\ & (!\INTERFACE|D|PSEUDORANDOM|count[5]~_emulated_q\)) # (\INTERFACE|D|comb~0_combout\ & 
-- ((\INTERFACE|D|Registrador|Q\(5)))) ) ) # ( !\INTERFACE|D|PSEUDORANDOM|count[5]~33_combout\ & ( (!\INTERFACE|D|comb~0_combout\ & (\INTERFACE|D|PSEUDORANDOM|count[5]~_emulated_q\)) # (\INTERFACE|D|comb~0_combout\ & ((\INTERFACE|D|Registrador|Q\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111110100000101011111010000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[5]~_emulated_q\,
	datac => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datad => \INTERFACE|D|Registrador|ALT_INV_Q\(5),
	dataf => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[5]~33_combout\,
	combout => \INTERFACE|D|PSEUDORANDOM|count[5]~34_combout\);

-- Location: LABCELL_X83_Y23_N18
\INTERFACE|D|PSEUDORANDOM|count[6]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[6]~31_combout\ = ( \INTERFACE|D|PSEUDORANDOM|count[5]~34_combout\ & ( !\INTERFACE|D|PSEUDORANDOM|count[6]~29_combout\ ) ) # ( !\INTERFACE|D|PSEUDORANDOM|count[5]~34_combout\ & ( 
-- \INTERFACE|D|PSEUDORANDOM|count[6]~29_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[6]~29_combout\,
	dataf => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[5]~34_combout\,
	combout => \INTERFACE|D|PSEUDORANDOM|count[6]~31_combout\);

-- Location: FF_X83_Y23_N20
\INTERFACE|D|PSEUDORANDOM|count[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|PSEUDORANDOM|count[6]~31_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	ena => \INTERFACE|D|C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|PSEUDORANDOM|count[6]~_emulated_q\);

-- Location: LABCELL_X83_Y23_N27
\INTERFACE|D|PSEUDORANDOM|count[6]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[6]~30_combout\ = ( \INTERFACE|D|comb~0_combout\ & ( \INTERFACE|D|Registrador|Q\(6) ) ) # ( !\INTERFACE|D|comb~0_combout\ & ( !\INTERFACE|D|PSEUDORANDOM|count[6]~_emulated_q\ $ 
-- (!\INTERFACE|D|PSEUDORANDOM|count[6]~29_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[6]~_emulated_q\,
	datab => \INTERFACE|D|Registrador|ALT_INV_Q\(6),
	datad => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[6]~29_combout\,
	dataf => \INTERFACE|D|ALT_INV_comb~0_combout\,
	combout => \INTERFACE|D|PSEUDORANDOM|count[6]~30_combout\);

-- Location: MLABCELL_X84_Y22_N27
\INTERFACE|D|PSEUDORANDOM|count[7]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[7]~25_combout\ = ( \INTERFACE|D|comb~0_combout\ & ( \INTERFACE|D|Registrador|Q\(7) ) ) # ( !\INTERFACE|D|comb~0_combout\ & ( \INTERFACE|D|Registrador|Q\(7) & ( \INTERFACE|D|PSEUDORANDOM|count[7]~25_combout\ ) ) ) # ( 
-- !\INTERFACE|D|comb~0_combout\ & ( !\INTERFACE|D|Registrador|Q\(7) & ( \INTERFACE|D|PSEUDORANDOM|count[7]~25_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[7]~25_combout\,
	datae => \INTERFACE|D|ALT_INV_comb~0_combout\,
	dataf => \INTERFACE|D|Registrador|ALT_INV_Q\(7),
	combout => \INTERFACE|D|PSEUDORANDOM|count[7]~25_combout\);

-- Location: LABCELL_X83_Y23_N12
\INTERFACE|D|PSEUDORANDOM|count[7]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[7]~27_combout\ = ( \INTERFACE|D|PSEUDORANDOM|count[7]~25_combout\ & ( !\INTERFACE|D|PSEUDORANDOM|count[6]~30_combout\ ) ) # ( !\INTERFACE|D|PSEUDORANDOM|count[7]~25_combout\ & ( 
-- \INTERFACE|D|PSEUDORANDOM|count[6]~30_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[6]~30_combout\,
	dataf => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[7]~25_combout\,
	combout => \INTERFACE|D|PSEUDORANDOM|count[7]~27_combout\);

-- Location: FF_X83_Y23_N14
\INTERFACE|D|PSEUDORANDOM|count[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|PSEUDORANDOM|count[7]~27_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	ena => \INTERFACE|D|C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|PSEUDORANDOM|count[7]~_emulated_q\);

-- Location: LABCELL_X83_Y23_N9
\INTERFACE|D|PSEUDORANDOM|count[7]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[7]~26_combout\ = ( \INTERFACE|D|PSEUDORANDOM|count[7]~25_combout\ & ( (!\INTERFACE|D|comb~0_combout\ & (!\INTERFACE|D|PSEUDORANDOM|count[7]~_emulated_q\)) # (\INTERFACE|D|comb~0_combout\ & 
-- ((\INTERFACE|D|Registrador|Q\(7)))) ) ) # ( !\INTERFACE|D|PSEUDORANDOM|count[7]~25_combout\ & ( (!\INTERFACE|D|comb~0_combout\ & (\INTERFACE|D|PSEUDORANDOM|count[7]~_emulated_q\)) # (\INTERFACE|D|comb~0_combout\ & ((\INTERFACE|D|Registrador|Q\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111111000000110011111100000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[7]~_emulated_q\,
	datac => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datad => \INTERFACE|D|Registrador|ALT_INV_Q\(7),
	dataf => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[7]~25_combout\,
	combout => \INTERFACE|D|PSEUDORANDOM|count[7]~26_combout\);

-- Location: MLABCELL_X82_Y23_N33
\INTERFACE|D|PSEUDORANDOM|count[8]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[8]~21_combout\ = ( \INTERFACE|D|comb~0_combout\ & ( \INTERFACE|D|Registrador|Q\(8) ) ) # ( !\INTERFACE|D|comb~0_combout\ & ( \INTERFACE|D|PSEUDORANDOM|count[8]~21_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[8]~21_combout\,
	datac => \INTERFACE|D|Registrador|ALT_INV_Q\(8),
	dataf => \INTERFACE|D|ALT_INV_comb~0_combout\,
	combout => \INTERFACE|D|PSEUDORANDOM|count[8]~21_combout\);

-- Location: LABCELL_X83_Y23_N42
\INTERFACE|D|PSEUDORANDOM|count[8]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[8]~23_combout\ = !\INTERFACE|D|PSEUDORANDOM|count[7]~26_combout\ $ (!\INTERFACE|D|PSEUDORANDOM|count[8]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110000110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[7]~26_combout\,
	datad => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[8]~21_combout\,
	combout => \INTERFACE|D|PSEUDORANDOM|count[8]~23_combout\);

-- Location: FF_X83_Y23_N44
\INTERFACE|D|PSEUDORANDOM|count[8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|PSEUDORANDOM|count[8]~23_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	ena => \INTERFACE|D|C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|PSEUDORANDOM|count[8]~_emulated_q\);

-- Location: LABCELL_X83_Y23_N33
\INTERFACE|D|PSEUDORANDOM|count[8]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[8]~22_combout\ = ( \INTERFACE|D|comb~0_combout\ & ( \INTERFACE|D|Registrador|Q\(8) ) ) # ( !\INTERFACE|D|comb~0_combout\ & ( !\INTERFACE|D|PSEUDORANDOM|count[8]~_emulated_q\ $ 
-- (!\INTERFACE|D|PSEUDORANDOM|count[8]~21_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|Registrador|ALT_INV_Q\(8),
	datac => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[8]~_emulated_q\,
	datad => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[8]~21_combout\,
	dataf => \INTERFACE|D|ALT_INV_comb~0_combout\,
	combout => \INTERFACE|D|PSEUDORANDOM|count[8]~22_combout\);

-- Location: LABCELL_X83_Y23_N3
\INTERFACE|D|PSEUDORANDOM|count[9]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[9]~19_combout\ = ( \INTERFACE|D|PSEUDORANDOM|count[8]~22_combout\ & ( !\INTERFACE|D|PSEUDORANDOM|count[9]~17_combout\ ) ) # ( !\INTERFACE|D|PSEUDORANDOM|count[8]~22_combout\ & ( 
-- \INTERFACE|D|PSEUDORANDOM|count[9]~17_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[9]~17_combout\,
	dataf => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[8]~22_combout\,
	combout => \INTERFACE|D|PSEUDORANDOM|count[9]~19_combout\);

-- Location: FF_X83_Y23_N5
\INTERFACE|D|PSEUDORANDOM|count[9]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|PSEUDORANDOM|count[9]~19_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	ena => \INTERFACE|D|C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|PSEUDORANDOM|count[9]~_emulated_q\);

-- Location: LABCELL_X83_Y23_N45
\INTERFACE|D|PSEUDORANDOM|count[9]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[9]~18_combout\ = ( \INTERFACE|D|PSEUDORANDOM|count[9]~17_combout\ & ( (!\INTERFACE|D|comb~0_combout\ & (!\INTERFACE|D|PSEUDORANDOM|count[9]~_emulated_q\)) # (\INTERFACE|D|comb~0_combout\ & 
-- ((\INTERFACE|D|Registrador|Q\(9)))) ) ) # ( !\INTERFACE|D|PSEUDORANDOM|count[9]~17_combout\ & ( (!\INTERFACE|D|comb~0_combout\ & (\INTERFACE|D|PSEUDORANDOM|count[9]~_emulated_q\)) # (\INTERFACE|D|comb~0_combout\ & ((\INTERFACE|D|Registrador|Q\(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111110100000101011111010000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[9]~_emulated_q\,
	datac => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datad => \INTERFACE|D|Registrador|ALT_INV_Q\(9),
	dataf => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[9]~17_combout\,
	combout => \INTERFACE|D|PSEUDORANDOM|count[9]~18_combout\);

-- Location: LABCELL_X83_Y23_N30
\INTERFACE|D|PSEUDORANDOM|count[10]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[10]~15_combout\ = ( \INTERFACE|D|PSEUDORANDOM|count[9]~18_combout\ & ( !\INTERFACE|D|PSEUDORANDOM|count[10]~13_combout\ ) ) # ( !\INTERFACE|D|PSEUDORANDOM|count[9]~18_combout\ & ( 
-- \INTERFACE|D|PSEUDORANDOM|count[10]~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[10]~13_combout\,
	dataf => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[9]~18_combout\,
	combout => \INTERFACE|D|PSEUDORANDOM|count[10]~15_combout\);

-- Location: FF_X83_Y23_N31
\INTERFACE|D|PSEUDORANDOM|count[10]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|PSEUDORANDOM|count[10]~15_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	ena => \INTERFACE|D|C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|PSEUDORANDOM|count[10]~_emulated_q\);

-- Location: LABCELL_X83_Y22_N27
\INTERFACE|D|PSEUDORANDOM|count[10]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[10]~14_combout\ = ( \INTERFACE|D|PSEUDORANDOM|count[10]~_emulated_q\ & ( \INTERFACE|D|PSEUDORANDOM|count[10]~13_combout\ & ( (\INTERFACE|D|Registrador|Q\(10) & \INTERFACE|D|comb~0_combout\) ) ) ) # ( 
-- !\INTERFACE|D|PSEUDORANDOM|count[10]~_emulated_q\ & ( \INTERFACE|D|PSEUDORANDOM|count[10]~13_combout\ & ( (!\INTERFACE|D|comb~0_combout\) # (\INTERFACE|D|Registrador|Q\(10)) ) ) ) # ( \INTERFACE|D|PSEUDORANDOM|count[10]~_emulated_q\ & ( 
-- !\INTERFACE|D|PSEUDORANDOM|count[10]~13_combout\ & ( (!\INTERFACE|D|comb~0_combout\) # (\INTERFACE|D|Registrador|Q\(10)) ) ) ) # ( !\INTERFACE|D|PSEUDORANDOM|count[10]~_emulated_q\ & ( !\INTERFACE|D|PSEUDORANDOM|count[10]~13_combout\ & ( 
-- (\INTERFACE|D|Registrador|Q\(10) & \INTERFACE|D|comb~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001111110011111100110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|D|Registrador|ALT_INV_Q\(10),
	datac => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datae => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[10]~_emulated_q\,
	dataf => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[10]~13_combout\,
	combout => \INTERFACE|D|PSEUDORANDOM|count[10]~14_combout\);

-- Location: LABCELL_X83_Y24_N45
\INTERFACE|D|PSEUDORANDOM|count[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[11]~11_combout\ = ( \INTERFACE|D|PSEUDORANDOM|count[10]~14_combout\ & ( !\INTERFACE|D|PSEUDORANDOM|count[11]~9_combout\ ) ) # ( !\INTERFACE|D|PSEUDORANDOM|count[10]~14_combout\ & ( 
-- \INTERFACE|D|PSEUDORANDOM|count[11]~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[11]~9_combout\,
	dataf => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[10]~14_combout\,
	combout => \INTERFACE|D|PSEUDORANDOM|count[11]~11_combout\);

-- Location: FF_X83_Y24_N49
\INTERFACE|D|PSEUDORANDOM|count[11]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|PSEUDORANDOM|count[11]~11_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \INTERFACE|D|C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|PSEUDORANDOM|count[11]~_emulated_q\);

-- Location: LABCELL_X83_Y24_N21
\INTERFACE|D|PSEUDORANDOM|count[11]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[11]~10_combout\ = ( \INTERFACE|D|comb~0_combout\ & ( \INTERFACE|D|Registrador|Q\(11) ) ) # ( !\INTERFACE|D|comb~0_combout\ & ( !\INTERFACE|D|PSEUDORANDOM|count[11]~9_combout\ $ 
-- (!\INTERFACE|D|PSEUDORANDOM|count[11]~_emulated_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|Registrador|ALT_INV_Q\(11),
	datac => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[11]~9_combout\,
	datad => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[11]~_emulated_q\,
	dataf => \INTERFACE|D|ALT_INV_comb~0_combout\,
	combout => \INTERFACE|D|PSEUDORANDOM|count[11]~10_combout\);

-- Location: LABCELL_X83_Y24_N3
\INTERFACE|D|PSEUDORANDOM|count[0]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[0]~53_combout\ = ( \INTERFACE|D|Registrador|Q\(0) & ( (\INTERFACE|D|PSEUDORANDOM|count[0]~53_combout\) # (\INTERFACE|D|comb~0_combout\) ) ) # ( !\INTERFACE|D|Registrador|Q\(0) & ( (!\INTERFACE|D|comb~0_combout\ & 
-- \INTERFACE|D|PSEUDORANDOM|count[0]~53_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datad => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[0]~53_combout\,
	dataf => \INTERFACE|D|Registrador|ALT_INV_Q\(0),
	combout => \INTERFACE|D|PSEUDORANDOM|count[0]~53_combout\);

-- Location: LABCELL_X85_Y24_N15
\INTERFACE|D|geraSeed|IC_4|Qout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|geraSeed|IC_4|Qout~1_combout\ = ( !\INTERFACE|comb~0_combout\ & ( !\INTERFACE|D|geraSeed|IC_4|Qout[0]~reg0_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INTERFACE|D|geraSeed|IC_4|ALT_INV_Qout[0]~reg0_q\,
	dataf => \INTERFACE|ALT_INV_comb~0_combout\,
	combout => \INTERFACE|D|geraSeed|IC_4|Qout~1_combout\);

-- Location: LABCELL_X85_Y24_N6
\INTERFACE|D|geraSeed|IC_3|Qout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|geraSeed|IC_3|Qout~4_combout\ = ( \INTERFACE|D|geraSeed|ClrN4~0_combout\ & ( \INTERFACE|C|WideNor1~0_combout\ ) ) # ( !\INTERFACE|D|geraSeed|ClrN4~0_combout\ & ( \INTERFACE|C|WideNor1~0_combout\ & ( \reset~input_o\ ) ) ) # ( 
-- \INTERFACE|D|geraSeed|ClrN4~0_combout\ & ( !\INTERFACE|C|WideNor1~0_combout\ ) ) # ( !\INTERFACE|D|geraSeed|ClrN4~0_combout\ & ( !\INTERFACE|C|WideNor1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	datae => \INTERFACE|D|geraSeed|ALT_INV_ClrN4~0_combout\,
	dataf => \INTERFACE|C|ALT_INV_WideNor1~0_combout\,
	combout => \INTERFACE|D|geraSeed|IC_3|Qout~4_combout\);

-- Location: FF_X85_Y24_N17
\INTERFACE|D|geraSeed|IC_4|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|geraSeed|IC_4|Qout~1_combout\,
	ena => \INTERFACE|D|geraSeed|IC_3|Qout~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|geraSeed|IC_4|Qout[0]~reg0_q\);

-- Location: LABCELL_X85_Y24_N12
\INTERFACE|D|geraSeed|IC_4|Qout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|geraSeed|IC_4|Qout~0_combout\ = ( \INTERFACE|D|geraSeed|IC_4|Qout[0]~reg0_q\ & ( (!\INTERFACE|comb~0_combout\ & (!\INTERFACE|D|geraSeed|IC_4|Qout[1]~reg0_q\ & ((!\INTERFACE|D|geraSeed|ClrN4~0_combout\) # 
-- (!\INTERFACE|D|geraSeed|IC_4|Qout[3]~reg0_q\)))) ) ) # ( !\INTERFACE|D|geraSeed|IC_4|Qout[0]~reg0_q\ & ( (!\INTERFACE|comb~0_combout\ & \INTERFACE|D|geraSeed|IC_4|Qout[1]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011001000000000001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|geraSeed|ALT_INV_ClrN4~0_combout\,
	datab => \INTERFACE|ALT_INV_comb~0_combout\,
	datac => \INTERFACE|D|geraSeed|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datad => \INTERFACE|D|geraSeed|IC_4|ALT_INV_Qout[1]~reg0_q\,
	dataf => \INTERFACE|D|geraSeed|IC_4|ALT_INV_Qout[0]~reg0_q\,
	combout => \INTERFACE|D|geraSeed|IC_4|Qout~0_combout\);

-- Location: FF_X85_Y24_N14
\INTERFACE|D|geraSeed|IC_4|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|geraSeed|IC_4|Qout~0_combout\,
	ena => \INTERFACE|D|geraSeed|IC_3|Qout~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|geraSeed|IC_4|Qout[1]~reg0_q\);

-- Location: LABCELL_X85_Y24_N18
\INTERFACE|D|geraSeed|IC_4|Qout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|geraSeed|IC_4|Qout~3_combout\ = ( \INTERFACE|D|geraSeed|IC_4|Qout[2]~reg0_q\ & ( \INTERFACE|D|geraSeed|IC_4|Qout[1]~reg0_q\ & ( (!\INTERFACE|comb~0_combout\ & !\INTERFACE|D|geraSeed|IC_4|Qout[0]~reg0_q\) ) ) ) # ( 
-- !\INTERFACE|D|geraSeed|IC_4|Qout[2]~reg0_q\ & ( \INTERFACE|D|geraSeed|IC_4|Qout[1]~reg0_q\ & ( (!\INTERFACE|comb~0_combout\ & (\INTERFACE|D|geraSeed|IC_4|Qout[0]~reg0_q\ & ((!\INTERFACE|D|geraSeed|ClrN4~0_combout\) # 
-- (!\INTERFACE|D|geraSeed|IC_4|Qout[3]~reg0_q\)))) ) ) ) # ( \INTERFACE|D|geraSeed|IC_4|Qout[2]~reg0_q\ & ( !\INTERFACE|D|geraSeed|IC_4|Qout[1]~reg0_q\ & ( (!\INTERFACE|comb~0_combout\ & ((!\INTERFACE|D|geraSeed|ClrN4~0_combout\) # 
-- ((!\INTERFACE|D|geraSeed|IC_4|Qout[3]~reg0_q\) # (!\INTERFACE|D|geraSeed|IC_4|Qout[0]~reg0_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100100000000000110010001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|geraSeed|ALT_INV_ClrN4~0_combout\,
	datab => \INTERFACE|ALT_INV_comb~0_combout\,
	datac => \INTERFACE|D|geraSeed|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datad => \INTERFACE|D|geraSeed|IC_4|ALT_INV_Qout[0]~reg0_q\,
	datae => \INTERFACE|D|geraSeed|IC_4|ALT_INV_Qout[2]~reg0_q\,
	dataf => \INTERFACE|D|geraSeed|IC_4|ALT_INV_Qout[1]~reg0_q\,
	combout => \INTERFACE|D|geraSeed|IC_4|Qout~3_combout\);

-- Location: FF_X85_Y24_N20
\INTERFACE|D|geraSeed|IC_4|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|geraSeed|IC_4|Qout~3_combout\,
	ena => \INTERFACE|D|geraSeed|IC_3|Qout~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|geraSeed|IC_4|Qout[2]~reg0_q\);

-- Location: MLABCELL_X84_Y22_N0
\INTERFACE|D|geraSeed|IC_4|Qout[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|geraSeed|IC_4|Qout[3]~2_combout\ = ( \INTERFACE|D|geraSeed|IC_4|Qout[3]~reg0_q\ & ( !\INTERFACE|comb~0_combout\ & ( (!\INTERFACE|D|geraSeed|IC_4|Qout[0]~reg0_q\) # (!\INTERFACE|D|geraSeed|ClrN4~0_combout\) ) ) ) # ( 
-- !\INTERFACE|D|geraSeed|IC_4|Qout[3]~reg0_q\ & ( !\INTERFACE|comb~0_combout\ & ( (\INTERFACE|D|geraSeed|IC_4|Qout[1]~reg0_q\ & (\INTERFACE|D|geraSeed|IC_4|Qout[0]~reg0_q\ & (\INTERFACE|D|geraSeed|IC_4|Qout[2]~reg0_q\ & 
-- \INTERFACE|D|geraSeed|ClrN4~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001111111111100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|geraSeed|IC_4|ALT_INV_Qout[1]~reg0_q\,
	datab => \INTERFACE|D|geraSeed|IC_4|ALT_INV_Qout[0]~reg0_q\,
	datac => \INTERFACE|D|geraSeed|IC_4|ALT_INV_Qout[2]~reg0_q\,
	datad => \INTERFACE|D|geraSeed|ALT_INV_ClrN4~0_combout\,
	datae => \INTERFACE|D|geraSeed|IC_4|ALT_INV_Qout[3]~reg0_q\,
	dataf => \INTERFACE|ALT_INV_comb~0_combout\,
	combout => \INTERFACE|D|geraSeed|IC_4|Qout[3]~2_combout\);

-- Location: FF_X84_Y22_N2
\INTERFACE|D|geraSeed|IC_4|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|geraSeed|IC_4|Qout[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|geraSeed|IC_4|Qout[3]~reg0_q\);

-- Location: FF_X84_Y22_N41
\INTERFACE|D|Registrador|IQ[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|geraSeed|IC_4|Qout[3]~reg0_q\,
	sclr => \INTERFACE|D|comb~0_combout\,
	sload => VCC,
	ena => \INTERFACE|D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Registrador|IQ\(15));

-- Location: FF_X84_Y22_N44
\INTERFACE|D|Registrador|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|Registrador|IQ\(15),
	sload => VCC,
	ena => \INTERFACE|D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Registrador|Q\(15));

-- Location: FF_X84_Y22_N32
\INTERFACE|D|Registrador|IQ[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|geraSeed|IC_4|Qout[2]~reg0_q\,
	sclr => \INTERFACE|D|comb~0_combout\,
	sload => VCC,
	ena => \INTERFACE|D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Registrador|IQ\(14));

-- Location: FF_X84_Y22_N20
\INTERFACE|D|Registrador|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|Registrador|IQ\(14),
	sload => VCC,
	ena => \INTERFACE|D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Registrador|Q\(14));

-- Location: MLABCELL_X84_Y22_N9
\INTERFACE|D|PSEUDORANDOM|count[14]~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[14]~61_combout\ = ( \INTERFACE|D|comb~0_combout\ & ( \INTERFACE|D|Registrador|Q\(14) ) ) # ( !\INTERFACE|D|comb~0_combout\ & ( \INTERFACE|D|Registrador|Q\(14) & ( \INTERFACE|D|PSEUDORANDOM|count[14]~61_combout\ ) ) ) # ( 
-- !\INTERFACE|D|comb~0_combout\ & ( !\INTERFACE|D|Registrador|Q\(14) & ( \INTERFACE|D|PSEUDORANDOM|count[14]~61_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[14]~61_combout\,
	datae => \INTERFACE|D|ALT_INV_comb~0_combout\,
	dataf => \INTERFACE|D|Registrador|ALT_INV_Q\(14),
	combout => \INTERFACE|D|PSEUDORANDOM|count[14]~61_combout\);

-- Location: FF_X84_Y22_N23
\INTERFACE|D|Registrador|IQ[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|geraSeed|IC_4|Qout[1]~reg0_q\,
	sclr => \INTERFACE|D|comb~0_combout\,
	sload => VCC,
	ena => \INTERFACE|D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Registrador|IQ\(13));

-- Location: FF_X84_Y22_N56
\INTERFACE|D|Registrador|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|Registrador|IQ\(13),
	sload => VCC,
	ena => \INTERFACE|D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Registrador|Q\(13));

-- Location: MLABCELL_X84_Y22_N39
\INTERFACE|D|PSEUDORANDOM|count[13]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[13]~1_combout\ = ( \INTERFACE|D|Registrador|Q\(13) & ( (\INTERFACE|D|comb~0_combout\) # (\INTERFACE|D|PSEUDORANDOM|count[13]~1_combout\) ) ) # ( !\INTERFACE|D|Registrador|Q\(13) & ( 
-- (\INTERFACE|D|PSEUDORANDOM|count[13]~1_combout\ & !\INTERFACE|D|comb~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[13]~1_combout\,
	datac => \INTERFACE|D|ALT_INV_comb~0_combout\,
	dataf => \INTERFACE|D|Registrador|ALT_INV_Q\(13),
	combout => \INTERFACE|D|PSEUDORANDOM|count[13]~1_combout\);

-- Location: FF_X84_Y22_N29
\INTERFACE|D|Registrador|IQ[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|geraSeed|IC_4|Qout[0]~reg0_q\,
	sclr => \INTERFACE|D|comb~0_combout\,
	sload => VCC,
	ena => \INTERFACE|D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Registrador|IQ\(12));

-- Location: FF_X83_Y24_N59
\INTERFACE|D|Registrador|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|Registrador|IQ\(12),
	sload => VCC,
	ena => \INTERFACE|D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Registrador|Q\(12));

-- Location: LABCELL_X83_Y24_N48
\INTERFACE|D|PSEUDORANDOM|count[12]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[12]~5_combout\ = ( \INTERFACE|D|Registrador|Q\(12) & ( (\INTERFACE|D|PSEUDORANDOM|count[12]~5_combout\) # (\INTERFACE|D|comb~0_combout\) ) ) # ( !\INTERFACE|D|Registrador|Q\(12) & ( (!\INTERFACE|D|comb~0_combout\ & 
-- \INTERFACE|D|PSEUDORANDOM|count[12]~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datac => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[12]~5_combout\,
	dataf => \INTERFACE|D|Registrador|ALT_INV_Q\(12),
	combout => \INTERFACE|D|PSEUDORANDOM|count[12]~5_combout\);

-- Location: LABCELL_X83_Y24_N30
\INTERFACE|D|PSEUDORANDOM|count[12]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[12]~7_combout\ = ( \INTERFACE|D|PSEUDORANDOM|count[12]~5_combout\ & ( !\INTERFACE|D|PSEUDORANDOM|count[11]~10_combout\ ) ) # ( !\INTERFACE|D|PSEUDORANDOM|count[12]~5_combout\ & ( 
-- \INTERFACE|D|PSEUDORANDOM|count[11]~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[11]~10_combout\,
	dataf => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[12]~5_combout\,
	combout => \INTERFACE|D|PSEUDORANDOM|count[12]~7_combout\);

-- Location: FF_X83_Y24_N31
\INTERFACE|D|PSEUDORANDOM|count[12]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|PSEUDORANDOM|count[12]~7_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	ena => \INTERFACE|D|C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|PSEUDORANDOM|count[12]~_emulated_q\);

-- Location: LABCELL_X83_Y24_N51
\INTERFACE|D|PSEUDORANDOM|count[12]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[12]~6_combout\ = ( \INTERFACE|D|comb~0_combout\ & ( \INTERFACE|D|Registrador|Q\(12) ) ) # ( !\INTERFACE|D|comb~0_combout\ & ( !\INTERFACE|D|PSEUDORANDOM|count[12]~5_combout\ $ 
-- (!\INTERFACE|D|PSEUDORANDOM|count[12]~_emulated_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[12]~5_combout\,
	datac => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[12]~_emulated_q\,
	datad => \INTERFACE|D|Registrador|ALT_INV_Q\(12),
	dataf => \INTERFACE|D|ALT_INV_comb~0_combout\,
	combout => \INTERFACE|D|PSEUDORANDOM|count[12]~6_combout\);

-- Location: LABCELL_X83_Y24_N18
\INTERFACE|D|PSEUDORANDOM|count[13]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[13]~3_combout\ = ( \INTERFACE|D|PSEUDORANDOM|count[13]~1_combout\ & ( !\INTERFACE|D|PSEUDORANDOM|count[12]~6_combout\ ) ) # ( !\INTERFACE|D|PSEUDORANDOM|count[13]~1_combout\ & ( 
-- \INTERFACE|D|PSEUDORANDOM|count[12]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[12]~6_combout\,
	dataf => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[13]~1_combout\,
	combout => \INTERFACE|D|PSEUDORANDOM|count[13]~3_combout\);

-- Location: FF_X83_Y24_N20
\INTERFACE|D|PSEUDORANDOM|count[13]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|PSEUDORANDOM|count[13]~3_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	ena => \INTERFACE|D|C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|PSEUDORANDOM|count[13]~_emulated_q\);

-- Location: LABCELL_X83_Y22_N36
\INTERFACE|D|PSEUDORANDOM|count[13]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[13]~2_combout\ = ( \INTERFACE|D|PSEUDORANDOM|count[13]~_emulated_q\ & ( (!\INTERFACE|D|comb~0_combout\ & (!\INTERFACE|D|PSEUDORANDOM|count[13]~1_combout\)) # (\INTERFACE|D|comb~0_combout\ & 
-- ((\INTERFACE|D|Registrador|Q\(13)))) ) ) # ( !\INTERFACE|D|PSEUDORANDOM|count[13]~_emulated_q\ & ( (!\INTERFACE|D|comb~0_combout\ & (\INTERFACE|D|PSEUDORANDOM|count[13]~1_combout\)) # (\INTERFACE|D|comb~0_combout\ & ((\INTERFACE|D|Registrador|Q\(13)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111110100000111101011010000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datac => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[13]~1_combout\,
	datad => \INTERFACE|D|Registrador|ALT_INV_Q\(13),
	dataf => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[13]~_emulated_q\,
	combout => \INTERFACE|D|PSEUDORANDOM|count[13]~2_combout\);

-- Location: MLABCELL_X84_Y22_N15
\INTERFACE|D|PSEUDORANDOM|count[14]~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[14]~63_combout\ = ( \INTERFACE|D|PSEUDORANDOM|count[13]~2_combout\ & ( !\INTERFACE|D|PSEUDORANDOM|count[14]~61_combout\ ) ) # ( !\INTERFACE|D|PSEUDORANDOM|count[13]~2_combout\ & ( 
-- \INTERFACE|D|PSEUDORANDOM|count[14]~61_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[14]~61_combout\,
	dataf => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[13]~2_combout\,
	combout => \INTERFACE|D|PSEUDORANDOM|count[14]~63_combout\);

-- Location: FF_X84_Y22_N17
\INTERFACE|D|PSEUDORANDOM|count[14]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|PSEUDORANDOM|count[14]~63_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	ena => \INTERFACE|D|C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|PSEUDORANDOM|count[14]~_emulated_q\);

-- Location: MLABCELL_X84_Y22_N21
\INTERFACE|D|PSEUDORANDOM|count[14]~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[14]~62_combout\ = (!\INTERFACE|D|comb~0_combout\ & (!\INTERFACE|D|PSEUDORANDOM|count[14]~61_combout\ $ ((!\INTERFACE|D|PSEUDORANDOM|count[14]~_emulated_q\)))) # (\INTERFACE|D|comb~0_combout\ & 
-- (((\INTERFACE|D|Registrador|Q\(14)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100001111101001010000111110100101000011111010010100001111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datab => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[14]~61_combout\,
	datac => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[14]~_emulated_q\,
	datad => \INTERFACE|D|Registrador|ALT_INV_Q\(14),
	combout => \INTERFACE|D|PSEUDORANDOM|count[14]~62_combout\);

-- Location: MLABCELL_X84_Y22_N51
\INTERFACE|D|PSEUDORANDOM|count[15]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[15]~57_combout\ = ( \INTERFACE|D|Registrador|Q\(15) & ( (\INTERFACE|D|comb~0_combout\) # (\INTERFACE|D|PSEUDORANDOM|count[15]~57_combout\) ) ) # ( !\INTERFACE|D|Registrador|Q\(15) & ( 
-- (\INTERFACE|D|PSEUDORANDOM|count[15]~57_combout\ & !\INTERFACE|D|comb~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[15]~57_combout\,
	datac => \INTERFACE|D|ALT_INV_comb~0_combout\,
	dataf => \INTERFACE|D|Registrador|ALT_INV_Q\(15),
	combout => \INTERFACE|D|PSEUDORANDOM|count[15]~57_combout\);

-- Location: MLABCELL_X84_Y22_N12
\INTERFACE|D|PSEUDORANDOM|count[15]~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[15]~59_combout\ = !\INTERFACE|D|PSEUDORANDOM|count[14]~62_combout\ $ (!\INTERFACE|D|PSEUDORANDOM|count[15]~57_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[14]~62_combout\,
	datac => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[15]~57_combout\,
	combout => \INTERFACE|D|PSEUDORANDOM|count[15]~59_combout\);

-- Location: FF_X84_Y22_N13
\INTERFACE|D|PSEUDORANDOM|count[15]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|PSEUDORANDOM|count[15]~59_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	ena => \INTERFACE|D|C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|PSEUDORANDOM|count[15]~_emulated_q\);

-- Location: LABCELL_X83_Y24_N6
\INTERFACE|D|PSEUDORANDOM|count[15]~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[15]~58_combout\ = (!\INTERFACE|D|comb~0_combout\ & ((!\INTERFACE|D|PSEUDORANDOM|count[15]~_emulated_q\ $ (!\INTERFACE|D|PSEUDORANDOM|count[15]~57_combout\)))) # (\INTERFACE|D|comb~0_combout\ & 
-- (\INTERFACE|D|Registrador|Q\(15)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110111010001000111011101000100011101110100010001110111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|Registrador|ALT_INV_Q\(15),
	datab => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datac => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[15]~_emulated_q\,
	datad => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[15]~57_combout\,
	combout => \INTERFACE|D|PSEUDORANDOM|count[15]~58_combout\);

-- Location: LABCELL_X83_Y24_N39
\INTERFACE|D|PSEUDORANDOM|count[0]~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[0]~55_combout\ = ( \INTERFACE|D|PSEUDORANDOM|count[15]~58_combout\ & ( !\INTERFACE|D|PSEUDORANDOM|count[11]~10_combout\ $ (!\INTERFACE|D|PSEUDORANDOM|count[0]~53_combout\) ) ) # ( 
-- !\INTERFACE|D|PSEUDORANDOM|count[15]~58_combout\ & ( !\INTERFACE|D|PSEUDORANDOM|count[11]~10_combout\ $ (\INTERFACE|D|PSEUDORANDOM|count[0]~53_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011110011000011001100110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[11]~10_combout\,
	datad => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[0]~53_combout\,
	dataf => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[15]~58_combout\,
	combout => \INTERFACE|D|PSEUDORANDOM|count[0]~55_combout\);

-- Location: FF_X83_Y24_N41
\INTERFACE|D|PSEUDORANDOM|count[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|PSEUDORANDOM|count[0]~55_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	ena => \INTERFACE|D|C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|PSEUDORANDOM|count[0]~_emulated_q\);

-- Location: LABCELL_X83_Y24_N27
\INTERFACE|D|PSEUDORANDOM|count[0]~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|PSEUDORANDOM|count[0]~54_combout\ = ( \INTERFACE|D|comb~0_combout\ & ( \INTERFACE|D|Registrador|Q\(0) ) ) # ( !\INTERFACE|D|comb~0_combout\ & ( !\INTERFACE|D|PSEUDORANDOM|count[0]~_emulated_q\ $ 
-- (!\INTERFACE|D|PSEUDORANDOM|count[0]~53_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|D|Registrador|ALT_INV_Q\(0),
	datac => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[0]~_emulated_q\,
	datad => \INTERFACE|D|PSEUDORANDOM|ALT_INV_count[0]~53_combout\,
	dataf => \INTERFACE|D|ALT_INV_comb~0_combout\,
	combout => \INTERFACE|D|PSEUDORANDOM|count[0]~54_combout\);

-- Location: FF_X83_Y21_N2
\INTERFACE|D|Converte|binary[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|binary_next~0_combout\,
	asdata => \INTERFACE|D|PSEUDORANDOM|count[0]~54_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	sload => \INTERFACE|D|Converte|ALT_INV_state.shift~q\,
	ena => \INTERFACE|D|Converte|ALT_INV_state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|binary\(0));

-- Location: LABCELL_X83_Y22_N30
\INTERFACE|D|Converte|binary[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|binary[1]~feeder_combout\ = \INTERFACE|D|Converte|binary\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|D|Converte|ALT_INV_binary\(0),
	combout => \INTERFACE|D|Converte|binary[1]~feeder_combout\);

-- Location: FF_X83_Y22_N32
\INTERFACE|D|Converte|binary[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|binary[1]~feeder_combout\,
	asdata => \INTERFACE|D|PSEUDORANDOM|count[1]~50_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	sload => \INTERFACE|D|Converte|ALT_INV_state.shift~q\,
	ena => \INTERFACE|D|Converte|binary[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|binary\(1));

-- Location: LABCELL_X83_Y22_N33
\INTERFACE|D|Converte|binary[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|binary[2]~feeder_combout\ = \INTERFACE|D|Converte|binary\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|D|Converte|ALT_INV_binary\(1),
	combout => \INTERFACE|D|Converte|binary[2]~feeder_combout\);

-- Location: FF_X83_Y22_N35
\INTERFACE|D|Converte|binary[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|binary[2]~feeder_combout\,
	asdata => \INTERFACE|D|PSEUDORANDOM|count[2]~46_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	sload => \INTERFACE|D|Converte|ALT_INV_state.shift~q\,
	ena => \INTERFACE|D|Converte|binary[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|binary\(2));

-- Location: LABCELL_X83_Y23_N24
\INTERFACE|D|Converte|binary[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|binary[3]~feeder_combout\ = ( \INTERFACE|D|Converte|binary\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \INTERFACE|D|Converte|ALT_INV_binary\(2),
	combout => \INTERFACE|D|Converte|binary[3]~feeder_combout\);

-- Location: FF_X83_Y23_N26
\INTERFACE|D|Converte|binary[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|binary[3]~feeder_combout\,
	asdata => \INTERFACE|D|PSEUDORANDOM|count[3]~42_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	sload => \INTERFACE|D|Converte|ALT_INV_state.shift~q\,
	ena => \INTERFACE|D|Converte|binary[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|binary\(3));

-- Location: LABCELL_X83_Y23_N54
\INTERFACE|D|Converte|binary[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|binary[4]~feeder_combout\ = \INTERFACE|D|Converte|binary\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|D|Converte|ALT_INV_binary\(3),
	combout => \INTERFACE|D|Converte|binary[4]~feeder_combout\);

-- Location: FF_X83_Y23_N56
\INTERFACE|D|Converte|binary[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|binary[4]~feeder_combout\,
	asdata => \INTERFACE|D|PSEUDORANDOM|count[4]~38_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	sload => \INTERFACE|D|Converte|ALT_INV_state.shift~q\,
	ena => \INTERFACE|D|Converte|binary[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|binary\(4));

-- Location: LABCELL_X83_Y23_N39
\INTERFACE|D|Converte|binary[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|binary[5]~feeder_combout\ = \INTERFACE|D|Converte|binary\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|Converte|ALT_INV_binary\(4),
	combout => \INTERFACE|D|Converte|binary[5]~feeder_combout\);

-- Location: FF_X83_Y23_N41
\INTERFACE|D|Converte|binary[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|binary[5]~feeder_combout\,
	asdata => \INTERFACE|D|PSEUDORANDOM|count[5]~34_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	sload => \INTERFACE|D|Converte|ALT_INV_state.shift~q\,
	ena => \INTERFACE|D|Converte|binary[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|binary\(5));

-- Location: LABCELL_X83_Y23_N36
\INTERFACE|D|Converte|binary[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|binary[6]~feeder_combout\ = \INTERFACE|D|Converte|binary\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|D|Converte|ALT_INV_binary\(5),
	combout => \INTERFACE|D|Converte|binary[6]~feeder_combout\);

-- Location: FF_X83_Y23_N38
\INTERFACE|D|Converte|binary[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|binary[6]~feeder_combout\,
	asdata => \INTERFACE|D|PSEUDORANDOM|count[6]~30_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	sload => \INTERFACE|D|Converte|ALT_INV_state.shift~q\,
	ena => \INTERFACE|D|Converte|binary[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|binary\(6));

-- Location: LABCELL_X83_Y23_N6
\INTERFACE|D|Converte|binary[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|binary[7]~feeder_combout\ = \INTERFACE|D|Converte|binary\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|D|Converte|ALT_INV_binary\(6),
	combout => \INTERFACE|D|Converte|binary[7]~feeder_combout\);

-- Location: FF_X83_Y23_N8
\INTERFACE|D|Converte|binary[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|binary[7]~feeder_combout\,
	asdata => \INTERFACE|D|PSEUDORANDOM|count[7]~26_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	sload => \INTERFACE|D|Converte|ALT_INV_state.shift~q\,
	ena => \INTERFACE|D|Converte|binary[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|binary\(7));

-- Location: LABCELL_X83_Y23_N51
\INTERFACE|D|Converte|binary[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|binary[8]~feeder_combout\ = \INTERFACE|D|Converte|binary\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|D|Converte|ALT_INV_binary\(7),
	combout => \INTERFACE|D|Converte|binary[8]~feeder_combout\);

-- Location: FF_X83_Y23_N53
\INTERFACE|D|Converte|binary[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|binary[8]~feeder_combout\,
	asdata => \INTERFACE|D|PSEUDORANDOM|count[8]~22_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	sload => \INTERFACE|D|Converte|ALT_INV_state.shift~q\,
	ena => \INTERFACE|D|Converte|binary[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|binary\(8));

-- Location: LABCELL_X83_Y23_N48
\INTERFACE|D|Converte|binary[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|binary[9]~feeder_combout\ = \INTERFACE|D|Converte|binary\(8)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|D|Converte|ALT_INV_binary\(8),
	combout => \INTERFACE|D|Converte|binary[9]~feeder_combout\);

-- Location: FF_X83_Y23_N50
\INTERFACE|D|Converte|binary[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|binary[9]~feeder_combout\,
	asdata => \INTERFACE|D|PSEUDORANDOM|count[9]~18_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	sload => \INTERFACE|D|Converte|ALT_INV_state.shift~q\,
	ena => \INTERFACE|D|Converte|binary[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|binary\(9));

-- Location: LABCELL_X83_Y22_N42
\INTERFACE|D|Converte|binary[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|binary[10]~feeder_combout\ = \INTERFACE|D|Converte|binary\(9)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|D|Converte|ALT_INV_binary\(9),
	combout => \INTERFACE|D|Converte|binary[10]~feeder_combout\);

-- Location: FF_X83_Y22_N44
\INTERFACE|D|Converte|binary[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|binary[10]~feeder_combout\,
	asdata => \INTERFACE|D|PSEUDORANDOM|count[10]~14_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	sload => \INTERFACE|D|Converte|ALT_INV_state.shift~q\,
	ena => \INTERFACE|D|Converte|binary[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|binary\(10));

-- Location: LABCELL_X83_Y22_N3
\INTERFACE|D|Converte|binary[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|binary[11]~feeder_combout\ = \INTERFACE|D|Converte|binary\(10)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|D|Converte|ALT_INV_binary\(10),
	combout => \INTERFACE|D|Converte|binary[11]~feeder_combout\);

-- Location: FF_X83_Y22_N5
\INTERFACE|D|Converte|binary[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|binary[11]~feeder_combout\,
	asdata => \INTERFACE|D|PSEUDORANDOM|count[11]~10_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	sload => \INTERFACE|D|Converte|ALT_INV_state.shift~q\,
	ena => \INTERFACE|D|Converte|binary[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|binary\(11));

-- Location: LABCELL_X83_Y22_N0
\INTERFACE|D|Converte|binary[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|binary[12]~feeder_combout\ = \INTERFACE|D|Converte|binary\(11)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|D|Converte|ALT_INV_binary\(11),
	combout => \INTERFACE|D|Converte|binary[12]~feeder_combout\);

-- Location: FF_X83_Y22_N2
\INTERFACE|D|Converte|binary[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|binary[12]~feeder_combout\,
	asdata => \INTERFACE|D|PSEUDORANDOM|count[12]~6_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	sload => \INTERFACE|D|Converte|ALT_INV_state.shift~q\,
	ena => \INTERFACE|D|Converte|binary[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|binary\(12));

-- Location: LABCELL_X83_Y22_N45
\INTERFACE|D|Converte|binary[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|binary[13]~feeder_combout\ = \INTERFACE|D|Converte|binary\(12)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|Converte|ALT_INV_binary\(12),
	combout => \INTERFACE|D|Converte|binary[13]~feeder_combout\);

-- Location: FF_X83_Y22_N46
\INTERFACE|D|Converte|binary[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|binary[13]~feeder_combout\,
	asdata => \INTERFACE|D|PSEUDORANDOM|count[13]~2_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	sload => \INTERFACE|D|Converte|ALT_INV_state.shift~q\,
	ena => \INTERFACE|D|Converte|binary[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|binary\(13));

-- Location: LABCELL_X80_Y22_N57
\INTERFACE|D|Converte|Selector31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|Selector31~0_combout\ = ( \INTERFACE|D|Converte|Selector1~0_combout\ & ( ((\INTERFACE|D|Converte|bcds\(0) & !\INTERFACE|D|Converte|binary[8]~0_combout\)) # (\INTERFACE|D|Converte|binary\(13)) ) ) # ( 
-- !\INTERFACE|D|Converte|Selector1~0_combout\ & ( (\INTERFACE|D|Converte|bcds\(0) & !\INTERFACE|D|Converte|binary[8]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110000111111110011000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|D|Converte|ALT_INV_bcds\(0),
	datac => \INTERFACE|D|Converte|ALT_INV_binary[8]~0_combout\,
	datad => \INTERFACE|D|Converte|ALT_INV_binary\(13),
	dataf => \INTERFACE|D|Converte|ALT_INV_Selector1~0_combout\,
	combout => \INTERFACE|D|Converte|Selector31~0_combout\);

-- Location: FF_X80_Y22_N50
\INTERFACE|D|Converte|bcds[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|Converte|Selector31~0_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds[0]~DUPLICATE_q\);

-- Location: FF_X80_Y22_N31
\INTERFACE|D|Converte|bcds[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|Selector29~0_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds\(2));

-- Location: LABCELL_X80_Y22_N21
\INTERFACE|D|Converte|Selector28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|Selector28~0_combout\ = ( \INTERFACE|D|Converte|bcds\(3) & ( \INTERFACE|D|Converte|bcds\(2) & ( (!\INTERFACE|D|Converte|binary[8]~0_combout\) # ((!\INTERFACE|D|Converte|bcds[0]~DUPLICATE_q\ & 
-- (\INTERFACE|D|Converte|Selector1~0_combout\ & !\INTERFACE|D|Converte|bcds\(1)))) ) ) ) # ( !\INTERFACE|D|Converte|bcds\(3) & ( \INTERFACE|D|Converte|bcds\(2) & ( (!\INTERFACE|D|Converte|bcds[0]~DUPLICATE_q\ & (\INTERFACE|D|Converte|Selector1~0_combout\ & 
-- !\INTERFACE|D|Converte|bcds\(1))) ) ) ) # ( \INTERFACE|D|Converte|bcds\(3) & ( !\INTERFACE|D|Converte|bcds\(2) & ( (!\INTERFACE|D|Converte|binary[8]~0_combout\) # ((\INTERFACE|D|Converte|Selector1~0_combout\ & ((\INTERFACE|D|Converte|bcds\(1)) # 
-- (\INTERFACE|D|Converte|bcds[0]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011011100111100001010000000001100111011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|Converte|ALT_INV_bcds[0]~DUPLICATE_q\,
	datab => \INTERFACE|D|Converte|ALT_INV_binary[8]~0_combout\,
	datac => \INTERFACE|D|Converte|ALT_INV_Selector1~0_combout\,
	datad => \INTERFACE|D|Converte|ALT_INV_bcds\(1),
	datae => \INTERFACE|D|Converte|ALT_INV_bcds\(3),
	dataf => \INTERFACE|D|Converte|ALT_INV_bcds\(2),
	combout => \INTERFACE|D|Converte|Selector28~0_combout\);

-- Location: FF_X80_Y22_N22
\INTERFACE|D|Converte|bcds[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|Selector28~0_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds\(3));

-- Location: LABCELL_X80_Y22_N51
\INTERFACE|D|Converte|Selector30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|Selector30~0_combout\ = ( \INTERFACE|D|Converte|bcds\(1) & ( \INTERFACE|D|Converte|bcds\(3) & ( (!\INTERFACE|D|Converte|binary[8]~0_combout\) # ((\INTERFACE|D|Converte|Selector1~0_combout\ & 
-- !\INTERFACE|D|Converte|bcds[0]~DUPLICATE_q\)) ) ) ) # ( !\INTERFACE|D|Converte|bcds\(1) & ( \INTERFACE|D|Converte|bcds\(3) & ( (\INTERFACE|D|Converte|Selector1~0_combout\ & !\INTERFACE|D|Converte|bcds[0]~DUPLICATE_q\) ) ) ) # ( 
-- \INTERFACE|D|Converte|bcds\(1) & ( !\INTERFACE|D|Converte|bcds\(3) & ( (!\INTERFACE|D|Converte|binary[8]~0_combout\) # ((\INTERFACE|D|Converte|Selector1~0_combout\ & (!\INTERFACE|D|Converte|bcds[2]~DUPLICATE_q\ $ 
-- (!\INTERFACE|D|Converte|bcds[0]~DUPLICATE_q\)))) ) ) ) # ( !\INTERFACE|D|Converte|bcds\(1) & ( !\INTERFACE|D|Converte|bcds\(3) & ( (\INTERFACE|D|Converte|Selector1~0_combout\ & (!\INTERFACE|D|Converte|bcds[2]~DUPLICATE_q\ & 
-- \INTERFACE|D|Converte|bcds[0]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000110011011101110001010101000000001101110111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|Converte|ALT_INV_Selector1~0_combout\,
	datab => \INTERFACE|D|Converte|ALT_INV_binary[8]~0_combout\,
	datac => \INTERFACE|D|Converte|ALT_INV_bcds[2]~DUPLICATE_q\,
	datad => \INTERFACE|D|Converte|ALT_INV_bcds[0]~DUPLICATE_q\,
	datae => \INTERFACE|D|Converte|ALT_INV_bcds\(1),
	dataf => \INTERFACE|D|Converte|ALT_INV_bcds\(3),
	combout => \INTERFACE|D|Converte|Selector30~0_combout\);

-- Location: FF_X80_Y22_N53
\INTERFACE|D|Converte|bcds[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|Selector30~0_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds\(1));

-- Location: LABCELL_X80_Y22_N30
\INTERFACE|D|Converte|Selector29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|Selector29~0_combout\ = ( \INTERFACE|D|Converte|bcds\(2) & ( \INTERFACE|D|Converte|bcds\(3) & ( (!\INTERFACE|D|Converte|binary[8]~0_combout\) # ((\INTERFACE|D|Converte|Selector1~0_combout\ & 
-- (!\INTERFACE|D|Converte|bcds[0]~DUPLICATE_q\ $ (\INTERFACE|D|Converte|bcds\(1))))) ) ) ) # ( !\INTERFACE|D|Converte|bcds\(2) & ( \INTERFACE|D|Converte|bcds\(3) & ( (\INTERFACE|D|Converte|Selector1~0_combout\ & (!\INTERFACE|D|Converte|bcds[0]~DUPLICATE_q\ 
-- $ (\INTERFACE|D|Converte|bcds\(1)))) ) ) ) # ( \INTERFACE|D|Converte|bcds\(2) & ( !\INTERFACE|D|Converte|bcds\(3) & ( (!\INTERFACE|D|Converte|binary[8]~0_combout\) # ((\INTERFACE|D|Converte|bcds[0]~DUPLICATE_q\ & 
-- (\INTERFACE|D|Converte|Selector1~0_combout\ & \INTERFACE|D|Converte|bcds\(1)))) ) ) ) # ( !\INTERFACE|D|Converte|bcds\(2) & ( !\INTERFACE|D|Converte|bcds\(3) & ( (\INTERFACE|D|Converte|Selector1~0_combout\ & \INTERFACE|D|Converte|bcds\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111111110000000100100001001000011111111100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|Converte|ALT_INV_bcds[0]~DUPLICATE_q\,
	datab => \INTERFACE|D|Converte|ALT_INV_Selector1~0_combout\,
	datac => \INTERFACE|D|Converte|ALT_INV_bcds\(1),
	datad => \INTERFACE|D|Converte|ALT_INV_binary[8]~0_combout\,
	datae => \INTERFACE|D|Converte|ALT_INV_bcds\(2),
	dataf => \INTERFACE|D|Converte|ALT_INV_bcds\(3),
	combout => \INTERFACE|D|Converte|Selector29~0_combout\);

-- Location: FF_X80_Y22_N32
\INTERFACE|D|Converte|bcds[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|Selector29~0_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds[2]~DUPLICATE_q\);

-- Location: FF_X80_Y22_N23
\INTERFACE|D|Converte|bcds[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|Selector28~0_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds[3]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y22_N48
\INTERFACE|D|Converte|Selector27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|Selector27~0_combout\ = ( \INTERFACE|D|Converte|bcds\(1) & ( !\INTERFACE|D|Converte|bcds[2]~DUPLICATE_q\ $ (!\INTERFACE|D|Converte|bcds[3]~DUPLICATE_q\) ) ) # ( !\INTERFACE|D|Converte|bcds\(1) & ( 
-- !\INTERFACE|D|Converte|bcds[3]~DUPLICATE_q\ $ (((!\INTERFACE|D|Converte|bcds[0]~DUPLICATE_q\) # (!\INTERFACE|D|Converte|bcds[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100000000111111110000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|D|Converte|ALT_INV_bcds[0]~DUPLICATE_q\,
	datac => \INTERFACE|D|Converte|ALT_INV_bcds[2]~DUPLICATE_q\,
	datad => \INTERFACE|D|Converte|ALT_INV_bcds[3]~DUPLICATE_q\,
	dataf => \INTERFACE|D|Converte|ALT_INV_bcds\(1),
	combout => \INTERFACE|D|Converte|Selector27~0_combout\);

-- Location: LABCELL_X81_Y22_N6
\INTERFACE|D|Converte|Selector27~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|Selector27~1_combout\ = ( \INTERFACE|D|Converte|Selector27~0_combout\ & ( ((!\INTERFACE|D|Converte|binary[8]~0_combout\ & \INTERFACE|D|Converte|bcds\(4))) # (\INTERFACE|D|Converte|Selector1~0_combout\) ) ) # ( 
-- !\INTERFACE|D|Converte|Selector27~0_combout\ & ( (!\INTERFACE|D|Converte|binary[8]~0_combout\ & \INTERFACE|D|Converte|bcds\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110001010101110111010101010111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|Converte|ALT_INV_Selector1~0_combout\,
	datab => \INTERFACE|D|Converte|ALT_INV_binary[8]~0_combout\,
	datad => \INTERFACE|D|Converte|ALT_INV_bcds\(4),
	dataf => \INTERFACE|D|Converte|ALT_INV_Selector27~0_combout\,
	combout => \INTERFACE|D|Converte|Selector27~1_combout\);

-- Location: FF_X81_Y22_N7
\INTERFACE|D|Converte|bcds[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|Selector27~1_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds[4]~DUPLICATE_q\);

-- Location: FF_X83_Y22_N50
\INTERFACE|D|Converte|bcds[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|Selector26~0_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds[5]~DUPLICATE_q\);

-- Location: FF_X83_Y22_N17
\INTERFACE|D|Converte|bcds[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|Selector25~0_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds\(6));

-- Location: FF_X83_Y22_N7
\INTERFACE|D|Converte|bcds[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|Selector24~0_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds[7]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y22_N15
\INTERFACE|D|Converte|Selector25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|Selector25~0_combout\ = ( \INTERFACE|D|Converte|bcds\(6) & ( \INTERFACE|D|Converte|bcds[7]~DUPLICATE_q\ & ( (!\INTERFACE|D|Converte|binary[8]~0_combout\) # ((\INTERFACE|D|Converte|Selector1~0_combout\ & 
-- (!\INTERFACE|D|Converte|bcds\(4) $ (\INTERFACE|D|Converte|bcds[5]~DUPLICATE_q\)))) ) ) ) # ( !\INTERFACE|D|Converte|bcds\(6) & ( \INTERFACE|D|Converte|bcds[7]~DUPLICATE_q\ & ( (\INTERFACE|D|Converte|Selector1~0_combout\ & (!\INTERFACE|D|Converte|bcds\(4) 
-- $ (\INTERFACE|D|Converte|bcds[5]~DUPLICATE_q\))) ) ) ) # ( \INTERFACE|D|Converte|bcds\(6) & ( !\INTERFACE|D|Converte|bcds[7]~DUPLICATE_q\ & ( (!\INTERFACE|D|Converte|binary[8]~0_combout\) # ((\INTERFACE|D|Converte|Selector1~0_combout\ & 
-- (\INTERFACE|D|Converte|bcds\(4) & \INTERFACE|D|Converte|bcds[5]~DUPLICATE_q\))) ) ) ) # ( !\INTERFACE|D|Converte|bcds\(6) & ( !\INTERFACE|D|Converte|bcds[7]~DUPLICATE_q\ & ( (\INTERFACE|D|Converte|Selector1~0_combout\ & 
-- \INTERFACE|D|Converte|bcds[5]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011101010101010101100110000000000111011101010101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|Converte|ALT_INV_binary[8]~0_combout\,
	datab => \INTERFACE|D|Converte|ALT_INV_Selector1~0_combout\,
	datac => \INTERFACE|D|Converte|ALT_INV_bcds\(4),
	datad => \INTERFACE|D|Converte|ALT_INV_bcds[5]~DUPLICATE_q\,
	datae => \INTERFACE|D|Converte|ALT_INV_bcds\(6),
	dataf => \INTERFACE|D|Converte|ALT_INV_bcds[7]~DUPLICATE_q\,
	combout => \INTERFACE|D|Converte|Selector25~0_combout\);

-- Location: FF_X83_Y22_N16
\INTERFACE|D|Converte|bcds[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|Selector25~0_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds[6]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y22_N6
\INTERFACE|D|Converte|Selector24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|Selector24~0_combout\ = ( \INTERFACE|D|Converte|bcds\(7) & ( \INTERFACE|D|Converte|bcds[6]~DUPLICATE_q\ & ( (!\INTERFACE|D|Converte|binary[8]~0_combout\) # ((!\INTERFACE|D|Converte|bcds\(4) & 
-- (!\INTERFACE|D|Converte|bcds[5]~DUPLICATE_q\ & \INTERFACE|D|Converte|Selector1~0_combout\))) ) ) ) # ( !\INTERFACE|D|Converte|bcds\(7) & ( \INTERFACE|D|Converte|bcds[6]~DUPLICATE_q\ & ( (!\INTERFACE|D|Converte|bcds\(4) & 
-- (!\INTERFACE|D|Converte|bcds[5]~DUPLICATE_q\ & \INTERFACE|D|Converte|Selector1~0_combout\)) ) ) ) # ( \INTERFACE|D|Converte|bcds\(7) & ( !\INTERFACE|D|Converte|bcds[6]~DUPLICATE_q\ & ( (!\INTERFACE|D|Converte|binary[8]~0_combout\) # 
-- ((\INTERFACE|D|Converte|Selector1~0_combout\ & ((\INTERFACE|D|Converte|bcds[5]~DUPLICATE_q\) # (\INTERFACE|D|Converte|bcds\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101011111100000000110000001010101011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|Converte|ALT_INV_binary[8]~0_combout\,
	datab => \INTERFACE|D|Converte|ALT_INV_bcds\(4),
	datac => \INTERFACE|D|Converte|ALT_INV_bcds[5]~DUPLICATE_q\,
	datad => \INTERFACE|D|Converte|ALT_INV_Selector1~0_combout\,
	datae => \INTERFACE|D|Converte|ALT_INV_bcds\(7),
	dataf => \INTERFACE|D|Converte|ALT_INV_bcds[6]~DUPLICATE_q\,
	combout => \INTERFACE|D|Converte|Selector24~0_combout\);

-- Location: FF_X83_Y22_N8
\INTERFACE|D|Converte|bcds[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|Selector24~0_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds\(7));

-- Location: LABCELL_X83_Y22_N48
\INTERFACE|D|Converte|Selector26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|Selector26~0_combout\ = ( \INTERFACE|D|Converte|bcds\(5) & ( \INTERFACE|D|Converte|bcds[6]~DUPLICATE_q\ & ( (!\INTERFACE|D|Converte|binary[8]~0_combout\) # ((!\INTERFACE|D|Converte|bcds[4]~DUPLICATE_q\ & 
-- \INTERFACE|D|Converte|Selector1~0_combout\)) ) ) ) # ( !\INTERFACE|D|Converte|bcds\(5) & ( \INTERFACE|D|Converte|bcds[6]~DUPLICATE_q\ & ( (!\INTERFACE|D|Converte|bcds[4]~DUPLICATE_q\ & (\INTERFACE|D|Converte|Selector1~0_combout\ & 
-- \INTERFACE|D|Converte|bcds\(7))) ) ) ) # ( \INTERFACE|D|Converte|bcds\(5) & ( !\INTERFACE|D|Converte|bcds[6]~DUPLICATE_q\ & ( (!\INTERFACE|D|Converte|binary[8]~0_combout\) # ((\INTERFACE|D|Converte|Selector1~0_combout\ & 
-- (!\INTERFACE|D|Converte|bcds[4]~DUPLICATE_q\ $ (!\INTERFACE|D|Converte|bcds\(7))))) ) ) ) # ( !\INTERFACE|D|Converte|bcds\(5) & ( !\INTERFACE|D|Converte|bcds[6]~DUPLICATE_q\ & ( (\INTERFACE|D|Converte|Selector1~0_combout\ & 
-- (!\INTERFACE|D|Converte|bcds[4]~DUPLICATE_q\ $ (!\INTERFACE|D|Converte|bcds\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010111100011111001000000000001000101111001011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|Converte|ALT_INV_bcds[4]~DUPLICATE_q\,
	datab => \INTERFACE|D|Converte|ALT_INV_Selector1~0_combout\,
	datac => \INTERFACE|D|Converte|ALT_INV_binary[8]~0_combout\,
	datad => \INTERFACE|D|Converte|ALT_INV_bcds\(7),
	datae => \INTERFACE|D|Converte|ALT_INV_bcds\(5),
	dataf => \INTERFACE|D|Converte|ALT_INV_bcds[6]~DUPLICATE_q\,
	combout => \INTERFACE|D|Converte|Selector26~0_combout\);

-- Location: FF_X83_Y22_N49
\INTERFACE|D|Converte|bcds[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|Selector26~0_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds\(5));

-- Location: LABCELL_X81_Y22_N33
\INTERFACE|D|Converte|Selector23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|Selector23~0_combout\ = ( \INTERFACE|D|Converte|bcds\(6) & ( !\INTERFACE|D|Converte|bcds[7]~DUPLICATE_q\ $ (((!\INTERFACE|D|Converte|bcds\(5) & !\INTERFACE|D|Converte|bcds\(4)))) ) ) # ( !\INTERFACE|D|Converte|bcds\(6) & ( 
-- \INTERFACE|D|Converte|bcds[7]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100111111110000000011111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|D|Converte|ALT_INV_bcds\(5),
	datac => \INTERFACE|D|Converte|ALT_INV_bcds\(4),
	datad => \INTERFACE|D|Converte|ALT_INV_bcds[7]~DUPLICATE_q\,
	dataf => \INTERFACE|D|Converte|ALT_INV_bcds\(6),
	combout => \INTERFACE|D|Converte|Selector23~0_combout\);

-- Location: LABCELL_X81_Y22_N9
\INTERFACE|D|Converte|Selector23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|Selector23~1_combout\ = ( \INTERFACE|D|Converte|Selector23~0_combout\ & ( ((!\INTERFACE|D|Converte|binary[8]~0_combout\ & \INTERFACE|D|Converte|bcds\(8))) # (\INTERFACE|D|Converte|Selector1~0_combout\) ) ) # ( 
-- !\INTERFACE|D|Converte|Selector23~0_combout\ & ( (!\INTERFACE|D|Converte|binary[8]~0_combout\ & \INTERFACE|D|Converte|bcds\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110001010101110111010101010111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|Converte|ALT_INV_Selector1~0_combout\,
	datab => \INTERFACE|D|Converte|ALT_INV_binary[8]~0_combout\,
	datad => \INTERFACE|D|Converte|ALT_INV_bcds\(8),
	dataf => \INTERFACE|D|Converte|ALT_INV_Selector23~0_combout\,
	combout => \INTERFACE|D|Converte|Selector23~1_combout\);

-- Location: FF_X81_Y22_N10
\INTERFACE|D|Converte|bcds[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|Selector23~1_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds[8]~DUPLICATE_q\);

-- Location: FF_X81_Y21_N14
\INTERFACE|D|Converte|bcds[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|Selector20~0_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds\(11));

-- Location: LABCELL_X81_Y21_N18
\INTERFACE|D|Converte|Selector21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|Selector21~0_combout\ = ( \INTERFACE|D|Converte|bcds\(10) & ( \INTERFACE|D|Converte|bcds[11]~DUPLICATE_q\ & ( (!\INTERFACE|D|Converte|binary[8]~0_combout\) # ((\INTERFACE|D|Converte|Selector1~0_combout\ & 
-- (!\INTERFACE|D|Converte|bcds[8]~DUPLICATE_q\ $ (\INTERFACE|D|Converte|bcds\(9))))) ) ) ) # ( !\INTERFACE|D|Converte|bcds\(10) & ( \INTERFACE|D|Converte|bcds[11]~DUPLICATE_q\ & ( (\INTERFACE|D|Converte|Selector1~0_combout\ & 
-- (!\INTERFACE|D|Converte|bcds[8]~DUPLICATE_q\ $ (\INTERFACE|D|Converte|bcds\(9)))) ) ) ) # ( \INTERFACE|D|Converte|bcds\(10) & ( !\INTERFACE|D|Converte|bcds[11]~DUPLICATE_q\ & ( (!\INTERFACE|D|Converte|binary[8]~0_combout\) # 
-- ((\INTERFACE|D|Converte|bcds[8]~DUPLICATE_q\ & (\INTERFACE|D|Converte|bcds\(9) & \INTERFACE|D|Converte|Selector1~0_combout\))) ) ) ) # ( !\INTERFACE|D|Converte|bcds\(10) & ( !\INTERFACE|D|Converte|bcds[11]~DUPLICATE_q\ & ( (\INTERFACE|D|Converte|bcds\(9) 
-- & \INTERFACE|D|Converte|Selector1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111110011001100110100000000101001011100110011101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|Converte|ALT_INV_bcds[8]~DUPLICATE_q\,
	datab => \INTERFACE|D|Converte|ALT_INV_binary[8]~0_combout\,
	datac => \INTERFACE|D|Converte|ALT_INV_bcds\(9),
	datad => \INTERFACE|D|Converte|ALT_INV_Selector1~0_combout\,
	datae => \INTERFACE|D|Converte|ALT_INV_bcds\(10),
	dataf => \INTERFACE|D|Converte|ALT_INV_bcds[11]~DUPLICATE_q\,
	combout => \INTERFACE|D|Converte|Selector21~0_combout\);

-- Location: FF_X81_Y21_N19
\INTERFACE|D|Converte|bcds[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|Selector21~0_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds\(10));

-- Location: LABCELL_X81_Y21_N36
\INTERFACE|D|Converte|Selector22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|Selector22~0_combout\ = ( \INTERFACE|D|Converte|bcds\(9) & ( \INTERFACE|D|Converte|bcds\(10) & ( (!\INTERFACE|D|Converte|binary[8]~0_combout\) # ((!\INTERFACE|D|Converte|bcds[8]~DUPLICATE_q\ & 
-- \INTERFACE|D|Converte|Selector1~0_combout\)) ) ) ) # ( !\INTERFACE|D|Converte|bcds\(9) & ( \INTERFACE|D|Converte|bcds\(10) & ( (!\INTERFACE|D|Converte|bcds[8]~DUPLICATE_q\ & (\INTERFACE|D|Converte|Selector1~0_combout\ & \INTERFACE|D|Converte|bcds\(11))) ) 
-- ) ) # ( \INTERFACE|D|Converte|bcds\(9) & ( !\INTERFACE|D|Converte|bcds\(10) & ( (!\INTERFACE|D|Converte|binary[8]~0_combout\) # ((\INTERFACE|D|Converte|Selector1~0_combout\ & (!\INTERFACE|D|Converte|bcds[8]~DUPLICATE_q\ $ 
-- (!\INTERFACE|D|Converte|bcds\(11))))) ) ) ) # ( !\INTERFACE|D|Converte|bcds\(9) & ( !\INTERFACE|D|Converte|bcds\(10) & ( (\INTERFACE|D|Converte|Selector1~0_combout\ & (!\INTERFACE|D|Converte|bcds[8]~DUPLICATE_q\ $ (!\INTERFACE|D|Converte|bcds\(11)))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010111100011111001000000000001000101111001011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|Converte|ALT_INV_bcds[8]~DUPLICATE_q\,
	datab => \INTERFACE|D|Converte|ALT_INV_Selector1~0_combout\,
	datac => \INTERFACE|D|Converte|ALT_INV_binary[8]~0_combout\,
	datad => \INTERFACE|D|Converte|ALT_INV_bcds\(11),
	datae => \INTERFACE|D|Converte|ALT_INV_bcds\(9),
	dataf => \INTERFACE|D|Converte|ALT_INV_bcds\(10),
	combout => \INTERFACE|D|Converte|Selector22~0_combout\);

-- Location: FF_X81_Y21_N38
\INTERFACE|D|Converte|bcds[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|Selector22~0_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds\(9));

-- Location: LABCELL_X81_Y21_N12
\INTERFACE|D|Converte|Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|Selector20~0_combout\ = ( \INTERFACE|D|Converte|bcds\(11) & ( \INTERFACE|D|Converte|bcds\(10) & ( (!\INTERFACE|D|Converte|binary[8]~0_combout\) # ((!\INTERFACE|D|Converte|bcds[8]~DUPLICATE_q\ & (!\INTERFACE|D|Converte|bcds\(9) & 
-- \INTERFACE|D|Converte|Selector1~0_combout\))) ) ) ) # ( !\INTERFACE|D|Converte|bcds\(11) & ( \INTERFACE|D|Converte|bcds\(10) & ( (!\INTERFACE|D|Converte|bcds[8]~DUPLICATE_q\ & (!\INTERFACE|D|Converte|bcds\(9) & \INTERFACE|D|Converte|Selector1~0_combout\)) 
-- ) ) ) # ( \INTERFACE|D|Converte|bcds\(11) & ( !\INTERFACE|D|Converte|bcds\(10) & ( (!\INTERFACE|D|Converte|binary[8]~0_combout\) # ((\INTERFACE|D|Converte|Selector1~0_combout\ & ((\INTERFACE|D|Converte|bcds\(9)) # 
-- (\INTERFACE|D|Converte|bcds[8]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001101111100000000101000001100110011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|Converte|ALT_INV_bcds[8]~DUPLICATE_q\,
	datab => \INTERFACE|D|Converte|ALT_INV_binary[8]~0_combout\,
	datac => \INTERFACE|D|Converte|ALT_INV_bcds\(9),
	datad => \INTERFACE|D|Converte|ALT_INV_Selector1~0_combout\,
	datae => \INTERFACE|D|Converte|ALT_INV_bcds\(11),
	dataf => \INTERFACE|D|Converte|ALT_INV_bcds\(10),
	combout => \INTERFACE|D|Converte|Selector20~0_combout\);

-- Location: FF_X81_Y21_N13
\INTERFACE|D|Converte|bcds[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|Selector20~0_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds[11]~DUPLICATE_q\);

-- Location: FF_X81_Y22_N49
\INTERFACE|D|Converte|bcds_out_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|Converte|bcds[11]~DUPLICATE_q\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \INTERFACE|D|Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds_out_reg\(11));

-- Location: FF_X81_Y22_N38
\INTERFACE|D|Converte|bcds_out_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|Converte|bcds[4]~DUPLICATE_q\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \INTERFACE|D|Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds_out_reg\(4));

-- Location: FF_X81_Y22_N44
\INTERFACE|D|Converte|bcds_out_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|Converte|bcds\(10),
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \INTERFACE|D|Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds_out_reg\(10));

-- Location: LABCELL_X81_Y22_N39
\INTERFACE|D|ContadordoAtraso|ClrN3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordoAtraso|ClrN3~0_combout\ = ( \INTERFACE|D|ContadordoAtraso|IC_2|Qout[3]~reg0_q\ & ( \INTERFACE|D|ContadordoAtraso|IC_3|Qout[3]~reg0_q\ & ( (\INTERFACE|D|ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & 
-- (\INTERFACE|D|ContadordoAtraso|IC_2|Qout[0]~reg0_q\ & (\INTERFACE|D|ContadordoAtraso|IC_1|Qout[3]~reg0_q\ & \INTERFACE|D|ContadordoAtraso|IC_3|Qout[0]~reg0_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ContadordoAtraso|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datab => \INTERFACE|D|ContadordoAtraso|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datac => \INTERFACE|D|ContadordoAtraso|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datad => \INTERFACE|D|ContadordoAtraso|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datae => \INTERFACE|D|ContadordoAtraso|IC_2|ALT_INV_Qout[3]~reg0_q\,
	dataf => \INTERFACE|D|ContadordoAtraso|IC_3|ALT_INV_Qout[3]~reg0_q\,
	combout => \INTERFACE|D|ContadordoAtraso|ClrN3~0_combout\);

-- Location: LABCELL_X81_Y22_N24
\INTERFACE|D|ContadordoAtraso|IC_3|Qout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordoAtraso|IC_3|Qout~0_combout\ = ( !\INTERFACE|D|ContadordoAtraso|ClrN3~0_combout\ & ( (!\INTERFACE|D|comb~0_combout\ & (!\INTERFACE|D|ContadordoAtraso|IC_3|Qout[0]~reg0_q\ $ (!\INTERFACE|D|ContadordoAtraso|IC_3|Qout[1]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000000011001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datac => \INTERFACE|D|ContadordoAtraso|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datad => \INTERFACE|D|ContadordoAtraso|IC_3|ALT_INV_Qout[1]~reg0_q\,
	dataf => \INTERFACE|D|ContadordoAtraso|ALT_INV_ClrN3~0_combout\,
	combout => \INTERFACE|D|ContadordoAtraso|IC_3|Qout~0_combout\);

-- Location: LABCELL_X81_Y22_N15
\INTERFACE|D|ContadordoAtraso|IC_3|Qout[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordoAtraso|IC_3|Qout[1]~1_combout\ = ( \INTERFACE|D|comb~0_combout\ ) # ( !\INTERFACE|D|comb~0_combout\ & ( ((\INTERFACE|D|C|Eatual.Contando~q\ & \INTERFACE|D|ContadordoAtraso|ClrN2~0_combout\)) # 
-- (\INTERFACE|D|ContadordoAtraso|ClrN3~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|D|C|ALT_INV_Eatual.Contando~q\,
	datac => \INTERFACE|D|ContadordoAtraso|ALT_INV_ClrN3~0_combout\,
	datad => \INTERFACE|D|ContadordoAtraso|ALT_INV_ClrN2~0_combout\,
	dataf => \INTERFACE|D|ALT_INV_comb~0_combout\,
	combout => \INTERFACE|D|ContadordoAtraso|IC_3|Qout[1]~1_combout\);

-- Location: FF_X81_Y22_N26
\INTERFACE|D|ContadordoAtraso|IC_3|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ContadordoAtraso|IC_3|Qout~0_combout\,
	ena => \INTERFACE|D|ContadordoAtraso|IC_3|Qout[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ContadordoAtraso|IC_3|Qout[1]~reg0_q\);

-- Location: LABCELL_X81_Y22_N27
\INTERFACE|D|ContadordoAtraso|IC_3|Qout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordoAtraso|IC_3|Qout~2_combout\ = ( \INTERFACE|D|ContadordoAtraso|IC_3|Qout[1]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & (!\INTERFACE|D|ContadordoAtraso|ClrN3~0_combout\ & (!\INTERFACE|D|ContadordoAtraso|IC_3|Qout[0]~reg0_q\ $ 
-- (!\INTERFACE|D|ContadordoAtraso|IC_3|Qout[2]~reg0_q\)))) ) ) # ( !\INTERFACE|D|ContadordoAtraso|IC_3|Qout[1]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & (!\INTERFACE|D|ContadordoAtraso|ClrN3~0_combout\ & 
-- \INTERFACE|D|ContadordoAtraso|IC_3|Qout[2]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000001000000100000000100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ContadordoAtraso|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datab => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datac => \INTERFACE|D|ContadordoAtraso|ALT_INV_ClrN3~0_combout\,
	datad => \INTERFACE|D|ContadordoAtraso|IC_3|ALT_INV_Qout[2]~reg0_q\,
	dataf => \INTERFACE|D|ContadordoAtraso|IC_3|ALT_INV_Qout[1]~reg0_q\,
	combout => \INTERFACE|D|ContadordoAtraso|IC_3|Qout~2_combout\);

-- Location: FF_X81_Y22_N29
\INTERFACE|D|ContadordoAtraso|IC_3|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ContadordoAtraso|IC_3|Qout~2_combout\,
	ena => \INTERFACE|D|ContadordoAtraso|IC_3|Qout[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ContadordoAtraso|IC_3|Qout[2]~reg0_q\);

-- Location: MLABCELL_X82_Y21_N9
\INTERFACE|D|ContadordoAtraso|IC_3|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordoAtraso|IC_3|Add0~0_combout\ = ( \INTERFACE|D|ContadordoAtraso|IC_3|Qout[0]~reg0_q\ & ( \INTERFACE|D|ContadordoAtraso|IC_3|Qout[1]~reg0_q\ & ( \INTERFACE|D|ContadordoAtraso|IC_3|Qout[2]~reg0_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ContadordoAtraso|IC_3|ALT_INV_Qout[2]~reg0_q\,
	datae => \INTERFACE|D|ContadordoAtraso|IC_3|ALT_INV_Qout[0]~reg0_q\,
	dataf => \INTERFACE|D|ContadordoAtraso|IC_3|ALT_INV_Qout[1]~reg0_q\,
	combout => \INTERFACE|D|ContadordoAtraso|IC_3|Add0~0_combout\);

-- Location: MLABCELL_X82_Y21_N36
\INTERFACE|D|ContadordoAtraso|IC_3|Qout[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordoAtraso|IC_3|Qout[3]~3_combout\ = ( \INTERFACE|D|ContadordoAtraso|IC_3|Qout[3]~reg0_q\ & ( \INTERFACE|D|ContadordoAtraso|IC_3|Add0~0_combout\ & ( (!\INTERFACE|D|comb~0_combout\ & ((!\INTERFACE|D|ContadordoAtraso|ClrN2~0_combout\) # 
-- ((!\INTERFACE|D|C|Eatual.Contando~DUPLICATE_q\ & !\INTERFACE|D|ContadordoAtraso|IC_3|Qout[0]~reg0_q\)))) ) ) ) # ( !\INTERFACE|D|ContadordoAtraso|IC_3|Qout[3]~reg0_q\ & ( \INTERFACE|D|ContadordoAtraso|IC_3|Add0~0_combout\ & ( 
-- (\INTERFACE|D|C|Eatual.Contando~DUPLICATE_q\ & (!\INTERFACE|D|comb~0_combout\ & \INTERFACE|D|ContadordoAtraso|ClrN2~0_combout\)) ) ) ) # ( \INTERFACE|D|ContadordoAtraso|IC_3|Qout[3]~reg0_q\ & ( !\INTERFACE|D|ContadordoAtraso|IC_3|Add0~0_combout\ & ( 
-- (!\INTERFACE|D|comb~0_combout\ & ((!\INTERFACE|D|ContadordoAtraso|IC_3|Qout[0]~reg0_q\) # (!\INTERFACE|D|ContadordoAtraso|ClrN2~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100000000000000010001001100110010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|C|ALT_INV_Eatual.Contando~DUPLICATE_q\,
	datab => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datac => \INTERFACE|D|ContadordoAtraso|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datad => \INTERFACE|D|ContadordoAtraso|ALT_INV_ClrN2~0_combout\,
	datae => \INTERFACE|D|ContadordoAtraso|IC_3|ALT_INV_Qout[3]~reg0_q\,
	dataf => \INTERFACE|D|ContadordoAtraso|IC_3|ALT_INV_Add0~0_combout\,
	combout => \INTERFACE|D|ContadordoAtraso|IC_3|Qout[3]~3_combout\);

-- Location: FF_X82_Y21_N38
\INTERFACE|D|ContadordoAtraso|IC_3|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ContadordoAtraso|IC_3|Qout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ContadordoAtraso|IC_3|Qout[3]~reg0_q\);

-- Location: LABCELL_X81_Y22_N3
\INTERFACE|D|ContadordoAtraso|IC_3|Qout[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordoAtraso|IC_3|Qout[0]~4_combout\ = ( \INTERFACE|D|C|Eatual.Contando~DUPLICATE_q\ & ( (!\INTERFACE|D|comb~0_combout\ & (!\INTERFACE|D|ContadordoAtraso|ClrN2~0_combout\ $ (!\INTERFACE|D|ContadordoAtraso|IC_3|Qout[0]~reg0_q\))) ) ) # ( 
-- !\INTERFACE|D|C|Eatual.Contando~DUPLICATE_q\ & ( (!\INTERFACE|D|comb~0_combout\ & (\INTERFACE|D|ContadordoAtraso|IC_3|Qout[0]~reg0_q\ & ((!\INTERFACE|D|ContadordoAtraso|ClrN2~0_combout\) # (!\INTERFACE|D|ContadordoAtraso|IC_3|Qout[3]~reg0_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000001010100000100010100010000010001010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datab => \INTERFACE|D|ContadordoAtraso|ALT_INV_ClrN2~0_combout\,
	datac => \INTERFACE|D|ContadordoAtraso|IC_3|ALT_INV_Qout[3]~reg0_q\,
	datad => \INTERFACE|D|ContadordoAtraso|IC_3|ALT_INV_Qout[0]~reg0_q\,
	dataf => \INTERFACE|D|C|ALT_INV_Eatual.Contando~DUPLICATE_q\,
	combout => \INTERFACE|D|ContadordoAtraso|IC_3|Qout[0]~4_combout\);

-- Location: FF_X81_Y22_N5
\INTERFACE|D|ContadordoAtraso|IC_3|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ContadordoAtraso|IC_3|Qout[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ContadordoAtraso|IC_3|Qout[0]~reg0_q\);

-- Location: LABCELL_X81_Y22_N54
\INTERFACE|D|s_sinalAtraso~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|s_sinalAtraso~2_combout\ = ( \INTERFACE|D|ContadordoAtraso|IC_3|Qout[0]~reg0_q\ & ( \INTERFACE|D|ContadordoAtraso|IC_2|Qout[2]~reg0_q\ & ( (\INTERFACE|D|Converte|bcds_out_reg\(4) & (\INTERFACE|D|Converte|bcds_out_reg\(10) & 
-- (!\INTERFACE|D|ContadordoAtraso|IC_2|Qout[3]~reg0_q\ $ (\INTERFACE|D|Converte|bcds_out_reg\(11))))) ) ) ) # ( !\INTERFACE|D|ContadordoAtraso|IC_3|Qout[0]~reg0_q\ & ( \INTERFACE|D|ContadordoAtraso|IC_2|Qout[2]~reg0_q\ & ( 
-- (!\INTERFACE|D|Converte|bcds_out_reg\(4) & (\INTERFACE|D|Converte|bcds_out_reg\(10) & (!\INTERFACE|D|ContadordoAtraso|IC_2|Qout[3]~reg0_q\ $ (\INTERFACE|D|Converte|bcds_out_reg\(11))))) ) ) ) # ( \INTERFACE|D|ContadordoAtraso|IC_3|Qout[0]~reg0_q\ & ( 
-- !\INTERFACE|D|ContadordoAtraso|IC_2|Qout[2]~reg0_q\ & ( (\INTERFACE|D|Converte|bcds_out_reg\(4) & (!\INTERFACE|D|Converte|bcds_out_reg\(10) & (!\INTERFACE|D|ContadordoAtraso|IC_2|Qout[3]~reg0_q\ $ (\INTERFACE|D|Converte|bcds_out_reg\(11))))) ) ) ) # ( 
-- !\INTERFACE|D|ContadordoAtraso|IC_3|Qout[0]~reg0_q\ & ( !\INTERFACE|D|ContadordoAtraso|IC_2|Qout[2]~reg0_q\ & ( (!\INTERFACE|D|Converte|bcds_out_reg\(4) & (!\INTERFACE|D|Converte|bcds_out_reg\(10) & (!\INTERFACE|D|ContadordoAtraso|IC_2|Qout[3]~reg0_q\ $ 
-- (\INTERFACE|D|Converte|bcds_out_reg\(11))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000010010000000000000000100100000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ContadordoAtraso|IC_2|ALT_INV_Qout[3]~reg0_q\,
	datab => \INTERFACE|D|Converte|ALT_INV_bcds_out_reg\(11),
	datac => \INTERFACE|D|Converte|ALT_INV_bcds_out_reg\(4),
	datad => \INTERFACE|D|Converte|ALT_INV_bcds_out_reg\(10),
	datae => \INTERFACE|D|ContadordoAtraso|IC_3|ALT_INV_Qout[0]~reg0_q\,
	dataf => \INTERFACE|D|ContadordoAtraso|IC_2|ALT_INV_Qout[2]~reg0_q\,
	combout => \INTERFACE|D|s_sinalAtraso~2_combout\);

-- Location: FF_X81_Y21_N37
\INTERFACE|D|Converte|bcds[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|Selector22~0_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds[9]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y21_N30
\INTERFACE|D|Converte|Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|Selector19~0_combout\ = ( \INTERFACE|D|Converte|bcds[11]~DUPLICATE_q\ & ( (!\INTERFACE|D|Converte|bcds\(10)) # ((!\INTERFACE|D|Converte|bcds[8]~DUPLICATE_q\ & !\INTERFACE|D|Converte|bcds[9]~DUPLICATE_q\)) ) ) # ( 
-- !\INTERFACE|D|Converte|bcds[11]~DUPLICATE_q\ & ( (\INTERFACE|D|Converte|bcds\(10) & ((\INTERFACE|D|Converte|bcds[9]~DUPLICATE_q\) # (\INTERFACE|D|Converte|bcds[8]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001111111100110011001111110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|D|Converte|ALT_INV_bcds\(10),
	datac => \INTERFACE|D|Converte|ALT_INV_bcds[8]~DUPLICATE_q\,
	datad => \INTERFACE|D|Converte|ALT_INV_bcds[9]~DUPLICATE_q\,
	dataf => \INTERFACE|D|Converte|ALT_INV_bcds[11]~DUPLICATE_q\,
	combout => \INTERFACE|D|Converte|Selector19~0_combout\);

-- Location: LABCELL_X81_Y21_N33
\INTERFACE|D|Converte|Selector19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|Selector19~1_combout\ = ( \INTERFACE|D|Converte|Selector19~0_combout\ & ( ((!\INTERFACE|D|Converte|binary[8]~0_combout\ & \INTERFACE|D|Converte|bcds\(12))) # (\INTERFACE|D|Converte|Selector1~0_combout\) ) ) # ( 
-- !\INTERFACE|D|Converte|Selector19~0_combout\ & ( (!\INTERFACE|D|Converte|binary[8]~0_combout\ & \INTERFACE|D|Converte|bcds\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001111101011110000111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|Converte|ALT_INV_binary[8]~0_combout\,
	datac => \INTERFACE|D|Converte|ALT_INV_Selector1~0_combout\,
	datad => \INTERFACE|D|Converte|ALT_INV_bcds\(12),
	dataf => \INTERFACE|D|Converte|ALT_INV_Selector19~0_combout\,
	combout => \INTERFACE|D|Converte|Selector19~1_combout\);

-- Location: FF_X81_Y21_N34
\INTERFACE|D|Converte|bcds[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|Selector19~1_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds\(12));

-- Location: FF_X83_Y21_N44
\INTERFACE|D|Converte|bcds[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|Selector17~0_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds\(14));

-- Location: LABCELL_X83_Y21_N36
\INTERFACE|D|Converte|Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|Selector18~0_combout\ = ( \INTERFACE|D|Converte|bcds\(13) & ( \INTERFACE|D|Converte|Selector1~0_combout\ & ( (!\INTERFACE|D|Converte|binary[8]~0_combout\) # (!\INTERFACE|D|Converte|bcds\(12) $ (((!\INTERFACE|D|Converte|bcds\(15) & 
-- !\INTERFACE|D|Converte|bcds\(14))))) ) ) ) # ( !\INTERFACE|D|Converte|bcds\(13) & ( \INTERFACE|D|Converte|Selector1~0_combout\ & ( (!\INTERFACE|D|Converte|bcds\(12) & (\INTERFACE|D|Converte|bcds\(15))) # (\INTERFACE|D|Converte|bcds\(12) & 
-- (!\INTERFACE|D|Converte|bcds\(15) & !\INTERFACE|D|Converte|bcds\(14))) ) ) ) # ( \INTERFACE|D|Converte|bcds\(13) & ( !\INTERFACE|D|Converte|Selector1~0_combout\ & ( !\INTERFACE|D|Converte|binary[8]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000111100000011001011111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|Converte|ALT_INV_binary[8]~0_combout\,
	datab => \INTERFACE|D|Converte|ALT_INV_bcds\(12),
	datac => \INTERFACE|D|Converte|ALT_INV_bcds\(15),
	datad => \INTERFACE|D|Converte|ALT_INV_bcds\(14),
	datae => \INTERFACE|D|Converte|ALT_INV_bcds\(13),
	dataf => \INTERFACE|D|Converte|ALT_INV_Selector1~0_combout\,
	combout => \INTERFACE|D|Converte|Selector18~0_combout\);

-- Location: FF_X83_Y21_N38
\INTERFACE|D|Converte|bcds[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|Selector18~0_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds\(13));

-- Location: LABCELL_X83_Y21_N51
\INTERFACE|D|Converte|Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|Selector16~0_combout\ = ( \INTERFACE|D|Converte|bcds\(15) & ( \INTERFACE|D|Converte|bcds[14]~DUPLICATE_q\ & ( (!\INTERFACE|D|Converte|binary[8]~0_combout\) # ((\INTERFACE|D|Converte|Selector1~0_combout\ & 
-- (!\INTERFACE|D|Converte|bcds\(12) & !\INTERFACE|D|Converte|bcds\(13)))) ) ) ) # ( !\INTERFACE|D|Converte|bcds\(15) & ( \INTERFACE|D|Converte|bcds[14]~DUPLICATE_q\ & ( (\INTERFACE|D|Converte|Selector1~0_combout\ & (!\INTERFACE|D|Converte|bcds\(12) & 
-- !\INTERFACE|D|Converte|bcds\(13))) ) ) ) # ( \INTERFACE|D|Converte|bcds\(15) & ( !\INTERFACE|D|Converte|bcds[14]~DUPLICATE_q\ & ( (!\INTERFACE|D|Converte|binary[8]~0_combout\) # ((\INTERFACE|D|Converte|Selector1~0_combout\ & 
-- ((\INTERFACE|D|Converte|bcds\(13)) # (\INTERFACE|D|Converte|bcds\(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011011101110101010000000000001101110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|Converte|ALT_INV_Selector1~0_combout\,
	datab => \INTERFACE|D|Converte|ALT_INV_binary[8]~0_combout\,
	datac => \INTERFACE|D|Converte|ALT_INV_bcds\(12),
	datad => \INTERFACE|D|Converte|ALT_INV_bcds\(13),
	datae => \INTERFACE|D|Converte|ALT_INV_bcds\(15),
	dataf => \INTERFACE|D|Converte|ALT_INV_bcds[14]~DUPLICATE_q\,
	combout => \INTERFACE|D|Converte|Selector16~0_combout\);

-- Location: FF_X83_Y21_N53
\INTERFACE|D|Converte|bcds[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|Selector16~0_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds\(15));

-- Location: LABCELL_X83_Y21_N42
\INTERFACE|D|Converte|Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|Selector17~0_combout\ = ( \INTERFACE|D|Converte|bcds\(14) & ( \INTERFACE|D|Converte|Selector1~0_combout\ & ( (!\INTERFACE|D|Converte|binary[8]~0_combout\) # ((!\INTERFACE|D|Converte|bcds\(12) & (\INTERFACE|D|Converte|bcds\(15) & 
-- !\INTERFACE|D|Converte|bcds\(13))) # (\INTERFACE|D|Converte|bcds\(12) & ((\INTERFACE|D|Converte|bcds\(13))))) ) ) ) # ( !\INTERFACE|D|Converte|bcds\(14) & ( \INTERFACE|D|Converte|Selector1~0_combout\ & ( !\INTERFACE|D|Converte|bcds\(13) $ 
-- (((!\INTERFACE|D|Converte|bcds\(15)) # (\INTERFACE|D|Converte|bcds\(12)))) ) ) ) # ( \INTERFACE|D|Converte|bcds\(14) & ( !\INTERFACE|D|Converte|Selector1~0_combout\ & ( !\INTERFACE|D|Converte|binary[8]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000001001011010010111111111101000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|Converte|ALT_INV_bcds\(15),
	datab => \INTERFACE|D|Converte|ALT_INV_bcds\(12),
	datac => \INTERFACE|D|Converte|ALT_INV_bcds\(13),
	datad => \INTERFACE|D|Converte|ALT_INV_binary[8]~0_combout\,
	datae => \INTERFACE|D|Converte|ALT_INV_bcds\(14),
	dataf => \INTERFACE|D|Converte|ALT_INV_Selector1~0_combout\,
	combout => \INTERFACE|D|Converte|Selector17~0_combout\);

-- Location: FF_X83_Y21_N43
\INTERFACE|D|Converte|bcds[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|Selector17~0_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds[14]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y21_N42
\INTERFACE|D|Converte|bcds_out_reg[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|bcds_out_reg[14]~feeder_combout\ = ( \INTERFACE|D|Converte|bcds[14]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \INTERFACE|D|Converte|ALT_INV_bcds[14]~DUPLICATE_q\,
	combout => \INTERFACE|D|Converte|bcds_out_reg[14]~feeder_combout\);

-- Location: FF_X82_Y21_N44
\INTERFACE|D|Converte|bcds_out_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|bcds_out_reg[14]~feeder_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	ena => \INTERFACE|D|Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds_out_reg\(14));

-- Location: FF_X82_Y21_N17
\INTERFACE|D|Converte|bcds_out_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|Converte|bcds\(13),
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \INTERFACE|D|Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds_out_reg\(13));

-- Location: MLABCELL_X82_Y21_N0
\INTERFACE|D|Converte|bcds_out_reg[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|Converte|bcds_out_reg[12]~feeder_combout\ = ( \INTERFACE|D|Converte|bcds\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \INTERFACE|D|Converte|ALT_INV_bcds\(12),
	combout => \INTERFACE|D|Converte|bcds_out_reg[12]~feeder_combout\);

-- Location: FF_X82_Y21_N2
\INTERFACE|D|Converte|bcds_out_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|Converte|bcds_out_reg[12]~feeder_combout\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	ena => \INTERFACE|D|Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds_out_reg\(12));

-- Location: MLABCELL_X82_Y21_N33
\INTERFACE|D|s_sinalAtraso~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|s_sinalAtraso~3_combout\ = ( \INTERFACE|D|ContadordoAtraso|IC_1|Qout[1]~reg0_q\ & ( \INTERFACE|D|ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & ( (\INTERFACE|D|Converte|bcds_out_reg\(13) & (\INTERFACE|D|Converte|bcds_out_reg\(12) & 
-- (!\INTERFACE|D|ContadordoAtraso|IC_1|Qout[2]~reg0_q\ $ (\INTERFACE|D|Converte|bcds_out_reg\(14))))) ) ) ) # ( !\INTERFACE|D|ContadordoAtraso|IC_1|Qout[1]~reg0_q\ & ( \INTERFACE|D|ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & ( 
-- (!\INTERFACE|D|Converte|bcds_out_reg\(13) & (\INTERFACE|D|Converte|bcds_out_reg\(12) & (!\INTERFACE|D|ContadordoAtraso|IC_1|Qout[2]~reg0_q\ $ (\INTERFACE|D|Converte|bcds_out_reg\(14))))) ) ) ) # ( \INTERFACE|D|ContadordoAtraso|IC_1|Qout[1]~reg0_q\ & ( 
-- !\INTERFACE|D|ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & ( (\INTERFACE|D|Converte|bcds_out_reg\(13) & (!\INTERFACE|D|Converte|bcds_out_reg\(12) & (!\INTERFACE|D|ContadordoAtraso|IC_1|Qout[2]~reg0_q\ $ (\INTERFACE|D|Converte|bcds_out_reg\(14))))) ) ) ) # ( 
-- !\INTERFACE|D|ContadordoAtraso|IC_1|Qout[1]~reg0_q\ & ( !\INTERFACE|D|ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & ( (!\INTERFACE|D|Converte|bcds_out_reg\(13) & (!\INTERFACE|D|Converte|bcds_out_reg\(12) & (!\INTERFACE|D|ContadordoAtraso|IC_1|Qout[2]~reg0_q\ $ 
-- (\INTERFACE|D|Converte|bcds_out_reg\(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000010010000000000000000100100000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ContadordoAtraso|IC_1|ALT_INV_Qout[2]~reg0_q\,
	datab => \INTERFACE|D|Converte|ALT_INV_bcds_out_reg\(14),
	datac => \INTERFACE|D|Converte|ALT_INV_bcds_out_reg\(13),
	datad => \INTERFACE|D|Converte|ALT_INV_bcds_out_reg\(12),
	datae => \INTERFACE|D|ContadordoAtraso|IC_1|ALT_INV_Qout[1]~reg0_q\,
	dataf => \INTERFACE|D|ContadordoAtraso|IC_1|ALT_INV_Qout[0]~reg0_q\,
	combout => \INTERFACE|D|s_sinalAtraso~3_combout\);

-- Location: LABCELL_X83_Y22_N39
\INTERFACE|D|ContadordoAtraso|IC_4|Qout[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordoAtraso|IC_4|Qout[0]~1_combout\ = ( \INTERFACE|D|ContadordoAtraso|IC_4|Qout[3]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & ((!\INTERFACE|D|ContadordoAtraso|ClrN3~0_combout\ & ((\INTERFACE|D|ContadordoAtraso|IC_4|Qout[0]~reg0_q\))) # 
-- (\INTERFACE|D|ContadordoAtraso|ClrN3~0_combout\ & (\INTERFACE|D|C|Eatual.Contando~DUPLICATE_q\ & !\INTERFACE|D|ContadordoAtraso|IC_4|Qout[0]~reg0_q\)))) ) ) # ( !\INTERFACE|D|ContadordoAtraso|IC_4|Qout[3]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & 
-- (!\INTERFACE|D|ContadordoAtraso|IC_4|Qout[0]~reg0_q\ $ (((!\INTERFACE|D|C|Eatual.Contando~DUPLICATE_q\) # (!\INTERFACE|D|ContadordoAtraso|ClrN3~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010101000000000101010100000000010101000000000001010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datab => \INTERFACE|D|C|ALT_INV_Eatual.Contando~DUPLICATE_q\,
	datac => \INTERFACE|D|ContadordoAtraso|ALT_INV_ClrN3~0_combout\,
	datad => \INTERFACE|D|ContadordoAtraso|IC_4|ALT_INV_Qout[0]~reg0_q\,
	dataf => \INTERFACE|D|ContadordoAtraso|IC_4|ALT_INV_Qout[3]~reg0_q\,
	combout => \INTERFACE|D|ContadordoAtraso|IC_4|Qout[0]~1_combout\);

-- Location: FF_X83_Y22_N41
\INTERFACE|D|ContadordoAtraso|IC_4|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ContadordoAtraso|IC_4|Qout[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ContadordoAtraso|IC_4|Qout[0]~reg0_q\);

-- Location: LABCELL_X81_Y23_N36
\INTERFACE|D|ContadordoAtraso|IC_4|Qout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordoAtraso|IC_4|Qout~2_combout\ = ( \INTERFACE|D|ContadordoAtraso|ClrN3~0_combout\ & ( (!\INTERFACE|D|comb~0_combout\ & ((!\INTERFACE|D|ContadordoAtraso|IC_4|Qout[0]~reg0_q\ & ((\INTERFACE|D|ContadordoAtraso|IC_4|Qout[1]~reg0_q\))) # 
-- (\INTERFACE|D|ContadordoAtraso|IC_4|Qout[0]~reg0_q\ & (!\INTERFACE|D|ContadordoAtraso|IC_4|Qout[3]~reg0_q\ & !\INTERFACE|D|ContadordoAtraso|IC_4|Qout[1]~reg0_q\)))) ) ) # ( !\INTERFACE|D|ContadordoAtraso|ClrN3~0_combout\ & ( (!\INTERFACE|D|comb~0_combout\ 
-- & (!\INTERFACE|D|ContadordoAtraso|IC_4|Qout[0]~reg0_q\ $ (!\INTERFACE|D|ContadordoAtraso|IC_4|Qout[1]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100000010100001010000001000000101000000100000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ContadordoAtraso|IC_4|ALT_INV_Qout[0]~reg0_q\,
	datab => \INTERFACE|D|ContadordoAtraso|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datac => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datad => \INTERFACE|D|ContadordoAtraso|IC_4|ALT_INV_Qout[1]~reg0_q\,
	dataf => \INTERFACE|D|ContadordoAtraso|ALT_INV_ClrN3~0_combout\,
	combout => \INTERFACE|D|ContadordoAtraso|IC_4|Qout~2_combout\);

-- Location: LABCELL_X81_Y23_N39
\INTERFACE|D|ContadordoAtraso|IC_4|Qout[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordoAtraso|IC_4|Qout[3]~3_combout\ = ( \INTERFACE|D|ContadordoAtraso|ClrN3~0_combout\ & ( (((\INTERFACE|D|ContadordoAtraso|IC_4|Qout[0]~reg0_q\ & \INTERFACE|D|ContadordoAtraso|IC_4|Qout[3]~reg0_q\)) # (\INTERFACE|D|comb~0_combout\)) # 
-- (\INTERFACE|D|C|Eatual.Contando~DUPLICATE_q\) ) ) # ( !\INTERFACE|D|ContadordoAtraso|ClrN3~0_combout\ & ( \INTERFACE|D|comb~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100011111111111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ContadordoAtraso|IC_4|ALT_INV_Qout[0]~reg0_q\,
	datab => \INTERFACE|D|ContadordoAtraso|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datac => \INTERFACE|D|C|ALT_INV_Eatual.Contando~DUPLICATE_q\,
	datad => \INTERFACE|D|ALT_INV_comb~0_combout\,
	dataf => \INTERFACE|D|ContadordoAtraso|ALT_INV_ClrN3~0_combout\,
	combout => \INTERFACE|D|ContadordoAtraso|IC_4|Qout[3]~3_combout\);

-- Location: FF_X81_Y23_N38
\INTERFACE|D|ContadordoAtraso|IC_4|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ContadordoAtraso|IC_4|Qout~2_combout\,
	ena => \INTERFACE|D|ContadordoAtraso|IC_4|Qout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ContadordoAtraso|IC_4|Qout[1]~reg0_q\);

-- Location: LABCELL_X81_Y23_N0
\INTERFACE|D|ContadordoAtraso|IC_4|Qout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordoAtraso|IC_4|Qout~4_combout\ = ( \INTERFACE|D|ContadordoAtraso|IC_4|Qout[2]~reg0_q\ & ( \INTERFACE|D|ContadordoAtraso|IC_4|Qout[1]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & !\INTERFACE|D|ContadordoAtraso|IC_4|Qout[0]~reg0_q\) ) ) 
-- ) # ( !\INTERFACE|D|ContadordoAtraso|IC_4|Qout[2]~reg0_q\ & ( \INTERFACE|D|ContadordoAtraso|IC_4|Qout[1]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & (\INTERFACE|D|ContadordoAtraso|IC_4|Qout[0]~reg0_q\ & 
-- ((!\INTERFACE|D|ContadordoAtraso|IC_4|Qout[3]~reg0_q\) # (!\INTERFACE|D|ContadordoAtraso|ClrN3~0_combout\)))) ) ) ) # ( \INTERFACE|D|ContadordoAtraso|IC_4|Qout[2]~reg0_q\ & ( !\INTERFACE|D|ContadordoAtraso|IC_4|Qout[1]~reg0_q\ & ( 
-- (!\INTERFACE|D|comb~0_combout\ & ((!\INTERFACE|D|ContadordoAtraso|IC_4|Qout[3]~reg0_q\) # ((!\INTERFACE|D|ContadordoAtraso|IC_4|Qout[0]~reg0_q\) # (!\INTERFACE|D|ContadordoAtraso|ClrN3~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010100000001010000010001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datab => \INTERFACE|D|ContadordoAtraso|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datac => \INTERFACE|D|ContadordoAtraso|IC_4|ALT_INV_Qout[0]~reg0_q\,
	datad => \INTERFACE|D|ContadordoAtraso|ALT_INV_ClrN3~0_combout\,
	datae => \INTERFACE|D|ContadordoAtraso|IC_4|ALT_INV_Qout[2]~reg0_q\,
	dataf => \INTERFACE|D|ContadordoAtraso|IC_4|ALT_INV_Qout[1]~reg0_q\,
	combout => \INTERFACE|D|ContadordoAtraso|IC_4|Qout~4_combout\);

-- Location: FF_X81_Y23_N2
\INTERFACE|D|ContadordoAtraso|IC_4|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ContadordoAtraso|IC_4|Qout~4_combout\,
	ena => \INTERFACE|D|ContadordoAtraso|IC_4|Qout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ContadordoAtraso|IC_4|Qout[2]~reg0_q\);

-- Location: MLABCELL_X84_Y22_N45
\INTERFACE|D|ContadordoAtraso|IC_4|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordoAtraso|IC_4|Add0~0_combout\ = ( \INTERFACE|D|ContadordoAtraso|IC_4|Qout[1]~reg0_q\ & ( (\INTERFACE|D|ContadordoAtraso|IC_4|Qout[0]~reg0_q\ & \INTERFACE|D|ContadordoAtraso|IC_4|Qout[2]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|D|ContadordoAtraso|IC_4|ALT_INV_Qout[0]~reg0_q\,
	datad => \INTERFACE|D|ContadordoAtraso|IC_4|ALT_INV_Qout[2]~reg0_q\,
	dataf => \INTERFACE|D|ContadordoAtraso|IC_4|ALT_INV_Qout[1]~reg0_q\,
	combout => \INTERFACE|D|ContadordoAtraso|IC_4|Add0~0_combout\);

-- Location: LABCELL_X83_Y22_N54
\INTERFACE|D|ContadordoAtraso|IC_4|Qout[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordoAtraso|IC_4|Qout[3]~0_combout\ = ( \INTERFACE|D|ContadordoAtraso|IC_4|Qout[3]~reg0_q\ & ( !\INTERFACE|D|comb~0_combout\ & ( (!\INTERFACE|D|ContadordoAtraso|ClrN3~0_combout\) # ((!\INTERFACE|D|ContadordoAtraso|IC_4|Qout[0]~reg0_q\ & 
-- ((!\INTERFACE|D|ContadordoAtraso|IC_4|Add0~0_combout\) # (!\INTERFACE|D|C|Eatual.Contando~DUPLICATE_q\)))) ) ) ) # ( !\INTERFACE|D|ContadordoAtraso|IC_4|Qout[3]~reg0_q\ & ( !\INTERFACE|D|comb~0_combout\ & ( 
-- (\INTERFACE|D|ContadordoAtraso|IC_4|Add0~0_combout\ & (\INTERFACE|D|C|Eatual.Contando~DUPLICATE_q\ & \INTERFACE|D|ContadordoAtraso|ClrN3~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001111111101111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ContadordoAtraso|IC_4|ALT_INV_Add0~0_combout\,
	datab => \INTERFACE|D|C|ALT_INV_Eatual.Contando~DUPLICATE_q\,
	datac => \INTERFACE|D|ContadordoAtraso|ALT_INV_ClrN3~0_combout\,
	datad => \INTERFACE|D|ContadordoAtraso|IC_4|ALT_INV_Qout[0]~reg0_q\,
	datae => \INTERFACE|D|ContadordoAtraso|IC_4|ALT_INV_Qout[3]~reg0_q\,
	dataf => \INTERFACE|D|ALT_INV_comb~0_combout\,
	combout => \INTERFACE|D|ContadordoAtraso|IC_4|Qout[3]~0_combout\);

-- Location: FF_X83_Y22_N56
\INTERFACE|D|ContadordoAtraso|IC_4|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ContadordoAtraso|IC_4|Qout[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ContadordoAtraso|IC_4|Qout[3]~reg0_q\);

-- Location: FF_X81_Y22_N47
\INTERFACE|D|Converte|bcds_out_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|Converte|bcds\(3),
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \INTERFACE|D|Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds_out_reg\(3));

-- Location: MLABCELL_X82_Y22_N33
\INTERFACE|D|C4|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|C4|Equal0~0_combout\ = ( \INTERFACE|D|Converte|bcds_out_reg\(3) & ( !\INTERFACE|D|ContadordoAtraso|IC_4|Qout[3]~reg0_q\ ) ) # ( !\INTERFACE|D|Converte|bcds_out_reg\(3) & ( \INTERFACE|D|ContadordoAtraso|IC_4|Qout[3]~reg0_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INTERFACE|D|ContadordoAtraso|IC_4|ALT_INV_Qout[3]~reg0_q\,
	dataf => \INTERFACE|D|Converte|ALT_INV_bcds_out_reg\(3),
	combout => \INTERFACE|D|C4|Equal0~0_combout\);

-- Location: FF_X81_Y22_N32
\INTERFACE|D|Converte|bcds_out_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|Converte|bcds\(6),
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \INTERFACE|D|Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds_out_reg\(6));

-- Location: FF_X81_Y22_N56
\INTERFACE|D|Converte|bcds_out_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|Converte|bcds\(5),
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \INTERFACE|D|Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds_out_reg\(5));

-- Location: FF_X81_Y22_N34
\INTERFACE|D|Converte|bcds_out_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|Converte|bcds[7]~DUPLICATE_q\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \INTERFACE|D|Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds_out_reg\(7));

-- Location: LABCELL_X81_Y22_N42
\INTERFACE|D|s_sinalAtraso~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|s_sinalAtraso~1_combout\ = ( \INTERFACE|D|Converte|bcds_out_reg\(7) & ( \INTERFACE|D|ContadordoAtraso|IC_3|Qout[1]~reg0_q\ & ( (\INTERFACE|D|Converte|bcds_out_reg\(5) & (\INTERFACE|D|ContadordoAtraso|IC_3|Qout[3]~reg0_q\ & 
-- (!\INTERFACE|D|ContadordoAtraso|IC_3|Qout[2]~reg0_q\ $ (\INTERFACE|D|Converte|bcds_out_reg\(6))))) ) ) ) # ( !\INTERFACE|D|Converte|bcds_out_reg\(7) & ( \INTERFACE|D|ContadordoAtraso|IC_3|Qout[1]~reg0_q\ & ( (\INTERFACE|D|Converte|bcds_out_reg\(5) & 
-- (!\INTERFACE|D|ContadordoAtraso|IC_3|Qout[3]~reg0_q\ & (!\INTERFACE|D|ContadordoAtraso|IC_3|Qout[2]~reg0_q\ $ (\INTERFACE|D|Converte|bcds_out_reg\(6))))) ) ) ) # ( \INTERFACE|D|Converte|bcds_out_reg\(7) & ( 
-- !\INTERFACE|D|ContadordoAtraso|IC_3|Qout[1]~reg0_q\ & ( (!\INTERFACE|D|Converte|bcds_out_reg\(5) & (\INTERFACE|D|ContadordoAtraso|IC_3|Qout[3]~reg0_q\ & (!\INTERFACE|D|ContadordoAtraso|IC_3|Qout[2]~reg0_q\ $ (\INTERFACE|D|Converte|bcds_out_reg\(6))))) ) ) 
-- ) # ( !\INTERFACE|D|Converte|bcds_out_reg\(7) & ( !\INTERFACE|D|ContadordoAtraso|IC_3|Qout[1]~reg0_q\ & ( (!\INTERFACE|D|Converte|bcds_out_reg\(5) & (!\INTERFACE|D|ContadordoAtraso|IC_3|Qout[3]~reg0_q\ & 
-- (!\INTERFACE|D|ContadordoAtraso|IC_3|Qout[2]~reg0_q\ $ (\INTERFACE|D|Converte|bcds_out_reg\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000000001001000000001001000000000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ContadordoAtraso|IC_3|ALT_INV_Qout[2]~reg0_q\,
	datab => \INTERFACE|D|Converte|ALT_INV_bcds_out_reg\(6),
	datac => \INTERFACE|D|Converte|ALT_INV_bcds_out_reg\(5),
	datad => \INTERFACE|D|ContadordoAtraso|IC_3|ALT_INV_Qout[3]~reg0_q\,
	datae => \INTERFACE|D|Converte|ALT_INV_bcds_out_reg\(7),
	dataf => \INTERFACE|D|ContadordoAtraso|IC_3|ALT_INV_Qout[1]~reg0_q\,
	combout => \INTERFACE|D|s_sinalAtraso~1_combout\);

-- Location: FF_X81_Y22_N40
\INTERFACE|D|Converte|bcds_out_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|Converte|bcds\(8),
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \INTERFACE|D|Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds_out_reg\(8));

-- Location: FF_X81_Y22_N58
\INTERFACE|D|Converte|bcds_out_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|Converte|bcds\(15),
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \INTERFACE|D|Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds_out_reg\(15));

-- Location: FF_X83_Y22_N26
\INTERFACE|D|Converte|bcds_out_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|Converte|bcds[9]~DUPLICATE_q\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \INTERFACE|D|Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds_out_reg\(9));

-- Location: MLABCELL_X82_Y22_N6
\INTERFACE|D|s_sinalAtraso~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|s_sinalAtraso~4_combout\ = ( \INTERFACE|D|ContadordoAtraso|IC_2|Qout[0]~reg0_q\ & ( \INTERFACE|D|ContadordoAtraso|IC_2|Qout[1]~reg0_q\ & ( (\INTERFACE|D|Converte|bcds_out_reg\(8) & (\INTERFACE|D|Converte|bcds_out_reg\(9) & 
-- (!\INTERFACE|D|Converte|bcds_out_reg\(15) $ (\INTERFACE|D|ContadordoAtraso|IC_1|Qout[3]~reg0_q\)))) ) ) ) # ( !\INTERFACE|D|ContadordoAtraso|IC_2|Qout[0]~reg0_q\ & ( \INTERFACE|D|ContadordoAtraso|IC_2|Qout[1]~reg0_q\ & ( 
-- (!\INTERFACE|D|Converte|bcds_out_reg\(8) & (\INTERFACE|D|Converte|bcds_out_reg\(9) & (!\INTERFACE|D|Converte|bcds_out_reg\(15) $ (\INTERFACE|D|ContadordoAtraso|IC_1|Qout[3]~reg0_q\)))) ) ) ) # ( \INTERFACE|D|ContadordoAtraso|IC_2|Qout[0]~reg0_q\ & ( 
-- !\INTERFACE|D|ContadordoAtraso|IC_2|Qout[1]~reg0_q\ & ( (\INTERFACE|D|Converte|bcds_out_reg\(8) & (!\INTERFACE|D|Converte|bcds_out_reg\(9) & (!\INTERFACE|D|Converte|bcds_out_reg\(15) $ (\INTERFACE|D|ContadordoAtraso|IC_1|Qout[3]~reg0_q\)))) ) ) ) # ( 
-- !\INTERFACE|D|ContadordoAtraso|IC_2|Qout[0]~reg0_q\ & ( !\INTERFACE|D|ContadordoAtraso|IC_2|Qout[1]~reg0_q\ & ( (!\INTERFACE|D|Converte|bcds_out_reg\(8) & (!\INTERFACE|D|Converte|bcds_out_reg\(9) & (!\INTERFACE|D|Converte|bcds_out_reg\(15) $ 
-- (\INTERFACE|D|ContadordoAtraso|IC_1|Qout[3]~reg0_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000010000010000000000000000100000100000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|Converte|ALT_INV_bcds_out_reg\(8),
	datab => \INTERFACE|D|Converte|ALT_INV_bcds_out_reg\(15),
	datac => \INTERFACE|D|ContadordoAtraso|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datad => \INTERFACE|D|Converte|ALT_INV_bcds_out_reg\(9),
	datae => \INTERFACE|D|ContadordoAtraso|IC_2|ALT_INV_Qout[0]~reg0_q\,
	dataf => \INTERFACE|D|ContadordoAtraso|IC_2|ALT_INV_Qout[1]~reg0_q\,
	combout => \INTERFACE|D|s_sinalAtraso~4_combout\);

-- Location: FF_X83_Y22_N23
\INTERFACE|D|Converte|bcds_out_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|Converte|bcds\(1),
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \INTERFACE|D|Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds_out_reg\(1));

-- Location: FF_X79_Y22_N17
\INTERFACE|D|Converte|bcds_out_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|Converte|bcds[0]~DUPLICATE_q\,
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \INTERFACE|D|Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds_out_reg\(0));

-- Location: FF_X83_Y22_N20
\INTERFACE|D|Converte|bcds_out_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|D|Converte|bcds\(2),
	clrn => \INTERFACE|D|ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \INTERFACE|D|Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|Converte|bcds_out_reg\(2));

-- Location: LABCELL_X83_Y22_N18
\INTERFACE|D|s_sinalAtraso~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|s_sinalAtraso~0_combout\ = ( \INTERFACE|D|Converte|bcds_out_reg\(2) & ( \INTERFACE|D|ContadordoAtraso|IC_4|Qout[2]~reg0_q\ & ( (!\INTERFACE|D|Converte|bcds_out_reg\(1) & (!\INTERFACE|D|ContadordoAtraso|IC_4|Qout[1]~reg0_q\ & 
-- (!\INTERFACE|D|ContadordoAtraso|IC_4|Qout[0]~reg0_q\ $ (\INTERFACE|D|Converte|bcds_out_reg\(0))))) # (\INTERFACE|D|Converte|bcds_out_reg\(1) & (\INTERFACE|D|ContadordoAtraso|IC_4|Qout[1]~reg0_q\ & (!\INTERFACE|D|ContadordoAtraso|IC_4|Qout[0]~reg0_q\ $ 
-- (\INTERFACE|D|Converte|bcds_out_reg\(0))))) ) ) ) # ( !\INTERFACE|D|Converte|bcds_out_reg\(2) & ( !\INTERFACE|D|ContadordoAtraso|IC_4|Qout[2]~reg0_q\ & ( (!\INTERFACE|D|Converte|bcds_out_reg\(1) & (!\INTERFACE|D|ContadordoAtraso|IC_4|Qout[1]~reg0_q\ & 
-- (!\INTERFACE|D|ContadordoAtraso|IC_4|Qout[0]~reg0_q\ $ (\INTERFACE|D|Converte|bcds_out_reg\(0))))) # (\INTERFACE|D|Converte|bcds_out_reg\(1) & (\INTERFACE|D|ContadordoAtraso|IC_4|Qout[1]~reg0_q\ & (!\INTERFACE|D|ContadordoAtraso|IC_4|Qout[0]~reg0_q\ $ 
-- (\INTERFACE|D|Converte|bcds_out_reg\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000100001000000000000000000000000000000001000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|Converte|ALT_INV_bcds_out_reg\(1),
	datab => \INTERFACE|D|ContadordoAtraso|IC_4|ALT_INV_Qout[0]~reg0_q\,
	datac => \INTERFACE|D|ContadordoAtraso|IC_4|ALT_INV_Qout[1]~reg0_q\,
	datad => \INTERFACE|D|Converte|ALT_INV_bcds_out_reg\(0),
	datae => \INTERFACE|D|Converte|ALT_INV_bcds_out_reg\(2),
	dataf => \INTERFACE|D|ContadordoAtraso|IC_4|ALT_INV_Qout[2]~reg0_q\,
	combout => \INTERFACE|D|s_sinalAtraso~0_combout\);

-- Location: MLABCELL_X82_Y22_N12
\INTERFACE|D|s_sinalAtraso~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|s_sinalAtraso~5_combout\ = ( \INTERFACE|D|s_sinalAtraso~4_combout\ & ( \INTERFACE|D|s_sinalAtraso~0_combout\ & ( (\INTERFACE|D|s_sinalAtraso~2_combout\ & (\INTERFACE|D|s_sinalAtraso~3_combout\ & (!\INTERFACE|D|C4|Equal0~0_combout\ & 
-- \INTERFACE|D|s_sinalAtraso~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ALT_INV_s_sinalAtraso~2_combout\,
	datab => \INTERFACE|D|ALT_INV_s_sinalAtraso~3_combout\,
	datac => \INTERFACE|D|C4|ALT_INV_Equal0~0_combout\,
	datad => \INTERFACE|D|ALT_INV_s_sinalAtraso~1_combout\,
	datae => \INTERFACE|D|ALT_INV_s_sinalAtraso~4_combout\,
	dataf => \INTERFACE|D|ALT_INV_s_sinalAtraso~0_combout\,
	combout => \INTERFACE|D|s_sinalAtraso~5_combout\);

-- Location: MLABCELL_X82_Y22_N54
\INTERFACE|C|Selector5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|C|Selector5~1_combout\ = ( \INTERFACE|C|Eatual.Afobado~q\ & ( \INTERFACE|D|C|Eatual.Contando~q\ & ( (!\finalizaRodada~input_o\) # (((\INTERFACE|D|s_sinalAtraso~5_combout\) # (\INTERFACE|s_demorou~combout\)) # 
-- (\INTERFACE|C|Selector5~0_combout\)) ) ) ) # ( !\INTERFACE|C|Eatual.Afobado~q\ & ( \INTERFACE|D|C|Eatual.Contando~q\ & ( (\INTERFACE|C|Selector5~0_combout\ & !\INTERFACE|s_demorou~combout\) ) ) ) # ( \INTERFACE|C|Eatual.Afobado~q\ & ( 
-- !\INTERFACE|D|C|Eatual.Contando~q\ & ( (!\finalizaRodada~input_o\) # ((\INTERFACE|s_demorou~combout\) # (\INTERFACE|C|Selector5~0_combout\)) ) ) ) # ( !\INTERFACE|C|Eatual.Afobado~q\ & ( !\INTERFACE|D|C|Eatual.Contando~q\ & ( 
-- (\INTERFACE|C|Selector5~0_combout\ & !\INTERFACE|s_demorou~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000101111111011111100110000001100001011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_finalizaRodada~input_o\,
	datab => \INTERFACE|C|ALT_INV_Selector5~0_combout\,
	datac => \INTERFACE|ALT_INV_s_demorou~combout\,
	datad => \INTERFACE|D|ALT_INV_s_sinalAtraso~5_combout\,
	datae => \INTERFACE|C|ALT_INV_Eatual.Afobado~q\,
	dataf => \INTERFACE|D|C|ALT_INV_Eatual.Contando~q\,
	combout => \INTERFACE|C|Selector5~1_combout\);

-- Location: FF_X82_Y22_N56
\INTERFACE|C|Eatual.Afobado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|C|Selector5~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|C|Eatual.Afobado~q\);

-- Location: MLABCELL_X82_Y22_N21
\INTERFACE|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|comb~0_combout\ = ( \reset~input_o\ ) # ( !\reset~input_o\ & ( ((\INTERFACE|C|Eatual.Respondeu~q\) # (\INTERFACE|C|Eatual.Afobado~q\)) # (\INTERFACE|C|Eatual.Demorado~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111111010111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|C|ALT_INV_Eatual.Demorado~q\,
	datac => \INTERFACE|C|ALT_INV_Eatual.Afobado~q\,
	datad => \INTERFACE|C|ALT_INV_Eatual.Respondeu~q\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \INTERFACE|comb~0_combout\);

-- Location: LABCELL_X83_Y25_N18
\INTERFACE|ContaDemora|IC_1|Qout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|ContaDemora|IC_1|Qout~2_combout\ = (!\INTERFACE|comb~0_combout\ & ((!\INTERFACE|ContaDemora|IC_1|Qout[0]~reg0_q\ & ((\INTERFACE|ContaDemora|IC_1|Qout[1]~reg0_q\))) # (\INTERFACE|ContaDemora|IC_1|Qout[0]~reg0_q\ & 
-- (!\INTERFACE|ContaDemora|IC_1|Qout[3]~reg0_q\ & !\INTERFACE|ContaDemora|IC_1|Qout[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000010100000010000001010000001000000101000000100000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|ContaDemora|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datab => \INTERFACE|ContaDemora|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datac => \INTERFACE|ALT_INV_comb~0_combout\,
	datad => \INTERFACE|ContaDemora|IC_1|ALT_INV_Qout[1]~reg0_q\,
	combout => \INTERFACE|ContaDemora|IC_1|Qout~2_combout\);

-- Location: LABCELL_X83_Y25_N54
\INTERFACE|ContaDemora|IC_1|Qout[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|ContaDemora|IC_1|Qout[3]~3_combout\ = ( \INTERFACE|C|WideNor1~0_combout\ & ( (((\INTERFACE|ContaDemora|IC_1|Qout[0]~reg0_q\ & \INTERFACE|ContaDemora|IC_1|Qout[3]~reg0_q\)) # (\INTERFACE|C|Eatual.Aguarda~q\)) # (\reset~input_o\) ) ) # ( 
-- !\INTERFACE|C|WideNor1~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100011111111111110001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|ContaDemora|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datab => \INTERFACE|ContaDemora|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datac => \ALT_INV_reset~input_o\,
	datad => \INTERFACE|C|ALT_INV_Eatual.Aguarda~q\,
	dataf => \INTERFACE|C|ALT_INV_WideNor1~0_combout\,
	combout => \INTERFACE|ContaDemora|IC_1|Qout[3]~3_combout\);

-- Location: FF_X83_Y25_N20
\INTERFACE|ContaDemora|IC_1|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|ContaDemora|IC_1|Qout~2_combout\,
	ena => \INTERFACE|ContaDemora|IC_1|Qout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|ContaDemora|IC_1|Qout[1]~reg0_q\);

-- Location: LABCELL_X83_Y25_N57
\INTERFACE|ContaDemora|IC_1|Qout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|ContaDemora|IC_1|Qout~4_combout\ = ( \INTERFACE|ContaDemora|IC_1|Qout[1]~reg0_q\ & ( (!\INTERFACE|comb~0_combout\ & ((!\INTERFACE|ContaDemora|IC_1|Qout[0]~reg0_q\ & ((\INTERFACE|ContaDemora|IC_1|Qout[2]~reg0_q\))) # 
-- (\INTERFACE|ContaDemora|IC_1|Qout[0]~reg0_q\ & (!\INTERFACE|ContaDemora|IC_1|Qout[3]~reg0_q\ & !\INTERFACE|ContaDemora|IC_1|Qout[2]~reg0_q\)))) ) ) # ( !\INTERFACE|ContaDemora|IC_1|Qout[1]~reg0_q\ & ( (!\INTERFACE|comb~0_combout\ & 
-- (\INTERFACE|ContaDemora|IC_1|Qout[2]~reg0_q\ & ((!\INTERFACE|ContaDemora|IC_1|Qout[0]~reg0_q\) # (!\INTERFACE|ContaDemora|IC_1|Qout[3]~reg0_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100000000000001110000001000000101000000100000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|ContaDemora|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datab => \INTERFACE|ContaDemora|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datac => \INTERFACE|ALT_INV_comb~0_combout\,
	datad => \INTERFACE|ContaDemora|IC_1|ALT_INV_Qout[2]~reg0_q\,
	dataf => \INTERFACE|ContaDemora|IC_1|ALT_INV_Qout[1]~reg0_q\,
	combout => \INTERFACE|ContaDemora|IC_1|Qout~4_combout\);

-- Location: FF_X83_Y25_N59
\INTERFACE|ContaDemora|IC_1|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|ContaDemora|IC_1|Qout~4_combout\,
	ena => \INTERFACE|ContaDemora|IC_1|Qout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|ContaDemora|IC_1|Qout[2]~reg0_q\);

-- Location: LABCELL_X83_Y25_N9
\INTERFACE|ContaDemora|IC_1|Qout[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|ContaDemora|IC_1|Qout[3]~1_combout\ = ( \INTERFACE|ContaDemora|IC_1|Qout[3]~reg0_q\ & ( \INTERFACE|ContaDemora|IC_1|Qout[1]~reg0_q\ & ( (!\INTERFACE|comb~0_combout\ & !\INTERFACE|ContaDemora|IC_1|Qout[0]~reg0_q\) ) ) ) # ( 
-- !\INTERFACE|ContaDemora|IC_1|Qout[3]~reg0_q\ & ( \INTERFACE|ContaDemora|IC_1|Qout[1]~reg0_q\ & ( (\INTERFACE|C|Eatual.Aguarda~q\ & (!\INTERFACE|comb~0_combout\ & (\INTERFACE|ContaDemora|IC_1|Qout[2]~reg0_q\ & \INTERFACE|ContaDemora|IC_1|Qout[0]~reg0_q\))) 
-- ) ) ) # ( \INTERFACE|ContaDemora|IC_1|Qout[3]~reg0_q\ & ( !\INTERFACE|ContaDemora|IC_1|Qout[1]~reg0_q\ & ( (!\INTERFACE|comb~0_combout\ & !\INTERFACE|ContaDemora|IC_1|Qout[0]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000000000000000000000001001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|C|ALT_INV_Eatual.Aguarda~q\,
	datab => \INTERFACE|ALT_INV_comb~0_combout\,
	datac => \INTERFACE|ContaDemora|IC_1|ALT_INV_Qout[2]~reg0_q\,
	datad => \INTERFACE|ContaDemora|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datae => \INTERFACE|ContaDemora|IC_1|ALT_INV_Qout[3]~reg0_q\,
	dataf => \INTERFACE|ContaDemora|IC_1|ALT_INV_Qout[1]~reg0_q\,
	combout => \INTERFACE|ContaDemora|IC_1|Qout[3]~1_combout\);

-- Location: FF_X83_Y25_N11
\INTERFACE|ContaDemora|IC_1|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|ContaDemora|IC_1|Qout[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|ContaDemora|IC_1|Qout[3]~reg0_q\);

-- Location: MLABCELL_X82_Y25_N6
\INTERFACE|ContaDemora|IC_1|Qout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|ContaDemora|IC_1|Qout[0]~0_combout\ = ( !\INTERFACE|comb~0_combout\ & ( (!\INTERFACE|C|Eatual.Aguarda~q\ & (!\INTERFACE|ContaDemora|IC_1|Qout[3]~reg0_q\ & \INTERFACE|ContaDemora|IC_1|Qout[0]~reg0_q\)) # (\INTERFACE|C|Eatual.Aguarda~q\ & 
-- ((!\INTERFACE|ContaDemora|IC_1|Qout[0]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110100000010101011010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|C|ALT_INV_Eatual.Aguarda~q\,
	datac => \INTERFACE|ContaDemora|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datad => \INTERFACE|ContaDemora|IC_1|ALT_INV_Qout[0]~reg0_q\,
	dataf => \INTERFACE|ALT_INV_comb~0_combout\,
	combout => \INTERFACE|ContaDemora|IC_1|Qout[0]~0_combout\);

-- Location: FF_X82_Y25_N8
\INTERFACE|ContaDemora|IC_1|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|ContaDemora|IC_1|Qout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|ContaDemora|IC_1|Qout[0]~reg0_q\);

-- Location: MLABCELL_X82_Y25_N45
\INTERFACE|ContaDemora|IC_2|Qout[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|ContaDemora|IC_2|Qout[3]~0_combout\ = ( \INTERFACE|C|Eatual.Aguarda~q\ & ( (\INTERFACE|ContaDemora|IC_1|Qout[0]~reg0_q\ & \INTERFACE|ContaDemora|IC_1|Qout[3]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|ContaDemora|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datad => \INTERFACE|ContaDemora|IC_1|ALT_INV_Qout[3]~reg0_q\,
	dataf => \INTERFACE|C|ALT_INV_Eatual.Aguarda~q\,
	combout => \INTERFACE|ContaDemora|IC_2|Qout[3]~0_combout\);

-- Location: LABCELL_X83_Y25_N39
\INTERFACE|ContaDemora|IC_2|Qout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|ContaDemora|IC_2|Qout~3_combout\ = ( !\INTERFACE|ContaDemora|ClrN2~combout\ & ( (!\INTERFACE|comb~0_combout\ & (!\INTERFACE|ContaDemora|IC_2|Qout[0]~reg0_q\ $ (!\INTERFACE|ContaDemora|IC_2|Qout[1]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000010101010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|ALT_INV_comb~0_combout\,
	datac => \INTERFACE|ContaDemora|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datad => \INTERFACE|ContaDemora|IC_2|ALT_INV_Qout[1]~reg0_q\,
	dataf => \INTERFACE|ContaDemora|ALT_INV_ClrN2~combout\,
	combout => \INTERFACE|ContaDemora|IC_2|Qout~3_combout\);

-- Location: LABCELL_X83_Y25_N45
\INTERFACE|ContaDemora|IC_2|Qout[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|ContaDemora|IC_2|Qout[1]~4_combout\ = ( \INTERFACE|C|WideNor1~0_combout\ & ( ((\INTERFACE|ContaDemora|ClrN2~combout\) # (\reset~input_o\)) # (\INTERFACE|ContaDemora|IC_2|Qout[3]~0_combout\) ) ) # ( !\INTERFACE|C|WideNor1~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|ContaDemora|IC_2|ALT_INV_Qout[3]~0_combout\,
	datac => \ALT_INV_reset~input_o\,
	datad => \INTERFACE|ContaDemora|ALT_INV_ClrN2~combout\,
	dataf => \INTERFACE|C|ALT_INV_WideNor1~0_combout\,
	combout => \INTERFACE|ContaDemora|IC_2|Qout[1]~4_combout\);

-- Location: FF_X83_Y25_N41
\INTERFACE|ContaDemora|IC_2|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|ContaDemora|IC_2|Qout~3_combout\,
	ena => \INTERFACE|ContaDemora|IC_2|Qout[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|ContaDemora|IC_2|Qout[1]~reg0_q\);

-- Location: LABCELL_X83_Y25_N36
\INTERFACE|ContaDemora|IC_2|Qout~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|ContaDemora|IC_2|Qout~5_combout\ = ( \INTERFACE|ContaDemora|IC_2|Qout[1]~reg0_q\ & ( (!\INTERFACE|comb~0_combout\ & (!\INTERFACE|ContaDemora|ClrN2~combout\ & (!\INTERFACE|ContaDemora|IC_2|Qout[0]~reg0_q\ $ 
-- (!\INTERFACE|ContaDemora|IC_2|Qout[2]~reg0_q\)))) ) ) # ( !\INTERFACE|ContaDemora|IC_2|Qout[1]~reg0_q\ & ( (!\INTERFACE|comb~0_combout\ & (!\INTERFACE|ContaDemora|ClrN2~combout\ & \INTERFACE|ContaDemora|IC_2|Qout[2]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000100000100000000010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|ALT_INV_comb~0_combout\,
	datab => \INTERFACE|ContaDemora|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datac => \INTERFACE|ContaDemora|ALT_INV_ClrN2~combout\,
	datad => \INTERFACE|ContaDemora|IC_2|ALT_INV_Qout[2]~reg0_q\,
	dataf => \INTERFACE|ContaDemora|IC_2|ALT_INV_Qout[1]~reg0_q\,
	combout => \INTERFACE|ContaDemora|IC_2|Qout~5_combout\);

-- Location: FF_X83_Y25_N38
\INTERFACE|ContaDemora|IC_2|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|ContaDemora|IC_2|Qout~5_combout\,
	ena => \INTERFACE|ContaDemora|IC_2|Qout[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|ContaDemora|IC_2|Qout[2]~reg0_q\);

-- Location: LABCELL_X83_Y25_N27
\INTERFACE|ContaDemora|IC_2|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|ContaDemora|IC_2|Add0~0_combout\ = ( \INTERFACE|ContaDemora|IC_2|Qout[1]~reg0_q\ & ( (\INTERFACE|ContaDemora|IC_2|Qout[0]~reg0_q\ & \INTERFACE|ContaDemora|IC_2|Qout[2]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|ContaDemora|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datad => \INTERFACE|ContaDemora|IC_2|ALT_INV_Qout[2]~reg0_q\,
	dataf => \INTERFACE|ContaDemora|IC_2|ALT_INV_Qout[1]~reg0_q\,
	combout => \INTERFACE|ContaDemora|IC_2|Add0~0_combout\);

-- Location: LABCELL_X83_Y25_N30
\INTERFACE|ContaDemora|IC_2|Qout[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|ContaDemora|IC_2|Qout[3]~2_combout\ = ( \INTERFACE|ContaDemora|IC_2|Qout[3]~0_combout\ & ( (!\INTERFACE|comb~0_combout\ & (!\INTERFACE|ContaDemora|ClrN2~combout\ & (!\INTERFACE|ContaDemora|IC_2|Add0~0_combout\ $ 
-- (!\INTERFACE|ContaDemora|IC_2|Qout[3]~reg0_q\)))) ) ) # ( !\INTERFACE|ContaDemora|IC_2|Qout[3]~0_combout\ & ( (!\INTERFACE|comb~0_combout\ & (!\INTERFACE|ContaDemora|ClrN2~combout\ & \INTERFACE|ContaDemora|IC_2|Qout[3]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000001000000100000000100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|ContaDemora|IC_2|ALT_INV_Add0~0_combout\,
	datab => \INTERFACE|ALT_INV_comb~0_combout\,
	datac => \INTERFACE|ContaDemora|ALT_INV_ClrN2~combout\,
	datad => \INTERFACE|ContaDemora|IC_2|ALT_INV_Qout[3]~reg0_q\,
	dataf => \INTERFACE|ContaDemora|IC_2|ALT_INV_Qout[3]~0_combout\,
	combout => \INTERFACE|ContaDemora|IC_2|Qout[3]~2_combout\);

-- Location: FF_X83_Y25_N32
\INTERFACE|ContaDemora|IC_2|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|ContaDemora|IC_2|Qout[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|ContaDemora|IC_2|Qout[3]~reg0_q\);

-- Location: LABCELL_X83_Y25_N21
\INTERFACE|ContaDemora|ClrN2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|ContaDemora|ClrN2~combout\ = ( \INTERFACE|ContaDemora|IC_2|Qout[3]~reg0_q\ & ( (\INTERFACE|ContaDemora|IC_1|Qout[3]~reg0_q\ & (\INTERFACE|ContaDemora|IC_2|Qout[0]~reg0_q\ & \INTERFACE|ContaDemora|IC_1|Qout[0]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|ContaDemora|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datac => \INTERFACE|ContaDemora|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datad => \INTERFACE|ContaDemora|IC_1|ALT_INV_Qout[0]~reg0_q\,
	dataf => \INTERFACE|ContaDemora|IC_2|ALT_INV_Qout[3]~reg0_q\,
	combout => \INTERFACE|ContaDemora|ClrN2~combout\);

-- Location: LABCELL_X83_Y25_N42
\INTERFACE|ContaDemora|IC_2|Qout[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|ContaDemora|IC_2|Qout[0]~1_combout\ = ( \INTERFACE|ContaDemora|ClrN2~combout\ & ( (!\INTERFACE|comb~0_combout\ & !\INTERFACE|ContaDemora|IC_2|Qout[0]~reg0_q\) ) ) # ( !\INTERFACE|ContaDemora|ClrN2~combout\ & ( (!\INTERFACE|comb~0_combout\ & 
-- (!\INTERFACE|ContaDemora|IC_2|Qout[3]~0_combout\ $ (!\INTERFACE|ContaDemora|IC_2|Qout[0]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000000011001100000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|ALT_INV_comb~0_combout\,
	datac => \INTERFACE|ContaDemora|IC_2|ALT_INV_Qout[3]~0_combout\,
	datad => \INTERFACE|ContaDemora|IC_2|ALT_INV_Qout[0]~reg0_q\,
	dataf => \INTERFACE|ContaDemora|ALT_INV_ClrN2~combout\,
	combout => \INTERFACE|ContaDemora|IC_2|Qout[0]~1_combout\);

-- Location: FF_X83_Y25_N44
\INTERFACE|ContaDemora|IC_2|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|ContaDemora|IC_2|Qout[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|ContaDemora|IC_2|Qout[0]~reg0_q\);

-- Location: MLABCELL_X84_Y25_N3
\INTERFACE|ContaDemora|IC_3|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|ContaDemora|IC_3|process_0~0_combout\ = ( \INTERFACE|ContaDemora|IC_1|Qout[0]~reg0_q\ & ( \INTERFACE|C|Eatual.Aguarda~q\ & ( (\INTERFACE|ContaDemora|IC_2|Qout[0]~reg0_q\ & (\INTERFACE|ContaDemora|IC_1|Qout[3]~reg0_q\ & 
-- \INTERFACE|ContaDemora|IC_2|Qout[3]~reg0_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|ContaDemora|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datac => \INTERFACE|ContaDemora|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datad => \INTERFACE|ContaDemora|IC_2|ALT_INV_Qout[3]~reg0_q\,
	datae => \INTERFACE|ContaDemora|IC_1|ALT_INV_Qout[0]~reg0_q\,
	dataf => \INTERFACE|C|ALT_INV_Eatual.Aguarda~q\,
	combout => \INTERFACE|ContaDemora|IC_3|process_0~0_combout\);

-- Location: LABCELL_X83_Y25_N33
\INTERFACE|ContaDemora|IC_3|Qout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|ContaDemora|IC_3|Qout[0]~0_combout\ = ( \INTERFACE|ContaDemora|ClrN3~0_combout\ & ( (!\INTERFACE|comb~0_combout\ & !\INTERFACE|ContaDemora|IC_3|Qout[0]~reg0_q\) ) ) # ( !\INTERFACE|ContaDemora|ClrN3~0_combout\ & ( (!\INTERFACE|comb~0_combout\ & 
-- (!\INTERFACE|ContaDemora|IC_3|process_0~0_combout\ $ (!\INTERFACE|ContaDemora|IC_3|Qout[0]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000000011001100000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|ALT_INV_comb~0_combout\,
	datac => \INTERFACE|ContaDemora|IC_3|ALT_INV_process_0~0_combout\,
	datad => \INTERFACE|ContaDemora|IC_3|ALT_INV_Qout[0]~reg0_q\,
	dataf => \INTERFACE|ContaDemora|ALT_INV_ClrN3~0_combout\,
	combout => \INTERFACE|ContaDemora|IC_3|Qout[0]~0_combout\);

-- Location: FF_X83_Y25_N35
\INTERFACE|ContaDemora|IC_3|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|ContaDemora|IC_3|Qout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|ContaDemora|IC_3|Qout[0]~reg0_q\);

-- Location: MLABCELL_X84_Y25_N48
\INTERFACE|ContaDemora|IC_3|Qout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|ContaDemora|IC_3|Qout~2_combout\ = ( !\INTERFACE|ContaDemora|ClrN3~0_combout\ & ( (!\INTERFACE|comb~0_combout\ & (!\INTERFACE|ContaDemora|IC_3|Qout[0]~reg0_q\ $ (!\INTERFACE|ContaDemora|IC_3|Qout[1]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000000011001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|ALT_INV_comb~0_combout\,
	datac => \INTERFACE|ContaDemora|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datad => \INTERFACE|ContaDemora|IC_3|ALT_INV_Qout[1]~reg0_q\,
	dataf => \INTERFACE|ContaDemora|ALT_INV_ClrN3~0_combout\,
	combout => \INTERFACE|ContaDemora|IC_3|Qout~2_combout\);

-- Location: MLABCELL_X84_Y25_N57
\INTERFACE|ContaDemora|IC_3|Qout[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|ContaDemora|IC_3|Qout[2]~3_combout\ = ( \INTERFACE|ContaDemora|IC_3|process_0~0_combout\ & ( \INTERFACE|C|WideNor1~0_combout\ ) ) # ( !\INTERFACE|ContaDemora|IC_3|process_0~0_combout\ & ( \INTERFACE|C|WideNor1~0_combout\ & ( 
-- (\INTERFACE|ContaDemora|ClrN3~0_combout\) # (\reset~input_o\) ) ) ) # ( \INTERFACE|ContaDemora|IC_3|process_0~0_combout\ & ( !\INTERFACE|C|WideNor1~0_combout\ ) ) # ( !\INTERFACE|ContaDemora|IC_3|process_0~0_combout\ & ( !\INTERFACE|C|WideNor1~0_combout\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100111111001111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	datac => \INTERFACE|ContaDemora|ALT_INV_ClrN3~0_combout\,
	datae => \INTERFACE|ContaDemora|IC_3|ALT_INV_process_0~0_combout\,
	dataf => \INTERFACE|C|ALT_INV_WideNor1~0_combout\,
	combout => \INTERFACE|ContaDemora|IC_3|Qout[2]~3_combout\);

-- Location: FF_X84_Y25_N50
\INTERFACE|ContaDemora|IC_3|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|ContaDemora|IC_3|Qout~2_combout\,
	ena => \INTERFACE|ContaDemora|IC_3|Qout[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|ContaDemora|IC_3|Qout[1]~reg0_q\);

-- Location: MLABCELL_X84_Y25_N51
\INTERFACE|ContaDemora|IC_3|Qout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|ContaDemora|IC_3|Qout~4_combout\ = ( \INTERFACE|ContaDemora|IC_3|Qout[1]~reg0_q\ & ( (!\INTERFACE|comb~0_combout\ & (!\INTERFACE|ContaDemora|ClrN3~0_combout\ & (!\INTERFACE|ContaDemora|IC_3|Qout[0]~reg0_q\ $ 
-- (!\INTERFACE|ContaDemora|IC_3|Qout[2]~reg0_q\)))) ) ) # ( !\INTERFACE|ContaDemora|IC_3|Qout[1]~reg0_q\ & ( (!\INTERFACE|comb~0_combout\ & (!\INTERFACE|ContaDemora|ClrN3~0_combout\ & \INTERFACE|ContaDemora|IC_3|Qout[2]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000001000000100000000100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|ContaDemora|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datab => \INTERFACE|ALT_INV_comb~0_combout\,
	datac => \INTERFACE|ContaDemora|ALT_INV_ClrN3~0_combout\,
	datad => \INTERFACE|ContaDemora|IC_3|ALT_INV_Qout[2]~reg0_q\,
	dataf => \INTERFACE|ContaDemora|IC_3|ALT_INV_Qout[1]~reg0_q\,
	combout => \INTERFACE|ContaDemora|IC_3|Qout~4_combout\);

-- Location: FF_X84_Y25_N53
\INTERFACE|ContaDemora|IC_3|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|ContaDemora|IC_3|Qout~4_combout\,
	ena => \INTERFACE|ContaDemora|IC_3|Qout[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|ContaDemora|IC_3|Qout[2]~reg0_q\);

-- Location: MLABCELL_X84_Y25_N6
\INTERFACE|ContaDemora|IC_3|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|ContaDemora|IC_3|Add0~0_combout\ = ( \INTERFACE|ContaDemora|IC_3|Qout[0]~reg0_q\ & ( (\INTERFACE|ContaDemora|IC_3|Qout[1]~reg0_q\ & \INTERFACE|ContaDemora|IC_3|Qout[2]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|ContaDemora|IC_3|ALT_INV_Qout[1]~reg0_q\,
	datac => \INTERFACE|ContaDemora|IC_3|ALT_INV_Qout[2]~reg0_q\,
	dataf => \INTERFACE|ContaDemora|IC_3|ALT_INV_Qout[0]~reg0_q\,
	combout => \INTERFACE|ContaDemora|IC_3|Add0~0_combout\);

-- Location: LABCELL_X83_Y25_N0
\INTERFACE|ContaDemora|IC_3|Qout[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|ContaDemora|IC_3|Qout[3]~1_combout\ = ( !\INTERFACE|ContaDemora|ClrN3~0_combout\ & ( (!\INTERFACE|comb~0_combout\ & (!\INTERFACE|ContaDemora|IC_3|Qout[3]~reg0_q\ $ (((!\INTERFACE|ContaDemora|IC_3|process_0~0_combout\) # 
-- (!\INTERFACE|ContaDemora|IC_3|Add0~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001001000010001000100100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|ContaDemora|IC_3|ALT_INV_Qout[3]~reg0_q\,
	datab => \INTERFACE|ALT_INV_comb~0_combout\,
	datac => \INTERFACE|ContaDemora|IC_3|ALT_INV_process_0~0_combout\,
	datad => \INTERFACE|ContaDemora|IC_3|ALT_INV_Add0~0_combout\,
	dataf => \INTERFACE|ContaDemora|ALT_INV_ClrN3~0_combout\,
	combout => \INTERFACE|ContaDemora|IC_3|Qout[3]~1_combout\);

-- Location: FF_X83_Y25_N2
\INTERFACE|ContaDemora|IC_3|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|ContaDemora|IC_3|Qout[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|ContaDemora|IC_3|Qout[3]~reg0_q\);

-- Location: LABCELL_X83_Y25_N48
\INTERFACE|ContaDemora|ClrN3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|ContaDemora|ClrN3~0_combout\ = ( \INTERFACE|ContaDemora|IC_1|Qout[0]~reg0_q\ & ( \INTERFACE|ContaDemora|IC_2|Qout[3]~reg0_q\ & ( (\INTERFACE|ContaDemora|IC_3|Qout[0]~reg0_q\ & (\INTERFACE|ContaDemora|IC_1|Qout[3]~reg0_q\ & 
-- (\INTERFACE|ContaDemora|IC_3|Qout[3]~reg0_q\ & \INTERFACE|ContaDemora|IC_2|Qout[0]~reg0_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|ContaDemora|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datab => \INTERFACE|ContaDemora|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datac => \INTERFACE|ContaDemora|IC_3|ALT_INV_Qout[3]~reg0_q\,
	datad => \INTERFACE|ContaDemora|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datae => \INTERFACE|ContaDemora|IC_1|ALT_INV_Qout[0]~reg0_q\,
	dataf => \INTERFACE|ContaDemora|IC_2|ALT_INV_Qout[3]~reg0_q\,
	combout => \INTERFACE|ContaDemora|ClrN3~0_combout\);

-- Location: LABCELL_X83_Y25_N3
\INTERFACE|s_demorou~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|s_demorou~3_combout\ = ( \INTERFACE|ContaDemora|IC_3|Qout[0]~reg0_q\ & ( (\INTERFACE|ContaDemora|IC_3|Qout[3]~reg0_q\ & (\INTERFACE|ContaDemora|IC_2|Qout[0]~reg0_q\ & \INTERFACE|ContaDemora|IC_2|Qout[3]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|ContaDemora|IC_3|ALT_INV_Qout[3]~reg0_q\,
	datac => \INTERFACE|ContaDemora|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datad => \INTERFACE|ContaDemora|IC_2|ALT_INV_Qout[3]~reg0_q\,
	dataf => \INTERFACE|ContaDemora|IC_3|ALT_INV_Qout[0]~reg0_q\,
	combout => \INTERFACE|s_demorou~3_combout\);

-- Location: MLABCELL_X82_Y25_N3
\INTERFACE|ContaDemora|IC_4|Qout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|ContaDemora|IC_4|Qout~3_combout\ = ( \INTERFACE|ContaDemora|IC_4|Qout[1]~reg0_q\ & ( \INTERFACE|ContaDemora|ClrN3~0_combout\ & ( (!\INTERFACE|ContaDemora|IC_4|Qout[0]~reg0_q\ & !\INTERFACE|comb~0_combout\) ) ) ) # ( 
-- !\INTERFACE|ContaDemora|IC_4|Qout[1]~reg0_q\ & ( \INTERFACE|ContaDemora|ClrN3~0_combout\ & ( (\INTERFACE|ContaDemora|IC_4|Qout[0]~reg0_q\ & (!\INTERFACE|ContaDemora|IC_4|Qout[3]~reg0_q\ & !\INTERFACE|comb~0_combout\)) ) ) ) # ( 
-- \INTERFACE|ContaDemora|IC_4|Qout[1]~reg0_q\ & ( !\INTERFACE|ContaDemora|ClrN3~0_combout\ & ( (!\INTERFACE|ContaDemora|IC_4|Qout[0]~reg0_q\ & !\INTERFACE|comb~0_combout\) ) ) ) # ( !\INTERFACE|ContaDemora|IC_4|Qout[1]~reg0_q\ & ( 
-- !\INTERFACE|ContaDemora|ClrN3~0_combout\ & ( (\INTERFACE|ContaDemora|IC_4|Qout[0]~reg0_q\ & !\INTERFACE|comb~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000110011000000000000110000000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|ContaDemora|IC_4|ALT_INV_Qout[0]~reg0_q\,
	datac => \INTERFACE|ContaDemora|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datad => \INTERFACE|ALT_INV_comb~0_combout\,
	datae => \INTERFACE|ContaDemora|IC_4|ALT_INV_Qout[1]~reg0_q\,
	dataf => \INTERFACE|ContaDemora|ALT_INV_ClrN3~0_combout\,
	combout => \INTERFACE|ContaDemora|IC_4|Qout~3_combout\);

-- Location: MLABCELL_X82_Y25_N51
\INTERFACE|ContaDemora|IC_4|Qout[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|ContaDemora|IC_4|Qout[1]~4_combout\ = ( \INTERFACE|s_demorou~3_combout\ & ( \INTERFACE|C|WideNor1~0_combout\ & ( (((\INTERFACE|ContaDemora|ClrN3~0_combout\ & \INTERFACE|s_demorou~0_combout\)) # (\INTERFACE|ContaDemora|IC_2|Qout[3]~0_combout\)) 
-- # (\reset~input_o\) ) ) ) # ( !\INTERFACE|s_demorou~3_combout\ & ( \INTERFACE|C|WideNor1~0_combout\ & ( ((\INTERFACE|ContaDemora|ClrN3~0_combout\ & \INTERFACE|s_demorou~0_combout\)) # (\reset~input_o\) ) ) ) # ( \INTERFACE|s_demorou~3_combout\ & ( 
-- !\INTERFACE|C|WideNor1~0_combout\ ) ) # ( !\INTERFACE|s_demorou~3_combout\ & ( !\INTERFACE|C|WideNor1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101011101110101111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \INTERFACE|ContaDemora|ALT_INV_ClrN3~0_combout\,
	datac => \INTERFACE|ContaDemora|IC_2|ALT_INV_Qout[3]~0_combout\,
	datad => \INTERFACE|ALT_INV_s_demorou~0_combout\,
	datae => \INTERFACE|ALT_INV_s_demorou~3_combout\,
	dataf => \INTERFACE|C|ALT_INV_WideNor1~0_combout\,
	combout => \INTERFACE|ContaDemora|IC_4|Qout[1]~4_combout\);

-- Location: FF_X82_Y25_N5
\INTERFACE|ContaDemora|IC_4|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|ContaDemora|IC_4|Qout~3_combout\,
	ena => \INTERFACE|ContaDemora|IC_4|Qout[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|ContaDemora|IC_4|Qout[1]~reg0_q\);

-- Location: MLABCELL_X82_Y25_N30
\INTERFACE|ContaDemora|IC_4|Qout~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|ContaDemora|IC_4|Qout~5_combout\ = ( \INTERFACE|ContaDemora|IC_4|Qout[2]~reg0_q\ & ( \INTERFACE|ContaDemora|IC_4|Qout[0]~reg0_q\ & ( (!\INTERFACE|comb~0_combout\ & (!\INTERFACE|ContaDemora|IC_4|Qout[1]~reg0_q\ & 
-- ((!\INTERFACE|ContaDemora|ClrN3~0_combout\) # (!\INTERFACE|ContaDemora|IC_4|Qout[3]~reg0_q\)))) ) ) ) # ( !\INTERFACE|ContaDemora|IC_4|Qout[2]~reg0_q\ & ( \INTERFACE|ContaDemora|IC_4|Qout[0]~reg0_q\ & ( (!\INTERFACE|comb~0_combout\ & 
-- (\INTERFACE|ContaDemora|IC_4|Qout[1]~reg0_q\ & ((!\INTERFACE|ContaDemora|ClrN3~0_combout\) # (!\INTERFACE|ContaDemora|IC_4|Qout[3]~reg0_q\)))) ) ) ) # ( \INTERFACE|ContaDemora|IC_4|Qout[2]~reg0_q\ & ( !\INTERFACE|ContaDemora|IC_4|Qout[0]~reg0_q\ & ( 
-- !\INTERFACE|comb~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000001100000010001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|ContaDemora|ALT_INV_ClrN3~0_combout\,
	datab => \INTERFACE|ALT_INV_comb~0_combout\,
	datac => \INTERFACE|ContaDemora|IC_4|ALT_INV_Qout[1]~reg0_q\,
	datad => \INTERFACE|ContaDemora|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datae => \INTERFACE|ContaDemora|IC_4|ALT_INV_Qout[2]~reg0_q\,
	dataf => \INTERFACE|ContaDemora|IC_4|ALT_INV_Qout[0]~reg0_q\,
	combout => \INTERFACE|ContaDemora|IC_4|Qout~5_combout\);

-- Location: FF_X82_Y25_N32
\INTERFACE|ContaDemora|IC_4|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|ContaDemora|IC_4|Qout~5_combout\,
	ena => \INTERFACE|ContaDemora|IC_4|Qout[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|ContaDemora|IC_4|Qout[2]~reg0_q\);

-- Location: MLABCELL_X82_Y25_N54
\INTERFACE|ContaDemora|IC_4|Qout[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|ContaDemora|IC_4|Qout[3]~1_combout\ = ( \INTERFACE|ContaDemora|IC_4|Qout[1]~reg0_q\ & ( \INTERFACE|ContaDemora|IC_4|Qout[0]~reg0_q\ & ( !\INTERFACE|ContaDemora|IC_4|Qout[3]~reg0_q\ $ (((!\INTERFACE|ContaDemora|IC_2|Qout[3]~0_combout\) # 
-- ((!\INTERFACE|ContaDemora|IC_4|Qout[2]~reg0_q\) # (!\INTERFACE|s_demorou~3_combout\)))) ) ) ) # ( !\INTERFACE|ContaDemora|IC_4|Qout[1]~reg0_q\ & ( \INTERFACE|ContaDemora|IC_4|Qout[0]~reg0_q\ & ( \INTERFACE|ContaDemora|IC_4|Qout[3]~reg0_q\ ) ) ) # ( 
-- \INTERFACE|ContaDemora|IC_4|Qout[1]~reg0_q\ & ( !\INTERFACE|ContaDemora|IC_4|Qout[0]~reg0_q\ & ( \INTERFACE|ContaDemora|IC_4|Qout[3]~reg0_q\ ) ) ) # ( !\INTERFACE|ContaDemora|IC_4|Qout[1]~reg0_q\ & ( !\INTERFACE|ContaDemora|IC_4|Qout[0]~reg0_q\ & ( 
-- \INTERFACE|ContaDemora|IC_4|Qout[3]~reg0_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|ContaDemora|IC_2|ALT_INV_Qout[3]~0_combout\,
	datab => \INTERFACE|ContaDemora|IC_4|ALT_INV_Qout[2]~reg0_q\,
	datac => \INTERFACE|ALT_INV_s_demorou~3_combout\,
	datad => \INTERFACE|ContaDemora|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datae => \INTERFACE|ContaDemora|IC_4|ALT_INV_Qout[1]~reg0_q\,
	dataf => \INTERFACE|ContaDemora|IC_4|ALT_INV_Qout[0]~reg0_q\,
	combout => \INTERFACE|ContaDemora|IC_4|Qout[3]~1_combout\);

-- Location: MLABCELL_X82_Y25_N39
\INTERFACE|ContaDemora|IC_4|Qout[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|ContaDemora|IC_4|Qout[3]~2_combout\ = ( !\INTERFACE|s_demorou~0_combout\ & ( \INTERFACE|ContaDemora|ClrN3~0_combout\ & ( (\INTERFACE|ContaDemora|IC_4|Qout[3]~1_combout\ & (!\reset~input_o\ & \INTERFACE|C|WideNor1~0_combout\)) ) ) ) # ( 
-- \INTERFACE|s_demorou~0_combout\ & ( !\INTERFACE|ContaDemora|ClrN3~0_combout\ & ( (\INTERFACE|ContaDemora|IC_4|Qout[3]~1_combout\ & (!\reset~input_o\ & \INTERFACE|C|WideNor1~0_combout\)) ) ) ) # ( !\INTERFACE|s_demorou~0_combout\ & ( 
-- !\INTERFACE|ContaDemora|ClrN3~0_combout\ & ( (\INTERFACE|ContaDemora|IC_4|Qout[3]~1_combout\ & (!\reset~input_o\ & \INTERFACE|C|WideNor1~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|ContaDemora|IC_4|ALT_INV_Qout[3]~1_combout\,
	datab => \ALT_INV_reset~input_o\,
	datac => \INTERFACE|C|ALT_INV_WideNor1~0_combout\,
	datae => \INTERFACE|ALT_INV_s_demorou~0_combout\,
	dataf => \INTERFACE|ContaDemora|ALT_INV_ClrN3~0_combout\,
	combout => \INTERFACE|ContaDemora|IC_4|Qout[3]~2_combout\);

-- Location: FF_X82_Y25_N41
\INTERFACE|ContaDemora|IC_4|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|ContaDemora|IC_4|Qout[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|ContaDemora|IC_4|Qout[3]~reg0_q\);

-- Location: MLABCELL_X82_Y25_N12
\INTERFACE|ContaDemora|IC_4|Qout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|ContaDemora|IC_4|Qout[0]~0_combout\ = ( \INTERFACE|ContaDemora|IC_4|Qout[0]~reg0_q\ & ( \INTERFACE|ContaDemora|ClrN3~0_combout\ & ( (!\INTERFACE|comb~0_combout\ & (!\INTERFACE|ContaDemora|IC_4|Qout[3]~reg0_q\ & 
-- ((!\INTERFACE|s_demorou~3_combout\) # (!\INTERFACE|ContaDemora|IC_2|Qout[3]~0_combout\)))) ) ) ) # ( !\INTERFACE|ContaDemora|IC_4|Qout[0]~reg0_q\ & ( \INTERFACE|ContaDemora|ClrN3~0_combout\ & ( (\INTERFACE|s_demorou~3_combout\ & 
-- (\INTERFACE|ContaDemora|IC_2|Qout[3]~0_combout\ & !\INTERFACE|comb~0_combout\)) ) ) ) # ( \INTERFACE|ContaDemora|IC_4|Qout[0]~reg0_q\ & ( !\INTERFACE|ContaDemora|ClrN3~0_combout\ & ( (!\INTERFACE|comb~0_combout\ & ((!\INTERFACE|s_demorou~3_combout\) # 
-- (!\INTERFACE|ContaDemora|IC_2|Qout[3]~0_combout\))) ) ) ) # ( !\INTERFACE|ContaDemora|IC_4|Qout[0]~reg0_q\ & ( !\INTERFACE|ContaDemora|ClrN3~0_combout\ & ( (\INTERFACE|s_demorou~3_combout\ & (\INTERFACE|ContaDemora|IC_2|Qout[3]~0_combout\ & 
-- !\INTERFACE|comb~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000111000001110000000010000000100001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|ALT_INV_s_demorou~3_combout\,
	datab => \INTERFACE|ContaDemora|IC_2|ALT_INV_Qout[3]~0_combout\,
	datac => \INTERFACE|ALT_INV_comb~0_combout\,
	datad => \INTERFACE|ContaDemora|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datae => \INTERFACE|ContaDemora|IC_4|ALT_INV_Qout[0]~reg0_q\,
	dataf => \INTERFACE|ContaDemora|ALT_INV_ClrN3~0_combout\,
	combout => \INTERFACE|ContaDemora|IC_4|Qout[0]~0_combout\);

-- Location: FF_X82_Y25_N14
\INTERFACE|ContaDemora|IC_4|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|ContaDemora|IC_4|Qout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|ContaDemora|IC_4|Qout[0]~reg0_q\);

-- Location: MLABCELL_X82_Y25_N42
\INTERFACE|s_demorou~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|s_demorou~0_combout\ = ( \INTERFACE|ContaDemora|IC_4|Qout[3]~reg0_q\ & ( \INTERFACE|ContaDemora|IC_4|Qout[0]~reg0_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|ContaDemora|IC_4|ALT_INV_Qout[0]~reg0_q\,
	dataf => \INTERFACE|ContaDemora|IC_4|ALT_INV_Qout[3]~reg0_q\,
	combout => \INTERFACE|s_demorou~0_combout\);

-- Location: MLABCELL_X82_Y25_N21
\INTERFACE|s_demorou~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|s_demorou~2_combout\ = ( !\INTERFACE|ContaDemora|IC_4|Qout[1]~reg0_q\ & ( !\INTERFACE|ContaDemora|IC_4|Qout[2]~reg0_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \INTERFACE|ContaDemora|IC_4|ALT_INV_Qout[1]~reg0_q\,
	dataf => \INTERFACE|ContaDemora|IC_4|ALT_INV_Qout[2]~reg0_q\,
	combout => \INTERFACE|s_demorou~2_combout\);

-- Location: LABCELL_X83_Y25_N12
\INTERFACE|s_demorou~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|s_demorou~1_combout\ = ( !\INTERFACE|ContaDemora|IC_3|Qout[1]~reg0_q\ & ( !\INTERFACE|ContaDemora|IC_3|Qout[2]~reg0_q\ & ( (!\INTERFACE|ContaDemora|IC_2|Qout[2]~reg0_q\ & (!\INTERFACE|ContaDemora|IC_1|Qout[2]~reg0_q\ & 
-- (!\INTERFACE|ContaDemora|IC_1|Qout[1]~reg0_q\ & !\INTERFACE|ContaDemora|IC_2|Qout[1]~reg0_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|ContaDemora|IC_2|ALT_INV_Qout[2]~reg0_q\,
	datab => \INTERFACE|ContaDemora|IC_1|ALT_INV_Qout[2]~reg0_q\,
	datac => \INTERFACE|ContaDemora|IC_1|ALT_INV_Qout[1]~reg0_q\,
	datad => \INTERFACE|ContaDemora|IC_2|ALT_INV_Qout[1]~reg0_q\,
	datae => \INTERFACE|ContaDemora|IC_3|ALT_INV_Qout[1]~reg0_q\,
	dataf => \INTERFACE|ContaDemora|IC_3|ALT_INV_Qout[2]~reg0_q\,
	combout => \INTERFACE|s_demorou~1_combout\);

-- Location: MLABCELL_X82_Y25_N9
\INTERFACE|s_demorou\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|s_demorou~combout\ = ( \INTERFACE|s_demorou~1_combout\ & ( (\INTERFACE|ContaDemora|ClrN3~0_combout\ & (\INTERFACE|s_demorou~0_combout\ & \INTERFACE|s_demorou~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|ContaDemora|ALT_INV_ClrN3~0_combout\,
	datac => \INTERFACE|ALT_INV_s_demorou~0_combout\,
	datad => \INTERFACE|ALT_INV_s_demorou~2_combout\,
	dataf => \INTERFACE|ALT_INV_s_demorou~1_combout\,
	combout => \INTERFACE|s_demorou~combout\);

-- Location: MLABCELL_X82_Y22_N24
\INTERFACE|C|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|C|Selector3~0_combout\ = ( \INTERFACE|C|Eatual.Demorado~q\ & ( \INTERFACE|D|C|Eatual.Contando~q\ & ( ((!\finalizaRodada~input_o\) # (\INTERFACE|D|s_sinalAtraso~5_combout\)) # (\INTERFACE|s_demorou~combout\) ) ) ) # ( 
-- !\INTERFACE|C|Eatual.Demorado~q\ & ( \INTERFACE|D|C|Eatual.Contando~q\ & ( (\INTERFACE|s_demorou~combout\ & (!\INTERFACE|D|s_sinalAtraso~5_combout\ & \INTERFACE|C|Eatual.Aguarda~q\)) ) ) ) # ( \INTERFACE|C|Eatual.Demorado~q\ & ( 
-- !\INTERFACE|D|C|Eatual.Contando~q\ & ( (!\finalizaRodada~input_o\) # (\INTERFACE|s_demorou~combout\) ) ) ) # ( !\INTERFACE|C|Eatual.Demorado~q\ & ( !\INTERFACE|D|C|Eatual.Contando~q\ & ( (\INTERFACE|s_demorou~combout\ & \INTERFACE|C|Eatual.Aguarda~q\) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111101011111010100000000010001001111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|ALT_INV_s_demorou~combout\,
	datab => \INTERFACE|D|ALT_INV_s_sinalAtraso~5_combout\,
	datac => \ALT_INV_finalizaRodada~input_o\,
	datad => \INTERFACE|C|ALT_INV_Eatual.Aguarda~q\,
	datae => \INTERFACE|C|ALT_INV_Eatual.Demorado~q\,
	dataf => \INTERFACE|D|C|ALT_INV_Eatual.Contando~q\,
	combout => \INTERFACE|C|Selector3~0_combout\);

-- Location: FF_X82_Y22_N26
\INTERFACE|C|Eatual.Demorado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|C|Selector3~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|C|Eatual.Demorado~q\);

-- Location: MLABCELL_X82_Y22_N3
\INTERFACE|D|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|comb~0_combout\ = ( \reset~input_o\ ) # ( !\reset~input_o\ & ( (((\INTERFACE|C|Eatual.Respondeu~q\) # (\INTERFACE|C|Eatual.Afobado~q\)) # (\INTERFACE|D|C|Eatual.Fim~q\)) # (\INTERFACE|C|Eatual.Demorado~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111011111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|C|ALT_INV_Eatual.Demorado~q\,
	datab => \INTERFACE|D|C|ALT_INV_Eatual.Fim~q\,
	datac => \INTERFACE|C|ALT_INV_Eatual.Afobado~q\,
	datad => \INTERFACE|C|ALT_INV_Eatual.Respondeu~q\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \INTERFACE|D|comb~0_combout\);

-- Location: FF_X81_Y21_N8
\INTERFACE|D|C|Eatual.Conversao\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|C|Selector2~0_combout\,
	clrn => \INTERFACE|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|C|Eatual.Conversao~q\);

-- Location: LABCELL_X81_Y21_N6
\INTERFACE|D|C|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|C|Selector2~0_combout\ = ( \INTERFACE|D|C|Eatual.Conversao~q\ & ( \INTERFACE|D|C|Eatual.Cicla~q\ & ( (!\INTERFACE|D|ContadordeConversao|S~combout\) # (\INTERFACE|D|ciclagensLFSR|S~combout\) ) ) ) # ( !\INTERFACE|D|C|Eatual.Conversao~q\ & ( 
-- \INTERFACE|D|C|Eatual.Cicla~q\ & ( \INTERFACE|D|ciclagensLFSR|S~combout\ ) ) ) # ( \INTERFACE|D|C|Eatual.Conversao~q\ & ( !\INTERFACE|D|C|Eatual.Cicla~q\ & ( !\INTERFACE|D|ContadordeConversao|S~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000001111000011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ContadordeConversao|ALT_INV_S~combout\,
	datac => \INTERFACE|D|ciclagensLFSR|ALT_INV_S~combout\,
	datae => \INTERFACE|D|C|ALT_INV_Eatual.Conversao~q\,
	dataf => \INTERFACE|D|C|ALT_INV_Eatual.Cicla~q\,
	combout => \INTERFACE|D|C|Selector2~0_combout\);

-- Location: FF_X81_Y21_N7
\INTERFACE|D|C|Eatual.Conversao~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|C|Selector2~0_combout\,
	clrn => \INTERFACE|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|C|Eatual.Conversao~DUPLICATE_q\);

-- Location: LABCELL_X81_Y20_N42
\INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout~1_combout\ = ( \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\ & ( (!\INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\ & (!\INTERFACE|D|comb~0_combout\ & 
-- \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[1]~reg0_q\)) ) ) # ( !\INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & (!\INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\ $ 
-- (!\INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[1]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010001000010001001000100000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datab => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datad => \INTERFACE|D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[1]~reg0_q\,
	dataf => \INTERFACE|D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	combout => \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout~1_combout\);

-- Location: LABCELL_X81_Y20_N57
\INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[3]~2_combout\ = ( \INTERFACE|D|comb~0_combout\ ) # ( !\INTERFACE|D|comb~0_combout\ & ( ((\INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\ & 
-- \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\)) # (\INTERFACE|D|C|Eatual.Conversao~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datac => \INTERFACE|D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datad => \INTERFACE|D|C|ALT_INV_Eatual.Conversao~q\,
	dataf => \INTERFACE|D|ALT_INV_comb~0_combout\,
	combout => \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[3]~2_combout\);

-- Location: FF_X81_Y20_N44
\INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout~1_combout\,
	ena => \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[1]~reg0_q\);

-- Location: LABCELL_X81_Y20_N45
\INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout~3_combout\ = ( \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[1]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & ((!\INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\ & 
-- ((\INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[2]~reg0_q\))) # (\INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\ & (!\INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\ & 
-- !\INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[2]~reg0_q\)))) ) ) # ( !\INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[1]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & (\INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[2]~reg0_q\ & 
-- ((!\INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\) # (!\INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001000000000001100100001000000100010000100000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datab => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datac => \INTERFACE|D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datad => \INTERFACE|D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[2]~reg0_q\,
	dataf => \INTERFACE|D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[1]~reg0_q\,
	combout => \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout~3_combout\);

-- Location: FF_X81_Y20_N47
\INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout~3_combout\,
	ena => \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[2]~reg0_q\);

-- Location: LABCELL_X80_Y22_N39
\INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[3]~4_combout\ = ( \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\ & ( \INTERFACE|D|C|Eatual.Conversao~DUPLICATE_q\ & ( (!\INTERFACE|D|comb~0_combout\ & 
-- !\INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\) ) ) ) # ( !\INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\ & ( \INTERFACE|D|C|Eatual.Conversao~DUPLICATE_q\ & ( (!\INTERFACE|D|comb~0_combout\ & 
-- (\INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\ & (\INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[1]~reg0_q\ & \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[2]~reg0_q\))) ) ) ) # ( 
-- \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\ & ( !\INTERFACE|D|C|Eatual.Conversao~DUPLICATE_q\ & ( (!\INTERFACE|D|comb~0_combout\ & !\INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010001000100000000000000000101000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datab => \INTERFACE|D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datac => \INTERFACE|D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[1]~reg0_q\,
	datad => \INTERFACE|D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[2]~reg0_q\,
	datae => \INTERFACE|D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	dataf => \INTERFACE|D|C|ALT_INV_Eatual.Conversao~DUPLICATE_q\,
	combout => \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[3]~4_combout\);

-- Location: FF_X80_Y22_N41
\INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\);

-- Location: LABCELL_X79_Y22_N27
\INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[0]~0_combout\ = ( \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & (\INTERFACE|D|C|Eatual.Conversao~DUPLICATE_q\ & 
-- !\INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\)) ) ) # ( !\INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & (!\INTERFACE|D|C|Eatual.Conversao~DUPLICATE_q\ $ 
-- (!\INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000010101010000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datac => \INTERFACE|D|C|ALT_INV_Eatual.Conversao~DUPLICATE_q\,
	datad => \INTERFACE|D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	dataf => \INTERFACE|D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	combout => \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[0]~0_combout\);

-- Location: FF_X79_Y22_N29
\INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\);

-- Location: LABCELL_X80_Y22_N3
\INTERFACE|D|ContadordeConversao|Contador|IC_2|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordeConversao|Contador|IC_2|process_0~0_combout\ = ( \INTERFACE|D|C|Eatual.Conversao~DUPLICATE_q\ & ( (\INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\ & \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datad => \INTERFACE|D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	dataf => \INTERFACE|D|C|ALT_INV_Eatual.Conversao~DUPLICATE_q\,
	combout => \INTERFACE|D|ContadordeConversao|Contador|IC_2|process_0~0_combout\);

-- Location: LABCELL_X79_Y22_N39
\INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[0]~3_combout\ = ( \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[3]~0_combout\ & ( (!\INTERFACE|D|comb~0_combout\ & !\INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[0]~reg0_q\) ) ) # ( 
-- !\INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[3]~0_combout\ & ( (!\INTERFACE|D|comb~0_combout\ & (!\INTERFACE|D|ContadordeConversao|Contador|IC_2|process_0~0_combout\ $ (!\INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[0]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000010101010000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datac => \INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_process_0~0_combout\,
	datad => \INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\,
	dataf => \INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[3]~0_combout\,
	combout => \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[0]~3_combout\);

-- Location: FF_X79_Y22_N41
\INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[0]~reg0_q\);

-- Location: LABCELL_X80_Y22_N24
\INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout~1_combout\ = ( !\INTERFACE|D|comb~0_combout\ & ( (!\INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[3]~0_combout\ & (!\INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[0]~reg0_q\ $ 
-- (!\INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[1]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000010101010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[3]~0_combout\,
	datac => \INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datad => \INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[1]~reg0_q\,
	dataf => \INTERFACE|D|ALT_INV_comb~0_combout\,
	combout => \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout~1_combout\);

-- Location: LABCELL_X80_Y22_N27
\INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[3]~2_combout\ = ( \INTERFACE|D|comb~0_combout\ ) # ( !\INTERFACE|D|comb~0_combout\ & ( (\INTERFACE|D|ContadordeConversao|Contador|IC_2|process_0~0_combout\) # 
-- (\INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[3]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[3]~0_combout\,
	datad => \INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_process_0~0_combout\,
	dataf => \INTERFACE|D|ALT_INV_comb~0_combout\,
	combout => \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[3]~2_combout\);

-- Location: FF_X80_Y22_N26
\INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout~1_combout\,
	ena => \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[1]~reg0_q\);

-- Location: LABCELL_X80_Y22_N0
\INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout~4_combout\ = ( \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[1]~reg0_q\ & ( (!\INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[3]~0_combout\ & (!\INTERFACE|D|comb~0_combout\ & 
-- (!\INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[0]~reg0_q\ $ (!\INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[2]~reg0_q\)))) ) ) # ( !\INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[1]~reg0_q\ & ( 
-- (!\INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[3]~0_combout\ & (!\INTERFACE|D|comb~0_combout\ & \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[2]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000100000100000000010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[3]~0_combout\,
	datab => \INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datac => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datad => \INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[2]~reg0_q\,
	dataf => \INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[1]~reg0_q\,
	combout => \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout~4_combout\);

-- Location: FF_X80_Y22_N2
\INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout~4_combout\,
	ena => \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[2]~reg0_q\);

-- Location: LABCELL_X80_Y22_N42
\INTERFACE|D|ContadordeConversao|Contador|IC_2|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordeConversao|Contador|IC_2|Add0~0_combout\ = ( \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[1]~reg0_q\ & ( (\INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[0]~reg0_q\ & 
-- \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[2]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datac => \INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[2]~reg0_q\,
	dataf => \INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[1]~reg0_q\,
	combout => \INTERFACE|D|ContadordeConversao|Contador|IC_2|Add0~0_combout\);

-- Location: LABCELL_X79_Y22_N36
\INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[3]~5_combout\ = ( !\INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[3]~0_combout\ & ( (!\INTERFACE|D|comb~0_combout\ & (!\INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[3]~reg0_q\ $ 
-- (((!\INTERFACE|D|ContadordeConversao|Contador|IC_2|process_0~0_combout\) # (!\INTERFACE|D|ContadordeConversao|Contador|IC_2|Add0~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010101000000000101010100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datab => \INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_process_0~0_combout\,
	datac => \INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_Add0~0_combout\,
	datad => \INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[3]~reg0_q\,
	dataf => \INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[3]~0_combout\,
	combout => \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[3]~5_combout\);

-- Location: FF_X79_Y22_N38
\INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[3]~reg0_q\);

-- Location: LABCELL_X79_Y22_N51
\INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[3]~0_combout\ = ( \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\ & ( (\INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\ & 
-- (\INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[0]~reg0_q\ & \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[3]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datac => \INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datad => \INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[3]~reg0_q\,
	dataf => \INTERFACE|D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	combout => \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[3]~0_combout\);

-- Location: LABCELL_X79_Y22_N42
\INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[0]~1_combout\ = ( \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[3]~0_combout\ & ( (!\INTERFACE|D|comb~0_combout\ & ((!\INTERFACE|D|C|Eatual.Conversao~q\ & 
-- (!\INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[3]~reg0_q\ & \INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[0]~reg0_q\)) # (\INTERFACE|D|C|Eatual.Conversao~q\ & ((!\INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[0]~reg0_q\))))) ) ) # ( 
-- !\INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[3]~0_combout\ & ( (!\INTERFACE|D|comb~0_combout\ & \INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[0]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110001000100100000000100010010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|C|ALT_INV_Eatual.Conversao~q\,
	datab => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datac => \INTERFACE|D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[3]~reg0_q\,
	datad => \INTERFACE|D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\,
	dataf => \INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[3]~0_combout\,
	combout => \INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[0]~1_combout\);

-- Location: FF_X79_Y22_N44
\INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[0]~reg0_q\);

-- Location: LABCELL_X79_Y22_N12
\INTERFACE|D|ContadordeConversao|Contador|ClrN3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordeConversao|Contador|ClrN3~0_combout\ = ( \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[3]~reg0_q\ & ( \INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\ & ( 
-- (\INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[3]~reg0_q\ & (\INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[0]~reg0_q\ & (\INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\ & 
-- \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[0]~reg0_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[3]~reg0_q\,
	datab => \INTERFACE|D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datac => \INTERFACE|D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datad => \INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datae => \INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[3]~reg0_q\,
	dataf => \INTERFACE|D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	combout => \INTERFACE|D|ContadordeConversao|Contador|ClrN3~0_combout\);

-- Location: LABCELL_X80_Y22_N54
\INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout~2_combout\ = ( !\INTERFACE|D|ContadordeConversao|Contador|ClrN3~0_combout\ & ( (!\INTERFACE|D|comb~0_combout\ & (!\INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[0]~reg0_q\ $ 
-- (!\INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[1]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000010101010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datac => \INTERFACE|D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datad => \INTERFACE|D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[1]~reg0_q\,
	dataf => \INTERFACE|D|ContadordeConversao|Contador|ALT_INV_ClrN3~0_combout\,
	combout => \INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout~2_combout\);

-- Location: LABCELL_X79_Y22_N24
\INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[0]~3_combout\ = ( \INTERFACE|D|comb~0_combout\ ) # ( !\INTERFACE|D|comb~0_combout\ & ( ((\INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[3]~0_combout\ & \INTERFACE|D|C|Eatual.Conversao~DUPLICATE_q\)) 
-- # (\INTERFACE|D|ContadordeConversao|Contador|ClrN3~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111111001100110011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|D|ContadordeConversao|Contador|ALT_INV_ClrN3~0_combout\,
	datac => \INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[3]~0_combout\,
	datad => \INTERFACE|D|C|ALT_INV_Eatual.Conversao~DUPLICATE_q\,
	dataf => \INTERFACE|D|ALT_INV_comb~0_combout\,
	combout => \INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[0]~3_combout\);

-- Location: FF_X80_Y22_N56
\INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout~2_combout\,
	ena => \INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[1]~reg0_q\);

-- Location: LABCELL_X80_Y22_N15
\INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout~4_combout\ = ( !\INTERFACE|D|ContadordeConversao|Contador|ClrN3~0_combout\ & ( (!\INTERFACE|D|comb~0_combout\ & (!\INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[2]~reg0_q\ $ 
-- (((!\INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[1]~reg0_q\) # (!\INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[0]~reg0_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011100000000100001110000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[1]~reg0_q\,
	datab => \INTERFACE|D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datac => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datad => \INTERFACE|D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[2]~reg0_q\,
	dataf => \INTERFACE|D|ContadordeConversao|Contador|ALT_INV_ClrN3~0_combout\,
	combout => \INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout~4_combout\);

-- Location: FF_X80_Y22_N17
\INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout~4_combout\,
	ena => \INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[2]~reg0_q\);

-- Location: LABCELL_X80_Y22_N6
\INTERFACE|D|ContadordeConversao|Contador|IC_3|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordeConversao|Contador|IC_3|Add0~0_combout\ = ( \INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[2]~reg0_q\ & ( (\INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[0]~reg0_q\ & 
-- \INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[1]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datad => \INTERFACE|D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[1]~reg0_q\,
	dataf => \INTERFACE|D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[2]~reg0_q\,
	combout => \INTERFACE|D|ContadordeConversao|Contador|IC_3|Add0~0_combout\);

-- Location: LABCELL_X79_Y22_N33
\INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[3]~0_combout\ = ( \INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[3]~reg0_q\ & ( \INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[0]~reg0_q\ & ( 
-- (!\INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[3]~0_combout\ & !\INTERFACE|D|comb~0_combout\) ) ) ) # ( !\INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[3]~reg0_q\ & ( \INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[0]~reg0_q\ & ( 
-- (\INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[3]~0_combout\ & (!\INTERFACE|D|comb~0_combout\ & (\INTERFACE|D|C|Eatual.Conversao~DUPLICATE_q\ & \INTERFACE|D|ContadordeConversao|Contador|IC_3|Add0~0_combout\))) ) ) ) # ( 
-- \INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[3]~reg0_q\ & ( !\INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[0]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & ((!\INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[3]~0_combout\) # 
-- ((!\INTERFACE|D|C|Eatual.Conversao~DUPLICATE_q\) # (!\INTERFACE|D|ContadordeConversao|Contador|IC_3|Add0~0_combout\)))) ) ) ) # ( !\INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[3]~reg0_q\ & ( 
-- !\INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[0]~reg0_q\ & ( (\INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[3]~0_combout\ & (!\INTERFACE|D|comb~0_combout\ & (\INTERFACE|D|C|Eatual.Conversao~DUPLICATE_q\ & 
-- \INTERFACE|D|ContadordeConversao|Contador|IC_3|Add0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100110011001100100000000000000001001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[3]~0_combout\,
	datab => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datac => \INTERFACE|D|C|ALT_INV_Eatual.Conversao~DUPLICATE_q\,
	datad => \INTERFACE|D|ContadordeConversao|Contador|IC_3|ALT_INV_Add0~0_combout\,
	datae => \INTERFACE|D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[3]~reg0_q\,
	dataf => \INTERFACE|D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\,
	combout => \INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[3]~0_combout\);

-- Location: FF_X79_Y22_N35
\INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[3]~reg0_q\);

-- Location: LABCELL_X79_Y22_N45
\INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[0]~0_combout\ = ( \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[3]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & ((!\INTERFACE|D|ContadordeConversao|Contador|ClrN3~0_combout\ & 
-- ((\INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\))) # (\INTERFACE|D|ContadordeConversao|Contador|ClrN3~0_combout\ & (\INTERFACE|D|C|Eatual.Conversao~q\ & !\INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\)))) ) ) # ( 
-- !\INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[3]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & (!\INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\ $ (((!\INTERFACE|D|C|Eatual.Conversao~q\) # 
-- (!\INTERFACE|D|ContadordeConversao|Contador|ClrN3~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011001000000001001100100000000100110000000000010011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|C|ALT_INV_Eatual.Conversao~q\,
	datab => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datac => \INTERFACE|D|ContadordeConversao|Contador|ALT_INV_ClrN3~0_combout\,
	datad => \INTERFACE|D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\,
	dataf => \INTERFACE|D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\,
	combout => \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[0]~0_combout\);

-- Location: FF_X79_Y22_N47
\INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\);

-- Location: LABCELL_X79_Y22_N6
\INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout~1_combout\ = ( \INTERFACE|D|ContadordeConversao|Contador|ClrN3~0_combout\ & ( (!\INTERFACE|D|comb~0_combout\ & ((!\INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\ & 
-- ((\INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[1]~reg0_q\))) # (\INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\ & (!\INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[3]~reg0_q\ & 
-- !\INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[1]~reg0_q\)))) ) ) # ( !\INTERFACE|D|ContadordeConversao|Contador|ClrN3~0_combout\ & ( (!\INTERFACE|D|comb~0_combout\ & (!\INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\ $ 
-- (!\INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[1]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000001100001100000000100000110000000010000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datab => \INTERFACE|D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\,
	datac => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datad => \INTERFACE|D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[1]~reg0_q\,
	dataf => \INTERFACE|D|ContadordeConversao|Contador|ALT_INV_ClrN3~0_combout\,
	combout => \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout~1_combout\);

-- Location: LABCELL_X79_Y22_N18
\INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[2]~2_combout\ = ( \INTERFACE|D|comb~0_combout\ ) # ( !\INTERFACE|D|comb~0_combout\ & ( (\INTERFACE|D|ContadordeConversao|Contador|ClrN3~0_combout\ & 
-- (((\INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[3]~reg0_q\ & \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\)) # (\INTERFACE|D|C|Eatual.Conversao~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010011000000110001001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datab => \INTERFACE|D|ContadordeConversao|Contador|ALT_INV_ClrN3~0_combout\,
	datac => \INTERFACE|D|C|ALT_INV_Eatual.Conversao~q\,
	datad => \INTERFACE|D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\,
	dataf => \INTERFACE|D|ALT_INV_comb~0_combout\,
	combout => \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[2]~2_combout\);

-- Location: FF_X79_Y22_N8
\INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout~1_combout\,
	ena => \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[1]~reg0_q\);

-- Location: LABCELL_X79_Y22_N0
\INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout~3_combout\ = ( \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[2]~reg0_q\ & ( \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[1]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & 
-- !\INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\) ) ) ) # ( !\INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[2]~reg0_q\ & ( \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[1]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & 
-- (\INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\ & ((!\INTERFACE|D|ContadordeConversao|Contador|ClrN3~0_combout\) # (!\INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[3]~reg0_q\)))) ) ) ) # ( 
-- \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[2]~reg0_q\ & ( !\INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[1]~reg0_q\ & ( (!\INTERFACE|D|comb~0_combout\ & ((!\INTERFACE|D|ContadordeConversao|Contador|ClrN3~0_combout\) # 
-- ((!\INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[3]~reg0_q\) # (!\INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010100000000000101010001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datab => \INTERFACE|D|ContadordeConversao|Contador|ALT_INV_ClrN3~0_combout\,
	datac => \INTERFACE|D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datad => \INTERFACE|D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\,
	datae => \INTERFACE|D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[2]~reg0_q\,
	dataf => \INTERFACE|D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[1]~reg0_q\,
	combout => \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout~3_combout\);

-- Location: FF_X79_Y22_N2
\INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout~3_combout\,
	ena => \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[2]~reg0_q\);

-- Location: LABCELL_X79_Y22_N21
\INTERFACE|D|ContadordeConversao|Contador|IC_4|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordeConversao|Contador|IC_4|Add0~0_combout\ = ( \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[1]~reg0_q\ & ( (\INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\ & 
-- \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[2]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\,
	datad => \INTERFACE|D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[2]~reg0_q\,
	dataf => \INTERFACE|D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[1]~reg0_q\,
	combout => \INTERFACE|D|ContadordeConversao|Contador|IC_4|Add0~0_combout\);

-- Location: LABCELL_X79_Y22_N54
\INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[3]~4_combout\ = ( \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[3]~reg0_q\ & ( \INTERFACE|D|ContadordeConversao|Contador|ClrN3~0_combout\ & ( (!\INTERFACE|D|comb~0_combout\ & 
-- (!\INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\ & ((!\INTERFACE|D|ContadordeConversao|Contador|IC_4|Add0~0_combout\) # (!\INTERFACE|D|C|Eatual.Conversao~q\)))) ) ) ) # ( !\INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[3]~reg0_q\ & ( 
-- \INTERFACE|D|ContadordeConversao|Contador|ClrN3~0_combout\ & ( (\INTERFACE|D|ContadordeConversao|Contador|IC_4|Add0~0_combout\ & (!\INTERFACE|D|comb~0_combout\ & \INTERFACE|D|C|Eatual.Conversao~q\)) ) ) ) # ( 
-- \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[3]~reg0_q\ & ( !\INTERFACE|D|ContadordeConversao|Contador|ClrN3~0_combout\ & ( !\INTERFACE|D|comb~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000100000001001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ContadordeConversao|Contador|IC_4|ALT_INV_Add0~0_combout\,
	datab => \INTERFACE|D|ALT_INV_comb~0_combout\,
	datac => \INTERFACE|D|C|ALT_INV_Eatual.Conversao~q\,
	datad => \INTERFACE|D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\,
	datae => \INTERFACE|D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\,
	dataf => \INTERFACE|D|ContadordeConversao|Contador|ALT_INV_ClrN3~0_combout\,
	combout => \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[3]~4_combout\);

-- Location: FF_X79_Y22_N56
\INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[3]~reg0_q\);

-- Location: LABCELL_X79_Y22_N9
\INTERFACE|D|ContadordeConversao|S~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordeConversao|S~0_combout\ = ( !\INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[1]~reg0_q\ & ( (!\INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[3]~reg0_q\ & (!\INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\ & 
-- !\INTERFACE|D|ContadordeConversao|Contador|IC_4|Qout[2]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datab => \INTERFACE|D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\,
	datad => \INTERFACE|D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[2]~reg0_q\,
	dataf => \INTERFACE|D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[1]~reg0_q\,
	combout => \INTERFACE|D|ContadordeConversao|S~0_combout\);

-- Location: LABCELL_X80_Y22_N45
\INTERFACE|D|ContadordeConversao|S~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordeConversao|S~1_combout\ = ( !\INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\ & ( (!\INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[0]~reg0_q\ & (!\INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\ & 
-- (!\INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[1]~reg0_q\ & !\INTERFACE|D|ContadordeConversao|Contador|IC_1|Qout[2]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datab => \INTERFACE|D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datac => \INTERFACE|D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[1]~reg0_q\,
	datad => \INTERFACE|D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[2]~reg0_q\,
	dataf => \INTERFACE|D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	combout => \INTERFACE|D|ContadordeConversao|S~1_combout\);

-- Location: LABCELL_X80_Y22_N12
\INTERFACE|D|ContadordeConversao|S~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordeConversao|S~2_combout\ = ( !\INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[2]~reg0_q\ & ( (!\INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[1]~reg0_q\ & (!\INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[0]~reg0_q\ & 
-- (!\INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[2]~reg0_q\ & !\INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[3]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[1]~reg0_q\,
	datab => \INTERFACE|D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datac => \INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[2]~reg0_q\,
	datad => \INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[3]~reg0_q\,
	dataf => \INTERFACE|D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[2]~reg0_q\,
	combout => \INTERFACE|D|ContadordeConversao|S~2_combout\);

-- Location: LABCELL_X80_Y22_N9
\INTERFACE|D|ContadordeConversao|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|ContadordeConversao|S~combout\ = ( \INTERFACE|D|ContadordeConversao|S~2_combout\ & ( (!\INTERFACE|D|ContadordeConversao|Contador|IC_3|Qout[3]~reg0_q\ & (\INTERFACE|D|ContadordeConversao|S~0_combout\ & 
-- (\INTERFACE|D|ContadordeConversao|S~1_combout\ & \INTERFACE|D|ContadordeConversao|Contador|IC_2|Qout[1]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[3]~reg0_q\,
	datab => \INTERFACE|D|ContadordeConversao|ALT_INV_S~0_combout\,
	datac => \INTERFACE|D|ContadordeConversao|ALT_INV_S~1_combout\,
	datad => \INTERFACE|D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[1]~reg0_q\,
	dataf => \INTERFACE|D|ContadordeConversao|ALT_INV_S~2_combout\,
	combout => \INTERFACE|D|ContadordeConversao|S~combout\);

-- Location: MLABCELL_X82_Y22_N48
\INTERFACE|D|C|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|C|Selector3~0_combout\ = ( \INTERFACE|D|s_sinalAtraso~5_combout\ & ( (\INTERFACE|D|ContadordeConversao|S~combout\ & \INTERFACE|D|C|Eatual.Conversao~q\) ) ) # ( !\INTERFACE|D|s_sinalAtraso~5_combout\ & ( 
-- ((\INTERFACE|D|ContadordeConversao|S~combout\ & \INTERFACE|D|C|Eatual.Conversao~q\)) # (\INTERFACE|D|C|Eatual.Contando~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|D|ContadordeConversao|ALT_INV_S~combout\,
	datac => \INTERFACE|D|C|ALT_INV_Eatual.Conversao~q\,
	datad => \INTERFACE|D|C|ALT_INV_Eatual.Contando~q\,
	dataf => \INTERFACE|D|ALT_INV_s_sinalAtraso~5_combout\,
	combout => \INTERFACE|D|C|Selector3~0_combout\);

-- Location: FF_X82_Y22_N49
\INTERFACE|D|C|Eatual.Contando~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|D|C|Selector3~0_combout\,
	clrn => \INTERFACE|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|D|C|Eatual.Contando~DUPLICATE_q\);

-- Location: IOIBUF_X89_Y6_N21
\rodada~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rodada,
	o => \rodada~input_o\);

-- Location: LABCELL_X85_Y22_N18
\INTERFACE|C|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|C|Selector0~0_combout\ = (!\INTERFACE|C|Eatual.Inicial~q\ & !\rodada~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|C|ALT_INV_Eatual.Inicial~q\,
	datab => \ALT_INV_rodada~input_o\,
	combout => \INTERFACE|C|Selector0~0_combout\);

-- Location: LABCELL_X85_Y22_N33
\INTERFACE|C|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|C|Selector0~1_combout\ = ( \INTERFACE|D|s_sinalAtraso~5_combout\ & ( \INTERFACE|s_demorou~combout\ & ( !\INTERFACE|C|Selector0~0_combout\ ) ) ) # ( !\INTERFACE|D|s_sinalAtraso~5_combout\ & ( \INTERFACE|s_demorou~combout\ & ( 
-- !\INTERFACE|C|Selector0~0_combout\ ) ) ) # ( \INTERFACE|D|s_sinalAtraso~5_combout\ & ( !\INTERFACE|s_demorou~combout\ & ( (!\INTERFACE|C|Selector0~0_combout\ & ((!\finalizaRodada~input_o\) # ((\INTERFACE|D|C|Eatual.Contando~DUPLICATE_q\) # 
-- (\INTERFACE|C|WideNor1~0_combout\)))) ) ) ) # ( !\INTERFACE|D|s_sinalAtraso~5_combout\ & ( !\INTERFACE|s_demorou~combout\ & ( (!\INTERFACE|C|Selector0~0_combout\ & ((!\finalizaRodada~input_o\) # (\INTERFACE|C|WideNor1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101100000000101111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_finalizaRodada~input_o\,
	datab => \INTERFACE|C|ALT_INV_WideNor1~0_combout\,
	datac => \INTERFACE|D|C|ALT_INV_Eatual.Contando~DUPLICATE_q\,
	datad => \INTERFACE|C|ALT_INV_Selector0~0_combout\,
	datae => \INTERFACE|D|ALT_INV_s_sinalAtraso~5_combout\,
	dataf => \INTERFACE|ALT_INV_s_demorou~combout\,
	combout => \INTERFACE|C|Selector0~1_combout\);

-- Location: FF_X85_Y22_N35
\INTERFACE|C|Eatual.Inicial\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|C|Selector0~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|C|Eatual.Inicial~q\);

-- Location: LABCELL_X85_Y22_N12
\INTERFACE|C|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|C|Selector1~0_combout\ = ( \rodada~input_o\ & ( !\INTERFACE|C|Eatual.Inicial~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_rodada~input_o\,
	dataf => \INTERFACE|C|ALT_INV_Eatual.Inicial~q\,
	combout => \INTERFACE|C|Selector1~0_combout\);

-- Location: MLABCELL_X82_Y25_N24
\INTERFACE|C|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|C|Selector1~1_combout\ = ( \INTERFACE|C|Eatual.Atraso~q\ & ( \INTERFACE|D|s_sinalAtraso~5_combout\ & ( (((!\INTERFACE|D|C|Eatual.Contando~DUPLICATE_q\ & !\resposta~input_o\)) # (\INTERFACE|s_demorou~combout\)) # 
-- (\INTERFACE|C|Selector1~0_combout\) ) ) ) # ( !\INTERFACE|C|Eatual.Atraso~q\ & ( \INTERFACE|D|s_sinalAtraso~5_combout\ & ( \INTERFACE|C|Selector1~0_combout\ ) ) ) # ( \INTERFACE|C|Eatual.Atraso~q\ & ( !\INTERFACE|D|s_sinalAtraso~5_combout\ & ( 
-- ((!\resposta~input_o\) # (\INTERFACE|s_demorou~combout\)) # (\INTERFACE|C|Selector1~0_combout\) ) ) ) # ( !\INTERFACE|C|Eatual.Atraso~q\ & ( !\INTERFACE|D|s_sinalAtraso~5_combout\ & ( \INTERFACE|C|Selector1~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111100111111111100110011001100111011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|C|ALT_INV_Eatual.Contando~DUPLICATE_q\,
	datab => \INTERFACE|C|ALT_INV_Selector1~0_combout\,
	datac => \ALT_INV_resposta~input_o\,
	datad => \INTERFACE|ALT_INV_s_demorou~combout\,
	datae => \INTERFACE|C|ALT_INV_Eatual.Atraso~q\,
	dataf => \INTERFACE|D|ALT_INV_s_sinalAtraso~5_combout\,
	combout => \INTERFACE|C|Selector1~1_combout\);

-- Location: FF_X82_Y25_N26
\INTERFACE|C|Eatual.Atraso\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|C|Selector1~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|C|Eatual.Atraso~q\);

-- Location: MLABCELL_X82_Y22_N42
\INTERFACE|C|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|C|Selector2~0_combout\ = ( \INTERFACE|C|Eatual.Aguarda~q\ & ( \INTERFACE|D|C|Eatual.Contando~q\ & ( ((!\resposta~input_o\ & !\INTERFACE|s_demorou~combout\)) # (\INTERFACE|D|s_sinalAtraso~5_combout\) ) ) ) # ( !\INTERFACE|C|Eatual.Aguarda~q\ & ( 
-- \INTERFACE|D|C|Eatual.Contando~q\ & ( (!\resposta~input_o\ & (\INTERFACE|C|Eatual.Atraso~q\ & (!\INTERFACE|s_demorou~combout\ & \INTERFACE|D|s_sinalAtraso~5_combout\))) ) ) ) # ( \INTERFACE|C|Eatual.Aguarda~q\ & ( !\INTERFACE|D|C|Eatual.Contando~q\ & ( 
-- (!\resposta~input_o\ & !\INTERFACE|s_demorou~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000000000000001000001010000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resposta~input_o\,
	datab => \INTERFACE|C|ALT_INV_Eatual.Atraso~q\,
	datac => \INTERFACE|ALT_INV_s_demorou~combout\,
	datad => \INTERFACE|D|ALT_INV_s_sinalAtraso~5_combout\,
	datae => \INTERFACE|C|ALT_INV_Eatual.Aguarda~q\,
	dataf => \INTERFACE|D|C|ALT_INV_Eatual.Contando~q\,
	combout => \INTERFACE|C|Selector2~0_combout\);

-- Location: FF_X82_Y22_N44
\INTERFACE|C|Eatual.Aguarda\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|C|Selector2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|C|Eatual.Aguarda~q\);

-- Location: LABCELL_X83_Y24_N33
\INTERFACE|C|WideNor2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|C|WideNor2~0_combout\ = ( !\INTERFACE|C|Eatual.Afobado~q\ & ( !\INTERFACE|C|Eatual.Demorado~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \INTERFACE|C|ALT_INV_Eatual.Demorado~q\,
	dataf => \INTERFACE|C|ALT_INV_Eatual.Afobado~q\,
	combout => \INTERFACE|C|WideNor2~0_combout\);

-- Location: FF_X82_Y24_N2
\INTERFACE|Medicao|M1|C1|Ereg.LIMPA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|Medicao|M1|C1|Ereg.EPRONTO~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|M1|C1|Ereg.LIMPA~q\);

-- Location: LABCELL_X85_Y22_N27
\INTERFACE|Medicao|C1|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|C1|Selector0~0_combout\ = ( \INTERFACE|Medicao|C1|Ereg.espera~q\ & ( \rodada~input_o\ ) ) # ( !\INTERFACE|Medicao|C1|Ereg.espera~q\ & ( (\INTERFACE|Medicao|C1|Ereg.parado~q\) # (\rodada~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rodada~input_o\,
	datad => \INTERFACE|Medicao|C1|ALT_INV_Ereg.parado~q\,
	dataf => \INTERFACE|Medicao|C1|ALT_INV_Ereg.espera~q\,
	combout => \INTERFACE|Medicao|C1|Selector0~0_combout\);

-- Location: FF_X85_Y22_N28
\INTERFACE|Medicao|C1|Ereg.parado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|Medicao|C1|Selector0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|C1|Ereg.parado~q\);

-- Location: LABCELL_X85_Y22_N24
\INTERFACE|Medicao|C1|Eprox.iniciado~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|C1|Eprox.iniciado~0_combout\ = ( !\INTERFACE|Medicao|C1|Ereg.parado~q\ & ( \rodada~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rodada~input_o\,
	dataf => \INTERFACE|Medicao|C1|ALT_INV_Ereg.parado~q\,
	combout => \INTERFACE|Medicao|C1|Eprox.iniciado~0_combout\);

-- Location: FF_X85_Y22_N26
\INTERFACE|Medicao|C1|Ereg.iniciado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|Medicao|C1|Eprox.iniciado~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|C1|Ereg.iniciado~q\);

-- Location: MLABCELL_X84_Y23_N24
\INTERFACE|Medicao|C1|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|C1|Selector2~0_combout\ = ( \INTERFACE|Medicao|C1|Ereg.medindo~q\ & ( \INTERFACE|Medicao|M1|C1|Ereg.EPRONTO~q\ & ( \INTERFACE|Medicao|C1|Ereg.iniciado~q\ ) ) ) # ( !\INTERFACE|Medicao|C1|Ereg.medindo~q\ & ( 
-- \INTERFACE|Medicao|M1|C1|Ereg.EPRONTO~q\ & ( \INTERFACE|Medicao|C1|Ereg.iniciado~q\ ) ) ) # ( \INTERFACE|Medicao|C1|Ereg.medindo~q\ & ( !\INTERFACE|Medicao|M1|C1|Ereg.EPRONTO~q\ ) ) # ( !\INTERFACE|Medicao|C1|Ereg.medindo~q\ & ( 
-- !\INTERFACE|Medicao|M1|C1|Ereg.EPRONTO~q\ & ( \INTERFACE|Medicao|C1|Ereg.iniciado~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|Medicao|C1|ALT_INV_Ereg.iniciado~q\,
	datae => \INTERFACE|Medicao|C1|ALT_INV_Ereg.medindo~q\,
	dataf => \INTERFACE|Medicao|M1|C1|ALT_INV_Ereg.EPRONTO~q\,
	combout => \INTERFACE|Medicao|C1|Selector2~0_combout\);

-- Location: FF_X84_Y23_N26
\INTERFACE|Medicao|C1|Ereg.medindo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|Medicao|C1|Selector2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|C1|Ereg.medindo~q\);

-- Location: MLABCELL_X82_Y24_N39
\INTERFACE|Medicao|M1|C1|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|M1|C1|Selector0~0_combout\ = ( \INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\ ) # ( !\INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\ & ( (\INTERFACE|Medicao|C1|Ereg.iniciado~q\) # (\INTERFACE|Medicao|C1|Ereg.medindo~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|Medicao|C1|ALT_INV_Ereg.medindo~q\,
	datad => \INTERFACE|Medicao|C1|ALT_INV_Ereg.iniciado~q\,
	dataf => \INTERFACE|Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	combout => \INTERFACE|Medicao|M1|C1|Selector0~0_combout\);

-- Location: FF_X82_Y24_N41
\INTERFACE|Medicao|M1|C1|Ereg.INICIAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|Medicao|M1|C1|Selector0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|M1|C1|Ereg.INICIAL~q\);

-- Location: MLABCELL_X82_Y24_N24
\INTERFACE|Medicao|M1|C1|Eprox.CONTA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\ = ( !\INTERFACE|Medicao|M1|C1|Ereg.LIMPA~q\ & ( \INTERFACE|Medicao|M1|C1|Ereg.INICIAL~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \INTERFACE|Medicao|M1|C1|ALT_INV_Ereg.LIMPA~q\,
	dataf => \INTERFACE|Medicao|M1|C1|ALT_INV_Ereg.INICIAL~q\,
	combout => \INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\);

-- Location: MLABCELL_X84_Y23_N33
\INTERFACE|Medicao|M1|C1|Eprox.CONTA~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|M1|C1|Eprox.CONTA~1_combout\ = ( \INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\ & ( !\INTERFACE|Medicao|M1|C1|Ereg.EPRONTO~q\ & ( \INTERFACE|C|Eatual.Aguarda~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|C|ALT_INV_Eatual.Aguarda~q\,
	datae => \INTERFACE|Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	dataf => \INTERFACE|Medicao|M1|C1|ALT_INV_Ereg.EPRONTO~q\,
	combout => \INTERFACE|Medicao|M1|C1|Eprox.CONTA~1_combout\);

-- Location: FF_X84_Y23_N34
\INTERFACE|Medicao|M1|C1|Ereg.CONTA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|Medicao|M1|C1|Eprox.CONTA~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|M1|C1|Ereg.CONTA~q\);

-- Location: MLABCELL_X84_Y23_N54
\INTERFACE|Medicao|M1|C1|Eprox.EPRONTO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|M1|C1|Eprox.EPRONTO~0_combout\ = ( !\INTERFACE|C|Eatual.Aguarda~q\ & ( \INTERFACE|Medicao|M1|C1|Ereg.CONTA~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \INTERFACE|C|ALT_INV_Eatual.Aguarda~q\,
	dataf => \INTERFACE|Medicao|M1|C1|ALT_INV_Ereg.CONTA~q\,
	combout => \INTERFACE|Medicao|M1|C1|Eprox.EPRONTO~0_combout\);

-- Location: FF_X84_Y23_N55
\INTERFACE|Medicao|M1|C1|Ereg.EPRONTO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|Medicao|M1|C1|Eprox.EPRONTO~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|M1|C1|Ereg.EPRONTO~q\);

-- Location: MLABCELL_X84_Y23_N0
\INTERFACE|Medicao|C1|Eprox.registra~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|C1|Eprox.registra~0_combout\ = ( \INTERFACE|Medicao|C1|Ereg.medindo~q\ & ( \INTERFACE|Medicao|M1|C1|Ereg.EPRONTO~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|Medicao|M1|C1|ALT_INV_Ereg.EPRONTO~q\,
	dataf => \INTERFACE|Medicao|C1|ALT_INV_Ereg.medindo~q\,
	combout => \INTERFACE|Medicao|C1|Eprox.registra~0_combout\);

-- Location: FF_X85_Y22_N41
\INTERFACE|Medicao|C1|Ereg.registra\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|Medicao|C1|Eprox.registra~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|C1|Ereg.registra~q\);

-- Location: FF_X85_Y22_N23
\INTERFACE|Medicao|C1|Ereg.soma\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|Medicao|C1|Ereg.registra~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|C1|Ereg.soma~q\);

-- Location: FF_X85_Y22_N20
\INTERFACE|Medicao|C1|Ereg.esperasoma\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|Medicao|C1|Ereg.soma~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|C1|Ereg.esperasoma~q\);

-- Location: LABCELL_X85_Y22_N36
\INTERFACE|Medicao|C1|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|C1|Selector3~0_combout\ = ( \INTERFACE|Medicao|C1|Ereg.espera~q\ & ( \INTERFACE|Medicao|C1|Ereg.esperasoma~q\ ) ) # ( !\INTERFACE|Medicao|C1|Ereg.espera~q\ & ( \INTERFACE|Medicao|C1|Ereg.esperasoma~q\ ) ) # ( 
-- \INTERFACE|Medicao|C1|Ereg.espera~q\ & ( !\INTERFACE|Medicao|C1|Ereg.esperasoma~q\ & ( \rodada~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rodada~input_o\,
	datae => \INTERFACE|Medicao|C1|ALT_INV_Ereg.espera~q\,
	dataf => \INTERFACE|Medicao|C1|ALT_INV_Ereg.esperasoma~q\,
	combout => \INTERFACE|Medicao|C1|Selector3~0_combout\);

-- Location: FF_X85_Y22_N38
\INTERFACE|Medicao|C1|Ereg.espera\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|Medicao|C1|Selector3~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|C1|Ereg.espera~q\);

-- Location: MLABCELL_X84_Y22_N48
\INTERFACE|C|WideOr7\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|C|WideOr7~combout\ = ( \INTERFACE|C|Eatual.Aguarda~q\ ) # ( !\INTERFACE|C|Eatual.Aguarda~q\ & ( (!\INTERFACE|C|Eatual.Inicial~q\) # (\INTERFACE|C|Eatual.Respondeu~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011111100111111001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|C|ALT_INV_Eatual.Respondeu~q\,
	datac => \INTERFACE|C|ALT_INV_Eatual.Inicial~q\,
	dataf => \INTERFACE|C|ALT_INV_Eatual.Aguarda~q\,
	combout => \INTERFACE|C|WideOr7~combout\);

-- Location: LABCELL_X85_Y22_N0
\INTERFACE|C|WideOr6\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|C|WideOr6~combout\ = ( \INTERFACE|C|Eatual.Demorado~q\ & ( \INTERFACE|C|Eatual.Aguarda~q\ ) ) # ( !\INTERFACE|C|Eatual.Demorado~q\ & ( \INTERFACE|C|Eatual.Aguarda~q\ ) ) # ( \INTERFACE|C|Eatual.Demorado~q\ & ( !\INTERFACE|C|Eatual.Aguarda~q\ ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \INTERFACE|C|ALT_INV_Eatual.Demorado~q\,
	dataf => \INTERFACE|C|ALT_INV_Eatual.Aguarda~q\,
	combout => \INTERFACE|C|WideOr6~combout\);

-- Location: MLABCELL_X82_Y24_N36
\INTERFACE|C|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|C|WideOr5~0_combout\ = ( !\INTERFACE|C|Eatual.Afobado~q\ & ( !\INTERFACE|C|Eatual.Respondeu~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|C|ALT_INV_Eatual.Respondeu~q\,
	dataf => \INTERFACE|C|ALT_INV_Eatual.Afobado~q\,
	combout => \INTERFACE|C|WideOr5~0_combout\);

-- Location: LABCELL_X81_Y21_N42
\INTERFACE|D|C|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|C|WideOr6~0_combout\ = ( \INTERFACE|D|C|Eatual.Contando~DUPLICATE_q\ ) # ( !\INTERFACE|D|C|Eatual.Contando~DUPLICATE_q\ & ( (\INTERFACE|D|C|Eatual.Cicla~q\) # (\INTERFACE|D|C|Eatual.RegistraSeed1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|D|C|ALT_INV_Eatual.RegistraSeed1~q\,
	datac => \INTERFACE|D|C|ALT_INV_Eatual.Cicla~q\,
	dataf => \INTERFACE|D|C|ALT_INV_Eatual.Contando~DUPLICATE_q\,
	combout => \INTERFACE|D|C|WideOr6~0_combout\);

-- Location: LABCELL_X81_Y21_N27
\INTERFACE|D|C|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|C|WideOr5~0_combout\ = ( \INTERFACE|D|C|Eatual.Cicla~q\ ) # ( !\INTERFACE|D|C|Eatual.Cicla~q\ & ( (\INTERFACE|D|C|Eatual.RegistraSeed2~q\) # (\INTERFACE|D|C|Eatual.Fim~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|D|C|ALT_INV_Eatual.Fim~q\,
	datad => \INTERFACE|D|C|ALT_INV_Eatual.RegistraSeed2~q\,
	dataf => \INTERFACE|D|C|ALT_INV_Eatual.Cicla~q\,
	combout => \INTERFACE|D|C|WideOr5~0_combout\);

-- Location: LABCELL_X81_Y21_N0
\INTERFACE|D|C|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|D|C|WideOr4~0_combout\ = ( \INTERFACE|D|C|Eatual.Fim~q\ & ( \INTERFACE|D|C|Eatual.Conversao~q\ ) ) # ( !\INTERFACE|D|C|Eatual.Fim~q\ & ( \INTERFACE|D|C|Eatual.Conversao~q\ ) ) # ( \INTERFACE|D|C|Eatual.Fim~q\ & ( 
-- !\INTERFACE|D|C|Eatual.Conversao~q\ ) ) # ( !\INTERFACE|D|C|Eatual.Fim~q\ & ( !\INTERFACE|D|C|Eatual.Conversao~q\ & ( \INTERFACE|D|C|Eatual.Contando~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|D|C|ALT_INV_Eatual.Contando~DUPLICATE_q\,
	datae => \INTERFACE|D|C|ALT_INV_Eatual.Fim~q\,
	dataf => \INTERFACE|D|C|ALT_INV_Eatual.Conversao~q\,
	combout => \INTERFACE|D|C|WideOr4~0_combout\);

-- Location: LABCELL_X80_Y24_N12
\INTERFACE|Medicao|M1|D1|IC_1|Qout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|M1|D1|IC_1|Qout~2_combout\ = ( !\INTERFACE|Medicao|M1|D1|IC_1|Qout[1]~reg0_q\ & ( \INTERFACE|Medicao|M1|D1|IC_1|Qout[0]~reg0_q\ & ( (\INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\ & !\INTERFACE|Medicao|M1|D1|IC_1|Qout[3]~reg0_q\) ) ) ) 
-- # ( \INTERFACE|Medicao|M1|D1|IC_1|Qout[1]~reg0_q\ & ( !\INTERFACE|Medicao|M1|D1|IC_1|Qout[0]~reg0_q\ & ( \INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100110000001100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datac => \INTERFACE|Medicao|M1|D1|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datae => \INTERFACE|Medicao|M1|D1|IC_1|ALT_INV_Qout[1]~reg0_q\,
	dataf => \INTERFACE|Medicao|M1|D1|IC_1|ALT_INV_Qout[0]~reg0_q\,
	combout => \INTERFACE|Medicao|M1|D1|IC_1|Qout~2_combout\);

-- Location: FF_X80_Y24_N14
\INTERFACE|Medicao|M1|D1|IC_1|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|Medicao|M1|D1|IC_1|Qout~2_combout\,
	ena => \INTERFACE|Medicao|M1|D1|IC_1|Qout[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|M1|D1|IC_1|Qout[1]~reg0_q\);

-- Location: LABCELL_X80_Y24_N36
\INTERFACE|Medicao|M1|D1|IC_1|Qout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|M1|D1|IC_1|Qout~3_combout\ = ( \INTERFACE|Medicao|M1|D1|IC_1|Qout[2]~reg0_q\ & ( \INTERFACE|Medicao|M1|D1|IC_1|Qout[0]~reg0_q\ & ( (\INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\ & (!\INTERFACE|Medicao|M1|D1|IC_1|Qout[3]~reg0_q\ & 
-- !\INTERFACE|Medicao|M1|D1|IC_1|Qout[1]~reg0_q\)) ) ) ) # ( !\INTERFACE|Medicao|M1|D1|IC_1|Qout[2]~reg0_q\ & ( \INTERFACE|Medicao|M1|D1|IC_1|Qout[0]~reg0_q\ & ( (\INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\ & 
-- (!\INTERFACE|Medicao|M1|D1|IC_1|Qout[3]~reg0_q\ & \INTERFACE|Medicao|M1|D1|IC_1|Qout[1]~reg0_q\)) ) ) ) # ( \INTERFACE|Medicao|M1|D1|IC_1|Qout[2]~reg0_q\ & ( !\INTERFACE|Medicao|M1|D1|IC_1|Qout[0]~reg0_q\ & ( 
-- \INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000001100000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datac => \INTERFACE|Medicao|M1|D1|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datad => \INTERFACE|Medicao|M1|D1|IC_1|ALT_INV_Qout[1]~reg0_q\,
	datae => \INTERFACE|Medicao|M1|D1|IC_1|ALT_INV_Qout[2]~reg0_q\,
	dataf => \INTERFACE|Medicao|M1|D1|IC_1|ALT_INV_Qout[0]~reg0_q\,
	combout => \INTERFACE|Medicao|M1|D1|IC_1|Qout~3_combout\);

-- Location: FF_X80_Y24_N38
\INTERFACE|Medicao|M1|D1|IC_1|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|Medicao|M1|D1|IC_1|Qout~3_combout\,
	ena => \INTERFACE|Medicao|M1|D1|IC_1|Qout[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|M1|D1|IC_1|Qout[2]~reg0_q\);

-- Location: FF_X80_Y24_N13
\INTERFACE|Medicao|M1|D1|IC_1|Qout[1]~reg0DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|Medicao|M1|D1|IC_1|Qout~2_combout\,
	ena => \INTERFACE|Medicao|M1|D1|IC_1|Qout[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|M1|D1|IC_1|Qout[1]~reg0DUPLICATE_q\);

-- Location: LABCELL_X80_Y24_N57
\INTERFACE|Medicao|M1|D1|IC_1|Qout[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|M1|D1|IC_1|Qout[3]~4_combout\ = ( \INTERFACE|Medicao|M1|C1|Ereg.CONTA~q\ & ( \INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\ & ( (!\INTERFACE|Medicao|M1|D1|IC_1|Qout[0]~reg0_q\ & (((\INTERFACE|Medicao|M1|D1|IC_1|Qout[3]~reg0_q\)))) # 
-- (\INTERFACE|Medicao|M1|D1|IC_1|Qout[0]~reg0_q\ & (\INTERFACE|Medicao|M1|D1|IC_1|Qout[2]~reg0_q\ & (\INTERFACE|Medicao|M1|D1|IC_1|Qout[1]~reg0DUPLICATE_q\ & !\INTERFACE|Medicao|M1|D1|IC_1|Qout[3]~reg0_q\))) ) ) ) # ( !\INTERFACE|Medicao|M1|C1|Ereg.CONTA~q\ 
-- & ( \INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\ & ( (!\INTERFACE|Medicao|M1|D1|IC_1|Qout[0]~reg0_q\ & \INTERFACE|Medicao|M1|D1|IC_1|Qout[3]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110011000000000111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|Medicao|M1|D1|IC_1|ALT_INV_Qout[2]~reg0_q\,
	datab => \INTERFACE|Medicao|M1|D1|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datac => \INTERFACE|Medicao|M1|D1|IC_1|ALT_INV_Qout[1]~reg0DUPLICATE_q\,
	datad => \INTERFACE|Medicao|M1|D1|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datae => \INTERFACE|Medicao|M1|C1|ALT_INV_Ereg.CONTA~q\,
	dataf => \INTERFACE|Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	combout => \INTERFACE|Medicao|M1|D1|IC_1|Qout[3]~4_combout\);

-- Location: FF_X81_Y24_N29
\INTERFACE|Medicao|M1|D1|IC_1|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|Medicao|M1|D1|IC_1|Qout[3]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|M1|D1|IC_1|Qout[3]~reg0_q\);

-- Location: FF_X81_Y24_N5
\INTERFACE|Medicao|M1|D1|IC_1|Qout[0]~reg0DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|Medicao|M1|D1|IC_1|Qout[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|M1|D1|IC_1|Qout[0]~reg0DUPLICATE_q\);

-- Location: LABCELL_X81_Y24_N30
\INTERFACE|Medicao|M1|D1|IC_1|Qout[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|M1|D1|IC_1|Qout[2]~0_combout\ = ( \INTERFACE|Medicao|M1|C1|Ereg.CONTA~q\ ) # ( !\INTERFACE|Medicao|M1|C1|Ereg.CONTA~q\ & ( (!\INTERFACE|Medicao|M1|C1|Ereg.INICIAL~q\) # (((\INTERFACE|Medicao|M1|D1|IC_1|Qout[3]~reg0_q\ & 
-- \INTERFACE|Medicao|M1|D1|IC_1|Qout[0]~reg0DUPLICATE_q\)) # (\INTERFACE|Medicao|M1|C1|Ereg.LIMPA~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111111111110011011111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|Medicao|M1|D1|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datab => \INTERFACE|Medicao|M1|C1|ALT_INV_Ereg.INICIAL~q\,
	datac => \INTERFACE|Medicao|M1|D1|IC_1|ALT_INV_Qout[0]~reg0DUPLICATE_q\,
	datad => \INTERFACE|Medicao|M1|C1|ALT_INV_Ereg.LIMPA~q\,
	dataf => \INTERFACE|Medicao|M1|C1|ALT_INV_Ereg.CONTA~q\,
	combout => \INTERFACE|Medicao|M1|D1|IC_1|Qout[2]~0_combout\);

-- Location: LABCELL_X81_Y24_N3
\INTERFACE|Medicao|M1|D1|IC_1|Qout[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|M1|D1|IC_1|Qout[0]~1_combout\ = ( \INTERFACE|Medicao|M1|D1|IC_1|Qout[2]~0_combout\ & ( (\INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\ & !\INTERFACE|Medicao|M1|D1|IC_1|Qout[0]~reg0_q\) ) ) # ( 
-- !\INTERFACE|Medicao|M1|D1|IC_1|Qout[2]~0_combout\ & ( \INTERFACE|Medicao|M1|D1|IC_1|Qout[0]~reg0_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datad => \INTERFACE|Medicao|M1|D1|IC_1|ALT_INV_Qout[0]~reg0_q\,
	dataf => \INTERFACE|Medicao|M1|D1|IC_1|ALT_INV_Qout[2]~0_combout\,
	combout => \INTERFACE|Medicao|M1|D1|IC_1|Qout[0]~1_combout\);

-- Location: FF_X81_Y24_N4
\INTERFACE|Medicao|M1|D1|IC_1|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|Medicao|M1|D1|IC_1|Qout[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|M1|D1|IC_1|Qout[0]~reg0_q\);

-- Location: LABCELL_X80_Y24_N9
\INTERFACE|Medicao|R1|IQ[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|R1|IQ[0]~feeder_combout\ = ( \INTERFACE|Medicao|M1|D1|IC_1|Qout[0]~reg0_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \INTERFACE|Medicao|M1|D1|IC_1|ALT_INV_Qout[0]~reg0_q\,
	combout => \INTERFACE|Medicao|R1|IQ[0]~feeder_combout\);

-- Location: LABCELL_X85_Y22_N54
\INTERFACE|Medicao|C1|WideNor1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|C1|WideNor1~combout\ = ( \INTERFACE|Medicao|C1|Ereg.registra~q\ ) # ( !\INTERFACE|Medicao|C1|Ereg.registra~q\ & ( \INTERFACE|Medicao|C1|Ereg.esperasoma~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|Medicao|C1|ALT_INV_Ereg.esperasoma~q\,
	dataf => \INTERFACE|Medicao|C1|ALT_INV_Ereg.registra~q\,
	combout => \INTERFACE|Medicao|C1|WideNor1~combout\);

-- Location: FF_X80_Y24_N10
\INTERFACE|Medicao|R1|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|Medicao|R1|IQ[0]~feeder_combout\,
	ena => \INTERFACE|Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|R1|IQ\(0));

-- Location: MLABCELL_X84_Y24_N30
\INTERFACE|Medicao|R1|Q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|R1|Q[0]~feeder_combout\ = ( \INTERFACE|Medicao|R1|IQ\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \INTERFACE|Medicao|R1|ALT_INV_IQ\(0),
	combout => \INTERFACE|Medicao|R1|Q[0]~feeder_combout\);

-- Location: FF_X84_Y24_N32
\INTERFACE|Medicao|R1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|Medicao|R1|Q[0]~feeder_combout\,
	ena => \INTERFACE|Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|R1|Q\(0));

-- Location: MLABCELL_X84_Y24_N39
\INTERFACE|R|IQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|R|IQ~0_combout\ = ( \INTERFACE|s_demorou~2_combout\ & ( \INTERFACE|Medicao|R1|Q\(0) ) ) # ( !\INTERFACE|s_demorou~2_combout\ & ( \INTERFACE|Medicao|R1|Q\(0) ) ) # ( \INTERFACE|s_demorou~2_combout\ & ( !\INTERFACE|Medicao|R1|Q\(0) & ( 
-- (!\INTERFACE|C|WideNor2~0_combout\) # ((\INTERFACE|ContaDemora|ClrN3~0_combout\ & (\INTERFACE|s_demorou~1_combout\ & \INTERFACE|s_demorou~0_combout\))) ) ) ) # ( !\INTERFACE|s_demorou~2_combout\ & ( !\INTERFACE|Medicao|R1|Q\(0) & ( 
-- !\INTERFACE|C|WideNor2~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|ContaDemora|ALT_INV_ClrN3~0_combout\,
	datab => \INTERFACE|C|ALT_INV_WideNor2~0_combout\,
	datac => \INTERFACE|ALT_INV_s_demorou~1_combout\,
	datad => \INTERFACE|ALT_INV_s_demorou~0_combout\,
	datae => \INTERFACE|ALT_INV_s_demorou~2_combout\,
	dataf => \INTERFACE|Medicao|R1|ALT_INV_Q\(0),
	combout => \INTERFACE|R|IQ~0_combout\);

-- Location: LABCELL_X83_Y24_N54
\INTERFACE|R|IQ[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|R|IQ[4]~1_combout\ = ( \INTERFACE|s_demorou~0_combout\ & ( \INTERFACE|C|WideNor2~0_combout\ & ( ((\INTERFACE|ContaDemora|ClrN3~0_combout\ & (\INTERFACE|s_demorou~2_combout\ & \INTERFACE|s_demorou~1_combout\))) # 
-- (\INTERFACE|C|Eatual.Respondeu~q\) ) ) ) # ( !\INTERFACE|s_demorou~0_combout\ & ( \INTERFACE|C|WideNor2~0_combout\ & ( \INTERFACE|C|Eatual.Respondeu~q\ ) ) ) # ( \INTERFACE|s_demorou~0_combout\ & ( !\INTERFACE|C|WideNor2~0_combout\ ) ) # ( 
-- !\INTERFACE|s_demorou~0_combout\ & ( !\INTERFACE|C|WideNor2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000111111110000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|ContaDemora|ALT_INV_ClrN3~0_combout\,
	datab => \INTERFACE|ALT_INV_s_demorou~2_combout\,
	datac => \INTERFACE|ALT_INV_s_demorou~1_combout\,
	datad => \INTERFACE|C|ALT_INV_Eatual.Respondeu~q\,
	datae => \INTERFACE|ALT_INV_s_demorou~0_combout\,
	dataf => \INTERFACE|C|ALT_INV_WideNor2~0_combout\,
	combout => \INTERFACE|R|IQ[4]~1_combout\);

-- Location: FF_X84_Y24_N40
\INTERFACE|R|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|R|IQ~0_combout\,
	ena => \INTERFACE|R|IQ[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|R|IQ\(0));

-- Location: LABCELL_X83_Y25_N24
\INTERFACE|R|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|R|process_0~0_combout\ = ( \INTERFACE|C|WideNor1~0_combout\ & ( (\INTERFACE|s_demorou~2_combout\ & (\INTERFACE|s_demorou~1_combout\ & (\INTERFACE|ContaDemora|ClrN3~0_combout\ & \INTERFACE|s_demorou~0_combout\))) ) ) # ( 
-- !\INTERFACE|C|WideNor1~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|ALT_INV_s_demorou~2_combout\,
	datab => \INTERFACE|ALT_INV_s_demorou~1_combout\,
	datac => \INTERFACE|ContaDemora|ALT_INV_ClrN3~0_combout\,
	datad => \INTERFACE|ALT_INV_s_demorou~0_combout\,
	dataf => \INTERFACE|C|ALT_INV_WideNor1~0_combout\,
	combout => \INTERFACE|R|process_0~0_combout\);

-- Location: FF_X84_Y25_N22
\INTERFACE|R|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|R|IQ\(0),
	sload => VCC,
	ena => \INTERFACE|R|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|R|Q\(0));

-- Location: LABCELL_X80_Y24_N21
\INTERFACE|Medicao|R1|IQ[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|R1|IQ[1]~feeder_combout\ = ( \INTERFACE|Medicao|M1|D1|IC_1|Qout[1]~reg0DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \INTERFACE|Medicao|M1|D1|IC_1|ALT_INV_Qout[1]~reg0DUPLICATE_q\,
	combout => \INTERFACE|Medicao|R1|IQ[1]~feeder_combout\);

-- Location: FF_X80_Y24_N23
\INTERFACE|Medicao|R1|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|Medicao|R1|IQ[1]~feeder_combout\,
	ena => \INTERFACE|Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|R1|IQ\(1));

-- Location: FF_X80_Y24_N19
\INTERFACE|Medicao|R1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|Medicao|R1|IQ\(1),
	sload => VCC,
	ena => \INTERFACE|Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|R1|Q\(1));

-- Location: MLABCELL_X84_Y24_N15
\INTERFACE|R|IQ[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|R|IQ[1]~feeder_combout\ = ( \INTERFACE|Medicao|R1|Q\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \INTERFACE|Medicao|R1|ALT_INV_Q\(1),
	combout => \INTERFACE|R|IQ[1]~feeder_combout\);

-- Location: LABCELL_X83_Y24_N15
\INTERFACE|comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|comb~1_combout\ = ( \INTERFACE|ContaDemora|ClrN3~0_combout\ & ( (!\INTERFACE|C|WideNor2~0_combout\) # ((\INTERFACE|s_demorou~2_combout\ & (\INTERFACE|s_demorou~0_combout\ & \INTERFACE|s_demorou~1_combout\))) ) ) # ( 
-- !\INTERFACE|ContaDemora|ClrN3~0_combout\ & ( !\INTERFACE|C|WideNor2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010111010101010101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|C|ALT_INV_WideNor2~0_combout\,
	datab => \INTERFACE|ALT_INV_s_demorou~2_combout\,
	datac => \INTERFACE|ALT_INV_s_demorou~0_combout\,
	datad => \INTERFACE|ALT_INV_s_demorou~1_combout\,
	dataf => \INTERFACE|ContaDemora|ALT_INV_ClrN3~0_combout\,
	combout => \INTERFACE|comb~1_combout\);

-- Location: FF_X84_Y24_N16
\INTERFACE|R|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|R|IQ[1]~feeder_combout\,
	sclr => \INTERFACE|comb~1_combout\,
	ena => \INTERFACE|R|IQ[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|R|IQ\(1));

-- Location: FF_X84_Y25_N40
\INTERFACE|R|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|R|IQ\(1),
	sload => VCC,
	ena => \INTERFACE|R|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|R|Q\(1));

-- Location: FF_X80_Y24_N53
\INTERFACE|Medicao|R1|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|Medicao|M1|D1|IC_1|Qout[2]~reg0_q\,
	sload => VCC,
	ena => \INTERFACE|Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|R1|IQ\(2));

-- Location: LABCELL_X80_Y24_N3
\INTERFACE|Medicao|R1|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|R1|Q[2]~feeder_combout\ = \INTERFACE|Medicao|R1|IQ\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|Medicao|R1|ALT_INV_IQ\(2),
	combout => \INTERFACE|Medicao|R1|Q[2]~feeder_combout\);

-- Location: FF_X80_Y24_N4
\INTERFACE|Medicao|R1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|Medicao|R1|Q[2]~feeder_combout\,
	ena => \INTERFACE|Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|R1|Q\(2));

-- Location: MLABCELL_X84_Y24_N12
\INTERFACE|R|IQ[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|R|IQ[2]~feeder_combout\ = ( \INTERFACE|Medicao|R1|Q\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \INTERFACE|Medicao|R1|ALT_INV_Q\(2),
	combout => \INTERFACE|R|IQ[2]~feeder_combout\);

-- Location: FF_X84_Y24_N13
\INTERFACE|R|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|R|IQ[2]~feeder_combout\,
	sclr => \INTERFACE|comb~1_combout\,
	ena => \INTERFACE|R|IQ[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|R|IQ\(2));

-- Location: FF_X84_Y25_N46
\INTERFACE|R|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|R|IQ\(2),
	sload => VCC,
	ena => \INTERFACE|R|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|R|Q\(2));

-- Location: FF_X80_Y24_N32
\INTERFACE|Medicao|R1|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|Medicao|M1|D1|IC_1|Qout[3]~reg0_q\,
	sload => VCC,
	ena => \INTERFACE|Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|R1|IQ\(3));

-- Location: FF_X80_Y24_N50
\INTERFACE|Medicao|R1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|Medicao|R1|IQ\(3),
	sload => VCC,
	ena => \INTERFACE|Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|R1|Q\(3));

-- Location: MLABCELL_X84_Y24_N18
\INTERFACE|R|IQ~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|R|IQ~2_combout\ = ( \INTERFACE|s_demorou~2_combout\ & ( \INTERFACE|Medicao|R1|Q\(3) ) ) # ( !\INTERFACE|s_demorou~2_combout\ & ( \INTERFACE|Medicao|R1|Q\(3) ) ) # ( \INTERFACE|s_demorou~2_combout\ & ( !\INTERFACE|Medicao|R1|Q\(3) & ( 
-- (!\INTERFACE|C|WideNor2~0_combout\) # ((\INTERFACE|ContaDemora|ClrN3~0_combout\ & (\INTERFACE|s_demorou~0_combout\ & \INTERFACE|s_demorou~1_combout\))) ) ) ) # ( !\INTERFACE|s_demorou~2_combout\ & ( !\INTERFACE|Medicao|R1|Q\(3) & ( 
-- !\INTERFACE|C|WideNor2~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|ContaDemora|ALT_INV_ClrN3~0_combout\,
	datab => \INTERFACE|C|ALT_INV_WideNor2~0_combout\,
	datac => \INTERFACE|ALT_INV_s_demorou~0_combout\,
	datad => \INTERFACE|ALT_INV_s_demorou~1_combout\,
	datae => \INTERFACE|ALT_INV_s_demorou~2_combout\,
	dataf => \INTERFACE|Medicao|R1|ALT_INV_Q\(3),
	combout => \INTERFACE|R|IQ~2_combout\);

-- Location: FF_X84_Y24_N19
\INTERFACE|R|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|R|IQ~2_combout\,
	ena => \INTERFACE|R|IQ[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|R|IQ\(3));

-- Location: FF_X84_Y25_N55
\INTERFACE|R|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|R|IQ\(3),
	sload => VCC,
	ena => \INTERFACE|R|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|R|Q\(3));

-- Location: LABCELL_X81_Y24_N15
\INTERFACE|Medicao|M1|D1|IC_2|Qout[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|M1|D1|IC_2|Qout[3]~0_combout\ = ( \INTERFACE|Medicao|M1|C1|Ereg.CONTA~q\ & ( (\INTERFACE|Medicao|M1|D1|IC_1|Qout[0]~reg0_q\ & \INTERFACE|Medicao|M1|D1|IC_1|Qout[3]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|Medicao|M1|D1|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datad => \INTERFACE|Medicao|M1|D1|IC_1|ALT_INV_Qout[3]~reg0_q\,
	dataf => \INTERFACE|Medicao|M1|C1|ALT_INV_Ereg.CONTA~q\,
	combout => \INTERFACE|Medicao|M1|D1|IC_2|Qout[3]~0_combout\);

-- Location: FF_X81_Y25_N50
\INTERFACE|Medicao|M1|D1|IC_2|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|Medicao|M1|D1|IC_2|Qout[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|M1|D1|IC_2|Qout[0]~reg0_q\);

-- Location: LABCELL_X81_Y24_N51
\INTERFACE|Medicao|M1|D1|IC_2|Qout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|M1|D1|IC_2|Qout~2_combout\ = ( !\INTERFACE|Medicao|M1|D1|ClrN2~0_combout\ & ( (\INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\ & (!\INTERFACE|Medicao|M1|D1|IC_2|Qout[0]~reg0DUPLICATE_q\ $ 
-- (!\INTERFACE|Medicao|M1|D1|IC_2|Qout[1]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|Medicao|M1|D1|IC_2|ALT_INV_Qout[0]~reg0DUPLICATE_q\,
	datac => \INTERFACE|Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datad => \INTERFACE|Medicao|M1|D1|IC_2|ALT_INV_Qout[1]~reg0_q\,
	dataf => \INTERFACE|Medicao|M1|D1|ALT_INV_ClrN2~0_combout\,
	combout => \INTERFACE|Medicao|M1|D1|IC_2|Qout~2_combout\);

-- Location: LABCELL_X81_Y24_N48
\INTERFACE|Medicao|M1|D1|IC_2|Qout[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|M1|D1|IC_2|Qout[1]~3_combout\ = ( \INTERFACE|Medicao|M1|D1|IC_2|Qout[3]~0_combout\ ) # ( !\INTERFACE|Medicao|M1|D1|IC_2|Qout[3]~0_combout\ & ( (!\INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\) # 
-- (\INTERFACE|Medicao|M1|D1|ClrN2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011111100111111001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|Medicao|M1|D1|ALT_INV_ClrN2~0_combout\,
	datac => \INTERFACE|Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	dataf => \INTERFACE|Medicao|M1|D1|IC_2|ALT_INV_Qout[3]~0_combout\,
	combout => \INTERFACE|Medicao|M1|D1|IC_2|Qout[1]~3_combout\);

-- Location: FF_X81_Y24_N52
\INTERFACE|Medicao|M1|D1|IC_2|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|Medicao|M1|D1|IC_2|Qout~2_combout\,
	ena => \INTERFACE|Medicao|M1|D1|IC_2|Qout[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|M1|D1|IC_2|Qout[1]~reg0_q\);

-- Location: LABCELL_X81_Y24_N0
\INTERFACE|Medicao|M1|D1|IC_2|Qout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|M1|D1|IC_2|Qout~4_combout\ = ( !\INTERFACE|Medicao|M1|D1|ClrN2~0_combout\ & ( (\INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\ & (!\INTERFACE|Medicao|M1|D1|IC_2|Qout[2]~reg0_q\ $ 
-- (((!\INTERFACE|Medicao|M1|D1|IC_2|Qout[0]~reg0DUPLICATE_q\) # (!\INTERFACE|Medicao|M1|D1|IC_2|Qout[1]~reg0_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010010000000110001001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|Medicao|M1|D1|IC_2|ALT_INV_Qout[0]~reg0DUPLICATE_q\,
	datab => \INTERFACE|Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datac => \INTERFACE|Medicao|M1|D1|IC_2|ALT_INV_Qout[2]~reg0_q\,
	datad => \INTERFACE|Medicao|M1|D1|IC_2|ALT_INV_Qout[1]~reg0_q\,
	dataf => \INTERFACE|Medicao|M1|D1|ALT_INV_ClrN2~0_combout\,
	combout => \INTERFACE|Medicao|M1|D1|IC_2|Qout~4_combout\);

-- Location: FF_X81_Y24_N50
\INTERFACE|Medicao|M1|D1|IC_2|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|Medicao|M1|D1|IC_2|Qout~4_combout\,
	sload => VCC,
	ena => \INTERFACE|Medicao|M1|D1|IC_2|Qout[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|M1|D1|IC_2|Qout[2]~reg0_q\);

-- Location: LABCELL_X81_Y24_N45
\INTERFACE|Medicao|M1|D1|IC_2|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|M1|D1|IC_2|Add0~0_combout\ = ( \INTERFACE|Medicao|M1|D1|IC_2|Qout[0]~reg0DUPLICATE_q\ & ( (\INTERFACE|Medicao|M1|D1|IC_2|Qout[1]~reg0_q\ & \INTERFACE|Medicao|M1|D1|IC_2|Qout[2]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|Medicao|M1|D1|IC_2|ALT_INV_Qout[1]~reg0_q\,
	datad => \INTERFACE|Medicao|M1|D1|IC_2|ALT_INV_Qout[2]~reg0_q\,
	dataf => \INTERFACE|Medicao|M1|D1|IC_2|ALT_INV_Qout[0]~reg0DUPLICATE_q\,
	combout => \INTERFACE|Medicao|M1|D1|IC_2|Add0~0_combout\);

-- Location: LABCELL_X81_Y25_N45
\INTERFACE|Medicao|M1|D1|IC_2|Qout[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|M1|D1|IC_2|Qout[3]~5_combout\ = ( \INTERFACE|Medicao|M1|D1|IC_2|Add0~0_combout\ & ( (!\INTERFACE|Medicao|M1|D1|ClrN2~0_combout\ & (\INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\ & (!\INTERFACE|Medicao|M1|D1|IC_2|Qout[3]~0_combout\ $ 
-- (!\INTERFACE|Medicao|M1|D1|IC_2|Qout[3]~reg0_q\)))) ) ) # ( !\INTERFACE|Medicao|M1|D1|IC_2|Add0~0_combout\ & ( (!\INTERFACE|Medicao|M1|D1|ClrN2~0_combout\ & (\INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\ & \INTERFACE|Medicao|M1|D1|IC_2|Qout[3]~reg0_q\)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000010001000000000001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|Medicao|M1|D1|ALT_INV_ClrN2~0_combout\,
	datab => \INTERFACE|Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datac => \INTERFACE|Medicao|M1|D1|IC_2|ALT_INV_Qout[3]~0_combout\,
	datad => \INTERFACE|Medicao|M1|D1|IC_2|ALT_INV_Qout[3]~reg0_q\,
	dataf => \INTERFACE|Medicao|M1|D1|IC_2|ALT_INV_Add0~0_combout\,
	combout => \INTERFACE|Medicao|M1|D1|IC_2|Qout[3]~5_combout\);

-- Location: FF_X81_Y25_N47
\INTERFACE|Medicao|M1|D1|IC_2|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|Medicao|M1|D1|IC_2|Qout[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|M1|D1|IC_2|Qout[3]~reg0_q\);

-- Location: LABCELL_X81_Y24_N39
\INTERFACE|Medicao|M1|D1|ClrN2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|M1|D1|ClrN2~0_combout\ = ( \INTERFACE|Medicao|M1|D1|IC_2|Qout[0]~reg0DUPLICATE_q\ & ( (\INTERFACE|Medicao|M1|D1|IC_1|Qout[0]~reg0DUPLICATE_q\ & (\INTERFACE|Medicao|M1|D1|IC_2|Qout[3]~reg0_q\ & 
-- \INTERFACE|Medicao|M1|D1|IC_1|Qout[3]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|Medicao|M1|D1|IC_1|ALT_INV_Qout[0]~reg0DUPLICATE_q\,
	datac => \INTERFACE|Medicao|M1|D1|IC_2|ALT_INV_Qout[3]~reg0_q\,
	datad => \INTERFACE|Medicao|M1|D1|IC_1|ALT_INV_Qout[3]~reg0_q\,
	dataf => \INTERFACE|Medicao|M1|D1|IC_2|ALT_INV_Qout[0]~reg0DUPLICATE_q\,
	combout => \INTERFACE|Medicao|M1|D1|ClrN2~0_combout\);

-- Location: LABCELL_X81_Y25_N48
\INTERFACE|Medicao|M1|D1|IC_2|Qout[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|M1|D1|IC_2|Qout[0]~1_combout\ = ( \INTERFACE|Medicao|M1|D1|ClrN2~0_combout\ & ( (\INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\ & !\INTERFACE|Medicao|M1|D1|IC_2|Qout[0]~reg0_q\) ) ) # ( !\INTERFACE|Medicao|M1|D1|ClrN2~0_combout\ & ( 
-- (\INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\ & (!\INTERFACE|Medicao|M1|D1|IC_2|Qout[3]~0_combout\ $ (!\INTERFACE|Medicao|M1|D1|IC_2|Qout[0]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datac => \INTERFACE|Medicao|M1|D1|IC_2|ALT_INV_Qout[3]~0_combout\,
	datad => \INTERFACE|Medicao|M1|D1|IC_2|ALT_INV_Qout[0]~reg0_q\,
	dataf => \INTERFACE|Medicao|M1|D1|ALT_INV_ClrN2~0_combout\,
	combout => \INTERFACE|Medicao|M1|D1|IC_2|Qout[0]~1_combout\);

-- Location: FF_X81_Y25_N49
\INTERFACE|Medicao|M1|D1|IC_2|Qout[0]~reg0DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|Medicao|M1|D1|IC_2|Qout[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|M1|D1|IC_2|Qout[0]~reg0DUPLICATE_q\);

-- Location: LABCELL_X85_Y24_N0
\INTERFACE|Medicao|R1|IQ[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|R1|IQ[4]~feeder_combout\ = ( \INTERFACE|Medicao|M1|D1|IC_2|Qout[0]~reg0DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \INTERFACE|Medicao|M1|D1|IC_2|ALT_INV_Qout[0]~reg0DUPLICATE_q\,
	combout => \INTERFACE|Medicao|R1|IQ[4]~feeder_combout\);

-- Location: FF_X85_Y24_N2
\INTERFACE|Medicao|R1|IQ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|Medicao|R1|IQ[4]~feeder_combout\,
	ena => \INTERFACE|Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|R1|IQ\(4));

-- Location: LABCELL_X85_Y24_N42
\INTERFACE|Medicao|R1|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|R1|Q[4]~feeder_combout\ = \INTERFACE|Medicao|R1|IQ\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|Medicao|R1|ALT_INV_IQ\(4),
	combout => \INTERFACE|Medicao|R1|Q[4]~feeder_combout\);

-- Location: FF_X85_Y24_N44
\INTERFACE|Medicao|R1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|Medicao|R1|Q[4]~feeder_combout\,
	ena => \INTERFACE|Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|R1|Q\(4));

-- Location: MLABCELL_X84_Y24_N21
\INTERFACE|R|IQ~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|R|IQ~3_combout\ = ( \INTERFACE|s_demorou~2_combout\ & ( \INTERFACE|Medicao|R1|Q\(4) ) ) # ( !\INTERFACE|s_demorou~2_combout\ & ( \INTERFACE|Medicao|R1|Q\(4) ) ) # ( \INTERFACE|s_demorou~2_combout\ & ( !\INTERFACE|Medicao|R1|Q\(4) & ( 
-- (!\INTERFACE|C|WideNor2~0_combout\) # ((\INTERFACE|ContaDemora|ClrN3~0_combout\ & (\INTERFACE|s_demorou~1_combout\ & \INTERFACE|s_demorou~0_combout\))) ) ) ) # ( !\INTERFACE|s_demorou~2_combout\ & ( !\INTERFACE|Medicao|R1|Q\(4) & ( 
-- !\INTERFACE|C|WideNor2~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|ContaDemora|ALT_INV_ClrN3~0_combout\,
	datab => \INTERFACE|C|ALT_INV_WideNor2~0_combout\,
	datac => \INTERFACE|ALT_INV_s_demorou~1_combout\,
	datad => \INTERFACE|ALT_INV_s_demorou~0_combout\,
	datae => \INTERFACE|ALT_INV_s_demorou~2_combout\,
	dataf => \INTERFACE|Medicao|R1|ALT_INV_Q\(4),
	combout => \INTERFACE|R|IQ~3_combout\);

-- Location: FF_X84_Y24_N23
\INTERFACE|R|IQ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|R|IQ~3_combout\,
	ena => \INTERFACE|R|IQ[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|R|IQ\(4));

-- Location: MLABCELL_X84_Y25_N12
\INTERFACE|R|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|R|Q[4]~feeder_combout\ = ( \INTERFACE|R|IQ\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \INTERFACE|R|ALT_INV_IQ\(4),
	combout => \INTERFACE|R|Q[4]~feeder_combout\);

-- Location: FF_X84_Y25_N13
\INTERFACE|R|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|R|Q[4]~feeder_combout\,
	ena => \INTERFACE|R|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|R|Q\(4));

-- Location: MLABCELL_X84_Y24_N27
\INTERFACE|Medicao|R1|IQ[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|R1|IQ[5]~feeder_combout\ = ( \INTERFACE|Medicao|M1|D1|IC_2|Qout[1]~reg0_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \INTERFACE|Medicao|M1|D1|IC_2|ALT_INV_Qout[1]~reg0_q\,
	combout => \INTERFACE|Medicao|R1|IQ[5]~feeder_combout\);

-- Location: FF_X84_Y24_N29
\INTERFACE|Medicao|R1|IQ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|Medicao|R1|IQ[5]~feeder_combout\,
	ena => \INTERFACE|Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|R1|IQ\(5));

-- Location: FF_X84_Y24_N26
\INTERFACE|Medicao|R1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|Medicao|R1|IQ\(5),
	sload => VCC,
	ena => \INTERFACE|Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|R1|Q\(5));

-- Location: FF_X84_Y24_N55
\INTERFACE|R|IQ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|Medicao|R1|Q\(5),
	sclr => \INTERFACE|comb~1_combout\,
	sload => VCC,
	ena => \INTERFACE|R|IQ[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|R|IQ\(5));

-- Location: FF_X82_Y25_N19
\INTERFACE|R|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|R|IQ\(5),
	sload => VCC,
	ena => \INTERFACE|R|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|R|Q\(5));

-- Location: FF_X84_Y24_N35
\INTERFACE|Medicao|R1|IQ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|Medicao|M1|D1|IC_2|Qout[2]~reg0_q\,
	sload => VCC,
	ena => \INTERFACE|Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|R1|IQ\(6));

-- Location: MLABCELL_X84_Y24_N9
\INTERFACE|Medicao|R1|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|R1|Q[6]~feeder_combout\ = \INTERFACE|Medicao|R1|IQ\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|Medicao|R1|ALT_INV_IQ\(6),
	combout => \INTERFACE|Medicao|R1|Q[6]~feeder_combout\);

-- Location: FF_X84_Y24_N11
\INTERFACE|Medicao|R1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|Medicao|R1|Q[6]~feeder_combout\,
	ena => \INTERFACE|Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|R1|Q\(6));

-- Location: FF_X84_Y24_N58
\INTERFACE|R|IQ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|Medicao|R1|Q\(6),
	sclr => \INTERFACE|comb~1_combout\,
	sload => VCC,
	ena => \INTERFACE|R|IQ[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|R|IQ\(6));

-- Location: FF_X84_Y25_N34
\INTERFACE|R|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|R|IQ\(6),
	sload => VCC,
	ena => \INTERFACE|R|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|R|Q\(6));

-- Location: FF_X84_Y24_N10
\INTERFACE|Medicao|R1|IQ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|Medicao|M1|D1|IC_2|Qout[3]~reg0_q\,
	sload => VCC,
	ena => \INTERFACE|Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|R1|IQ\(7));

-- Location: FF_X84_Y24_N31
\INTERFACE|Medicao|R1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|Medicao|R1|IQ\(7),
	sload => VCC,
	ena => \INTERFACE|Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|R1|Q\(7));

-- Location: MLABCELL_X84_Y24_N0
\INTERFACE|R|IQ~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|R|IQ~4_combout\ = ( \INTERFACE|s_demorou~2_combout\ & ( \INTERFACE|Medicao|R1|Q\(7) ) ) # ( !\INTERFACE|s_demorou~2_combout\ & ( \INTERFACE|Medicao|R1|Q\(7) ) ) # ( \INTERFACE|s_demorou~2_combout\ & ( !\INTERFACE|Medicao|R1|Q\(7) & ( 
-- (!\INTERFACE|C|WideNor2~0_combout\) # ((\INTERFACE|ContaDemora|ClrN3~0_combout\ & (\INTERFACE|s_demorou~0_combout\ & \INTERFACE|s_demorou~1_combout\))) ) ) ) # ( !\INTERFACE|s_demorou~2_combout\ & ( !\INTERFACE|Medicao|R1|Q\(7) & ( 
-- !\INTERFACE|C|WideNor2~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|ContaDemora|ALT_INV_ClrN3~0_combout\,
	datab => \INTERFACE|C|ALT_INV_WideNor2~0_combout\,
	datac => \INTERFACE|ALT_INV_s_demorou~0_combout\,
	datad => \INTERFACE|ALT_INV_s_demorou~1_combout\,
	datae => \INTERFACE|ALT_INV_s_demorou~2_combout\,
	dataf => \INTERFACE|Medicao|R1|ALT_INV_Q\(7),
	combout => \INTERFACE|R|IQ~4_combout\);

-- Location: FF_X84_Y24_N1
\INTERFACE|R|IQ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|R|IQ~4_combout\,
	ena => \INTERFACE|R|IQ[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|R|IQ\(7));

-- Location: FF_X84_Y25_N37
\INTERFACE|R|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|R|IQ\(7),
	sload => VCC,
	ena => \INTERFACE|R|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|R|Q\(7));

-- Location: FF_X81_Y25_N44
\INTERFACE|Medicao|M1|D1|IC_3|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|Medicao|M1|D1|IC_3|Qout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|M1|D1|IC_3|Qout[0]~reg0_q\);

-- Location: LABCELL_X81_Y25_N6
\INTERFACE|Medicao|M1|D1|ClrN3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|M1|D1|ClrN3~0_combout\ = ( \INTERFACE|Medicao|M1|D1|IC_1|Qout[0]~reg0DUPLICATE_q\ & ( \INTERFACE|Medicao|M1|D1|IC_1|Qout[3]~reg0_q\ & ( (\INTERFACE|Medicao|M1|D1|IC_2|Qout[0]~reg0_q\ & (\INTERFACE|Medicao|M1|D1|IC_3|Qout[0]~reg0_q\ & 
-- (\INTERFACE|Medicao|M1|D1|IC_3|Qout[3]~reg0DUPLICATE_q\ & \INTERFACE|Medicao|M1|D1|IC_2|Qout[3]~reg0_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|Medicao|M1|D1|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datab => \INTERFACE|Medicao|M1|D1|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datac => \INTERFACE|Medicao|M1|D1|IC_3|ALT_INV_Qout[3]~reg0DUPLICATE_q\,
	datad => \INTERFACE|Medicao|M1|D1|IC_2|ALT_INV_Qout[3]~reg0_q\,
	datae => \INTERFACE|Medicao|M1|D1|IC_1|ALT_INV_Qout[0]~reg0DUPLICATE_q\,
	dataf => \INTERFACE|Medicao|M1|D1|IC_1|ALT_INV_Qout[3]~reg0_q\,
	combout => \INTERFACE|Medicao|M1|D1|ClrN3~0_combout\);

-- Location: LABCELL_X81_Y25_N24
\INTERFACE|Medicao|M1|D1|IC_3|Qout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|M1|D1|IC_3|Qout~1_combout\ = ( !\INTERFACE|Medicao|M1|D1|ClrN3~0_combout\ & ( (\INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\ & (!\INTERFACE|Medicao|M1|D1|IC_3|Qout[0]~reg0_q\ $ (!\INTERFACE|Medicao|M1|D1|IC_3|Qout[1]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datab => \INTERFACE|Medicao|M1|D1|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datad => \INTERFACE|Medicao|M1|D1|IC_3|ALT_INV_Qout[1]~reg0_q\,
	dataf => \INTERFACE|Medicao|M1|D1|ALT_INV_ClrN3~0_combout\,
	combout => \INTERFACE|Medicao|M1|D1|IC_3|Qout~1_combout\);

-- Location: LABCELL_X81_Y25_N15
\INTERFACE|Medicao|M1|D1|IC_3|Qout[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|M1|D1|IC_3|Qout[3]~2_combout\ = ( \INTERFACE|Medicao|M1|D1|ClrN2~0_combout\ & ( ((!\INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\) # (\INTERFACE|Medicao|M1|D1|ClrN3~0_combout\)) # (\INTERFACE|Medicao|M1|C1|Ereg.CONTA~q\) ) ) # ( 
-- !\INTERFACE|Medicao|M1|D1|ClrN2~0_combout\ & ( (!\INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\) # (\INTERFACE|Medicao|M1|D1|ClrN3~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111010111111111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|Medicao|M1|C1|ALT_INV_Ereg.CONTA~q\,
	datac => \INTERFACE|Medicao|M1|D1|ALT_INV_ClrN3~0_combout\,
	datad => \INTERFACE|Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	dataf => \INTERFACE|Medicao|M1|D1|ALT_INV_ClrN2~0_combout\,
	combout => \INTERFACE|Medicao|M1|D1|IC_3|Qout[3]~2_combout\);

-- Location: FF_X81_Y25_N26
\INTERFACE|Medicao|M1|D1|IC_3|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|Medicao|M1|D1|IC_3|Qout~1_combout\,
	ena => \INTERFACE|Medicao|M1|D1|IC_3|Qout[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|M1|D1|IC_3|Qout[1]~reg0_q\);

-- Location: LABCELL_X81_Y25_N27
\INTERFACE|Medicao|M1|D1|IC_3|Qout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|M1|D1|IC_3|Qout~3_combout\ = ( \INTERFACE|Medicao|M1|D1|IC_3|Qout[1]~reg0_q\ & ( (\INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\ & (!\INTERFACE|Medicao|M1|D1|ClrN3~0_combout\ & (!\INTERFACE|Medicao|M1|D1|IC_3|Qout[0]~reg0_q\ $ 
-- (!\INTERFACE|Medicao|M1|D1|IC_3|Qout[2]~reg0_q\)))) ) ) # ( !\INTERFACE|Medicao|M1|D1|IC_3|Qout[1]~reg0_q\ & ( (\INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\ & (!\INTERFACE|Medicao|M1|D1|ClrN3~0_combout\ & \INTERFACE|Medicao|M1|D1|IC_3|Qout[2]~reg0_q\)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000010000010000000001000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datab => \INTERFACE|Medicao|M1|D1|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datac => \INTERFACE|Medicao|M1|D1|ALT_INV_ClrN3~0_combout\,
	datad => \INTERFACE|Medicao|M1|D1|IC_3|ALT_INV_Qout[2]~reg0_q\,
	dataf => \INTERFACE|Medicao|M1|D1|IC_3|ALT_INV_Qout[1]~reg0_q\,
	combout => \INTERFACE|Medicao|M1|D1|IC_3|Qout~3_combout\);

-- Location: FF_X81_Y25_N28
\INTERFACE|Medicao|M1|D1|IC_3|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|Medicao|M1|D1|IC_3|Qout~3_combout\,
	ena => \INTERFACE|Medicao|M1|D1|IC_3|Qout[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|M1|D1|IC_3|Qout[2]~reg0_q\);

-- Location: LABCELL_X81_Y25_N12
\INTERFACE|Medicao|M1|D1|IC_3|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|M1|D1|IC_3|Add0~0_combout\ = ( \INTERFACE|Medicao|M1|D1|IC_3|Qout[2]~reg0_q\ & ( (\INTERFACE|Medicao|M1|D1|IC_3|Qout[0]~reg0DUPLICATE_q\ & \INTERFACE|Medicao|M1|D1|IC_3|Qout[1]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|Medicao|M1|D1|IC_3|ALT_INV_Qout[0]~reg0DUPLICATE_q\,
	datac => \INTERFACE|Medicao|M1|D1|IC_3|ALT_INV_Qout[1]~reg0_q\,
	dataf => \INTERFACE|Medicao|M1|D1|IC_3|ALT_INV_Qout[2]~reg0_q\,
	combout => \INTERFACE|Medicao|M1|D1|IC_3|Add0~0_combout\);

-- Location: FF_X81_Y25_N32
\INTERFACE|Medicao|M1|D1|IC_3|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|Medicao|M1|D1|IC_3|Qout[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|M1|D1|IC_3|Qout[3]~reg0_q\);

-- Location: LABCELL_X81_Y25_N30
\INTERFACE|Medicao|M1|D1|IC_3|Qout[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|M1|D1|IC_3|Qout[3]~4_combout\ = ( \INTERFACE|Medicao|M1|D1|IC_3|Qout[3]~reg0_q\ & ( \INTERFACE|Medicao|M1|D1|IC_3|Qout[0]~reg0DUPLICATE_q\ & ( (\INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\ & 
-- !\INTERFACE|Medicao|M1|D1|ClrN2~0_combout\) ) ) ) # ( !\INTERFACE|Medicao|M1|D1|IC_3|Qout[3]~reg0_q\ & ( \INTERFACE|Medicao|M1|D1|IC_3|Qout[0]~reg0DUPLICATE_q\ & ( (\INTERFACE|Medicao|M1|C1|Ereg.CONTA~q\ & (\INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\ 
-- & (\INTERFACE|Medicao|M1|D1|ClrN2~0_combout\ & \INTERFACE|Medicao|M1|D1|IC_3|Add0~0_combout\))) ) ) ) # ( \INTERFACE|Medicao|M1|D1|IC_3|Qout[3]~reg0_q\ & ( !\INTERFACE|Medicao|M1|D1|IC_3|Qout[0]~reg0DUPLICATE_q\ & ( 
-- (\INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\ & ((!\INTERFACE|Medicao|M1|C1|Ereg.CONTA~q\) # ((!\INTERFACE|Medicao|M1|D1|ClrN2~0_combout\) # (!\INTERFACE|Medicao|M1|D1|IC_3|Add0~0_combout\)))) ) ) ) # ( !\INTERFACE|Medicao|M1|D1|IC_3|Qout[3]~reg0_q\ & 
-- ( !\INTERFACE|Medicao|M1|D1|IC_3|Qout[0]~reg0DUPLICATE_q\ & ( (\INTERFACE|Medicao|M1|C1|Ereg.CONTA~q\ & (\INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\ & (\INTERFACE|Medicao|M1|D1|ClrN2~0_combout\ & \INTERFACE|Medicao|M1|D1|IC_3|Add0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001001100110011001000000000000000010011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|Medicao|M1|C1|ALT_INV_Ereg.CONTA~q\,
	datab => \INTERFACE|Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datac => \INTERFACE|Medicao|M1|D1|ALT_INV_ClrN2~0_combout\,
	datad => \INTERFACE|Medicao|M1|D1|IC_3|ALT_INV_Add0~0_combout\,
	datae => \INTERFACE|Medicao|M1|D1|IC_3|ALT_INV_Qout[3]~reg0_q\,
	dataf => \INTERFACE|Medicao|M1|D1|IC_3|ALT_INV_Qout[0]~reg0DUPLICATE_q\,
	combout => \INTERFACE|Medicao|M1|D1|IC_3|Qout[3]~4_combout\);

-- Location: FF_X81_Y25_N31
\INTERFACE|Medicao|M1|D1|IC_3|Qout[3]~reg0DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|Medicao|M1|D1|IC_3|Qout[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|M1|D1|IC_3|Qout[3]~reg0DUPLICATE_q\);

-- Location: LABCELL_X81_Y25_N42
\INTERFACE|Medicao|M1|D1|IC_3|Qout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|M1|D1|IC_3|Qout[0]~0_combout\ = ( \INTERFACE|Medicao|M1|D1|IC_3|Qout[3]~reg0DUPLICATE_q\ & ( (\INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\ & ((!\INTERFACE|Medicao|M1|D1|ClrN2~0_combout\ & 
-- ((\INTERFACE|Medicao|M1|D1|IC_3|Qout[0]~reg0_q\))) # (\INTERFACE|Medicao|M1|D1|ClrN2~0_combout\ & (\INTERFACE|Medicao|M1|C1|Ereg.CONTA~q\ & !\INTERFACE|Medicao|M1|D1|IC_3|Qout[0]~reg0_q\)))) ) ) # ( !\INTERFACE|Medicao|M1|D1|IC_3|Qout[3]~reg0DUPLICATE_q\ 
-- & ( (\INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\ & (!\INTERFACE|Medicao|M1|D1|IC_3|Qout[0]~reg0_q\ $ (((!\INTERFACE|Medicao|M1|D1|ClrN2~0_combout\) # (!\INTERFACE|Medicao|M1|C1|Ereg.CONTA~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110010000000010011001000000001001000100000000100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|Medicao|M1|D1|ALT_INV_ClrN2~0_combout\,
	datab => \INTERFACE|Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datac => \INTERFACE|Medicao|M1|C1|ALT_INV_Ereg.CONTA~q\,
	datad => \INTERFACE|Medicao|M1|D1|IC_3|ALT_INV_Qout[0]~reg0_q\,
	dataf => \INTERFACE|Medicao|M1|D1|IC_3|ALT_INV_Qout[3]~reg0DUPLICATE_q\,
	combout => \INTERFACE|Medicao|M1|D1|IC_3|Qout[0]~0_combout\);

-- Location: FF_X81_Y25_N43
\INTERFACE|Medicao|M1|D1|IC_3|Qout[0]~reg0DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|Medicao|M1|D1|IC_3|Qout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|M1|D1|IC_3|Qout[0]~reg0DUPLICATE_q\);

-- Location: LABCELL_X85_Y24_N30
\INTERFACE|Medicao|R1|IQ[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|R1|IQ[8]~feeder_combout\ = ( \INTERFACE|Medicao|M1|D1|IC_3|Qout[0]~reg0DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \INTERFACE|Medicao|M1|D1|IC_3|ALT_INV_Qout[0]~reg0DUPLICATE_q\,
	combout => \INTERFACE|Medicao|R1|IQ[8]~feeder_combout\);

-- Location: FF_X85_Y24_N32
\INTERFACE|Medicao|R1|IQ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|Medicao|R1|IQ[8]~feeder_combout\,
	ena => \INTERFACE|Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|R1|IQ\(8));

-- Location: LABCELL_X85_Y24_N33
\INTERFACE|Medicao|R1|Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|R1|Q[8]~feeder_combout\ = \INTERFACE|Medicao|R1|IQ\(8)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|Medicao|R1|ALT_INV_IQ\(8),
	combout => \INTERFACE|Medicao|R1|Q[8]~feeder_combout\);

-- Location: FF_X85_Y24_N35
\INTERFACE|Medicao|R1|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|Medicao|R1|Q[8]~feeder_combout\,
	ena => \INTERFACE|Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|R1|Q\(8));

-- Location: MLABCELL_X84_Y24_N36
\INTERFACE|R|IQ~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|R|IQ~5_combout\ = ( \INTERFACE|s_demorou~2_combout\ & ( \INTERFACE|Medicao|R1|Q\(8) ) ) # ( !\INTERFACE|s_demorou~2_combout\ & ( \INTERFACE|Medicao|R1|Q\(8) ) ) # ( \INTERFACE|s_demorou~2_combout\ & ( !\INTERFACE|Medicao|R1|Q\(8) & ( 
-- (!\INTERFACE|C|WideNor2~0_combout\) # ((\INTERFACE|ContaDemora|ClrN3~0_combout\ & (\INTERFACE|s_demorou~0_combout\ & \INTERFACE|s_demorou~1_combout\))) ) ) ) # ( !\INTERFACE|s_demorou~2_combout\ & ( !\INTERFACE|Medicao|R1|Q\(8) & ( 
-- !\INTERFACE|C|WideNor2~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|ContaDemora|ALT_INV_ClrN3~0_combout\,
	datab => \INTERFACE|C|ALT_INV_WideNor2~0_combout\,
	datac => \INTERFACE|ALT_INV_s_demorou~0_combout\,
	datad => \INTERFACE|ALT_INV_s_demorou~1_combout\,
	datae => \INTERFACE|ALT_INV_s_demorou~2_combout\,
	dataf => \INTERFACE|Medicao|R1|ALT_INV_Q\(8),
	combout => \INTERFACE|R|IQ~5_combout\);

-- Location: FF_X84_Y24_N37
\INTERFACE|R|IQ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|R|IQ~5_combout\,
	ena => \INTERFACE|R|IQ[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|R|IQ\(8));

-- Location: FF_X84_Y25_N43
\INTERFACE|R|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|R|IQ\(8),
	sload => VCC,
	ena => \INTERFACE|R|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|R|Q\(8));

-- Location: FF_X85_Y24_N31
\INTERFACE|Medicao|R1|IQ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|Medicao|M1|D1|IC_3|Qout[1]~reg0_q\,
	sload => VCC,
	ena => \INTERFACE|Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|R1|IQ\(9));

-- Location: FF_X85_Y24_N10
\INTERFACE|Medicao|R1|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|Medicao|R1|IQ\(9),
	sload => VCC,
	ena => \INTERFACE|Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|R1|Q\(9));

-- Location: MLABCELL_X84_Y24_N48
\INTERFACE|R|IQ[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|R|IQ[9]~feeder_combout\ = ( \INTERFACE|Medicao|R1|Q\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \INTERFACE|Medicao|R1|ALT_INV_Q\(9),
	combout => \INTERFACE|R|IQ[9]~feeder_combout\);

-- Location: FF_X84_Y24_N49
\INTERFACE|R|IQ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|R|IQ[9]~feeder_combout\,
	sclr => \INTERFACE|comb~1_combout\,
	ena => \INTERFACE|R|IQ[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|R|IQ\(9));

-- Location: FF_X84_Y25_N16
\INTERFACE|R|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|R|IQ\(9),
	sload => VCC,
	ena => \INTERFACE|R|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|R|Q\(9));

-- Location: FF_X85_Y24_N53
\INTERFACE|Medicao|R1|IQ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|Medicao|M1|D1|IC_3|Qout[2]~reg0_q\,
	sload => VCC,
	ena => \INTERFACE|Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|R1|IQ\(10));

-- Location: FF_X85_Y24_N50
\INTERFACE|Medicao|R1|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|Medicao|R1|IQ\(10),
	sload => VCC,
	ena => \INTERFACE|Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|R1|Q\(10));

-- Location: FF_X84_Y24_N53
\INTERFACE|R|IQ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|Medicao|R1|Q\(10),
	sclr => \INTERFACE|comb~1_combout\,
	sload => VCC,
	ena => \INTERFACE|R|IQ[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|R|IQ\(10));

-- Location: FF_X82_Y25_N49
\INTERFACE|R|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|R|IQ\(10),
	sload => VCC,
	ena => \INTERFACE|R|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|R|Q\(10));

-- Location: LABCELL_X85_Y24_N3
\INTERFACE|Medicao|R1|IQ[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|R1|IQ[11]~feeder_combout\ = \INTERFACE|Medicao|M1|D1|IC_3|Qout[3]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \INTERFACE|Medicao|M1|D1|IC_3|ALT_INV_Qout[3]~reg0_q\,
	combout => \INTERFACE|Medicao|R1|IQ[11]~feeder_combout\);

-- Location: FF_X85_Y24_N5
\INTERFACE|Medicao|R1|IQ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|Medicao|R1|IQ[11]~feeder_combout\,
	ena => \INTERFACE|Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|R1|IQ\(11));

-- Location: FF_X85_Y24_N4
\INTERFACE|Medicao|R1|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|Medicao|R1|IQ\(11),
	sload => VCC,
	ena => \INTERFACE|Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|R1|Q\(11));

-- Location: LABCELL_X85_Y24_N24
\INTERFACE|R|IQ~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|R|IQ~6_combout\ = ( \INTERFACE|ContaDemora|ClrN3~0_combout\ & ( \INTERFACE|C|WideNor2~0_combout\ & ( ((\INTERFACE|s_demorou~1_combout\ & (\INTERFACE|s_demorou~0_combout\ & \INTERFACE|s_demorou~2_combout\))) # (\INTERFACE|Medicao|R1|Q\(11)) ) ) 
-- ) # ( !\INTERFACE|ContaDemora|ClrN3~0_combout\ & ( \INTERFACE|C|WideNor2~0_combout\ & ( \INTERFACE|Medicao|R1|Q\(11) ) ) ) # ( \INTERFACE|ContaDemora|ClrN3~0_combout\ & ( !\INTERFACE|C|WideNor2~0_combout\ ) ) # ( !\INTERFACE|ContaDemora|ClrN3~0_combout\ & 
-- ( !\INTERFACE|C|WideNor2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000111111110000000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|ALT_INV_s_demorou~1_combout\,
	datab => \INTERFACE|ALT_INV_s_demorou~0_combout\,
	datac => \INTERFACE|ALT_INV_s_demorou~2_combout\,
	datad => \INTERFACE|Medicao|R1|ALT_INV_Q\(11),
	datae => \INTERFACE|ContaDemora|ALT_INV_ClrN3~0_combout\,
	dataf => \INTERFACE|C|ALT_INV_WideNor2~0_combout\,
	combout => \INTERFACE|R|IQ~6_combout\);

-- Location: FF_X85_Y24_N25
\INTERFACE|R|IQ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|R|IQ~6_combout\,
	ena => \INTERFACE|R|IQ[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|R|IQ\(11));

-- Location: FF_X84_Y25_N7
\INTERFACE|R|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|R|IQ\(11),
	sload => VCC,
	ena => \INTERFACE|R|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|R|Q\(11));

-- Location: FF_X81_Y25_N38
\INTERFACE|Medicao|M1|D1|IC_4|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|Medicao|M1|D1|IC_4|Qout[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|M1|D1|IC_4|Qout[3]~reg0_q\);

-- Location: LABCELL_X81_Y25_N3
\INTERFACE|Medicao|M1|D1|IC_4|Qout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|M1|D1|IC_4|Qout~1_combout\ = ( \INTERFACE|Medicao|M1|D1|IC_4|Qout[1]~reg0_q\ & ( \INTERFACE|Medicao|M1|D1|IC_4|Qout[3]~reg0DUPLICATE_q\ & ( (\INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\ & 
-- !\INTERFACE|Medicao|M1|D1|IC_4|Qout[0]~reg0_q\) ) ) ) # ( !\INTERFACE|Medicao|M1|D1|IC_4|Qout[1]~reg0_q\ & ( \INTERFACE|Medicao|M1|D1|IC_4|Qout[3]~reg0DUPLICATE_q\ & ( (\INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\ & 
-- (!\INTERFACE|Medicao|M1|D1|ClrN3~0_combout\ & \INTERFACE|Medicao|M1|D1|IC_4|Qout[0]~reg0_q\)) ) ) ) # ( \INTERFACE|Medicao|M1|D1|IC_4|Qout[1]~reg0_q\ & ( !\INTERFACE|Medicao|M1|D1|IC_4|Qout[3]~reg0DUPLICATE_q\ & ( 
-- (\INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\ & !\INTERFACE|Medicao|M1|D1|IC_4|Qout[0]~reg0_q\) ) ) ) # ( !\INTERFACE|Medicao|M1|D1|IC_4|Qout[1]~reg0_q\ & ( !\INTERFACE|Medicao|M1|D1|IC_4|Qout[3]~reg0DUPLICATE_q\ & ( 
-- (\INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\ & \INTERFACE|Medicao|M1|D1|IC_4|Qout[0]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011001100110000000000000000001100000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datac => \INTERFACE|Medicao|M1|D1|ALT_INV_ClrN3~0_combout\,
	datad => \INTERFACE|Medicao|M1|D1|IC_4|ALT_INV_Qout[0]~reg0_q\,
	datae => \INTERFACE|Medicao|M1|D1|IC_4|ALT_INV_Qout[1]~reg0_q\,
	dataf => \INTERFACE|Medicao|M1|D1|IC_4|ALT_INV_Qout[3]~reg0DUPLICATE_q\,
	combout => \INTERFACE|Medicao|M1|D1|IC_4|Qout~1_combout\);

-- Location: LABCELL_X81_Y25_N21
\INTERFACE|Medicao|M1|D1|IC_4|Qout[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|M1|D1|IC_4|Qout[3]~2_combout\ = ( \INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\ & ( (\INTERFACE|Medicao|M1|D1|ClrN3~0_combout\ & (((\INTERFACE|Medicao|M1|D1|IC_4|Qout[0]~reg0_q\ & 
-- \INTERFACE|Medicao|M1|D1|IC_4|Qout[3]~reg0DUPLICATE_q\)) # (\INTERFACE|Medicao|M1|C1|Ereg.CONTA~q\))) ) ) # ( !\INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000011000001110000001100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|Medicao|M1|D1|IC_4|ALT_INV_Qout[0]~reg0_q\,
	datab => \INTERFACE|Medicao|M1|C1|ALT_INV_Ereg.CONTA~q\,
	datac => \INTERFACE|Medicao|M1|D1|ALT_INV_ClrN3~0_combout\,
	datad => \INTERFACE|Medicao|M1|D1|IC_4|ALT_INV_Qout[3]~reg0DUPLICATE_q\,
	dataf => \INTERFACE|Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	combout => \INTERFACE|Medicao|M1|D1|IC_4|Qout[3]~2_combout\);

-- Location: FF_X81_Y25_N4
\INTERFACE|Medicao|M1|D1|IC_4|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|Medicao|M1|D1|IC_4|Qout~1_combout\,
	ena => \INTERFACE|Medicao|M1|D1|IC_4|Qout[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|M1|D1|IC_4|Qout[1]~reg0_q\);

-- Location: LABCELL_X81_Y25_N54
\INTERFACE|Medicao|M1|D1|IC_4|Qout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|M1|D1|IC_4|Qout~3_combout\ = ( \INTERFACE|Medicao|M1|D1|IC_4|Qout[2]~reg0_q\ & ( \INTERFACE|Medicao|M1|D1|IC_4|Qout[1]~reg0_q\ & ( (\INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\ & !\INTERFACE|Medicao|M1|D1|IC_4|Qout[0]~reg0_q\) ) ) ) 
-- # ( !\INTERFACE|Medicao|M1|D1|IC_4|Qout[2]~reg0_q\ & ( \INTERFACE|Medicao|M1|D1|IC_4|Qout[1]~reg0_q\ & ( (\INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\ & (\INTERFACE|Medicao|M1|D1|IC_4|Qout[0]~reg0_q\ & ((!\INTERFACE|Medicao|M1|D1|IC_4|Qout[3]~reg0_q\) 
-- # (!\INTERFACE|Medicao|M1|D1|ClrN3~0_combout\)))) ) ) ) # ( \INTERFACE|Medicao|M1|D1|IC_4|Qout[2]~reg0_q\ & ( !\INTERFACE|Medicao|M1|D1|IC_4|Qout[1]~reg0_q\ & ( (\INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\ & 
-- ((!\INTERFACE|Medicao|M1|D1|IC_4|Qout[3]~reg0_q\) # ((!\INTERFACE|Medicao|M1|D1|IC_4|Qout[0]~reg0_q\) # (!\INTERFACE|Medicao|M1|D1|ClrN3~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001000000011000000100011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|Medicao|M1|D1|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datab => \INTERFACE|Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datac => \INTERFACE|Medicao|M1|D1|IC_4|ALT_INV_Qout[0]~reg0_q\,
	datad => \INTERFACE|Medicao|M1|D1|ALT_INV_ClrN3~0_combout\,
	datae => \INTERFACE|Medicao|M1|D1|IC_4|ALT_INV_Qout[2]~reg0_q\,
	dataf => \INTERFACE|Medicao|M1|D1|IC_4|ALT_INV_Qout[1]~reg0_q\,
	combout => \INTERFACE|Medicao|M1|D1|IC_4|Qout~3_combout\);

-- Location: FF_X81_Y25_N55
\INTERFACE|Medicao|M1|D1|IC_4|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|Medicao|M1|D1|IC_4|Qout~3_combout\,
	ena => \INTERFACE|Medicao|M1|D1|IC_4|Qout[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|M1|D1|IC_4|Qout[2]~reg0_q\);

-- Location: LABCELL_X81_Y25_N18
\INTERFACE|Medicao|M1|D1|IC_4|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|M1|D1|IC_4|Add0~0_combout\ = ( \INTERFACE|Medicao|M1|D1|IC_4|Qout[1]~reg0_q\ & ( (\INTERFACE|Medicao|M1|D1|IC_4|Qout[0]~reg0_q\ & \INTERFACE|Medicao|M1|D1|IC_4|Qout[2]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|Medicao|M1|D1|IC_4|ALT_INV_Qout[0]~reg0_q\,
	datad => \INTERFACE|Medicao|M1|D1|IC_4|ALT_INV_Qout[2]~reg0_q\,
	dataf => \INTERFACE|Medicao|M1|D1|IC_4|ALT_INV_Qout[1]~reg0_q\,
	combout => \INTERFACE|Medicao|M1|D1|IC_4|Add0~0_combout\);

-- Location: LABCELL_X81_Y25_N36
\INTERFACE|Medicao|M1|D1|IC_4|Qout[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|M1|D1|IC_4|Qout[3]~4_combout\ = ( \INTERFACE|Medicao|M1|D1|IC_4|Qout[3]~reg0_q\ & ( \INTERFACE|Medicao|M1|D1|ClrN3~0_combout\ & ( (\INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\ & (!\INTERFACE|Medicao|M1|D1|IC_4|Qout[0]~reg0_q\ & 
-- ((!\INTERFACE|Medicao|M1|C1|Ereg.CONTA~q\) # (!\INTERFACE|Medicao|M1|D1|IC_4|Add0~0_combout\)))) ) ) ) # ( !\INTERFACE|Medicao|M1|D1|IC_4|Qout[3]~reg0_q\ & ( \INTERFACE|Medicao|M1|D1|ClrN3~0_combout\ & ( (\INTERFACE|Medicao|M1|C1|Ereg.CONTA~q\ & 
-- (\INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\ & \INTERFACE|Medicao|M1|D1|IC_4|Add0~0_combout\)) ) ) ) # ( \INTERFACE|Medicao|M1|D1|IC_4|Qout[3]~reg0_q\ & ( !\INTERFACE|Medicao|M1|D1|ClrN3~0_combout\ & ( \INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\ ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000100010011000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|Medicao|M1|C1|ALT_INV_Ereg.CONTA~q\,
	datab => \INTERFACE|Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datac => \INTERFACE|Medicao|M1|D1|IC_4|ALT_INV_Qout[0]~reg0_q\,
	datad => \INTERFACE|Medicao|M1|D1|IC_4|ALT_INV_Add0~0_combout\,
	datae => \INTERFACE|Medicao|M1|D1|IC_4|ALT_INV_Qout[3]~reg0_q\,
	dataf => \INTERFACE|Medicao|M1|D1|ALT_INV_ClrN3~0_combout\,
	combout => \INTERFACE|Medicao|M1|D1|IC_4|Qout[3]~4_combout\);

-- Location: FF_X81_Y25_N37
\INTERFACE|Medicao|M1|D1|IC_4|Qout[3]~reg0DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|Medicao|M1|D1|IC_4|Qout[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|M1|D1|IC_4|Qout[3]~reg0DUPLICATE_q\);

-- Location: LABCELL_X81_Y25_N51
\INTERFACE|Medicao|M1|D1|IC_4|Qout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|M1|D1|IC_4|Qout[0]~0_combout\ = ( \INTERFACE|Medicao|M1|D1|IC_4|Qout[3]~reg0DUPLICATE_q\ & ( (\INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\ & ((!\INTERFACE|Medicao|M1|D1|ClrN3~0_combout\ & 
-- ((\INTERFACE|Medicao|M1|D1|IC_4|Qout[0]~reg0_q\))) # (\INTERFACE|Medicao|M1|D1|ClrN3~0_combout\ & (\INTERFACE|Medicao|M1|C1|Ereg.CONTA~q\ & !\INTERFACE|Medicao|M1|D1|IC_4|Qout[0]~reg0_q\)))) ) ) # ( !\INTERFACE|Medicao|M1|D1|IC_4|Qout[3]~reg0DUPLICATE_q\ 
-- & ( (\INTERFACE|Medicao|M1|C1|Eprox.CONTA~0_combout\ & (!\INTERFACE|Medicao|M1|D1|IC_4|Qout[0]~reg0_q\ $ (((!\INTERFACE|Medicao|M1|C1|Ereg.CONTA~q\) # (!\INTERFACE|Medicao|M1|D1|ClrN3~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110010000000010011001000000001001100000000000100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|Medicao|M1|C1|ALT_INV_Ereg.CONTA~q\,
	datab => \INTERFACE|Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datac => \INTERFACE|Medicao|M1|D1|ALT_INV_ClrN3~0_combout\,
	datad => \INTERFACE|Medicao|M1|D1|IC_4|ALT_INV_Qout[0]~reg0_q\,
	dataf => \INTERFACE|Medicao|M1|D1|IC_4|ALT_INV_Qout[3]~reg0DUPLICATE_q\,
	combout => \INTERFACE|Medicao|M1|D1|IC_4|Qout[0]~0_combout\);

-- Location: FF_X81_Y25_N53
\INTERFACE|Medicao|M1|D1|IC_4|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|Medicao|M1|D1|IC_4|Qout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|M1|D1|IC_4|Qout[0]~reg0_q\);

-- Location: LABCELL_X85_Y24_N54
\INTERFACE|Medicao|R1|IQ[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|R1|IQ[12]~feeder_combout\ = ( \INTERFACE|Medicao|M1|D1|IC_4|Qout[0]~reg0_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \INTERFACE|Medicao|M1|D1|IC_4|ALT_INV_Qout[0]~reg0_q\,
	combout => \INTERFACE|Medicao|R1|IQ[12]~feeder_combout\);

-- Location: FF_X85_Y24_N56
\INTERFACE|Medicao|R1|IQ[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|Medicao|R1|IQ[12]~feeder_combout\,
	ena => \INTERFACE|Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|R1|IQ\(12));

-- Location: FF_X85_Y24_N59
\INTERFACE|Medicao|R1|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|Medicao|R1|IQ\(12),
	sload => VCC,
	ena => \INTERFACE|Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|R1|Q\(12));

-- Location: LABCELL_X85_Y24_N39
\INTERFACE|R|IQ~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|R|IQ~7_combout\ = ( \INTERFACE|s_demorou~0_combout\ & ( \INTERFACE|C|WideNor2~0_combout\ & ( ((\INTERFACE|s_demorou~1_combout\ & (\INTERFACE|s_demorou~2_combout\ & \INTERFACE|ContaDemora|ClrN3~0_combout\))) # (\INTERFACE|Medicao|R1|Q\(12)) ) ) 
-- ) # ( !\INTERFACE|s_demorou~0_combout\ & ( \INTERFACE|C|WideNor2~0_combout\ & ( \INTERFACE|Medicao|R1|Q\(12) ) ) ) # ( \INTERFACE|s_demorou~0_combout\ & ( !\INTERFACE|C|WideNor2~0_combout\ ) ) # ( !\INTERFACE|s_demorou~0_combout\ & ( 
-- !\INTERFACE|C|WideNor2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|ALT_INV_s_demorou~1_combout\,
	datab => \INTERFACE|ALT_INV_s_demorou~2_combout\,
	datac => \INTERFACE|Medicao|R1|ALT_INV_Q\(12),
	datad => \INTERFACE|ContaDemora|ALT_INV_ClrN3~0_combout\,
	datae => \INTERFACE|ALT_INV_s_demorou~0_combout\,
	dataf => \INTERFACE|C|ALT_INV_WideNor2~0_combout\,
	combout => \INTERFACE|R|IQ~7_combout\);

-- Location: FF_X85_Y24_N40
\INTERFACE|R|IQ[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|R|IQ~7_combout\,
	ena => \INTERFACE|R|IQ[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|R|IQ\(12));

-- Location: MLABCELL_X84_Y25_N30
\INTERFACE|R|Q[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|R|Q[12]~feeder_combout\ = ( \INTERFACE|R|IQ\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \INTERFACE|R|ALT_INV_IQ\(12),
	combout => \INTERFACE|R|Q[12]~feeder_combout\);

-- Location: FF_X84_Y25_N32
\INTERFACE|R|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|R|Q[12]~feeder_combout\,
	ena => \INTERFACE|R|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|R|Q\(12));

-- Location: FF_X80_Y24_N2
\INTERFACE|Medicao|R1|IQ[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|Medicao|M1|D1|IC_4|Qout[1]~reg0_q\,
	sload => VCC,
	ena => \INTERFACE|Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|R1|IQ\(13));

-- Location: MLABCELL_X84_Y24_N6
\INTERFACE|Medicao|R1|Q[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|R1|Q[13]~feeder_combout\ = ( \INTERFACE|Medicao|R1|IQ\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \INTERFACE|Medicao|R1|ALT_INV_IQ\(13),
	combout => \INTERFACE|Medicao|R1|Q[13]~feeder_combout\);

-- Location: FF_X84_Y24_N8
\INTERFACE|Medicao|R1|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|Medicao|R1|Q[13]~feeder_combout\,
	ena => \INTERFACE|Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|R1|Q\(13));

-- Location: MLABCELL_X84_Y24_N42
\INTERFACE|R|IQ[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|R|IQ[13]~feeder_combout\ = \INTERFACE|Medicao|R1|Q\(13)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \INTERFACE|Medicao|R1|ALT_INV_Q\(13),
	combout => \INTERFACE|R|IQ[13]~feeder_combout\);

-- Location: FF_X84_Y24_N43
\INTERFACE|R|IQ[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|R|IQ[13]~feeder_combout\,
	sclr => \INTERFACE|comb~1_combout\,
	ena => \INTERFACE|R|IQ[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|R|IQ\(13));

-- Location: FF_X84_Y25_N25
\INTERFACE|R|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|R|IQ\(13),
	sload => VCC,
	ena => \INTERFACE|R|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|R|Q\(13));

-- Location: FF_X85_Y24_N8
\INTERFACE|Medicao|R1|IQ[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|Medicao|M1|D1|IC_4|Qout[2]~reg0_q\,
	sload => VCC,
	ena => \INTERFACE|Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|R1|IQ\(14));

-- Location: FF_X85_Y24_N1
\INTERFACE|Medicao|R1|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|Medicao|R1|IQ\(14),
	sload => VCC,
	ena => \INTERFACE|Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|R1|Q\(14));

-- Location: FF_X84_Y24_N47
\INTERFACE|R|IQ[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|Medicao|R1|Q\(14),
	sclr => \INTERFACE|comb~1_combout\,
	sload => VCC,
	ena => \INTERFACE|R|IQ[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|R|IQ\(14));

-- Location: MLABCELL_X84_Y25_N18
\INTERFACE|R|Q[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|R|Q[14]~feeder_combout\ = ( \INTERFACE|R|IQ\(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \INTERFACE|R|ALT_INV_IQ\(14),
	combout => \INTERFACE|R|Q[14]~feeder_combout\);

-- Location: FF_X84_Y25_N19
\INTERFACE|R|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|R|Q[14]~feeder_combout\,
	ena => \INTERFACE|R|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|R|Q\(14));

-- Location: LABCELL_X85_Y24_N45
\INTERFACE|Medicao|R1|IQ[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|Medicao|R1|IQ[15]~feeder_combout\ = ( \INTERFACE|Medicao|M1|D1|IC_4|Qout[3]~reg0DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \INTERFACE|Medicao|M1|D1|IC_4|ALT_INV_Qout[3]~reg0DUPLICATE_q\,
	combout => \INTERFACE|Medicao|R1|IQ[15]~feeder_combout\);

-- Location: FF_X85_Y24_N47
\INTERFACE|Medicao|R1|IQ[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|Medicao|R1|IQ[15]~feeder_combout\,
	ena => \INTERFACE|Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|R1|IQ\(15));

-- Location: FF_X85_Y24_N43
\INTERFACE|Medicao|R1|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|Medicao|R1|IQ\(15),
	sload => VCC,
	ena => \INTERFACE|Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|Medicao|R1|Q\(15));

-- Location: MLABCELL_X84_Y24_N3
\INTERFACE|R|IQ~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \INTERFACE|R|IQ~8_combout\ = ( \INTERFACE|s_demorou~2_combout\ & ( \INTERFACE|Medicao|R1|Q\(15) ) ) # ( !\INTERFACE|s_demorou~2_combout\ & ( \INTERFACE|Medicao|R1|Q\(15) ) ) # ( \INTERFACE|s_demorou~2_combout\ & ( !\INTERFACE|Medicao|R1|Q\(15) & ( 
-- (!\INTERFACE|C|WideNor2~0_combout\) # ((\INTERFACE|ContaDemora|ClrN3~0_combout\ & (\INTERFACE|s_demorou~1_combout\ & \INTERFACE|s_demorou~0_combout\))) ) ) ) # ( !\INTERFACE|s_demorou~2_combout\ & ( !\INTERFACE|Medicao|R1|Q\(15) & ( 
-- !\INTERFACE|C|WideNor2~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INTERFACE|ContaDemora|ALT_INV_ClrN3~0_combout\,
	datab => \INTERFACE|C|ALT_INV_WideNor2~0_combout\,
	datac => \INTERFACE|ALT_INV_s_demorou~1_combout\,
	datad => \INTERFACE|ALT_INV_s_demorou~0_combout\,
	datae => \INTERFACE|ALT_INV_s_demorou~2_combout\,
	dataf => \INTERFACE|Medicao|R1|ALT_INV_Q\(15),
	combout => \INTERFACE|R|IQ~8_combout\);

-- Location: FF_X84_Y24_N4
\INTERFACE|R|IQ[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \INTERFACE|R|IQ~8_combout\,
	ena => \INTERFACE|R|IQ[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|R|IQ\(15));

-- Location: FF_X84_Y25_N11
\INTERFACE|R|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \INTERFACE|R|IQ\(15),
	sload => VCC,
	ena => \INTERFACE|R|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INTERFACE|R|Q\(15));

-- Location: IOIBUF_X60_Y81_N52
\selectDisplay[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selectDisplay(0),
	o => \selectDisplay[0]~input_o\);

-- Location: IOIBUF_X56_Y0_N35
\selectDisplay[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selectDisplay(1),
	o => \selectDisplay[1]~input_o\);

-- Location: IOIBUF_X82_Y81_N58
\selectDisplay[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selectDisplay(2),
	o => \selectDisplay[2]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\selectDisplay[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selectDisplay(3),
	o => \selectDisplay[3]~input_o\);

-- Location: LABCELL_X81_Y39_N3
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


