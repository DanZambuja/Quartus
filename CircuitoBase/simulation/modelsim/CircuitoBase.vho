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

-- DATE "04/06/2017 05:27:30"

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

ENTITY 	Atrasador IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	contaAtraso : IN std_logic;
	sinalAtraso : OUT std_logic;
	depTT1 : OUT std_logic;
	depTT2 : OUT std_logic;
	depConta : OUT std_logic;
	depT : OUT std_logic_vector(3 DOWNTO 0);
	estado : OUT std_logic_vector(3 DOWNTO 0);
	tempoAtraso : OUT std_logic_vector(15 DOWNTO 0);
	tempoUsado : OUT std_logic_vector(15 DOWNTO 0);
	tempoCicladobit : OUT std_logic_vector(15 DOWNTO 0);
	tempoCicladoBCD : OUT std_logic_vector(15 DOWNTO 0);
	tempoContadorAtraso : OUT std_logic_vector(15 DOWNTO 0)
	);
END Atrasador;

-- Design Ports Information
-- sinalAtraso	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- depTT1	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- depTT2	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- depConta	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- depT[0]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- depT[1]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- depT[2]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- depT[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[0]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[1]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[2]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[3]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoAtraso[0]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoAtraso[1]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoAtraso[2]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoAtraso[3]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoAtraso[4]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoAtraso[5]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoAtraso[6]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoAtraso[7]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoAtraso[8]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoAtraso[9]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoAtraso[10]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoAtraso[11]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoAtraso[12]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoAtraso[13]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoAtraso[14]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoAtraso[15]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoUsado[0]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoUsado[1]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoUsado[2]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoUsado[3]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoUsado[4]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoUsado[5]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoUsado[6]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoUsado[7]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoUsado[8]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoUsado[9]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoUsado[10]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoUsado[11]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoUsado[12]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoUsado[13]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoUsado[14]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoUsado[15]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoCicladobit[0]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoCicladobit[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoCicladobit[2]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoCicladobit[3]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoCicladobit[4]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoCicladobit[5]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoCicladobit[6]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoCicladobit[7]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoCicladobit[8]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoCicladobit[9]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoCicladobit[10]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoCicladobit[11]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoCicladobit[12]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoCicladobit[13]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoCicladobit[14]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoCicladobit[15]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoCicladoBCD[0]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoCicladoBCD[1]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoCicladoBCD[2]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoCicladoBCD[3]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoCicladoBCD[4]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoCicladoBCD[5]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoCicladoBCD[6]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoCicladoBCD[7]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoCicladoBCD[8]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoCicladoBCD[9]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoCicladoBCD[10]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoCicladoBCD[11]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoCicladoBCD[12]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoCicladoBCD[13]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoCicladoBCD[14]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoCicladoBCD[15]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoContadorAtraso[0]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoContadorAtraso[1]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoContadorAtraso[2]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoContadorAtraso[3]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoContadorAtraso[4]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoContadorAtraso[5]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoContadorAtraso[6]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoContadorAtraso[7]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoContadorAtraso[8]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoContadorAtraso[9]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoContadorAtraso[10]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoContadorAtraso[11]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoContadorAtraso[12]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoContadorAtraso[13]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoContadorAtraso[14]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tempoContadorAtraso[15]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- contaAtraso	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Atrasador IS
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
SIGNAL ww_contaAtraso : std_logic;
SIGNAL ww_sinalAtraso : std_logic;
SIGNAL ww_depTT1 : std_logic;
SIGNAL ww_depTT2 : std_logic;
SIGNAL ww_depConta : std_logic;
SIGNAL ww_depT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_estado : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_tempoAtraso : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_tempoUsado : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_tempoCicladobit : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_tempoCicladoBCD : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_tempoContadorAtraso : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \C|Eatual.Fim~q\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \Converte|bcds[13]~DUPLICATE_q\ : std_logic;
SIGNAL \Converte|Selector35~0_combout\ : std_logic;
SIGNAL \Converte|Selector34~0_combout\ : std_logic;
SIGNAL \Converte|shift_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Converte|Selector33~0_combout\ : std_logic;
SIGNAL \Converte|Selector32~0_combout\ : std_logic;
SIGNAL \Converte|state_next.done~0_combout\ : std_logic;
SIGNAL \Converte|state.done~q\ : std_logic;
SIGNAL \Converte|state.start~0_combout\ : std_logic;
SIGNAL \Converte|state.start~q\ : std_logic;
SIGNAL \Converte|Selector1~1_combout\ : std_logic;
SIGNAL \Converte|state.shift~q\ : std_logic;
SIGNAL \Converte|shift_counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Converte|Selector1~0_combout\ : std_logic;
SIGNAL \Converte|binary_next~0_combout\ : std_logic;
SIGNAL \contaAtraso~input_o\ : std_logic;
SIGNAL \C|Selector0~0_combout\ : std_logic;
SIGNAL \C|Eatual.Inicial~q\ : std_logic;
SIGNAL \geraSeed|IC_1|Qout[0]~0_combout\ : std_logic;
SIGNAL \geraSeed|IC_1|Qout[0]~reg0_q\ : std_logic;
SIGNAL \geraSeed|IC_1|Qout~1_combout\ : std_logic;
SIGNAL \geraSeed|IC_1|Qout[0]~2_combout\ : std_logic;
SIGNAL \geraSeed|IC_1|Qout[1]~reg0_q\ : std_logic;
SIGNAL \geraSeed|IC_1|Qout~3_combout\ : std_logic;
SIGNAL \geraSeed|IC_1|Qout[2]~reg0_q\ : std_logic;
SIGNAL \geraSeed|IC_1|Qout[3]~4_combout\ : std_logic;
SIGNAL \geraSeed|IC_1|Qout[3]~reg0_q\ : std_logic;
SIGNAL \geraSeed|IC_2|Qout[3]~0_combout\ : std_logic;
SIGNAL \geraSeed|IC_2|Qout[0]~1_combout\ : std_logic;
SIGNAL \geraSeed|IC_2|Qout[0]~reg0_q\ : std_logic;
SIGNAL \geraSeed|IC_2|Qout~2_combout\ : std_logic;
SIGNAL \geraSeed|IC_2|Qout[1]~3_combout\ : std_logic;
SIGNAL \geraSeed|IC_2|Qout[1]~reg0_q\ : std_logic;
SIGNAL \geraSeed|IC_2|Qout~4_combout\ : std_logic;
SIGNAL \geraSeed|IC_2|Qout[2]~reg0_q\ : std_logic;
SIGNAL \geraSeed|IC_2|Add0~0_combout\ : std_logic;
SIGNAL \geraSeed|IC_2|Qout[3]~5_combout\ : std_logic;
SIGNAL \geraSeed|IC_2|Qout[3]~reg0_q\ : std_logic;
SIGNAL \geraSeed|ClrN2~0_combout\ : std_logic;
SIGNAL \geraSeed|IC_3|Qout[0]~0_combout\ : std_logic;
SIGNAL \geraSeed|IC_3|Qout[0]~reg0_q\ : std_logic;
SIGNAL \geraSeed|ClrN3~0_combout\ : std_logic;
SIGNAL \geraSeed|IC_3|Qout~1_combout\ : std_logic;
SIGNAL \geraSeed|IC_3|Qout[0]~2_combout\ : std_logic;
SIGNAL \geraSeed|IC_3|Qout[1]~reg0_q\ : std_logic;
SIGNAL \geraSeed|IC_3|Qout~3_combout\ : std_logic;
SIGNAL \geraSeed|IC_3|Qout[2]~reg0_q\ : std_logic;
SIGNAL \geraSeed|IC_3|Add0~0_combout\ : std_logic;
SIGNAL \geraSeed|IC_3|Qout[3]~4_combout\ : std_logic;
SIGNAL \geraSeed|IC_3|Qout[3]~reg0_q\ : std_logic;
SIGNAL \C|Eprox.RegistraSeed1~0_combout\ : std_logic;
SIGNAL \C|Eatual.RegistraSeed1~q\ : std_logic;
SIGNAL \C|Eatual.RegistraSeed2~q\ : std_logic;
SIGNAL \Registrador|process_0~0_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[11]~45_combout\ : std_logic;
SIGNAL \Registrador|IQ[10]~feeder_combout\ : std_logic;
SIGNAL \Registrador|Q[10]~feeder_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[9]~37_combout\ : std_logic;
SIGNAL \Registrador|Q[8]~feeder_combout\ : std_logic;
SIGNAL \Registrador|IQ[7]~feeder_combout\ : std_logic;
SIGNAL \Registrador|IQ[5]~feeder_combout\ : std_logic;
SIGNAL \Registrador|Q[5]~feeder_combout\ : std_logic;
SIGNAL \Registrador|IQ[3]~feeder_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[3]~13_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[1]~5_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[1]~7_combout\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_1|Qout~1_combout\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_1|Qout[3]~2_combout\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_1|Qout[1]~reg0_q\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_1|Qout~3_combout\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_1|Qout[2]~reg0_q\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_1|Qout[3]~4_combout\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_1|Qout[0]~0_combout\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_2|process_0~0_combout\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_2|Qout[0]~1_combout\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_2|Qout~2_combout\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_2|Qout[2]~3_combout\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_2|Qout[1]~reg0_q\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_2|Qout~4_combout\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_2|Qout[2]~reg0_q\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_2|Add0~0_combout\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_2|Qout[3]~5_combout\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_2|Qout[3]~reg0_q\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_2|Qout[2]~0_combout\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_3|Qout[0]~1_combout\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_3|Qout~2_combout\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_3|Qout[0]~3_combout\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_3|Qout[1]~reg0_q\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_3|Qout~4_combout\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_3|Qout[2]~reg0_q\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_3|Add0~0_combout\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_3|Qout[3]~0_combout\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_3|Qout[3]~reg0_q\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|ClrN3~0_combout\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_4|Qout[0]~0_combout\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_4|Qout~1_combout\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_4|Qout[2]~2_combout\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_4|Qout[1]~reg0_q\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_4|Qout~3_combout\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_4|Qout[2]~reg0_q\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_4|Add0~0_combout\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_4|Qout[3]~4_combout\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\ : std_logic;
SIGNAL \ciclagensLFSR|S~0_combout\ : std_logic;
SIGNAL \ciclagensLFSR|S~1_combout\ : std_logic;
SIGNAL \ciclagensLFSR|S~2_combout\ : std_logic;
SIGNAL \C|Selector1~0_combout\ : std_logic;
SIGNAL \C|Eatual.Cicla~q\ : std_logic;
SIGNAL \PSEUDORANDOM|count[1]~_emulated_q\ : std_logic;
SIGNAL \PSEUDORANDOM|count[1]~6_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[2]~9_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[2]~11_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[2]~_emulated_q\ : std_logic;
SIGNAL \PSEUDORANDOM|count[2]~10_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[3]~15_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[3]~_emulated_q\ : std_logic;
SIGNAL \PSEUDORANDOM|count[3]~14_combout\ : std_logic;
SIGNAL \Registrador|IQ[4]~feeder_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[4]~17_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[4]~19_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[4]~_emulated_q\ : std_logic;
SIGNAL \PSEUDORANDOM|count[4]~18_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[5]~21_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[5]~23_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[5]~_emulated_q\ : std_logic;
SIGNAL \PSEUDORANDOM|count[5]~22_combout\ : std_logic;
SIGNAL \Registrador|IQ[6]~feeder_combout\ : std_logic;
SIGNAL \Registrador|Q[6]~feeder_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[6]~25_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[6]~27_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[6]~_emulated_q\ : std_logic;
SIGNAL \PSEUDORANDOM|count[6]~26_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[7]~29_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[7]~31_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[7]~_emulated_q\ : std_logic;
SIGNAL \PSEUDORANDOM|count[7]~30_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[8]~33_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[8]~35_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[8]~_emulated_q\ : std_logic;
SIGNAL \PSEUDORANDOM|count[8]~34_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[9]~39_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[9]~_emulated_q\ : std_logic;
SIGNAL \PSEUDORANDOM|count[9]~38_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[10]~41_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[10]~43_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[10]~_emulated_q\ : std_logic;
SIGNAL \PSEUDORANDOM|count[10]~42_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[11]~47_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[11]~_emulated_q\ : std_logic;
SIGNAL \PSEUDORANDOM|count[11]~46_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[0]~1_combout\ : std_logic;
SIGNAL \geraSeed|IC_4|Qout[0]~0_combout\ : std_logic;
SIGNAL \geraSeed|IC_4|Qout[0]~reg0_q\ : std_logic;
SIGNAL \geraSeed|IC_4|Qout~1_combout\ : std_logic;
SIGNAL \geraSeed|IC_4|Qout[3]~2_combout\ : std_logic;
SIGNAL \geraSeed|IC_4|Qout[1]~reg0_q\ : std_logic;
SIGNAL \geraSeed|IC_4|Qout~3_combout\ : std_logic;
SIGNAL \geraSeed|IC_4|Qout[2]~reg0_q\ : std_logic;
SIGNAL \geraSeed|IC_4|Add0~0_combout\ : std_logic;
SIGNAL \geraSeed|IC_4|Qout[3]~4_combout\ : std_logic;
SIGNAL \geraSeed|IC_4|Qout[3]~reg0_q\ : std_logic;
SIGNAL \Registrador|IQ[15]~feeder_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[15]~61_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[14]~57_combout\ : std_logic;
SIGNAL \Registrador|Q[12]~feeder_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[12]~49_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[12]~51_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[12]~_emulated_q\ : std_logic;
SIGNAL \PSEUDORANDOM|count[12]~50_combout\ : std_logic;
SIGNAL \Registrador|Q[13]~feeder_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[13]~53_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[13]~55_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[13]~_emulated_q\ : std_logic;
SIGNAL \PSEUDORANDOM|count[13]~54_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[14]~59_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[14]~_emulated_q\ : std_logic;
SIGNAL \PSEUDORANDOM|count[14]~58_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[15]~63_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[15]~_emulated_q\ : std_logic;
SIGNAL \PSEUDORANDOM|count[15]~62_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[0]~3_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|count[0]~_emulated_q\ : std_logic;
SIGNAL \PSEUDORANDOM|count[0]~2_combout\ : std_logic;
SIGNAL \Converte|binary[1]~feeder_combout\ : std_logic;
SIGNAL \Converte|binary[2]~0_combout\ : std_logic;
SIGNAL \Converte|binary[2]~feeder_combout\ : std_logic;
SIGNAL \Converte|binary[3]~feeder_combout\ : std_logic;
SIGNAL \Converte|binary[4]~feeder_combout\ : std_logic;
SIGNAL \Converte|binary[5]~feeder_combout\ : std_logic;
SIGNAL \Converte|binary[6]~feeder_combout\ : std_logic;
SIGNAL \Converte|binary[7]~feeder_combout\ : std_logic;
SIGNAL \Converte|binary[8]~feeder_combout\ : std_logic;
SIGNAL \Converte|binary[9]~feeder_combout\ : std_logic;
SIGNAL \Converte|binary[10]~feeder_combout\ : std_logic;
SIGNAL \Converte|binary[11]~feeder_combout\ : std_logic;
SIGNAL \Converte|binary[12]~feeder_combout\ : std_logic;
SIGNAL \Converte|binary[13]~feeder_combout\ : std_logic;
SIGNAL \Converte|Selector31~0_combout\ : std_logic;
SIGNAL \Converte|bcds[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Converte|bcds[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Converte|Selector28~0_combout\ : std_logic;
SIGNAL \Converte|Selector29~0_combout\ : std_logic;
SIGNAL \Converte|Selector30~0_combout\ : std_logic;
SIGNAL \Converte|Add4~0_combout\ : std_logic;
SIGNAL \Converte|Selector27~0_combout\ : std_logic;
SIGNAL \Converte|Add3~0_combout\ : std_logic;
SIGNAL \Converte|Selector24~0_combout\ : std_logic;
SIGNAL \Converte|Selector26~0_combout\ : std_logic;
SIGNAL \Converte|bcds[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Converte|Selector25~0_combout\ : std_logic;
SIGNAL \Converte|bcds[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Converte|Selector23~0_combout\ : std_logic;
SIGNAL \Converte|Add2~0_combout\ : std_logic;
SIGNAL \Converte|Selector20~0_combout\ : std_logic;
SIGNAL \Converte|Selector22~0_combout\ : std_logic;
SIGNAL \Converte|Selector21~0_combout\ : std_logic;
SIGNAL \Converte|bcds[11]~DUPLICATE_q\ : std_logic;
SIGNAL \Converte|Selector19~0_combout\ : std_logic;
SIGNAL \Converte|bcds[12]~DUPLICATE_q\ : std_logic;
SIGNAL \Converte|LessThan0~0_combout\ : std_logic;
SIGNAL \Converte|Selector16~0_combout\ : std_logic;
SIGNAL \Converte|Selector18~0_combout\ : std_logic;
SIGNAL \Converte|Selector17~0_combout\ : std_logic;
SIGNAL \Converte|bcds[14]~DUPLICATE_q\ : std_logic;
SIGNAL \Converte|bcds[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ContadordoAtraso|IC_1|Qout~2_combout\ : std_logic;
SIGNAL \ContadordoAtraso|IC_1|Qout[3]~3_combout\ : std_logic;
SIGNAL \ContadordoAtraso|IC_1|Qout[1]~reg0_q\ : std_logic;
SIGNAL \ContadordoAtraso|IC_1|Qout[3]~0_combout\ : std_logic;
SIGNAL \ContadordoAtraso|IC_1|Qout[3]~reg0_q\ : std_logic;
SIGNAL \ContadordoAtraso|IC_2|Qout[3]~0_combout\ : std_logic;
SIGNAL \ContadordoAtraso|ClrN2~0_combout\ : std_logic;
SIGNAL \ContadordoAtraso|IC_2|Qout[0]~2_combout\ : std_logic;
SIGNAL \ContadordoAtraso|IC_2|Qout[0]~reg0_q\ : std_logic;
SIGNAL \ContadordoAtraso|IC_2|Qout~3_combout\ : std_logic;
SIGNAL \ContadordoAtraso|IC_2|Qout[0]~4_combout\ : std_logic;
SIGNAL \ContadordoAtraso|IC_2|Qout[1]~reg0_q\ : std_logic;
SIGNAL \ContadordoAtraso|IC_2|Qout~5_combout\ : std_logic;
SIGNAL \ContadordoAtraso|IC_2|Qout[2]~reg0_q\ : std_logic;
SIGNAL \ContadordoAtraso|IC_2|Add0~0_combout\ : std_logic;
SIGNAL \ContadordoAtraso|IC_2|Qout[3]~1_combout\ : std_logic;
SIGNAL \ContadordoAtraso|IC_2|Qout[3]~reg0_q\ : std_logic;
SIGNAL \ContadordoAtraso|IC_3|Qout~2_combout\ : std_logic;
SIGNAL \ContadordoAtraso|IC_3|Qout[3]~3_combout\ : std_logic;
SIGNAL \ContadordoAtraso|IC_3|Qout[1]~reg0_q\ : std_logic;
SIGNAL \ContadordoAtraso|IC_3|Add0~0_combout\ : std_logic;
SIGNAL \ContadordoAtraso|IC_3|Qout[3]~0_combout\ : std_logic;
SIGNAL \ContadordoAtraso|IC_3|Qout[3]~reg0_q\ : std_logic;
SIGNAL \ContadordoAtraso|IC_3|Qout[0]~1_combout\ : std_logic;
SIGNAL \ContadordoAtraso|IC_3|Qout[0]~reg0_q\ : std_logic;
SIGNAL \ContadordoAtraso|ClrN3~0_combout\ : std_logic;
SIGNAL \ContadordoAtraso|IC_3|Qout~4_combout\ : std_logic;
SIGNAL \ContadordoAtraso|IC_3|Qout[2]~reg0_q\ : std_logic;
SIGNAL \C3|Equal0~0_combout\ : std_logic;
SIGNAL \ContadordoAtraso|IC_4|Qout[0]~1_combout\ : std_logic;
SIGNAL \ContadordoAtraso|IC_4|Qout[0]~reg0_q\ : std_logic;
SIGNAL \ContadordoAtraso|IC_4|Qout~2_combout\ : std_logic;
SIGNAL \ContadordoAtraso|IC_4|Qout[0]~3_combout\ : std_logic;
SIGNAL \ContadordoAtraso|IC_4|Qout[1]~reg0_q\ : std_logic;
SIGNAL \ContadordoAtraso|IC_4|Qout~4_combout\ : std_logic;
SIGNAL \ContadordoAtraso|IC_4|Qout[2]~reg0_q\ : std_logic;
SIGNAL \ContadordoAtraso|IC_4|Add0~0_combout\ : std_logic;
SIGNAL \ContadordoAtraso|IC_4|Qout[3]~0_combout\ : std_logic;
SIGNAL \ContadordoAtraso|IC_4|Qout[3]~reg0_q\ : std_logic;
SIGNAL \Converte|bcds_out_reg[0]~DUPLICATE_q\ : std_logic;
SIGNAL \C4|Equal0~0_combout\ : std_logic;
SIGNAL \Converte|bcds[7]~DUPLICATE_q\ : std_logic;
SIGNAL \TT2~0_combout\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_1|Qout~1_combout\ : std_logic;
SIGNAL \ciclagensLFSR|S~combout\ : std_logic;
SIGNAL \C|Eatual.Conversao~q\ : std_logic;
SIGNAL \C|Selector2~0_combout\ : std_logic;
SIGNAL \C|Eatual.Conversao~DUPLICATE_q\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_1|Qout[0]~2_combout\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_1|Qout[1]~reg0_q\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_1|Qout~3_combout\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_1|Qout[2]~reg0_q\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_1|Qout[3]~4_combout\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_1|Qout[0]~0_combout\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_2|process_0~0_combout\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_2|Qout[0]~3_combout\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_2|Qout[0]~reg0_q\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_2|Qout~1_combout\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_2|Qout[0]~2_combout\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_2|Qout[1]~reg0_q\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_2|Qout~4_combout\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_2|Qout[2]~reg0_q\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_2|Add0~0_combout\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_2|Qout[3]~5_combout\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_2|Qout[3]~reg0_q\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_3|Qout[0]~1_combout\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_3|Qout[0]~reg0_q\ : std_logic;
SIGNAL \ContadordeConversao|Contador|ClrN3~0_combout\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_3|Qout~2_combout\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_3|Qout[0]~3_combout\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_3|Qout[1]~reg0_q\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_3|Qout~4_combout\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_3|Qout[2]~reg0_q\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_3|Add0~0_combout\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_3|Qout[3]~0_combout\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_3|Qout[3]~reg0_q\ : std_logic;
SIGNAL \ContadordeConversao|S~1_combout\ : std_logic;
SIGNAL \ContadordeConversao|S~2_combout\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_4|Qout[0]~0_combout\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_4|Qout~3_combout\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_4|Qout[3]~2_combout\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_4|Qout[2]~reg0_q\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_4|Add0~0_combout\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_4|Qout[3]~4_combout\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_4|Qout[3]~reg0_q\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_4|Qout~1_combout\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_4|Qout[1]~reg0_q\ : std_logic;
SIGNAL \ContadordeConversao|S~0_combout\ : std_logic;
SIGNAL \ContadordeConversao|S~combout\ : std_logic;
SIGNAL \C|Selector3~0_combout\ : std_logic;
SIGNAL \C|Eatual.Contando~q\ : std_logic;
SIGNAL \ContadordoAtraso|IC_1|Qout[0]~1_combout\ : std_logic;
SIGNAL \ContadordoAtraso|IC_1|Qout[0]~reg0_q\ : std_logic;
SIGNAL \ContadordoAtraso|IC_1|Qout~4_combout\ : std_logic;
SIGNAL \ContadordoAtraso|IC_1|Qout[2]~reg0_q\ : std_logic;
SIGNAL \C1|Equal0~0_combout\ : std_logic;
SIGNAL \Converte|bcds_out_reg[8]~DUPLICATE_q\ : std_logic;
SIGNAL \C2|Equal0~0_combout\ : std_logic;
SIGNAL \TT1~0_combout\ : std_logic;
SIGNAL \s_sinalAtraso~combout\ : std_logic;
SIGNAL \Converte|bcds_out_reg[15]~DUPLICATE_q\ : std_logic;
SIGNAL \C1|Equal0~1_combout\ : std_logic;
SIGNAL \C2|Equal0~1_combout\ : std_logic;
SIGNAL \C3|Equal0~1_combout\ : std_logic;
SIGNAL \C4|Equal0~1_combout\ : std_logic;
SIGNAL \C|WideOr6~0_combout\ : std_logic;
SIGNAL \C|WideOr5~0_combout\ : std_logic;
SIGNAL \C|WideOr4~0_combout\ : std_logic;
SIGNAL \Converte|shift_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Converte|bcds\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Registrador|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Converte|bcds_out_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Converte|binary\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \Registrador|IQ\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Converte|ALT_INV_shift_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Converte|ALT_INV_shift_counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Converte|ALT_INV_bcds[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Converte|ALT_INV_bcds[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Converte|ALT_INV_bcds[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Converte|ALT_INV_bcds[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Converte|ALT_INV_bcds[14]~DUPLICATE_q\ : std_logic;
SIGNAL \Converte|ALT_INV_bcds[13]~DUPLICATE_q\ : std_logic;
SIGNAL \Converte|ALT_INV_bcds[12]~DUPLICATE_q\ : std_logic;
SIGNAL \Converte|ALT_INV_bcds[11]~DUPLICATE_q\ : std_logic;
SIGNAL \C|ALT_INV_Eatual.Conversao~DUPLICATE_q\ : std_logic;
SIGNAL \Converte|ALT_INV_bcds_out_reg[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Converte|ALT_INV_bcds_out_reg[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Converte|ALT_INV_bcds_out_reg[15]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_contaAtraso~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[15]~61_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[11]~45_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[14]~57_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[13]~53_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[12]~49_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[10]~41_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[9]~37_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[8]~33_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[7]~29_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[6]~25_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[5]~21_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[4]~17_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[3]~13_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[2]~9_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[1]~5_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[0]~1_combout\ : std_logic;
SIGNAL \Converte|ALT_INV_state.start~q\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_2|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_2|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_4|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|ALT_INV_ClrN3~0_combout\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_3|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[2]~0_combout\ : std_logic;
SIGNAL \Converte|ALT_INV_Add4~0_combout\ : std_logic;
SIGNAL \Converte|ALT_INV_Add3~0_combout\ : std_logic;
SIGNAL \Converte|ALT_INV_binary[2]~0_combout\ : std_logic;
SIGNAL \Converte|ALT_INV_Add2~0_combout\ : std_logic;
SIGNAL \Converte|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \Converte|ALT_INV_state_next.done~0_combout\ : std_logic;
SIGNAL \Converte|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \Converte|ALT_INV_state.shift~q\ : std_logic;
SIGNAL \Converte|ALT_INV_shift_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ContadordeConversao|Contador|IC_2|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_4|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \ContadordeConversao|Contador|ALT_INV_ClrN3~0_combout\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_3|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_2|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~0_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[15]~62_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[15]~_emulated_q\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[11]~46_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[11]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \geraSeed|IC_4|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \geraSeed|IC_3|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \geraSeed|ALT_INV_ClrN3~0_combout\ : std_logic;
SIGNAL \geraSeed|IC_2|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \geraSeed|IC_2|ALT_INV_Qout[3]~0_combout\ : std_logic;
SIGNAL \geraSeed|ALT_INV_ClrN2~0_combout\ : std_logic;
SIGNAL \ciclagensLFSR|ALT_INV_S~combout\ : std_logic;
SIGNAL \ciclagensLFSR|ALT_INV_S~2_combout\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \ciclagensLFSR|ALT_INV_S~1_combout\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \ciclagensLFSR|ALT_INV_S~0_combout\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \C|ALT_INV_Eatual.Inicial~q\ : std_logic;
SIGNAL \Converte|ALT_INV_bcds\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ContadordoAtraso|IC_4|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \ContadordoAtraso|ALT_INV_ClrN3~0_combout\ : std_logic;
SIGNAL \ContadordoAtraso|IC_3|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \ContadordoAtraso|IC_2|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \ContadordoAtraso|IC_2|ALT_INV_Qout[3]~0_combout\ : std_logic;
SIGNAL \ContadordoAtraso|ALT_INV_ClrN2~0_combout\ : std_logic;
SIGNAL \Converte|ALT_INV_state.done~q\ : std_logic;
SIGNAL \ContadordeConversao|ALT_INV_S~combout\ : std_logic;
SIGNAL \ContadordeConversao|ALT_INV_S~2_combout\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_3|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_3|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_2|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_2|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \ContadordeConversao|ALT_INV_S~1_combout\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_1|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_1|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \ContadordeConversao|ALT_INV_S~0_combout\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_4|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_4|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_3|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \ContadordeConversao|Contador|IC_2|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[14]~58_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[14]~_emulated_q\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[13]~54_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[13]~_emulated_q\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[12]~50_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[12]~_emulated_q\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[10]~42_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[10]~_emulated_q\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[9]~38_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[9]~_emulated_q\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[8]~34_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[8]~_emulated_q\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[7]~30_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[7]~_emulated_q\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[6]~26_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[6]~_emulated_q\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[5]~22_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[5]~_emulated_q\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[4]~18_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[4]~_emulated_q\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[3]~14_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[3]~_emulated_q\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[2]~10_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[2]~_emulated_q\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[1]~6_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[1]~_emulated_q\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[0]~2_combout\ : std_logic;
SIGNAL \PSEUDORANDOM|ALT_INV_count[0]~_emulated_q\ : std_logic;
SIGNAL \Registrador|ALT_INV_Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \geraSeed|IC_4|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \geraSeed|IC_4|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \geraSeed|IC_4|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \geraSeed|IC_4|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \geraSeed|IC_3|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \geraSeed|IC_3|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \geraSeed|IC_3|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \geraSeed|IC_3|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \geraSeed|IC_2|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \geraSeed|IC_2|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \geraSeed|IC_2|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \geraSeed|IC_2|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \geraSeed|IC_1|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \geraSeed|IC_1|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \geraSeed|IC_1|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \geraSeed|IC_1|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \C|ALT_INV_Eatual.Conversao~q\ : std_logic;
SIGNAL \C|ALT_INV_Eatual.Fim~q\ : std_logic;
SIGNAL \C|ALT_INV_Eatual.RegistraSeed2~q\ : std_logic;
SIGNAL \C|ALT_INV_Eatual.Cicla~q\ : std_logic;
SIGNAL \C|ALT_INV_Eatual.RegistraSeed1~q\ : std_logic;
SIGNAL \ALT_INV_TT2~0_combout\ : std_logic;
SIGNAL \C4|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \Converte|ALT_INV_bcds_out_reg\ : std_logic_vector(15 DOWNTO 1);
SIGNAL \ContadordoAtraso|IC_4|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \ContadordoAtraso|IC_4|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \ContadordoAtraso|IC_4|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \C3|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ContadordoAtraso|IC_3|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \ContadordoAtraso|IC_3|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \ContadordoAtraso|IC_3|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \ContadordoAtraso|IC_4|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \ContadordoAtraso|IC_3|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_TT1~0_combout\ : std_logic;
SIGNAL \C2|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ContadordoAtraso|IC_2|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \ContadordoAtraso|IC_2|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \ContadordoAtraso|IC_2|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \C1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ContadordoAtraso|IC_1|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \ContadordoAtraso|IC_1|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \ContadordoAtraso|IC_1|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \ContadordoAtraso|IC_2|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \ContadordoAtraso|IC_1|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \C|ALT_INV_Eatual.Contando~q\ : std_logic;
SIGNAL \Converte|ALT_INV_binary\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \Registrador|ALT_INV_IQ\ : std_logic_vector(13 DOWNTO 5);

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_contaAtraso <= contaAtraso;
sinalAtraso <= ww_sinalAtraso;
depTT1 <= ww_depTT1;
depTT2 <= ww_depTT2;
depConta <= ww_depConta;
depT <= ww_depT;
estado <= ww_estado;
tempoAtraso <= ww_tempoAtraso;
tempoUsado <= ww_tempoUsado;
tempoCicladobit <= ww_tempoCicladobit;
tempoCicladoBCD <= ww_tempoCicladoBCD;
tempoContadorAtraso <= ww_tempoContadorAtraso;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Converte|ALT_INV_shift_counter[2]~DUPLICATE_q\ <= NOT \Converte|shift_counter[2]~DUPLICATE_q\;
\Converte|ALT_INV_shift_counter[3]~DUPLICATE_q\ <= NOT \Converte|shift_counter[3]~DUPLICATE_q\;
\Converte|ALT_INV_bcds[2]~DUPLICATE_q\ <= NOT \Converte|bcds[2]~DUPLICATE_q\;
\Converte|ALT_INV_bcds[0]~DUPLICATE_q\ <= NOT \Converte|bcds[0]~DUPLICATE_q\;
\Converte|ALT_INV_bcds[6]~DUPLICATE_q\ <= NOT \Converte|bcds[6]~DUPLICATE_q\;
\Converte|ALT_INV_bcds[5]~DUPLICATE_q\ <= NOT \Converte|bcds[5]~DUPLICATE_q\;
\Converte|ALT_INV_bcds[14]~DUPLICATE_q\ <= NOT \Converte|bcds[14]~DUPLICATE_q\;
\Converte|ALT_INV_bcds[13]~DUPLICATE_q\ <= NOT \Converte|bcds[13]~DUPLICATE_q\;
\Converte|ALT_INV_bcds[12]~DUPLICATE_q\ <= NOT \Converte|bcds[12]~DUPLICATE_q\;
\Converte|ALT_INV_bcds[11]~DUPLICATE_q\ <= NOT \Converte|bcds[11]~DUPLICATE_q\;
\C|ALT_INV_Eatual.Conversao~DUPLICATE_q\ <= NOT \C|Eatual.Conversao~DUPLICATE_q\;
\Converte|ALT_INV_bcds_out_reg[0]~DUPLICATE_q\ <= NOT \Converte|bcds_out_reg[0]~DUPLICATE_q\;
\Converte|ALT_INV_bcds_out_reg[8]~DUPLICATE_q\ <= NOT \Converte|bcds_out_reg[8]~DUPLICATE_q\;
\Converte|ALT_INV_bcds_out_reg[15]~DUPLICATE_q\ <= NOT \Converte|bcds_out_reg[15]~DUPLICATE_q\;
\ALT_INV_contaAtraso~input_o\ <= NOT \contaAtraso~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\PSEUDORANDOM|ALT_INV_count[15]~61_combout\ <= NOT \PSEUDORANDOM|count[15]~61_combout\;
\PSEUDORANDOM|ALT_INV_count[11]~45_combout\ <= NOT \PSEUDORANDOM|count[11]~45_combout\;
\PSEUDORANDOM|ALT_INV_count[14]~57_combout\ <= NOT \PSEUDORANDOM|count[14]~57_combout\;
\PSEUDORANDOM|ALT_INV_count[13]~53_combout\ <= NOT \PSEUDORANDOM|count[13]~53_combout\;
\PSEUDORANDOM|ALT_INV_count[12]~49_combout\ <= NOT \PSEUDORANDOM|count[12]~49_combout\;
\PSEUDORANDOM|ALT_INV_count[10]~41_combout\ <= NOT \PSEUDORANDOM|count[10]~41_combout\;
\PSEUDORANDOM|ALT_INV_count[9]~37_combout\ <= NOT \PSEUDORANDOM|count[9]~37_combout\;
\PSEUDORANDOM|ALT_INV_count[8]~33_combout\ <= NOT \PSEUDORANDOM|count[8]~33_combout\;
\PSEUDORANDOM|ALT_INV_count[7]~29_combout\ <= NOT \PSEUDORANDOM|count[7]~29_combout\;
\PSEUDORANDOM|ALT_INV_count[6]~25_combout\ <= NOT \PSEUDORANDOM|count[6]~25_combout\;
\PSEUDORANDOM|ALT_INV_count[5]~21_combout\ <= NOT \PSEUDORANDOM|count[5]~21_combout\;
\PSEUDORANDOM|ALT_INV_count[4]~17_combout\ <= NOT \PSEUDORANDOM|count[4]~17_combout\;
\PSEUDORANDOM|ALT_INV_count[3]~13_combout\ <= NOT \PSEUDORANDOM|count[3]~13_combout\;
\PSEUDORANDOM|ALT_INV_count[2]~9_combout\ <= NOT \PSEUDORANDOM|count[2]~9_combout\;
\PSEUDORANDOM|ALT_INV_count[1]~5_combout\ <= NOT \PSEUDORANDOM|count[1]~5_combout\;
\PSEUDORANDOM|ALT_INV_count[0]~1_combout\ <= NOT \PSEUDORANDOM|count[0]~1_combout\;
\Converte|ALT_INV_state.start~q\ <= NOT \Converte|state.start~q\;
\ciclagensLFSR|Contador|IC_2|ALT_INV_Add0~0_combout\ <= NOT \ciclagensLFSR|Contador|IC_2|Add0~0_combout\;
\ciclagensLFSR|Contador|IC_2|ALT_INV_process_0~0_combout\ <= NOT \ciclagensLFSR|Contador|IC_2|process_0~0_combout\;
\ciclagensLFSR|Contador|IC_4|ALT_INV_Add0~0_combout\ <= NOT \ciclagensLFSR|Contador|IC_4|Add0~0_combout\;
\ciclagensLFSR|Contador|ALT_INV_ClrN3~0_combout\ <= NOT \ciclagensLFSR|Contador|ClrN3~0_combout\;
\ciclagensLFSR|Contador|IC_3|ALT_INV_Add0~0_combout\ <= NOT \ciclagensLFSR|Contador|IC_3|Add0~0_combout\;
\ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[2]~0_combout\ <= NOT \ciclagensLFSR|Contador|IC_2|Qout[2]~0_combout\;
\Converte|ALT_INV_Add4~0_combout\ <= NOT \Converte|Add4~0_combout\;
\Converte|ALT_INV_Add3~0_combout\ <= NOT \Converte|Add3~0_combout\;
\Converte|ALT_INV_binary[2]~0_combout\ <= NOT \Converte|binary[2]~0_combout\;
\Converte|ALT_INV_Add2~0_combout\ <= NOT \Converte|Add2~0_combout\;
\Converte|ALT_INV_LessThan0~0_combout\ <= NOT \Converte|LessThan0~0_combout\;
\Converte|ALT_INV_state_next.done~0_combout\ <= NOT \Converte|state_next.done~0_combout\;
\Converte|ALT_INV_Selector1~0_combout\ <= NOT \Converte|Selector1~0_combout\;
\Converte|ALT_INV_state.shift~q\ <= NOT \Converte|state.shift~q\;
\Converte|ALT_INV_shift_counter\(0) <= NOT \Converte|shift_counter\(0);
\Converte|ALT_INV_shift_counter\(1) <= NOT \Converte|shift_counter\(1);
\Converte|ALT_INV_shift_counter\(2) <= NOT \Converte|shift_counter\(2);
\Converte|ALT_INV_shift_counter\(3) <= NOT \Converte|shift_counter\(3);
\ContadordeConversao|Contador|IC_2|ALT_INV_Add0~0_combout\ <= NOT \ContadordeConversao|Contador|IC_2|Add0~0_combout\;
\ContadordeConversao|Contador|IC_4|ALT_INV_Add0~0_combout\ <= NOT \ContadordeConversao|Contador|IC_4|Add0~0_combout\;
\ContadordeConversao|Contador|ALT_INV_ClrN3~0_combout\ <= NOT \ContadordeConversao|Contador|ClrN3~0_combout\;
\ContadordeConversao|Contador|IC_3|ALT_INV_Add0~0_combout\ <= NOT \ContadordeConversao|Contador|IC_3|Add0~0_combout\;
\ContadordeConversao|Contador|IC_2|ALT_INV_process_0~0_combout\ <= NOT \ContadordeConversao|Contador|IC_2|process_0~0_combout\;
\ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~0_combout\ <= NOT \ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\;
\PSEUDORANDOM|ALT_INV_count[15]~62_combout\ <= NOT \PSEUDORANDOM|count[15]~62_combout\;
\PSEUDORANDOM|ALT_INV_count[15]~_emulated_q\ <= NOT \PSEUDORANDOM|count[15]~_emulated_q\;
\PSEUDORANDOM|ALT_INV_count[11]~46_combout\ <= NOT \PSEUDORANDOM|count[11]~46_combout\;
\PSEUDORANDOM|ALT_INV_count[11]~_emulated_q\ <= NOT \PSEUDORANDOM|count[11]~_emulated_q\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\geraSeed|IC_4|ALT_INV_Add0~0_combout\ <= NOT \geraSeed|IC_4|Add0~0_combout\;
\geraSeed|IC_3|ALT_INV_Add0~0_combout\ <= NOT \geraSeed|IC_3|Add0~0_combout\;
\geraSeed|ALT_INV_ClrN3~0_combout\ <= NOT \geraSeed|ClrN3~0_combout\;
\geraSeed|IC_2|ALT_INV_Add0~0_combout\ <= NOT \geraSeed|IC_2|Add0~0_combout\;
\geraSeed|IC_2|ALT_INV_Qout[3]~0_combout\ <= NOT \geraSeed|IC_2|Qout[3]~0_combout\;
\geraSeed|ALT_INV_ClrN2~0_combout\ <= NOT \geraSeed|ClrN2~0_combout\;
\ciclagensLFSR|ALT_INV_S~combout\ <= NOT \ciclagensLFSR|S~combout\;
\ciclagensLFSR|ALT_INV_S~2_combout\ <= NOT \ciclagensLFSR|S~2_combout\;
\ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[2]~reg0_q\ <= NOT \ciclagensLFSR|Contador|IC_3|Qout[2]~reg0_q\;
\ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[1]~reg0_q\ <= NOT \ciclagensLFSR|Contador|IC_3|Qout[1]~reg0_q\;
\ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\ <= NOT \ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\;
\ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[3]~reg0_q\ <= NOT \ciclagensLFSR|Contador|IC_2|Qout[3]~reg0_q\;
\ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[2]~reg0_q\ <= NOT \ciclagensLFSR|Contador|IC_2|Qout[2]~reg0_q\;
\ciclagensLFSR|ALT_INV_S~1_combout\ <= NOT \ciclagensLFSR|S~1_combout\;
\ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[1]~reg0_q\ <= NOT \ciclagensLFSR|Contador|IC_2|Qout[1]~reg0_q\;
\ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\ <= NOT \ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\;
\ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\ <= NOT \ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\;
\ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[2]~reg0_q\ <= NOT \ciclagensLFSR|Contador|IC_1|Qout[2]~reg0_q\;
\ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[1]~reg0_q\ <= NOT \ciclagensLFSR|Contador|IC_1|Qout[1]~reg0_q\;
\ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\ <= NOT \ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\;
\ciclagensLFSR|ALT_INV_S~0_combout\ <= NOT \ciclagensLFSR|S~0_combout\;
\ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\ <= NOT \ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\;
\ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[2]~reg0_q\ <= NOT \ciclagensLFSR|Contador|IC_4|Qout[2]~reg0_q\;
\ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[1]~reg0_q\ <= NOT \ciclagensLFSR|Contador|IC_4|Qout[1]~reg0_q\;
\ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\ <= NOT \ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\;
\ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[3]~reg0_q\ <= NOT \ciclagensLFSR|Contador|IC_3|Qout[3]~reg0_q\;
\C|ALT_INV_Eatual.Inicial~q\ <= NOT \C|Eatual.Inicial~q\;
\Converte|ALT_INV_bcds\(2) <= NOT \Converte|bcds\(2);
\Converte|ALT_INV_bcds\(1) <= NOT \Converte|bcds\(1);
\Converte|ALT_INV_bcds\(0) <= NOT \Converte|bcds\(0);
\Converte|ALT_INV_bcds\(6) <= NOT \Converte|bcds\(6);
\Converte|ALT_INV_bcds\(5) <= NOT \Converte|bcds\(5);
\Converte|ALT_INV_bcds\(4) <= NOT \Converte|bcds\(4);
\Converte|ALT_INV_bcds\(3) <= NOT \Converte|bcds\(3);
\ContadordoAtraso|IC_4|ALT_INV_Add0~0_combout\ <= NOT \ContadordoAtraso|IC_4|Add0~0_combout\;
\ContadordoAtraso|ALT_INV_ClrN3~0_combout\ <= NOT \ContadordoAtraso|ClrN3~0_combout\;
\Converte|ALT_INV_bcds\(7) <= NOT \Converte|bcds\(7);
\ContadordoAtraso|IC_3|ALT_INV_Add0~0_combout\ <= NOT \ContadordoAtraso|IC_3|Add0~0_combout\;
\Converte|ALT_INV_bcds\(10) <= NOT \Converte|bcds\(10);
\Converte|ALT_INV_bcds\(9) <= NOT \Converte|bcds\(9);
\Converte|ALT_INV_bcds\(8) <= NOT \Converte|bcds\(8);
\Converte|ALT_INV_bcds\(14) <= NOT \Converte|bcds\(14);
\Converte|ALT_INV_bcds\(13) <= NOT \Converte|bcds\(13);
\Converte|ALT_INV_bcds\(12) <= NOT \Converte|bcds\(12);
\Converte|ALT_INV_bcds\(11) <= NOT \Converte|bcds\(11);
\ContadordoAtraso|IC_2|ALT_INV_Add0~0_combout\ <= NOT \ContadordoAtraso|IC_2|Add0~0_combout\;
\ContadordoAtraso|IC_2|ALT_INV_Qout[3]~0_combout\ <= NOT \ContadordoAtraso|IC_2|Qout[3]~0_combout\;
\ContadordoAtraso|ALT_INV_ClrN2~0_combout\ <= NOT \ContadordoAtraso|ClrN2~0_combout\;
\Converte|ALT_INV_state.done~q\ <= NOT \Converte|state.done~q\;
\Converte|ALT_INV_bcds\(15) <= NOT \Converte|bcds\(15);
\ContadordeConversao|ALT_INV_S~combout\ <= NOT \ContadordeConversao|S~combout\;
\ContadordeConversao|ALT_INV_S~2_combout\ <= NOT \ContadordeConversao|S~2_combout\;
\ContadordeConversao|Contador|IC_3|ALT_INV_Qout[2]~reg0_q\ <= NOT \ContadordeConversao|Contador|IC_3|Qout[2]~reg0_q\;
\ContadordeConversao|Contador|IC_3|ALT_INV_Qout[1]~reg0_q\ <= NOT \ContadordeConversao|Contador|IC_3|Qout[1]~reg0_q\;
\ContadordeConversao|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\ <= NOT \ContadordeConversao|Contador|IC_3|Qout[0]~reg0_q\;
\ContadordeConversao|Contador|IC_2|ALT_INV_Qout[3]~reg0_q\ <= NOT \ContadordeConversao|Contador|IC_2|Qout[3]~reg0_q\;
\ContadordeConversao|Contador|IC_2|ALT_INV_Qout[2]~reg0_q\ <= NOT \ContadordeConversao|Contador|IC_2|Qout[2]~reg0_q\;
\ContadordeConversao|ALT_INV_S~1_combout\ <= NOT \ContadordeConversao|S~1_combout\;
\ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\ <= NOT \ContadordeConversao|Contador|IC_2|Qout[0]~reg0_q\;
\ContadordeConversao|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\ <= NOT \ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\;
\ContadordeConversao|Contador|IC_1|ALT_INV_Qout[2]~reg0_q\ <= NOT \ContadordeConversao|Contador|IC_1|Qout[2]~reg0_q\;
\ContadordeConversao|Contador|IC_1|ALT_INV_Qout[1]~reg0_q\ <= NOT \ContadordeConversao|Contador|IC_1|Qout[1]~reg0_q\;
\ContadordeConversao|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\ <= NOT \ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\;
\ContadordeConversao|ALT_INV_S~0_combout\ <= NOT \ContadordeConversao|S~0_combout\;
\ContadordeConversao|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\ <= NOT \ContadordeConversao|Contador|IC_4|Qout[3]~reg0_q\;
\ContadordeConversao|Contador|IC_4|ALT_INV_Qout[2]~reg0_q\ <= NOT \ContadordeConversao|Contador|IC_4|Qout[2]~reg0_q\;
\ContadordeConversao|Contador|IC_4|ALT_INV_Qout[1]~reg0_q\ <= NOT \ContadordeConversao|Contador|IC_4|Qout[1]~reg0_q\;
\ContadordeConversao|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\ <= NOT \ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\;
\ContadordeConversao|Contador|IC_3|ALT_INV_Qout[3]~reg0_q\ <= NOT \ContadordeConversao|Contador|IC_3|Qout[3]~reg0_q\;
\ContadordeConversao|Contador|IC_2|ALT_INV_Qout[1]~reg0_q\ <= NOT \ContadordeConversao|Contador|IC_2|Qout[1]~reg0_q\;
\PSEUDORANDOM|ALT_INV_count[14]~58_combout\ <= NOT \PSEUDORANDOM|count[14]~58_combout\;
\PSEUDORANDOM|ALT_INV_count[14]~_emulated_q\ <= NOT \PSEUDORANDOM|count[14]~_emulated_q\;
\PSEUDORANDOM|ALT_INV_count[13]~54_combout\ <= NOT \PSEUDORANDOM|count[13]~54_combout\;
\PSEUDORANDOM|ALT_INV_count[13]~_emulated_q\ <= NOT \PSEUDORANDOM|count[13]~_emulated_q\;
\PSEUDORANDOM|ALT_INV_count[12]~50_combout\ <= NOT \PSEUDORANDOM|count[12]~50_combout\;
\PSEUDORANDOM|ALT_INV_count[12]~_emulated_q\ <= NOT \PSEUDORANDOM|count[12]~_emulated_q\;
\PSEUDORANDOM|ALT_INV_count[10]~42_combout\ <= NOT \PSEUDORANDOM|count[10]~42_combout\;
\PSEUDORANDOM|ALT_INV_count[10]~_emulated_q\ <= NOT \PSEUDORANDOM|count[10]~_emulated_q\;
\PSEUDORANDOM|ALT_INV_count[9]~38_combout\ <= NOT \PSEUDORANDOM|count[9]~38_combout\;
\PSEUDORANDOM|ALT_INV_count[9]~_emulated_q\ <= NOT \PSEUDORANDOM|count[9]~_emulated_q\;
\PSEUDORANDOM|ALT_INV_count[8]~34_combout\ <= NOT \PSEUDORANDOM|count[8]~34_combout\;
\PSEUDORANDOM|ALT_INV_count[8]~_emulated_q\ <= NOT \PSEUDORANDOM|count[8]~_emulated_q\;
\PSEUDORANDOM|ALT_INV_count[7]~30_combout\ <= NOT \PSEUDORANDOM|count[7]~30_combout\;
\PSEUDORANDOM|ALT_INV_count[7]~_emulated_q\ <= NOT \PSEUDORANDOM|count[7]~_emulated_q\;
\PSEUDORANDOM|ALT_INV_count[6]~26_combout\ <= NOT \PSEUDORANDOM|count[6]~26_combout\;
\PSEUDORANDOM|ALT_INV_count[6]~_emulated_q\ <= NOT \PSEUDORANDOM|count[6]~_emulated_q\;
\PSEUDORANDOM|ALT_INV_count[5]~22_combout\ <= NOT \PSEUDORANDOM|count[5]~22_combout\;
\PSEUDORANDOM|ALT_INV_count[5]~_emulated_q\ <= NOT \PSEUDORANDOM|count[5]~_emulated_q\;
\PSEUDORANDOM|ALT_INV_count[4]~18_combout\ <= NOT \PSEUDORANDOM|count[4]~18_combout\;
\PSEUDORANDOM|ALT_INV_count[4]~_emulated_q\ <= NOT \PSEUDORANDOM|count[4]~_emulated_q\;
\PSEUDORANDOM|ALT_INV_count[3]~14_combout\ <= NOT \PSEUDORANDOM|count[3]~14_combout\;
\PSEUDORANDOM|ALT_INV_count[3]~_emulated_q\ <= NOT \PSEUDORANDOM|count[3]~_emulated_q\;
\PSEUDORANDOM|ALT_INV_count[2]~10_combout\ <= NOT \PSEUDORANDOM|count[2]~10_combout\;
\PSEUDORANDOM|ALT_INV_count[2]~_emulated_q\ <= NOT \PSEUDORANDOM|count[2]~_emulated_q\;
\PSEUDORANDOM|ALT_INV_count[1]~6_combout\ <= NOT \PSEUDORANDOM|count[1]~6_combout\;
\PSEUDORANDOM|ALT_INV_count[1]~_emulated_q\ <= NOT \PSEUDORANDOM|count[1]~_emulated_q\;
\PSEUDORANDOM|ALT_INV_count[0]~2_combout\ <= NOT \PSEUDORANDOM|count[0]~2_combout\;
\PSEUDORANDOM|ALT_INV_count[0]~_emulated_q\ <= NOT \PSEUDORANDOM|count[0]~_emulated_q\;
\Registrador|ALT_INV_Q\(15) <= NOT \Registrador|Q\(15);
\Registrador|ALT_INV_Q\(14) <= NOT \Registrador|Q\(14);
\Registrador|ALT_INV_Q\(13) <= NOT \Registrador|Q\(13);
\Registrador|ALT_INV_Q\(12) <= NOT \Registrador|Q\(12);
\Registrador|ALT_INV_Q\(11) <= NOT \Registrador|Q\(11);
\Registrador|ALT_INV_Q\(10) <= NOT \Registrador|Q\(10);
\Registrador|ALT_INV_Q\(9) <= NOT \Registrador|Q\(9);
\Registrador|ALT_INV_Q\(8) <= NOT \Registrador|Q\(8);
\Registrador|ALT_INV_Q\(7) <= NOT \Registrador|Q\(7);
\Registrador|ALT_INV_Q\(6) <= NOT \Registrador|Q\(6);
\Registrador|ALT_INV_Q\(5) <= NOT \Registrador|Q\(5);
\Registrador|ALT_INV_Q\(4) <= NOT \Registrador|Q\(4);
\Registrador|ALT_INV_Q\(3) <= NOT \Registrador|Q\(3);
\Registrador|ALT_INV_Q\(2) <= NOT \Registrador|Q\(2);
\Registrador|ALT_INV_Q\(1) <= NOT \Registrador|Q\(1);
\Registrador|ALT_INV_Q\(0) <= NOT \Registrador|Q\(0);
\geraSeed|IC_4|ALT_INV_Qout[3]~reg0_q\ <= NOT \geraSeed|IC_4|Qout[3]~reg0_q\;
\geraSeed|IC_4|ALT_INV_Qout[2]~reg0_q\ <= NOT \geraSeed|IC_4|Qout[2]~reg0_q\;
\geraSeed|IC_4|ALT_INV_Qout[1]~reg0_q\ <= NOT \geraSeed|IC_4|Qout[1]~reg0_q\;
\geraSeed|IC_4|ALT_INV_Qout[0]~reg0_q\ <= NOT \geraSeed|IC_4|Qout[0]~reg0_q\;
\geraSeed|IC_3|ALT_INV_Qout[3]~reg0_q\ <= NOT \geraSeed|IC_3|Qout[3]~reg0_q\;
\geraSeed|IC_3|ALT_INV_Qout[2]~reg0_q\ <= NOT \geraSeed|IC_3|Qout[2]~reg0_q\;
\geraSeed|IC_3|ALT_INV_Qout[1]~reg0_q\ <= NOT \geraSeed|IC_3|Qout[1]~reg0_q\;
\geraSeed|IC_3|ALT_INV_Qout[0]~reg0_q\ <= NOT \geraSeed|IC_3|Qout[0]~reg0_q\;
\geraSeed|IC_2|ALT_INV_Qout[3]~reg0_q\ <= NOT \geraSeed|IC_2|Qout[3]~reg0_q\;
\geraSeed|IC_2|ALT_INV_Qout[2]~reg0_q\ <= NOT \geraSeed|IC_2|Qout[2]~reg0_q\;
\geraSeed|IC_2|ALT_INV_Qout[1]~reg0_q\ <= NOT \geraSeed|IC_2|Qout[1]~reg0_q\;
\geraSeed|IC_2|ALT_INV_Qout[0]~reg0_q\ <= NOT \geraSeed|IC_2|Qout[0]~reg0_q\;
\geraSeed|IC_1|ALT_INV_Qout[3]~reg0_q\ <= NOT \geraSeed|IC_1|Qout[3]~reg0_q\;
\geraSeed|IC_1|ALT_INV_Qout[2]~reg0_q\ <= NOT \geraSeed|IC_1|Qout[2]~reg0_q\;
\geraSeed|IC_1|ALT_INV_Qout[1]~reg0_q\ <= NOT \geraSeed|IC_1|Qout[1]~reg0_q\;
\geraSeed|IC_1|ALT_INV_Qout[0]~reg0_q\ <= NOT \geraSeed|IC_1|Qout[0]~reg0_q\;
\C|ALT_INV_Eatual.Conversao~q\ <= NOT \C|Eatual.Conversao~q\;
\C|ALT_INV_Eatual.Fim~q\ <= NOT \C|Eatual.Fim~q\;
\C|ALT_INV_Eatual.RegistraSeed2~q\ <= NOT \C|Eatual.RegistraSeed2~q\;
\C|ALT_INV_Eatual.Cicla~q\ <= NOT \C|Eatual.Cicla~q\;
\C|ALT_INV_Eatual.RegistraSeed1~q\ <= NOT \C|Eatual.RegistraSeed1~q\;
\ALT_INV_TT2~0_combout\ <= NOT \TT2~0_combout\;
\C4|ALT_INV_Equal0~0_combout\ <= NOT \C4|Equal0~0_combout\;
\Converte|ALT_INV_bcds_out_reg\(2) <= NOT \Converte|bcds_out_reg\(2);
\ContadordoAtraso|IC_4|ALT_INV_Qout[2]~reg0_q\ <= NOT \ContadordoAtraso|IC_4|Qout[2]~reg0_q\;
\Converte|ALT_INV_bcds_out_reg\(1) <= NOT \Converte|bcds_out_reg\(1);
\ContadordoAtraso|IC_4|ALT_INV_Qout[1]~reg0_q\ <= NOT \ContadordoAtraso|IC_4|Qout[1]~reg0_q\;
\ContadordoAtraso|IC_4|ALT_INV_Qout[0]~reg0_q\ <= NOT \ContadordoAtraso|IC_4|Qout[0]~reg0_q\;
\C3|ALT_INV_Equal0~0_combout\ <= NOT \C3|Equal0~0_combout\;
\Converte|ALT_INV_bcds_out_reg\(6) <= NOT \Converte|bcds_out_reg\(6);
\ContadordoAtraso|IC_3|ALT_INV_Qout[2]~reg0_q\ <= NOT \ContadordoAtraso|IC_3|Qout[2]~reg0_q\;
\Converte|ALT_INV_bcds_out_reg\(5) <= NOT \Converte|bcds_out_reg\(5);
\ContadordoAtraso|IC_3|ALT_INV_Qout[1]~reg0_q\ <= NOT \ContadordoAtraso|IC_3|Qout[1]~reg0_q\;
\Converte|ALT_INV_bcds_out_reg\(4) <= NOT \Converte|bcds_out_reg\(4);
\ContadordoAtraso|IC_3|ALT_INV_Qout[0]~reg0_q\ <= NOT \ContadordoAtraso|IC_3|Qout[0]~reg0_q\;
\Converte|ALT_INV_bcds_out_reg\(3) <= NOT \Converte|bcds_out_reg\(3);
\ContadordoAtraso|IC_4|ALT_INV_Qout[3]~reg0_q\ <= NOT \ContadordoAtraso|IC_4|Qout[3]~reg0_q\;
\Converte|ALT_INV_bcds_out_reg\(7) <= NOT \Converte|bcds_out_reg\(7);
\ContadordoAtraso|IC_3|ALT_INV_Qout[3]~reg0_q\ <= NOT \ContadordoAtraso|IC_3|Qout[3]~reg0_q\;
\ALT_INV_TT1~0_combout\ <= NOT \TT1~0_combout\;
\C2|ALT_INV_Equal0~0_combout\ <= NOT \C2|Equal0~0_combout\;
\Converte|ALT_INV_bcds_out_reg\(10) <= NOT \Converte|bcds_out_reg\(10);
\ContadordoAtraso|IC_2|ALT_INV_Qout[2]~reg0_q\ <= NOT \ContadordoAtraso|IC_2|Qout[2]~reg0_q\;
\Converte|ALT_INV_bcds_out_reg\(9) <= NOT \Converte|bcds_out_reg\(9);
\ContadordoAtraso|IC_2|ALT_INV_Qout[1]~reg0_q\ <= NOT \ContadordoAtraso|IC_2|Qout[1]~reg0_q\;
\ContadordoAtraso|IC_2|ALT_INV_Qout[0]~reg0_q\ <= NOT \ContadordoAtraso|IC_2|Qout[0]~reg0_q\;
\C1|ALT_INV_Equal0~0_combout\ <= NOT \C1|Equal0~0_combout\;
\Converte|ALT_INV_bcds_out_reg\(14) <= NOT \Converte|bcds_out_reg\(14);
\ContadordoAtraso|IC_1|ALT_INV_Qout[2]~reg0_q\ <= NOT \ContadordoAtraso|IC_1|Qout[2]~reg0_q\;
\Converte|ALT_INV_bcds_out_reg\(13) <= NOT \Converte|bcds_out_reg\(13);
\ContadordoAtraso|IC_1|ALT_INV_Qout[1]~reg0_q\ <= NOT \ContadordoAtraso|IC_1|Qout[1]~reg0_q\;
\Converte|ALT_INV_bcds_out_reg\(12) <= NOT \Converte|bcds_out_reg\(12);
\ContadordoAtraso|IC_1|ALT_INV_Qout[0]~reg0_q\ <= NOT \ContadordoAtraso|IC_1|Qout[0]~reg0_q\;
\Converte|ALT_INV_bcds_out_reg\(11) <= NOT \Converte|bcds_out_reg\(11);
\ContadordoAtraso|IC_2|ALT_INV_Qout[3]~reg0_q\ <= NOT \ContadordoAtraso|IC_2|Qout[3]~reg0_q\;
\Converte|ALT_INV_bcds_out_reg\(15) <= NOT \Converte|bcds_out_reg\(15);
\ContadordoAtraso|IC_1|ALT_INV_Qout[3]~reg0_q\ <= NOT \ContadordoAtraso|IC_1|Qout[3]~reg0_q\;
\C|ALT_INV_Eatual.Contando~q\ <= NOT \C|Eatual.Contando~q\;
\Converte|ALT_INV_binary\(0) <= NOT \Converte|binary\(0);
\Converte|ALT_INV_binary\(1) <= NOT \Converte|binary\(1);
\Converte|ALT_INV_binary\(2) <= NOT \Converte|binary\(2);
\Converte|ALT_INV_binary\(3) <= NOT \Converte|binary\(3);
\Converte|ALT_INV_binary\(4) <= NOT \Converte|binary\(4);
\Converte|ALT_INV_binary\(5) <= NOT \Converte|binary\(5);
\Converte|ALT_INV_binary\(6) <= NOT \Converte|binary\(6);
\Converte|ALT_INV_binary\(7) <= NOT \Converte|binary\(7);
\Converte|ALT_INV_binary\(8) <= NOT \Converte|binary\(8);
\Converte|ALT_INV_binary\(9) <= NOT \Converte|binary\(9);
\Converte|ALT_INV_binary\(10) <= NOT \Converte|binary\(10);
\Converte|ALT_INV_binary\(11) <= NOT \Converte|binary\(11);
\Converte|ALT_INV_binary\(12) <= NOT \Converte|binary\(12);
\Converte|ALT_INV_binary\(13) <= NOT \Converte|binary\(13);
\Registrador|ALT_INV_IQ\(13) <= NOT \Registrador|IQ\(13);
\Registrador|ALT_INV_IQ\(12) <= NOT \Registrador|IQ\(12);
\Registrador|ALT_INV_IQ\(10) <= NOT \Registrador|IQ\(10);
\Registrador|ALT_INV_IQ\(8) <= NOT \Registrador|IQ\(8);
\Registrador|ALT_INV_IQ\(6) <= NOT \Registrador|IQ\(6);
\Registrador|ALT_INV_IQ\(5) <= NOT \Registrador|IQ\(5);

-- Location: IOOBUF_X30_Y0_N53
\sinalAtraso~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s_sinalAtraso~combout\,
	devoe => ww_devoe,
	o => ww_sinalAtraso);

-- Location: IOOBUF_X36_Y0_N53
\depTT1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \TT1~0_combout\,
	devoe => ww_devoe,
	o => ww_depTT1);

-- Location: IOOBUF_X30_Y0_N19
\depTT2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \TT2~0_combout\,
	devoe => ww_devoe,
	o => ww_depTT2);

-- Location: IOOBUF_X66_Y0_N76
\depConta~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C|Eatual.Contando~q\,
	devoe => ww_devoe,
	o => ww_depConta);

-- Location: IOOBUF_X72_Y0_N36
\depT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|Equal0~1_combout\,
	devoe => ww_devoe,
	o => ww_depT(0));

-- Location: IOOBUF_X89_Y8_N39
\depT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C2|Equal0~1_combout\,
	devoe => ww_devoe,
	o => ww_depT(1));

-- Location: IOOBUF_X58_Y0_N59
\depT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C3|Equal0~1_combout\,
	devoe => ww_devoe,
	o => ww_depT(2));

-- Location: IOOBUF_X52_Y0_N19
\depT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C4|Equal0~1_combout\,
	devoe => ww_devoe,
	o => ww_depT(3));

-- Location: IOOBUF_X54_Y0_N19
\estado[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => ww_estado(0));

-- Location: IOOBUF_X56_Y0_N19
\estado[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => ww_estado(1));

-- Location: IOOBUF_X54_Y0_N36
\estado[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => ww_estado(2));

-- Location: IOOBUF_X28_Y0_N53
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

-- Location: IOOBUF_X56_Y0_N53
\tempoAtraso[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \geraSeed|IC_1|Qout[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_tempoAtraso(0));

-- Location: IOOBUF_X56_Y0_N36
\tempoAtraso[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \geraSeed|IC_1|Qout[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_tempoAtraso(1));

-- Location: IOOBUF_X58_Y0_N76
\tempoAtraso[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \geraSeed|IC_1|Qout[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_tempoAtraso(2));

-- Location: IOOBUF_X32_Y0_N36
\tempoAtraso[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \geraSeed|IC_1|Qout[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_tempoAtraso(3));

-- Location: IOOBUF_X64_Y0_N2
\tempoAtraso[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \geraSeed|IC_2|Qout[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_tempoAtraso(4));

-- Location: IOOBUF_X58_Y0_N93
\tempoAtraso[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \geraSeed|IC_2|Qout[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_tempoAtraso(5));

-- Location: IOOBUF_X52_Y0_N36
\tempoAtraso[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \geraSeed|IC_2|Qout[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_tempoAtraso(6));

-- Location: IOOBUF_X56_Y0_N2
\tempoAtraso[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \geraSeed|IC_2|Qout[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_tempoAtraso(7));

-- Location: IOOBUF_X28_Y0_N36
\tempoAtraso[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \geraSeed|IC_3|Qout[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_tempoAtraso(8));

-- Location: IOOBUF_X26_Y0_N93
\tempoAtraso[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \geraSeed|IC_3|Qout[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_tempoAtraso(9));

-- Location: IOOBUF_X50_Y0_N42
\tempoAtraso[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \geraSeed|IC_3|Qout[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_tempoAtraso(10));

-- Location: IOOBUF_X89_Y9_N56
\tempoAtraso[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \geraSeed|IC_3|Qout[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_tempoAtraso(11));

-- Location: IOOBUF_X40_Y0_N2
\tempoAtraso[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \geraSeed|IC_4|Qout[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_tempoAtraso(12));

-- Location: IOOBUF_X32_Y0_N53
\tempoAtraso[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \geraSeed|IC_4|Qout[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_tempoAtraso(13));

-- Location: IOOBUF_X34_Y0_N42
\tempoAtraso[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \geraSeed|IC_4|Qout[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_tempoAtraso(14));

-- Location: IOOBUF_X34_Y0_N76
\tempoAtraso[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \geraSeed|IC_4|Qout[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_tempoAtraso(15));

-- Location: IOOBUF_X54_Y0_N2
\tempoUsado[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registrador|Q\(0),
	devoe => ww_devoe,
	o => ww_tempoUsado(0));

-- Location: IOOBUF_X54_Y0_N53
\tempoUsado[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registrador|Q\(1),
	devoe => ww_devoe,
	o => ww_tempoUsado(1));

-- Location: IOOBUF_X89_Y4_N62
\tempoUsado[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registrador|Q\(2),
	devoe => ww_devoe,
	o => ww_tempoUsado(2));

-- Location: IOOBUF_X38_Y0_N36
\tempoUsado[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registrador|Q\(3),
	devoe => ww_devoe,
	o => ww_tempoUsado(3));

-- Location: IOOBUF_X66_Y0_N59
\tempoUsado[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registrador|Q\(4),
	devoe => ww_devoe,
	o => ww_tempoUsado(4));

-- Location: IOOBUF_X40_Y0_N36
\tempoUsado[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registrador|Q\(5),
	devoe => ww_devoe,
	o => ww_tempoUsado(5));

-- Location: IOOBUF_X89_Y6_N22
\tempoUsado[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registrador|Q\(6),
	devoe => ww_devoe,
	o => ww_tempoUsado(6));

-- Location: IOOBUF_X38_Y0_N19
\tempoUsado[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registrador|Q\(7),
	devoe => ww_devoe,
	o => ww_tempoUsado(7));

-- Location: IOOBUF_X89_Y6_N5
\tempoUsado[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registrador|Q\(8),
	devoe => ww_devoe,
	o => ww_tempoUsado(8));

-- Location: IOOBUF_X32_Y0_N2
\tempoUsado[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registrador|Q\(9),
	devoe => ww_devoe,
	o => ww_tempoUsado(9));

-- Location: IOOBUF_X60_Y0_N2
\tempoUsado[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registrador|Q\(10),
	devoe => ww_devoe,
	o => ww_tempoUsado(10));

-- Location: IOOBUF_X70_Y0_N53
\tempoUsado[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registrador|Q\(11),
	devoe => ww_devoe,
	o => ww_tempoUsado(11));

-- Location: IOOBUF_X60_Y0_N53
\tempoUsado[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registrador|Q\(12),
	devoe => ww_devoe,
	o => ww_tempoUsado(12));

-- Location: IOOBUF_X60_Y0_N19
\tempoUsado[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registrador|Q\(13),
	devoe => ww_devoe,
	o => ww_tempoUsado(13));

-- Location: IOOBUF_X38_Y0_N53
\tempoUsado[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registrador|Q\(14),
	devoe => ww_devoe,
	o => ww_tempoUsado(14));

-- Location: IOOBUF_X52_Y0_N53
\tempoUsado[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Registrador|Q\(15),
	devoe => ww_devoe,
	o => ww_tempoUsado(15));

-- Location: IOOBUF_X50_Y0_N93
\tempoCicladobit[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PSEUDORANDOM|count[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_tempoCicladobit(0));

-- Location: IOOBUF_X32_Y0_N19
\tempoCicladobit[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PSEUDORANDOM|count[1]~6_combout\,
	devoe => ww_devoe,
	o => ww_tempoCicladobit(1));

-- Location: IOOBUF_X70_Y0_N19
\tempoCicladobit[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PSEUDORANDOM|count[2]~10_combout\,
	devoe => ww_devoe,
	o => ww_tempoCicladobit(2));

-- Location: IOOBUF_X89_Y8_N56
\tempoCicladobit[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PSEUDORANDOM|count[3]~14_combout\,
	devoe => ww_devoe,
	o => ww_tempoCicladobit(3));

-- Location: IOOBUF_X68_Y0_N19
\tempoCicladobit[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PSEUDORANDOM|count[4]~18_combout\,
	devoe => ww_devoe,
	o => ww_tempoCicladobit(4));

-- Location: IOOBUF_X62_Y0_N19
\tempoCicladobit[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PSEUDORANDOM|count[5]~22_combout\,
	devoe => ww_devoe,
	o => ww_tempoCicladobit(5));

-- Location: IOOBUF_X70_Y0_N36
\tempoCicladobit[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PSEUDORANDOM|count[6]~26_combout\,
	devoe => ww_devoe,
	o => ww_tempoCicladobit(6));

-- Location: IOOBUF_X89_Y4_N45
\tempoCicladobit[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PSEUDORANDOM|count[7]~30_combout\,
	devoe => ww_devoe,
	o => ww_tempoCicladobit(7));

-- Location: IOOBUF_X62_Y0_N36
\tempoCicladobit[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PSEUDORANDOM|count[8]~34_combout\,
	devoe => ww_devoe,
	o => ww_tempoCicladobit(8));

-- Location: IOOBUF_X30_Y0_N2
\tempoCicladobit[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PSEUDORANDOM|count[9]~38_combout\,
	devoe => ww_devoe,
	o => ww_tempoCicladobit(9));

-- Location: IOOBUF_X64_Y0_N36
\tempoCicladobit[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PSEUDORANDOM|count[10]~42_combout\,
	devoe => ww_devoe,
	o => ww_tempoCicladobit(10));

-- Location: IOOBUF_X89_Y8_N5
\tempoCicladobit[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PSEUDORANDOM|count[11]~46_combout\,
	devoe => ww_devoe,
	o => ww_tempoCicladobit(11));

-- Location: IOOBUF_X89_Y4_N79
\tempoCicladobit[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PSEUDORANDOM|count[12]~50_combout\,
	devoe => ww_devoe,
	o => ww_tempoCicladobit(12));

-- Location: IOOBUF_X58_Y0_N42
\tempoCicladobit[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PSEUDORANDOM|count[13]~54_combout\,
	devoe => ww_devoe,
	o => ww_tempoCicladobit(13));

-- Location: IOOBUF_X60_Y0_N36
\tempoCicladobit[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PSEUDORANDOM|count[14]~58_combout\,
	devoe => ww_devoe,
	o => ww_tempoCicladobit(14));

-- Location: IOOBUF_X72_Y0_N53
\tempoCicladobit[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PSEUDORANDOM|count[15]~62_combout\,
	devoe => ww_devoe,
	o => ww_tempoCicladobit(15));

-- Location: IOOBUF_X62_Y0_N53
\tempoCicladoBCD[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Converte|bcds_out_reg\(12),
	devoe => ww_devoe,
	o => ww_tempoCicladoBCD(0));

-- Location: IOOBUF_X34_Y0_N59
\tempoCicladoBCD[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Converte|bcds_out_reg\(13),
	devoe => ww_devoe,
	o => ww_tempoCicladoBCD(1));

-- Location: IOOBUF_X26_Y0_N42
\tempoCicladoBCD[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Converte|bcds_out_reg\(14),
	devoe => ww_devoe,
	o => ww_tempoCicladoBCD(2));

-- Location: IOOBUF_X30_Y0_N36
\tempoCicladoBCD[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Converte|bcds_out_reg[15]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_tempoCicladoBCD(3));

-- Location: IOOBUF_X40_Y0_N19
\tempoCicladoBCD[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Converte|bcds_out_reg\(8),
	devoe => ww_devoe,
	o => ww_tempoCicladoBCD(4));

-- Location: IOOBUF_X34_Y0_N93
\tempoCicladoBCD[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Converte|bcds_out_reg\(9),
	devoe => ww_devoe,
	o => ww_tempoCicladoBCD(5));

-- Location: IOOBUF_X50_Y0_N76
\tempoCicladoBCD[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Converte|bcds_out_reg\(10),
	devoe => ww_devoe,
	o => ww_tempoCicladoBCD(6));

-- Location: IOOBUF_X89_Y4_N96
\tempoCicladoBCD[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Converte|bcds_out_reg\(11),
	devoe => ww_devoe,
	o => ww_tempoCicladoBCD(7));

-- Location: IOOBUF_X36_Y0_N2
\tempoCicladoBCD[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Converte|bcds_out_reg\(4),
	devoe => ww_devoe,
	o => ww_tempoCicladoBCD(8));

-- Location: IOOBUF_X62_Y0_N2
\tempoCicladoBCD[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Converte|bcds_out_reg\(5),
	devoe => ww_devoe,
	o => ww_tempoCicladoBCD(9));

-- Location: IOOBUF_X89_Y8_N22
\tempoCicladoBCD[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Converte|bcds_out_reg\(6),
	devoe => ww_devoe,
	o => ww_tempoCicladoBCD(10));

-- Location: IOOBUF_X38_Y0_N2
\tempoCicladoBCD[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Converte|bcds_out_reg\(7),
	devoe => ww_devoe,
	o => ww_tempoCicladoBCD(11));

-- Location: IOOBUF_X50_Y0_N59
\tempoCicladoBCD[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Converte|bcds_out_reg\(0),
	devoe => ww_devoe,
	o => ww_tempoCicladoBCD(12));

-- Location: IOOBUF_X52_Y0_N2
\tempoCicladoBCD[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Converte|bcds_out_reg\(1),
	devoe => ww_devoe,
	o => ww_tempoCicladoBCD(13));

-- Location: IOOBUF_X36_Y0_N19
\tempoCicladoBCD[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Converte|bcds_out_reg\(2),
	devoe => ww_devoe,
	o => ww_tempoCicladoBCD(14));

-- Location: IOOBUF_X40_Y0_N53
\tempoCicladoBCD[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Converte|bcds_out_reg\(3),
	devoe => ww_devoe,
	o => ww_tempoCicladoBCD(15));

-- Location: IOOBUF_X89_Y6_N56
\tempoContadorAtraso[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ContadordoAtraso|IC_1|Qout[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_tempoContadorAtraso(0));

-- Location: IOOBUF_X89_Y9_N39
\tempoContadorAtraso[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ContadordoAtraso|IC_1|Qout[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_tempoContadorAtraso(1));

-- Location: IOOBUF_X68_Y0_N2
\tempoContadorAtraso[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ContadordoAtraso|IC_1|Qout[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_tempoContadorAtraso(2));

-- Location: IOOBUF_X68_Y0_N53
\tempoContadorAtraso[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ContadordoAtraso|IC_1|Qout[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_tempoContadorAtraso(3));

-- Location: IOOBUF_X68_Y0_N36
\tempoContadorAtraso[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ContadordoAtraso|IC_2|Qout[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_tempoContadorAtraso(4));

-- Location: IOOBUF_X64_Y0_N53
\tempoContadorAtraso[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ContadordoAtraso|IC_2|Qout[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_tempoContadorAtraso(5));

-- Location: IOOBUF_X70_Y0_N2
\tempoContadorAtraso[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ContadordoAtraso|IC_2|Qout[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_tempoContadorAtraso(6));

-- Location: IOOBUF_X89_Y6_N39
\tempoContadorAtraso[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ContadordoAtraso|IC_2|Qout[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_tempoContadorAtraso(7));

-- Location: IOOBUF_X89_Y9_N22
\tempoContadorAtraso[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ContadordoAtraso|IC_3|Qout[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_tempoContadorAtraso(8));

-- Location: IOOBUF_X72_Y0_N2
\tempoContadorAtraso[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ContadordoAtraso|IC_3|Qout[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_tempoContadorAtraso(9));

-- Location: IOOBUF_X72_Y0_N19
\tempoContadorAtraso[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ContadordoAtraso|IC_3|Qout[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_tempoContadorAtraso(10));

-- Location: IOOBUF_X36_Y0_N36
\tempoContadorAtraso[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ContadordoAtraso|IC_3|Qout[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_tempoContadorAtraso(11));

-- Location: IOOBUF_X28_Y0_N2
\tempoContadorAtraso[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ContadordoAtraso|IC_4|Qout[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_tempoContadorAtraso(12));

-- Location: IOOBUF_X89_Y9_N5
\tempoContadorAtraso[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ContadordoAtraso|IC_4|Qout[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_tempoContadorAtraso(13));

-- Location: IOOBUF_X64_Y0_N19
\tempoContadorAtraso[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ContadordoAtraso|IC_4|Qout[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_tempoContadorAtraso(14));

-- Location: IOOBUF_X66_Y0_N42
\tempoContadorAtraso[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ContadordoAtraso|IC_4|Qout[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_tempoContadorAtraso(15));

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

-- Location: IOIBUF_X66_Y0_N92
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X68_Y4_N53
\C|Eatual.Fim\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \s_sinalAtraso~combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|Eatual.Fim~q\);

-- Location: LABCELL_X67_Y4_N30
\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( \C|Eatual.Fim~q\ ) # ( !\C|Eatual.Fim~q\ & ( \reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	dataf => \C|ALT_INV_Eatual.Fim~q\,
	combout => \comb~0_combout\);

-- Location: FF_X68_Y5_N25
\Converte|bcds[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|Selector18~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds[13]~DUPLICATE_q\);

-- Location: LABCELL_X67_Y2_N21
\Converte|Selector35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|Selector35~0_combout\ = ( \Converte|shift_counter\(0) & ( \Converte|Selector1~0_combout\ & ( \Converte|state.done~q\ ) ) ) # ( !\Converte|shift_counter\(0) & ( \Converte|Selector1~0_combout\ ) ) # ( \Converte|shift_counter\(0) & ( 
-- !\Converte|Selector1~0_combout\ & ( \Converte|state.done~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Converte|ALT_INV_state.done~q\,
	datae => \Converte|ALT_INV_shift_counter\(0),
	dataf => \Converte|ALT_INV_Selector1~0_combout\,
	combout => \Converte|Selector35~0_combout\);

-- Location: FF_X67_Y2_N22
\Converte|shift_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|Selector35~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|shift_counter\(0));

-- Location: LABCELL_X67_Y2_N24
\Converte|Selector34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|Selector34~0_combout\ = ( \Converte|shift_counter\(1) & ( \Converte|shift_counter\(0) & ( \Converte|state.done~q\ ) ) ) # ( !\Converte|shift_counter\(1) & ( \Converte|shift_counter\(0) & ( \Converte|state.shift~q\ ) ) ) # ( 
-- \Converte|shift_counter\(1) & ( !\Converte|shift_counter\(0) & ( (\Converte|state.shift~q\) # (\Converte|state.done~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111111100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Converte|ALT_INV_state.done~q\,
	datad => \Converte|ALT_INV_state.shift~q\,
	datae => \Converte|ALT_INV_shift_counter\(1),
	dataf => \Converte|ALT_INV_shift_counter\(0),
	combout => \Converte|Selector34~0_combout\);

-- Location: FF_X67_Y2_N25
\Converte|shift_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|Selector34~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|shift_counter\(1));

-- Location: FF_X67_Y4_N58
\Converte|shift_counter[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Converte|Selector33~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|shift_counter[2]~DUPLICATE_q\);

-- Location: LABCELL_X67_Y2_N0
\Converte|Selector33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|Selector33~0_combout\ = ( \Converte|shift_counter[2]~DUPLICATE_q\ & ( \Converte|state.shift~q\ & ( (!\Converte|shift_counter\(0)) # ((!\Converte|shift_counter\(1)) # (\Converte|state.done~q\)) ) ) ) # ( !\Converte|shift_counter[2]~DUPLICATE_q\ & 
-- ( \Converte|state.shift~q\ & ( (\Converte|shift_counter\(0) & \Converte|shift_counter\(1)) ) ) ) # ( \Converte|shift_counter[2]~DUPLICATE_q\ & ( !\Converte|state.shift~q\ & ( \Converte|state.done~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000001100111111111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Converte|ALT_INV_shift_counter\(0),
	datac => \Converte|ALT_INV_state.done~q\,
	datad => \Converte|ALT_INV_shift_counter\(1),
	datae => \Converte|ALT_INV_shift_counter[2]~DUPLICATE_q\,
	dataf => \Converte|ALT_INV_state.shift~q\,
	combout => \Converte|Selector33~0_combout\);

-- Location: FF_X67_Y4_N59
\Converte|shift_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Converte|Selector33~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|shift_counter\(2));

-- Location: LABCELL_X67_Y2_N54
\Converte|Selector32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|Selector32~0_combout\ = ( \Converte|shift_counter\(3) & ( \Converte|shift_counter\(1) & ( ((\Converte|state.shift~q\ & ((!\Converte|shift_counter[2]~DUPLICATE_q\) # (!\Converte|shift_counter\(0))))) # (\Converte|state.done~q\) ) ) ) # ( 
-- !\Converte|shift_counter\(3) & ( \Converte|shift_counter\(1) & ( (\Converte|shift_counter[2]~DUPLICATE_q\ & (\Converte|state.shift~q\ & \Converte|shift_counter\(0))) ) ) ) # ( \Converte|shift_counter\(3) & ( !\Converte|shift_counter\(1) & ( 
-- (\Converte|state.shift~q\) # (\Converte|state.done~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111110101111100000000000000110101111101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Converte|ALT_INV_state.done~q\,
	datab => \Converte|ALT_INV_shift_counter[2]~DUPLICATE_q\,
	datac => \Converte|ALT_INV_state.shift~q\,
	datad => \Converte|ALT_INV_shift_counter\(0),
	datae => \Converte|ALT_INV_shift_counter\(3),
	dataf => \Converte|ALT_INV_shift_counter\(1),
	combout => \Converte|Selector32~0_combout\);

-- Location: FF_X67_Y2_N55
\Converte|shift_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|Selector32~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|shift_counter\(3));

-- Location: LABCELL_X67_Y4_N3
\Converte|state_next.done~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|state_next.done~0_combout\ = ( \Converte|shift_counter\(3) & ( (\Converte|state.shift~q\ & (\Converte|shift_counter\(1) & (\Converte|shift_counter\(2) & !\Converte|shift_counter\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Converte|ALT_INV_state.shift~q\,
	datab => \Converte|ALT_INV_shift_counter\(1),
	datac => \Converte|ALT_INV_shift_counter\(2),
	datad => \Converte|ALT_INV_shift_counter\(0),
	dataf => \Converte|ALT_INV_shift_counter\(3),
	combout => \Converte|state_next.done~0_combout\);

-- Location: FF_X67_Y4_N41
\Converte|state.done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Converte|state_next.done~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|state.done~q\);

-- Location: LABCELL_X68_Y4_N33
\Converte|state.start~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|state.start~0_combout\ = ( !\Converte|state.done~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Converte|ALT_INV_state.done~q\,
	combout => \Converte|state.start~0_combout\);

-- Location: FF_X66_Y4_N53
\Converte|state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Converte|state.start~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|state.start~q\);

-- Location: LABCELL_X66_Y4_N48
\Converte|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|Selector1~1_combout\ = ( \Converte|Selector1~0_combout\ ) # ( !\Converte|Selector1~0_combout\ & ( !\Converte|state.start~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Converte|ALT_INV_state.start~q\,
	dataf => \Converte|ALT_INV_Selector1~0_combout\,
	combout => \Converte|Selector1~1_combout\);

-- Location: FF_X66_Y4_N50
\Converte|state.shift\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|Selector1~1_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|state.shift~q\);

-- Location: FF_X67_Y2_N56
\Converte|shift_counter[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|Selector32~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|shift_counter[3]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y4_N6
\Converte|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|Selector1~0_combout\ = ( \Converte|shift_counter[2]~DUPLICATE_q\ & ( (\Converte|state.shift~q\ & (((!\Converte|shift_counter[3]~DUPLICATE_q\) # (!\Converte|shift_counter\(1))) # (\Converte|shift_counter\(0)))) ) ) # ( 
-- !\Converte|shift_counter[2]~DUPLICATE_q\ & ( \Converte|state.shift~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010100010101010101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Converte|ALT_INV_state.shift~q\,
	datab => \Converte|ALT_INV_shift_counter\(0),
	datac => \Converte|ALT_INV_shift_counter[3]~DUPLICATE_q\,
	datad => \Converte|ALT_INV_shift_counter\(1),
	dataf => \Converte|ALT_INV_shift_counter[2]~DUPLICATE_q\,
	combout => \Converte|Selector1~0_combout\);

-- Location: LABCELL_X67_Y4_N33
\Converte|binary_next~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|binary_next~0_combout\ = ( \Converte|shift_counter\(1) & ( (!\Converte|shift_counter\(0) & (\Converte|shift_counter\(3) & (\Converte|shift_counter\(2) & \Converte|binary\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Converte|ALT_INV_shift_counter\(0),
	datab => \Converte|ALT_INV_shift_counter\(3),
	datac => \Converte|ALT_INV_shift_counter\(2),
	datad => \Converte|ALT_INV_binary\(0),
	dataf => \Converte|ALT_INV_shift_counter\(1),
	combout => \Converte|binary_next~0_combout\);

-- Location: IOIBUF_X26_Y0_N58
\contaAtraso~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_contaAtraso,
	o => \contaAtraso~input_o\);

-- Location: MLABCELL_X65_Y4_N48
\C|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C|Selector0~0_combout\ = (!\C|Eatual.Fim~q\ & ((\contaAtraso~input_o\) # (\C|Eatual.Inicial~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001110000011100000111000001110000011100000111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C|ALT_INV_Eatual.Inicial~q\,
	datab => \ALT_INV_contaAtraso~input_o\,
	datac => \C|ALT_INV_Eatual.Fim~q\,
	combout => \C|Selector0~0_combout\);

-- Location: FF_X64_Y4_N11
\C|Eatual.Inicial\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \C|Selector0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|Eatual.Inicial~q\);

-- Location: LABCELL_X67_Y4_N24
\geraSeed|IC_1|Qout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \geraSeed|IC_1|Qout[0]~0_combout\ = ( !\comb~0_combout\ & ( (!\C|Eatual.Inicial~q\ & ((!\geraSeed|IC_1|Qout[0]~reg0_q\))) # (\C|Eatual.Inicial~q\ & (!\geraSeed|IC_1|Qout[3]~reg0_q\ & \geraSeed|IC_1|Qout[0]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110000110011000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C|ALT_INV_Eatual.Inicial~q\,
	datac => \geraSeed|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datad => \geraSeed|IC_1|ALT_INV_Qout[0]~reg0_q\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \geraSeed|IC_1|Qout[0]~0_combout\);

-- Location: FF_X67_Y4_N26
\geraSeed|IC_1|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \geraSeed|IC_1|Qout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \geraSeed|IC_1|Qout[0]~reg0_q\);

-- Location: MLABCELL_X65_Y4_N57
\geraSeed|IC_1|Qout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \geraSeed|IC_1|Qout~1_combout\ = ( !\comb~0_combout\ & ( (!\geraSeed|IC_1|Qout[0]~reg0_q\ & ((\geraSeed|IC_1|Qout[1]~reg0_q\))) # (\geraSeed|IC_1|Qout[0]~reg0_q\ & (!\geraSeed|IC_1|Qout[3]~reg0_q\ & !\geraSeed|IC_1|Qout[1]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011110000000010101111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \geraSeed|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datac => \geraSeed|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datad => \geraSeed|IC_1|ALT_INV_Qout[1]~reg0_q\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \geraSeed|IC_1|Qout~1_combout\);

-- Location: MLABCELL_X65_Y4_N51
\geraSeed|IC_1|Qout[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \geraSeed|IC_1|Qout[0]~2_combout\ = ( \geraSeed|IC_1|Qout[3]~reg0_q\ & ( (!\C|Eatual.Inicial~q\) # ((\geraSeed|IC_1|Qout[0]~reg0_q\) # (\comb~0_combout\)) ) ) # ( !\geraSeed|IC_1|Qout[3]~reg0_q\ & ( (!\C|Eatual.Inicial~q\) # (\comb~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111110101111111111111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C|ALT_INV_Eatual.Inicial~q\,
	datac => \ALT_INV_comb~0_combout\,
	datad => \geraSeed|IC_1|ALT_INV_Qout[0]~reg0_q\,
	dataf => \geraSeed|IC_1|ALT_INV_Qout[3]~reg0_q\,
	combout => \geraSeed|IC_1|Qout[0]~2_combout\);

-- Location: FF_X65_Y4_N59
\geraSeed|IC_1|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \geraSeed|IC_1|Qout~1_combout\,
	ena => \geraSeed|IC_1|Qout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \geraSeed|IC_1|Qout[1]~reg0_q\);

-- Location: MLABCELL_X65_Y4_N54
\geraSeed|IC_1|Qout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \geraSeed|IC_1|Qout~3_combout\ = ( \geraSeed|IC_1|Qout[1]~reg0_q\ & ( (!\comb~0_combout\ & ((!\geraSeed|IC_1|Qout[0]~reg0_q\ & ((\geraSeed|IC_1|Qout[2]~reg0_q\))) # (\geraSeed|IC_1|Qout[0]~reg0_q\ & (!\geraSeed|IC_1|Qout[3]~reg0_q\ & 
-- !\geraSeed|IC_1|Qout[2]~reg0_q\)))) ) ) # ( !\geraSeed|IC_1|Qout[1]~reg0_q\ & ( (!\comb~0_combout\ & (\geraSeed|IC_1|Qout[2]~reg0_q\ & ((!\geraSeed|IC_1|Qout[3]~reg0_q\) # (!\geraSeed|IC_1|Qout[0]~reg0_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100000000000001110000000100000110000000010000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \geraSeed|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datab => \geraSeed|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datac => \ALT_INV_comb~0_combout\,
	datad => \geraSeed|IC_1|ALT_INV_Qout[2]~reg0_q\,
	dataf => \geraSeed|IC_1|ALT_INV_Qout[1]~reg0_q\,
	combout => \geraSeed|IC_1|Qout~3_combout\);

-- Location: FF_X65_Y4_N56
\geraSeed|IC_1|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \geraSeed|IC_1|Qout~3_combout\,
	ena => \geraSeed|IC_1|Qout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \geraSeed|IC_1|Qout[2]~reg0_q\);

-- Location: LABCELL_X67_Y4_N18
\geraSeed|IC_1|Qout[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \geraSeed|IC_1|Qout[3]~4_combout\ = ( \geraSeed|IC_1|Qout[3]~reg0_q\ & ( !\comb~0_combout\ & ( !\geraSeed|IC_1|Qout[0]~reg0_q\ ) ) ) # ( !\geraSeed|IC_1|Qout[3]~reg0_q\ & ( !\comb~0_combout\ & ( (\geraSeed|IC_1|Qout[1]~reg0_q\ & 
-- (\geraSeed|IC_1|Qout[2]~reg0_q\ & (\geraSeed|IC_1|Qout[0]~reg0_q\ & !\C|Eatual.Inicial~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \geraSeed|IC_1|ALT_INV_Qout[1]~reg0_q\,
	datab => \geraSeed|IC_1|ALT_INV_Qout[2]~reg0_q\,
	datac => \geraSeed|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datad => \C|ALT_INV_Eatual.Inicial~q\,
	datae => \geraSeed|IC_1|ALT_INV_Qout[3]~reg0_q\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \geraSeed|IC_1|Qout[3]~4_combout\);

-- Location: FF_X67_Y4_N20
\geraSeed|IC_1|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \geraSeed|IC_1|Qout[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \geraSeed|IC_1|Qout[3]~reg0_q\);

-- Location: LABCELL_X67_Y4_N27
\geraSeed|IC_2|Qout[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \geraSeed|IC_2|Qout[3]~0_combout\ = ( \geraSeed|IC_1|Qout[0]~reg0_q\ & ( (\geraSeed|IC_1|Qout[3]~reg0_q\ & !\C|Eatual.Inicial~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \geraSeed|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datad => \C|ALT_INV_Eatual.Inicial~q\,
	dataf => \geraSeed|IC_1|ALT_INV_Qout[0]~reg0_q\,
	combout => \geraSeed|IC_2|Qout[3]~0_combout\);

-- Location: LABCELL_X67_Y4_N6
\geraSeed|IC_2|Qout[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \geraSeed|IC_2|Qout[0]~1_combout\ = ( \geraSeed|IC_2|Qout[3]~0_combout\ & ( (!\comb~0_combout\ & !\geraSeed|IC_2|Qout[0]~reg0_q\) ) ) # ( !\geraSeed|IC_2|Qout[3]~0_combout\ & ( (!\comb~0_combout\ & (!\geraSeed|ClrN2~0_combout\ $ 
-- (!\geraSeed|IC_2|Qout[0]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000001100001100000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \geraSeed|ALT_INV_ClrN2~0_combout\,
	datac => \ALT_INV_comb~0_combout\,
	datad => \geraSeed|IC_2|ALT_INV_Qout[0]~reg0_q\,
	dataf => \geraSeed|IC_2|ALT_INV_Qout[3]~0_combout\,
	combout => \geraSeed|IC_2|Qout[0]~1_combout\);

-- Location: FF_X67_Y4_N8
\geraSeed|IC_2|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \geraSeed|IC_2|Qout[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \geraSeed|IC_2|Qout[0]~reg0_q\);

-- Location: LABCELL_X64_Y4_N48
\geraSeed|IC_2|Qout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \geraSeed|IC_2|Qout~2_combout\ = ( \geraSeed|IC_2|Qout[1]~reg0_q\ & ( !\comb~0_combout\ & ( (!\geraSeed|ClrN2~0_combout\ & !\geraSeed|IC_2|Qout[0]~reg0_q\) ) ) ) # ( !\geraSeed|IC_2|Qout[1]~reg0_q\ & ( !\comb~0_combout\ & ( (!\geraSeed|ClrN2~0_combout\ & 
-- \geraSeed|IC_2|Qout[0]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100110011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \geraSeed|ALT_INV_ClrN2~0_combout\,
	datad => \geraSeed|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datae => \geraSeed|IC_2|ALT_INV_Qout[1]~reg0_q\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \geraSeed|IC_2|Qout~2_combout\);

-- Location: LABCELL_X64_Y4_N12
\geraSeed|IC_2|Qout[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \geraSeed|IC_2|Qout[1]~3_combout\ = ( \geraSeed|IC_2|Qout[3]~0_combout\ & ( \geraSeed|ClrN2~0_combout\ ) ) # ( !\geraSeed|IC_2|Qout[3]~0_combout\ & ( \geraSeed|ClrN2~0_combout\ ) ) # ( \geraSeed|IC_2|Qout[3]~0_combout\ & ( !\geraSeed|ClrN2~0_combout\ ) ) 
-- # ( !\geraSeed|IC_2|Qout[3]~0_combout\ & ( !\geraSeed|ClrN2~0_combout\ & ( \comb~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_comb~0_combout\,
	datae => \geraSeed|IC_2|ALT_INV_Qout[3]~0_combout\,
	dataf => \geraSeed|ALT_INV_ClrN2~0_combout\,
	combout => \geraSeed|IC_2|Qout[1]~3_combout\);

-- Location: FF_X64_Y4_N50
\geraSeed|IC_2|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \geraSeed|IC_2|Qout~2_combout\,
	ena => \geraSeed|IC_2|Qout[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \geraSeed|IC_2|Qout[1]~reg0_q\);

-- Location: LABCELL_X64_Y4_N18
\geraSeed|IC_2|Qout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \geraSeed|IC_2|Qout~4_combout\ = ( \geraSeed|IC_2|Qout[1]~reg0_q\ & ( (!\comb~0_combout\ & (!\geraSeed|ClrN2~0_combout\ & (!\geraSeed|IC_2|Qout[0]~reg0_q\ $ (!\geraSeed|IC_2|Qout[2]~reg0_q\)))) ) ) # ( !\geraSeed|IC_2|Qout[1]~reg0_q\ & ( 
-- (!\comb~0_combout\ & (!\geraSeed|ClrN2~0_combout\ & \geraSeed|IC_2|Qout[2]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000100000100000000010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \geraSeed|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datac => \geraSeed|ALT_INV_ClrN2~0_combout\,
	datad => \geraSeed|IC_2|ALT_INV_Qout[2]~reg0_q\,
	dataf => \geraSeed|IC_2|ALT_INV_Qout[1]~reg0_q\,
	combout => \geraSeed|IC_2|Qout~4_combout\);

-- Location: FF_X64_Y4_N20
\geraSeed|IC_2|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \geraSeed|IC_2|Qout~4_combout\,
	ena => \geraSeed|IC_2|Qout[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \geraSeed|IC_2|Qout[2]~reg0_q\);

-- Location: LABCELL_X64_Y4_N39
\geraSeed|IC_2|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \geraSeed|IC_2|Add0~0_combout\ = ( \geraSeed|IC_2|Qout[0]~reg0_q\ & ( (\geraSeed|IC_2|Qout[1]~reg0_q\ & \geraSeed|IC_2|Qout[2]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \geraSeed|IC_2|ALT_INV_Qout[1]~reg0_q\,
	datad => \geraSeed|IC_2|ALT_INV_Qout[2]~reg0_q\,
	dataf => \geraSeed|IC_2|ALT_INV_Qout[0]~reg0_q\,
	combout => \geraSeed|IC_2|Add0~0_combout\);

-- Location: LABCELL_X67_Y4_N42
\geraSeed|IC_2|Qout[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \geraSeed|IC_2|Qout[3]~5_combout\ = ( \geraSeed|IC_2|Qout[3]~0_combout\ & ( (!\geraSeed|ClrN2~0_combout\ & (!\comb~0_combout\ & (!\geraSeed|IC_2|Add0~0_combout\ $ (!\geraSeed|IC_2|Qout[3]~reg0_q\)))) ) ) # ( !\geraSeed|IC_2|Qout[3]~0_combout\ & ( 
-- (!\geraSeed|ClrN2~0_combout\ & (!\comb~0_combout\ & \geraSeed|IC_2|Qout[3]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000001000100000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \geraSeed|ALT_INV_ClrN2~0_combout\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \geraSeed|IC_2|ALT_INV_Add0~0_combout\,
	datad => \geraSeed|IC_2|ALT_INV_Qout[3]~reg0_q\,
	dataf => \geraSeed|IC_2|ALT_INV_Qout[3]~0_combout\,
	combout => \geraSeed|IC_2|Qout[3]~5_combout\);

-- Location: FF_X67_Y4_N44
\geraSeed|IC_2|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \geraSeed|IC_2|Qout[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \geraSeed|IC_2|Qout[3]~reg0_q\);

-- Location: LABCELL_X67_Y4_N9
\geraSeed|ClrN2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \geraSeed|ClrN2~0_combout\ = ( \geraSeed|IC_1|Qout[0]~reg0_q\ & ( (\geraSeed|IC_1|Qout[3]~reg0_q\ & (\geraSeed|IC_2|Qout[0]~reg0_q\ & \geraSeed|IC_2|Qout[3]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \geraSeed|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datac => \geraSeed|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datad => \geraSeed|IC_2|ALT_INV_Qout[3]~reg0_q\,
	dataf => \geraSeed|IC_1|ALT_INV_Qout[0]~reg0_q\,
	combout => \geraSeed|ClrN2~0_combout\);

-- Location: LABCELL_X67_Y4_N45
\geraSeed|IC_3|Qout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \geraSeed|IC_3|Qout[0]~0_combout\ = ( \geraSeed|IC_3|Qout[3]~reg0_q\ & ( (!\comb~0_combout\ & ((!\geraSeed|ClrN2~0_combout\ & ((\geraSeed|IC_3|Qout[0]~reg0_q\))) # (\geraSeed|ClrN2~0_combout\ & (!\C|Eatual.Inicial~q\ & !\geraSeed|IC_3|Qout[0]~reg0_q\)))) 
-- ) ) # ( !\geraSeed|IC_3|Qout[3]~reg0_q\ & ( (!\comb~0_combout\ & (!\geraSeed|IC_3|Qout[0]~reg0_q\ $ (((!\geraSeed|ClrN2~0_combout\) # (\C|Eatual.Inicial~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000010001100010000001000110001000000100010000100000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \geraSeed|ALT_INV_ClrN2~0_combout\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \C|ALT_INV_Eatual.Inicial~q\,
	datad => \geraSeed|IC_3|ALT_INV_Qout[0]~reg0_q\,
	dataf => \geraSeed|IC_3|ALT_INV_Qout[3]~reg0_q\,
	combout => \geraSeed|IC_3|Qout[0]~0_combout\);

-- Location: FF_X67_Y4_N47
\geraSeed|IC_3|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \geraSeed|IC_3|Qout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \geraSeed|IC_3|Qout[0]~reg0_q\);

-- Location: LABCELL_X67_Y4_N36
\geraSeed|ClrN3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \geraSeed|ClrN3~0_combout\ = ( \geraSeed|IC_3|Qout[0]~reg0_q\ & ( \geraSeed|IC_3|Qout[3]~reg0_q\ & ( (\geraSeed|IC_1|Qout[0]~reg0_q\ & (\geraSeed|IC_2|Qout[3]~reg0_q\ & (\geraSeed|IC_1|Qout[3]~reg0_q\ & \geraSeed|IC_2|Qout[0]~reg0_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \geraSeed|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datab => \geraSeed|IC_2|ALT_INV_Qout[3]~reg0_q\,
	datac => \geraSeed|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datad => \geraSeed|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datae => \geraSeed|IC_3|ALT_INV_Qout[0]~reg0_q\,
	dataf => \geraSeed|IC_3|ALT_INV_Qout[3]~reg0_q\,
	combout => \geraSeed|ClrN3~0_combout\);

-- Location: LABCELL_X66_Y5_N57
\geraSeed|IC_3|Qout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \geraSeed|IC_3|Qout~1_combout\ = ( !\geraSeed|ClrN3~0_combout\ & ( (!\comb~0_combout\ & (!\geraSeed|IC_3|Qout[0]~reg0_q\ $ (!\geraSeed|IC_3|Qout[1]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000000011001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_comb~0_combout\,
	datac => \geraSeed|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datad => \geraSeed|IC_3|ALT_INV_Qout[1]~reg0_q\,
	dataf => \geraSeed|ALT_INV_ClrN3~0_combout\,
	combout => \geraSeed|IC_3|Qout~1_combout\);

-- Location: LABCELL_X66_Y5_N54
\geraSeed|IC_3|Qout[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \geraSeed|IC_3|Qout[0]~2_combout\ = ( \geraSeed|ClrN2~0_combout\ & ( (!\C|Eatual.Inicial~q\) # ((\geraSeed|ClrN3~0_combout\) # (\comb~0_combout\)) ) ) # ( !\geraSeed|ClrN2~0_combout\ & ( (\geraSeed|ClrN3~0_combout\) # (\comb~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111110101111111111111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C|ALT_INV_Eatual.Inicial~q\,
	datac => \ALT_INV_comb~0_combout\,
	datad => \geraSeed|ALT_INV_ClrN3~0_combout\,
	dataf => \geraSeed|ALT_INV_ClrN2~0_combout\,
	combout => \geraSeed|IC_3|Qout[0]~2_combout\);

-- Location: FF_X66_Y5_N59
\geraSeed|IC_3|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \geraSeed|IC_3|Qout~1_combout\,
	ena => \geraSeed|IC_3|Qout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \geraSeed|IC_3|Qout[1]~reg0_q\);

-- Location: LABCELL_X66_Y5_N3
\geraSeed|IC_3|Qout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \geraSeed|IC_3|Qout~3_combout\ = ( \geraSeed|IC_3|Qout[2]~reg0_q\ & ( \geraSeed|IC_3|Qout[1]~reg0_q\ & ( (!\geraSeed|IC_3|Qout[0]~reg0_q\ & (!\comb~0_combout\ & !\geraSeed|ClrN3~0_combout\)) ) ) ) # ( !\geraSeed|IC_3|Qout[2]~reg0_q\ & ( 
-- \geraSeed|IC_3|Qout[1]~reg0_q\ & ( (\geraSeed|IC_3|Qout[0]~reg0_q\ & (!\comb~0_combout\ & !\geraSeed|ClrN3~0_combout\)) ) ) ) # ( \geraSeed|IC_3|Qout[2]~reg0_q\ & ( !\geraSeed|IC_3|Qout[1]~reg0_q\ & ( (!\comb~0_combout\ & !\geraSeed|ClrN3~0_combout\) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000001000000010000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \geraSeed|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \geraSeed|ALT_INV_ClrN3~0_combout\,
	datae => \geraSeed|IC_3|ALT_INV_Qout[2]~reg0_q\,
	dataf => \geraSeed|IC_3|ALT_INV_Qout[1]~reg0_q\,
	combout => \geraSeed|IC_3|Qout~3_combout\);

-- Location: FF_X66_Y5_N5
\geraSeed|IC_3|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \geraSeed|IC_3|Qout~3_combout\,
	ena => \geraSeed|IC_3|Qout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \geraSeed|IC_3|Qout[2]~reg0_q\);

-- Location: LABCELL_X66_Y5_N42
\geraSeed|IC_3|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \geraSeed|IC_3|Add0~0_combout\ = ( \geraSeed|IC_3|Qout[0]~reg0_q\ & ( (\geraSeed|IC_3|Qout[1]~reg0_q\ & \geraSeed|IC_3|Qout[2]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \geraSeed|IC_3|ALT_INV_Qout[1]~reg0_q\,
	datac => \geraSeed|IC_3|ALT_INV_Qout[2]~reg0_q\,
	dataf => \geraSeed|IC_3|ALT_INV_Qout[0]~reg0_q\,
	combout => \geraSeed|IC_3|Add0~0_combout\);

-- Location: LABCELL_X66_Y5_N9
\geraSeed|IC_3|Qout[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \geraSeed|IC_3|Qout[3]~4_combout\ = ( \geraSeed|IC_3|Qout[3]~reg0_q\ & ( \C|Eatual.Inicial~q\ & ( (!\comb~0_combout\ & ((!\geraSeed|ClrN2~0_combout\) # (!\geraSeed|IC_3|Qout[0]~reg0_q\))) ) ) ) # ( \geraSeed|IC_3|Qout[3]~reg0_q\ & ( !\C|Eatual.Inicial~q\ 
-- & ( (!\comb~0_combout\ & ((!\geraSeed|ClrN2~0_combout\) # ((!\geraSeed|IC_3|Add0~0_combout\ & !\geraSeed|IC_3|Qout[0]~reg0_q\)))) ) ) ) # ( !\geraSeed|IC_3|Qout[3]~reg0_q\ & ( !\C|Eatual.Inicial~q\ & ( (\geraSeed|ClrN2~0_combout\ & (!\comb~0_combout\ & 
-- \geraSeed|IC_3|Add0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100110010001000100000000000000000001100110010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \geraSeed|ALT_INV_ClrN2~0_combout\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \geraSeed|IC_3|ALT_INV_Add0~0_combout\,
	datad => \geraSeed|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datae => \geraSeed|IC_3|ALT_INV_Qout[3]~reg0_q\,
	dataf => \C|ALT_INV_Eatual.Inicial~q\,
	combout => \geraSeed|IC_3|Qout[3]~4_combout\);

-- Location: FF_X66_Y5_N11
\geraSeed|IC_3|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \geraSeed|IC_3|Qout[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \geraSeed|IC_3|Qout[3]~reg0_q\);

-- Location: MLABCELL_X65_Y4_N21
\C|Eprox.RegistraSeed1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C|Eprox.RegistraSeed1~0_combout\ = (\contaAtraso~input_o\ & !\C|Eatual.Inicial~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_contaAtraso~input_o\,
	datad => \C|ALT_INV_Eatual.Inicial~q\,
	combout => \C|Eprox.RegistraSeed1~0_combout\);

-- Location: FF_X65_Y4_N23
\C|Eatual.RegistraSeed1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \C|Eprox.RegistraSeed1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|Eatual.RegistraSeed1~q\);

-- Location: FF_X65_Y4_N20
\C|Eatual.RegistraSeed2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \C|Eatual.RegistraSeed1~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|Eatual.RegistraSeed2~q\);

-- Location: MLABCELL_X65_Y4_N12
\Registrador|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registrador|process_0~0_combout\ = ( \comb~0_combout\ ) # ( !\comb~0_combout\ & ( (\C|Eatual.RegistraSeed2~q\) # (\C|Eatual.RegistraSeed1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C|ALT_INV_Eatual.RegistraSeed1~q\,
	datac => \C|ALT_INV_Eatual.RegistraSeed2~q\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \Registrador|process_0~0_combout\);

-- Location: FF_X64_Y4_N31
\Registrador|IQ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \geraSeed|IC_3|Qout[3]~reg0_q\,
	sclr => \comb~0_combout\,
	sload => VCC,
	ena => \Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador|IQ\(11));

-- Location: FF_X70_Y4_N26
\Registrador|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Registrador|IQ\(11),
	sload => VCC,
	ena => \Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador|Q\(11));

-- Location: LABCELL_X70_Y4_N15
\PSEUDORANDOM|count[11]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[11]~45_combout\ = ( \comb~0_combout\ & ( \Registrador|Q\(11) ) ) # ( !\comb~0_combout\ & ( \PSEUDORANDOM|count[11]~45_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Registrador|ALT_INV_Q\(11),
	datac => \PSEUDORANDOM|ALT_INV_count[11]~45_combout\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \PSEUDORANDOM|count[11]~45_combout\);

-- Location: LABCELL_X64_Y4_N57
\Registrador|IQ[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registrador|IQ[10]~feeder_combout\ = ( \geraSeed|IC_3|Qout[2]~reg0_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \geraSeed|IC_3|ALT_INV_Qout[2]~reg0_q\,
	combout => \Registrador|IQ[10]~feeder_combout\);

-- Location: FF_X64_Y4_N58
\Registrador|IQ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Registrador|IQ[10]~feeder_combout\,
	sclr => \comb~0_combout\,
	ena => \Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador|IQ\(10));

-- Location: LABCELL_X66_Y2_N3
\Registrador|Q[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registrador|Q[10]~feeder_combout\ = ( \Registrador|IQ\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Registrador|ALT_INV_IQ\(10),
	combout => \Registrador|Q[10]~feeder_combout\);

-- Location: FF_X66_Y2_N5
\Registrador|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Registrador|Q[10]~feeder_combout\,
	ena => \Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador|Q\(10));

-- Location: FF_X65_Y4_N32
\Registrador|IQ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \geraSeed|IC_3|Qout[1]~reg0_q\,
	sclr => \comb~0_combout\,
	sload => VCC,
	ena => \Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador|IQ\(9));

-- Location: FF_X65_Y4_N50
\Registrador|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Registrador|IQ\(9),
	sload => VCC,
	ena => \Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador|Q\(9));

-- Location: MLABCELL_X65_Y4_N30
\PSEUDORANDOM|count[9]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[9]~37_combout\ = ( \Registrador|Q\(9) & ( (\comb~0_combout\) # (\PSEUDORANDOM|count[9]~37_combout\) ) ) # ( !\Registrador|Q\(9) & ( (\PSEUDORANDOM|count[9]~37_combout\ & !\comb~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PSEUDORANDOM|ALT_INV_count[9]~37_combout\,
	datac => \ALT_INV_comb~0_combout\,
	dataf => \Registrador|ALT_INV_Q\(9),
	combout => \PSEUDORANDOM|count[9]~37_combout\);

-- Location: FF_X65_Y4_N1
\Registrador|IQ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \geraSeed|IC_3|Qout[0]~reg0_q\,
	sclr => \comb~0_combout\,
	sload => VCC,
	ena => \Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador|IQ\(8));

-- Location: LABCELL_X66_Y2_N27
\Registrador|Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registrador|Q[8]~feeder_combout\ = ( \Registrador|IQ\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Registrador|ALT_INV_IQ\(8),
	combout => \Registrador|Q[8]~feeder_combout\);

-- Location: FF_X66_Y2_N29
\Registrador|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Registrador|Q[8]~feeder_combout\,
	ena => \Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador|Q\(8));

-- Location: LABCELL_X64_Y4_N0
\Registrador|IQ[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registrador|IQ[7]~feeder_combout\ = ( \geraSeed|IC_2|Qout[3]~reg0_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \geraSeed|IC_2|ALT_INV_Qout[3]~reg0_q\,
	combout => \Registrador|IQ[7]~feeder_combout\);

-- Location: FF_X64_Y4_N1
\Registrador|IQ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Registrador|IQ[7]~feeder_combout\,
	sclr => \comb~0_combout\,
	ena => \Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador|IQ\(7));

-- Location: FF_X70_Y4_N47
\Registrador|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Registrador|IQ\(7),
	sload => VCC,
	ena => \Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador|Q\(7));

-- Location: LABCELL_X64_Y4_N45
\Registrador|IQ[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registrador|IQ[5]~feeder_combout\ = ( \geraSeed|IC_2|Qout[1]~reg0_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \geraSeed|IC_2|ALT_INV_Qout[1]~reg0_q\,
	combout => \Registrador|IQ[5]~feeder_combout\);

-- Location: FF_X64_Y4_N47
\Registrador|IQ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Registrador|IQ[5]~feeder_combout\,
	sclr => \comb~0_combout\,
	ena => \Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador|IQ\(5));

-- Location: LABCELL_X63_Y4_N36
\Registrador|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registrador|Q[5]~feeder_combout\ = ( \Registrador|IQ\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Registrador|ALT_INV_IQ\(5),
	combout => \Registrador|Q[5]~feeder_combout\);

-- Location: FF_X63_Y4_N38
\Registrador|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Registrador|Q[5]~feeder_combout\,
	ena => \Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador|Q\(5));

-- Location: MLABCELL_X65_Y4_N0
\Registrador|IQ[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registrador|IQ[3]~feeder_combout\ = ( \geraSeed|IC_1|Qout[3]~reg0_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \geraSeed|IC_1|ALT_INV_Qout[3]~reg0_q\,
	combout => \Registrador|IQ[3]~feeder_combout\);

-- Location: FF_X65_Y4_N2
\Registrador|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Registrador|IQ[3]~feeder_combout\,
	sclr => \comb~0_combout\,
	ena => \Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador|IQ\(3));

-- Location: FF_X65_Y4_N5
\Registrador|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Registrador|IQ\(3),
	sload => VCC,
	ena => \Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador|Q\(3));

-- Location: MLABCELL_X65_Y4_N3
\PSEUDORANDOM|count[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[3]~13_combout\ = ( \comb~0_combout\ & ( \Registrador|Q\(3) ) ) # ( !\comb~0_combout\ & ( \PSEUDORANDOM|count[3]~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PSEUDORANDOM|ALT_INV_count[3]~13_combout\,
	datad => \Registrador|ALT_INV_Q\(3),
	dataf => \ALT_INV_comb~0_combout\,
	combout => \PSEUDORANDOM|count[3]~13_combout\);

-- Location: FF_X65_Y4_N10
\Registrador|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \geraSeed|IC_1|Qout[1]~reg0_q\,
	sclr => \comb~0_combout\,
	sload => VCC,
	ena => \Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador|IQ\(1));

-- Location: FF_X65_Y4_N38
\Registrador|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Registrador|IQ\(1),
	sload => VCC,
	ena => \Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador|Q\(1));

-- Location: MLABCELL_X65_Y4_N9
\PSEUDORANDOM|count[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[1]~5_combout\ = ( \comb~0_combout\ & ( \Registrador|Q\(1) ) ) # ( !\comb~0_combout\ & ( \Registrador|Q\(1) & ( \PSEUDORANDOM|count[1]~5_combout\ ) ) ) # ( !\comb~0_combout\ & ( !\Registrador|Q\(1) & ( \PSEUDORANDOM|count[1]~5_combout\ 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PSEUDORANDOM|ALT_INV_count[1]~5_combout\,
	datae => \ALT_INV_comb~0_combout\,
	dataf => \Registrador|ALT_INV_Q\(1),
	combout => \PSEUDORANDOM|count[1]~5_combout\);

-- Location: LABCELL_X66_Y4_N0
\PSEUDORANDOM|count[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[1]~7_combout\ = ( \PSEUDORANDOM|count[1]~5_combout\ & ( !\PSEUDORANDOM|count[0]~2_combout\ ) ) # ( !\PSEUDORANDOM|count[1]~5_combout\ & ( \PSEUDORANDOM|count[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PSEUDORANDOM|ALT_INV_count[0]~2_combout\,
	dataf => \PSEUDORANDOM|ALT_INV_count[1]~5_combout\,
	combout => \PSEUDORANDOM|count[1]~7_combout\);

-- Location: LABCELL_X67_Y3_N42
\ciclagensLFSR|Contador|IC_1|Qout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ciclagensLFSR|Contador|IC_1|Qout~1_combout\ = ( \ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\ & ( (!\comb~0_combout\ & (!\ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\ & !\ciclagensLFSR|Contador|IC_1|Qout[1]~reg0_q\)) ) ) # ( 
-- !\ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\ & ( (!\comb~0_combout\ & \ciclagensLFSR|Contador|IC_1|Qout[1]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_comb~0_combout\,
	datac => \ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datad => \ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[1]~reg0_q\,
	dataf => \ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	combout => \ciclagensLFSR|Contador|IC_1|Qout~1_combout\);

-- Location: LABCELL_X67_Y3_N45
\ciclagensLFSR|Contador|IC_1|Qout[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ciclagensLFSR|Contador|IC_1|Qout[3]~2_combout\ = ( \comb~0_combout\ ) # ( !\comb~0_combout\ & ( ((\ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\ & \ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\)) # (\C|Eatual.Cicla~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011111010101010101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C|ALT_INV_Eatual.Cicla~q\,
	datac => \ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datad => \ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \ciclagensLFSR|Contador|IC_1|Qout[3]~2_combout\);

-- Location: FF_X67_Y3_N44
\ciclagensLFSR|Contador|IC_1|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ciclagensLFSR|Contador|IC_1|Qout~1_combout\,
	ena => \ciclagensLFSR|Contador|IC_1|Qout[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ciclagensLFSR|Contador|IC_1|Qout[1]~reg0_q\);

-- Location: LABCELL_X67_Y3_N54
\ciclagensLFSR|Contador|IC_1|Qout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ciclagensLFSR|Contador|IC_1|Qout~3_combout\ = ( \ciclagensLFSR|Contador|IC_1|Qout[1]~reg0_q\ & ( (!\comb~0_combout\ & ((!\ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\ & ((\ciclagensLFSR|Contador|IC_1|Qout[2]~reg0_q\))) # 
-- (\ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\ & (!\ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\ & !\ciclagensLFSR|Contador|IC_1|Qout[2]~reg0_q\)))) ) ) # ( !\ciclagensLFSR|Contador|IC_1|Qout[1]~reg0_q\ & ( (!\comb~0_combout\ & 
-- (\ciclagensLFSR|Contador|IC_1|Qout[2]~reg0_q\ & ((!\ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\) # (!\ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100000000000001110000000100000110000000010000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datab => \ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datac => \ALT_INV_comb~0_combout\,
	datad => \ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[2]~reg0_q\,
	dataf => \ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[1]~reg0_q\,
	combout => \ciclagensLFSR|Contador|IC_1|Qout~3_combout\);

-- Location: FF_X67_Y3_N56
\ciclagensLFSR|Contador|IC_1|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ciclagensLFSR|Contador|IC_1|Qout~3_combout\,
	ena => \ciclagensLFSR|Contador|IC_1|Qout[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ciclagensLFSR|Contador|IC_1|Qout[2]~reg0_q\);

-- Location: LABCELL_X70_Y3_N0
\ciclagensLFSR|Contador|IC_1|Qout[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ciclagensLFSR|Contador|IC_1|Qout[3]~4_combout\ = ( !\ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\ & ( \ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\ & ( (\C|Eatual.Cicla~q\ & (!\comb~0_combout\ & (\ciclagensLFSR|Contador|IC_1|Qout[2]~reg0_q\ & 
-- \ciclagensLFSR|Contador|IC_1|Qout[1]~reg0_q\))) ) ) ) # ( \ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\ & ( !\ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\ & ( !\comb~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C|ALT_INV_Eatual.Cicla~q\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[2]~reg0_q\,
	datad => \ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[1]~reg0_q\,
	datae => \ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	dataf => \ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	combout => \ciclagensLFSR|Contador|IC_1|Qout[3]~4_combout\);

-- Location: FF_X70_Y3_N2
\ciclagensLFSR|Contador|IC_1|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ciclagensLFSR|Contador|IC_1|Qout[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\);

-- Location: LABCELL_X67_Y3_N12
\ciclagensLFSR|Contador|IC_1|Qout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ciclagensLFSR|Contador|IC_1|Qout[0]~0_combout\ = ( \ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\ & ( !\comb~0_combout\ & ( (!\C|Eatual.Cicla~q\ & !\ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\) ) ) ) # ( !\ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\ & ( 
-- !\comb~0_combout\ & ( \C|Eatual.Cicla~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C|ALT_INV_Eatual.Cicla~q\,
	datac => \ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datae => \ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \ciclagensLFSR|Contador|IC_1|Qout[0]~0_combout\);

-- Location: FF_X67_Y3_N14
\ciclagensLFSR|Contador|IC_1|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ciclagensLFSR|Contador|IC_1|Qout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\);

-- Location: LABCELL_X67_Y3_N57
\ciclagensLFSR|Contador|IC_2|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ciclagensLFSR|Contador|IC_2|process_0~0_combout\ = ( \C|Eatual.Cicla~q\ & ( (\ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\ & \ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datad => \ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	dataf => \C|ALT_INV_Eatual.Cicla~q\,
	combout => \ciclagensLFSR|Contador|IC_2|process_0~0_combout\);

-- Location: LABCELL_X70_Y3_N39
\ciclagensLFSR|Contador|IC_2|Qout[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ciclagensLFSR|Contador|IC_2|Qout[0]~1_combout\ = ( !\ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\ & ( \ciclagensLFSR|Contador|IC_2|Qout[2]~0_combout\ & ( !\comb~0_combout\ ) ) ) # ( \ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\ & ( 
-- !\ciclagensLFSR|Contador|IC_2|Qout[2]~0_combout\ & ( (!\ciclagensLFSR|Contador|IC_2|process_0~0_combout\ & !\comb~0_combout\) ) ) ) # ( !\ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\ & ( !\ciclagensLFSR|Contador|IC_2|Qout[2]~0_combout\ & ( 
-- (\ciclagensLFSR|Contador|IC_2|process_0~0_combout\ & !\comb~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100100010001000100011001100110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ciclagensLFSR|Contador|IC_2|ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_comb~0_combout\,
	datae => \ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\,
	dataf => \ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[2]~0_combout\,
	combout => \ciclagensLFSR|Contador|IC_2|Qout[0]~1_combout\);

-- Location: FF_X70_Y3_N41
\ciclagensLFSR|Contador|IC_2|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ciclagensLFSR|Contador|IC_2|Qout[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\);

-- Location: LABCELL_X67_Y3_N48
\ciclagensLFSR|Contador|IC_2|Qout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ciclagensLFSR|Contador|IC_2|Qout~2_combout\ = ( \ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\ & ( (!\comb~0_combout\ & (!\ciclagensLFSR|Contador|IC_2|Qout[2]~0_combout\ & !\ciclagensLFSR|Contador|IC_2|Qout[1]~reg0_q\)) ) ) # ( 
-- !\ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\ & ( (!\comb~0_combout\ & (!\ciclagensLFSR|Contador|IC_2|Qout[2]~0_combout\ & \ciclagensLFSR|Contador|IC_2|Qout[1]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_comb~0_combout\,
	datac => \ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[2]~0_combout\,
	datad => \ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[1]~reg0_q\,
	dataf => \ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\,
	combout => \ciclagensLFSR|Contador|IC_2|Qout~2_combout\);

-- Location: LABCELL_X67_Y3_N3
\ciclagensLFSR|Contador|IC_2|Qout[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ciclagensLFSR|Contador|IC_2|Qout[2]~3_combout\ = ( \ciclagensLFSR|Contador|IC_2|Qout[2]~0_combout\ & ( \comb~0_combout\ ) ) # ( !\ciclagensLFSR|Contador|IC_2|Qout[2]~0_combout\ & ( \comb~0_combout\ ) ) # ( \ciclagensLFSR|Contador|IC_2|Qout[2]~0_combout\ 
-- & ( !\comb~0_combout\ ) ) # ( !\ciclagensLFSR|Contador|IC_2|Qout[2]~0_combout\ & ( !\comb~0_combout\ & ( \ciclagensLFSR|Contador|IC_2|process_0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ciclagensLFSR|Contador|IC_2|ALT_INV_process_0~0_combout\,
	datae => \ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[2]~0_combout\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \ciclagensLFSR|Contador|IC_2|Qout[2]~3_combout\);

-- Location: FF_X67_Y3_N50
\ciclagensLFSR|Contador|IC_2|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ciclagensLFSR|Contador|IC_2|Qout~2_combout\,
	ena => \ciclagensLFSR|Contador|IC_2|Qout[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ciclagensLFSR|Contador|IC_2|Qout[1]~reg0_q\);

-- Location: LABCELL_X67_Y3_N39
\ciclagensLFSR|Contador|IC_2|Qout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ciclagensLFSR|Contador|IC_2|Qout~4_combout\ = ( \ciclagensLFSR|Contador|IC_2|Qout[2]~reg0_q\ & ( \ciclagensLFSR|Contador|IC_2|Qout[1]~reg0_q\ & ( (!\comb~0_combout\ & (!\ciclagensLFSR|Contador|IC_2|Qout[2]~0_combout\ & 
-- !\ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\)) ) ) ) # ( !\ciclagensLFSR|Contador|IC_2|Qout[2]~reg0_q\ & ( \ciclagensLFSR|Contador|IC_2|Qout[1]~reg0_q\ & ( (!\comb~0_combout\ & (!\ciclagensLFSR|Contador|IC_2|Qout[2]~0_combout\ & 
-- \ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\)) ) ) ) # ( \ciclagensLFSR|Contador|IC_2|Qout[2]~reg0_q\ & ( !\ciclagensLFSR|Contador|IC_2|Qout[1]~reg0_q\ & ( (!\comb~0_combout\ & !\ciclagensLFSR|Contador|IC_2|Qout[2]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000000000000110000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_comb~0_combout\,
	datac => \ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[2]~0_combout\,
	datad => \ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datae => \ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[2]~reg0_q\,
	dataf => \ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[1]~reg0_q\,
	combout => \ciclagensLFSR|Contador|IC_2|Qout~4_combout\);

-- Location: FF_X67_Y3_N41
\ciclagensLFSR|Contador|IC_2|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ciclagensLFSR|Contador|IC_2|Qout~4_combout\,
	ena => \ciclagensLFSR|Contador|IC_2|Qout[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ciclagensLFSR|Contador|IC_2|Qout[2]~reg0_q\);

-- Location: LABCELL_X70_Y3_N12
\ciclagensLFSR|Contador|IC_2|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ciclagensLFSR|Contador|IC_2|Add0~0_combout\ = ( \ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\ & ( (\ciclagensLFSR|Contador|IC_2|Qout[2]~reg0_q\ & \ciclagensLFSR|Contador|IC_2|Qout[1]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[2]~reg0_q\,
	datad => \ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[1]~reg0_q\,
	dataf => \ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\,
	combout => \ciclagensLFSR|Contador|IC_2|Add0~0_combout\);

-- Location: LABCELL_X70_Y3_N24
\ciclagensLFSR|Contador|IC_2|Qout[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ciclagensLFSR|Contador|IC_2|Qout[3]~5_combout\ = ( \ciclagensLFSR|Contador|IC_2|Qout[3]~reg0_q\ & ( !\ciclagensLFSR|Contador|IC_2|Qout[2]~0_combout\ & ( (!\comb~0_combout\ & ((!\ciclagensLFSR|Contador|IC_2|process_0~0_combout\) # 
-- (!\ciclagensLFSR|Contador|IC_2|Add0~0_combout\))) ) ) ) # ( !\ciclagensLFSR|Contador|IC_2|Qout[3]~reg0_q\ & ( !\ciclagensLFSR|Contador|IC_2|Qout[2]~0_combout\ & ( (!\comb~0_combout\ & (\ciclagensLFSR|Contador|IC_2|process_0~0_combout\ & 
-- \ciclagensLFSR|Contador|IC_2|Add0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100110011001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_comb~0_combout\,
	datac => \ciclagensLFSR|Contador|IC_2|ALT_INV_process_0~0_combout\,
	datad => \ciclagensLFSR|Contador|IC_2|ALT_INV_Add0~0_combout\,
	datae => \ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[3]~reg0_q\,
	dataf => \ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[2]~0_combout\,
	combout => \ciclagensLFSR|Contador|IC_2|Qout[3]~5_combout\);

-- Location: FF_X70_Y3_N26
\ciclagensLFSR|Contador|IC_2|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ciclagensLFSR|Contador|IC_2|Qout[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ciclagensLFSR|Contador|IC_2|Qout[3]~reg0_q\);

-- Location: LABCELL_X70_Y3_N30
\ciclagensLFSR|Contador|IC_2|Qout[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ciclagensLFSR|Contador|IC_2|Qout[2]~0_combout\ = ( \ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\ & ( (\ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\ & (\ciclagensLFSR|Contador|IC_2|Qout[3]~reg0_q\ & \ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datac => \ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[3]~reg0_q\,
	datad => \ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	dataf => \ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	combout => \ciclagensLFSR|Contador|IC_2|Qout[2]~0_combout\);

-- Location: LABCELL_X70_Y3_N15
\ciclagensLFSR|Contador|IC_3|Qout[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ciclagensLFSR|Contador|IC_3|Qout[0]~1_combout\ = ( \ciclagensLFSR|Contador|IC_3|Qout[3]~reg0_q\ & ( (!\comb~0_combout\ & ((!\ciclagensLFSR|Contador|IC_2|Qout[2]~0_combout\ & ((\ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\))) # 
-- (\ciclagensLFSR|Contador|IC_2|Qout[2]~0_combout\ & (\C|Eatual.Cicla~q\ & !\ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\)))) ) ) # ( !\ciclagensLFSR|Contador|IC_3|Qout[3]~reg0_q\ & ( (!\comb~0_combout\ & (!\ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\ $ 
-- (((!\C|Eatual.Cicla~q\) # (!\ciclagensLFSR|Contador|IC_2|Qout[2]~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011001000000001001100100000000100110000000000010011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C|ALT_INV_Eatual.Cicla~q\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[2]~0_combout\,
	datad => \ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\,
	dataf => \ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[3]~reg0_q\,
	combout => \ciclagensLFSR|Contador|IC_3|Qout[0]~1_combout\);

-- Location: FF_X70_Y3_N17
\ciclagensLFSR|Contador|IC_3|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ciclagensLFSR|Contador|IC_3|Qout[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\);

-- Location: LABCELL_X70_Y3_N57
\ciclagensLFSR|Contador|IC_3|Qout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ciclagensLFSR|Contador|IC_3|Qout~2_combout\ = ( !\ciclagensLFSR|Contador|ClrN3~0_combout\ & ( (!\comb~0_combout\ & (!\ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\ $ (!\ciclagensLFSR|Contador|IC_3|Qout[1]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000000011001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_comb~0_combout\,
	datac => \ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datad => \ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[1]~reg0_q\,
	dataf => \ciclagensLFSR|Contador|ALT_INV_ClrN3~0_combout\,
	combout => \ciclagensLFSR|Contador|IC_3|Qout~2_combout\);

-- Location: LABCELL_X70_Y3_N54
\ciclagensLFSR|Contador|IC_3|Qout[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ciclagensLFSR|Contador|IC_3|Qout[0]~3_combout\ = ( \comb~0_combout\ ) # ( !\comb~0_combout\ & ( ((\ciclagensLFSR|Contador|IC_2|Qout[2]~0_combout\ & \C|Eatual.Cicla~q\)) # (\ciclagensLFSR|Contador|ClrN3~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011111010101010101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ciclagensLFSR|Contador|ALT_INV_ClrN3~0_combout\,
	datac => \ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[2]~0_combout\,
	datad => \C|ALT_INV_Eatual.Cicla~q\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \ciclagensLFSR|Contador|IC_3|Qout[0]~3_combout\);

-- Location: FF_X70_Y3_N59
\ciclagensLFSR|Contador|IC_3|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ciclagensLFSR|Contador|IC_3|Qout~2_combout\,
	ena => \ciclagensLFSR|Contador|IC_3|Qout[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ciclagensLFSR|Contador|IC_3|Qout[1]~reg0_q\);

-- Location: LABCELL_X70_Y3_N9
\ciclagensLFSR|Contador|IC_3|Qout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ciclagensLFSR|Contador|IC_3|Qout~4_combout\ = ( \ciclagensLFSR|Contador|IC_3|Qout[2]~reg0_q\ & ( \ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\ & ( (!\comb~0_combout\ & (!\ciclagensLFSR|Contador|IC_3|Qout[1]~reg0_q\ & 
-- !\ciclagensLFSR|Contador|ClrN3~0_combout\)) ) ) ) # ( !\ciclagensLFSR|Contador|IC_3|Qout[2]~reg0_q\ & ( \ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\ & ( (!\comb~0_combout\ & (\ciclagensLFSR|Contador|IC_3|Qout[1]~reg0_q\ & 
-- !\ciclagensLFSR|Contador|ClrN3~0_combout\)) ) ) ) # ( \ciclagensLFSR|Contador|IC_3|Qout[2]~reg0_q\ & ( !\ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\ & ( (!\comb~0_combout\ & !\ciclagensLFSR|Contador|ClrN3~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000000000000001100000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_comb~0_combout\,
	datac => \ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[1]~reg0_q\,
	datad => \ciclagensLFSR|Contador|ALT_INV_ClrN3~0_combout\,
	datae => \ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[2]~reg0_q\,
	dataf => \ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\,
	combout => \ciclagensLFSR|Contador|IC_3|Qout~4_combout\);

-- Location: FF_X70_Y3_N11
\ciclagensLFSR|Contador|IC_3|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ciclagensLFSR|Contador|IC_3|Qout~4_combout\,
	ena => \ciclagensLFSR|Contador|IC_3|Qout[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ciclagensLFSR|Contador|IC_3|Qout[2]~reg0_q\);

-- Location: LABCELL_X70_Y3_N33
\ciclagensLFSR|Contador|IC_3|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ciclagensLFSR|Contador|IC_3|Add0~0_combout\ = ( \ciclagensLFSR|Contador|IC_3|Qout[2]~reg0_q\ & ( (\ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\ & \ciclagensLFSR|Contador|IC_3|Qout[1]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datad => \ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[1]~reg0_q\,
	dataf => \ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[2]~reg0_q\,
	combout => \ciclagensLFSR|Contador|IC_3|Add0~0_combout\);

-- Location: LABCELL_X70_Y3_N48
\ciclagensLFSR|Contador|IC_3|Qout[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ciclagensLFSR|Contador|IC_3|Qout[3]~0_combout\ = ( \ciclagensLFSR|Contador|IC_3|Qout[3]~reg0_q\ & ( \ciclagensLFSR|Contador|IC_2|Qout[2]~0_combout\ & ( (!\comb~0_combout\ & (!\ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\ & 
-- ((!\ciclagensLFSR|Contador|IC_3|Add0~0_combout\) # (!\C|Eatual.Cicla~q\)))) ) ) ) # ( !\ciclagensLFSR|Contador|IC_3|Qout[3]~reg0_q\ & ( \ciclagensLFSR|Contador|IC_2|Qout[2]~0_combout\ & ( (\ciclagensLFSR|Contador|IC_3|Add0~0_combout\ & (!\comb~0_combout\ 
-- & \C|Eatual.Cicla~q\)) ) ) ) # ( \ciclagensLFSR|Contador|IC_3|Qout[3]~reg0_q\ & ( !\ciclagensLFSR|Contador|IC_2|Qout[2]~0_combout\ & ( !\comb~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000100000001001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ciclagensLFSR|Contador|IC_3|ALT_INV_Add0~0_combout\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \C|ALT_INV_Eatual.Cicla~q\,
	datad => \ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datae => \ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[3]~reg0_q\,
	dataf => \ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[2]~0_combout\,
	combout => \ciclagensLFSR|Contador|IC_3|Qout[3]~0_combout\);

-- Location: FF_X70_Y3_N50
\ciclagensLFSR|Contador|IC_3|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ciclagensLFSR|Contador|IC_3|Qout[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ciclagensLFSR|Contador|IC_3|Qout[3]~reg0_q\);

-- Location: LABCELL_X70_Y3_N18
\ciclagensLFSR|Contador|ClrN3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ciclagensLFSR|Contador|ClrN3~0_combout\ = ( \ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\ & ( \ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\ & ( (\ciclagensLFSR|Contador|IC_3|Qout[3]~reg0_q\ & (\ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\ & 
-- (\ciclagensLFSR|Contador|IC_2|Qout[3]~reg0_q\ & \ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[3]~reg0_q\,
	datab => \ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datac => \ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[3]~reg0_q\,
	datad => \ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datae => \ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	dataf => \ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	combout => \ciclagensLFSR|Contador|ClrN3~0_combout\);

-- Location: LABCELL_X71_Y3_N27
\ciclagensLFSR|Contador|IC_4|Qout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ciclagensLFSR|Contador|IC_4|Qout[0]~0_combout\ = ( \ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\ & ( \ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\ & ( (!\comb~0_combout\ & !\ciclagensLFSR|Contador|ClrN3~0_combout\) ) ) ) # ( 
-- !\ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\ & ( \ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\ & ( (!\comb~0_combout\ & (\ciclagensLFSR|Contador|ClrN3~0_combout\ & \C|Eatual.Cicla~q\)) ) ) ) # ( \ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\ & ( 
-- !\ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\ & ( (!\comb~0_combout\ & ((!\ciclagensLFSR|Contador|ClrN3~0_combout\) # (!\C|Eatual.Cicla~q\))) ) ) ) # ( !\ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\ & ( !\ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\ & ( 
-- (!\comb~0_combout\ & (\ciclagensLFSR|Contador|ClrN3~0_combout\ & \C|Eatual.Cicla~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100110011001100000000000000000011001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_comb~0_combout\,
	datac => \ciclagensLFSR|Contador|ALT_INV_ClrN3~0_combout\,
	datad => \C|ALT_INV_Eatual.Cicla~q\,
	datae => \ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\,
	dataf => \ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\,
	combout => \ciclagensLFSR|Contador|IC_4|Qout[0]~0_combout\);

-- Location: FF_X71_Y3_N29
\ciclagensLFSR|Contador|IC_4|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ciclagensLFSR|Contador|IC_4|Qout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\);

-- Location: LABCELL_X71_Y3_N12
\ciclagensLFSR|Contador|IC_4|Qout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ciclagensLFSR|Contador|IC_4|Qout~1_combout\ = ( !\ciclagensLFSR|Contador|IC_4|Qout[1]~reg0_q\ & ( \ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\ & ( (!\comb~0_combout\ & ((!\ciclagensLFSR|Contador|ClrN3~0_combout\) # 
-- (!\ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\))) ) ) ) # ( \ciclagensLFSR|Contador|IC_4|Qout[1]~reg0_q\ & ( !\ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\ & ( !\comb~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101010101010100010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \ciclagensLFSR|Contador|ALT_INV_ClrN3~0_combout\,
	datad => \ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datae => \ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[1]~reg0_q\,
	dataf => \ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\,
	combout => \ciclagensLFSR|Contador|IC_4|Qout~1_combout\);

-- Location: LABCELL_X71_Y3_N42
\ciclagensLFSR|Contador|IC_4|Qout[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ciclagensLFSR|Contador|IC_4|Qout[2]~2_combout\ = ( \comb~0_combout\ ) # ( !\comb~0_combout\ & ( (\ciclagensLFSR|Contador|ClrN3~0_combout\ & (((\ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\ & \ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\)) # 
-- (\C|Eatual.Cicla~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010111000000000101011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C|ALT_INV_Eatual.Cicla~q\,
	datab => \ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datac => \ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\,
	datad => \ciclagensLFSR|Contador|ALT_INV_ClrN3~0_combout\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \ciclagensLFSR|Contador|IC_4|Qout[2]~2_combout\);

-- Location: FF_X71_Y3_N14
\ciclagensLFSR|Contador|IC_4|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ciclagensLFSR|Contador|IC_4|Qout~1_combout\,
	ena => \ciclagensLFSR|Contador|IC_4|Qout[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ciclagensLFSR|Contador|IC_4|Qout[1]~reg0_q\);

-- Location: LABCELL_X71_Y3_N48
\ciclagensLFSR|Contador|IC_4|Qout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ciclagensLFSR|Contador|IC_4|Qout~3_combout\ = ( \ciclagensLFSR|Contador|IC_4|Qout[2]~reg0_q\ & ( \ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\ & ( (!\comb~0_combout\ & (!\ciclagensLFSR|Contador|IC_4|Qout[1]~reg0_q\ & 
-- ((!\ciclagensLFSR|Contador|ClrN3~0_combout\) # (!\ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\)))) ) ) ) # ( !\ciclagensLFSR|Contador|IC_4|Qout[2]~reg0_q\ & ( \ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\ & ( (!\comb~0_combout\ & 
-- (\ciclagensLFSR|Contador|IC_4|Qout[1]~reg0_q\ & ((!\ciclagensLFSR|Contador|ClrN3~0_combout\) # (!\ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\)))) ) ) ) # ( \ciclagensLFSR|Contador|IC_4|Qout[2]~reg0_q\ & ( !\ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\ & ( 
-- !\comb~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000101010001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \ciclagensLFSR|Contador|ALT_INV_ClrN3~0_combout\,
	datac => \ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datad => \ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[1]~reg0_q\,
	datae => \ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[2]~reg0_q\,
	dataf => \ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\,
	combout => \ciclagensLFSR|Contador|IC_4|Qout~3_combout\);

-- Location: FF_X71_Y3_N50
\ciclagensLFSR|Contador|IC_4|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ciclagensLFSR|Contador|IC_4|Qout~3_combout\,
	ena => \ciclagensLFSR|Contador|IC_4|Qout[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ciclagensLFSR|Contador|IC_4|Qout[2]~reg0_q\);

-- Location: LABCELL_X71_Y3_N36
\ciclagensLFSR|Contador|IC_4|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ciclagensLFSR|Contador|IC_4|Add0~0_combout\ = ( \ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\ & ( \ciclagensLFSR|Contador|IC_4|Qout[1]~reg0_q\ & ( \ciclagensLFSR|Contador|IC_4|Qout[2]~reg0_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[2]~reg0_q\,
	datae => \ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\,
	dataf => \ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[1]~reg0_q\,
	combout => \ciclagensLFSR|Contador|IC_4|Add0~0_combout\);

-- Location: LABCELL_X71_Y3_N9
\ciclagensLFSR|Contador|IC_4|Qout[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ciclagensLFSR|Contador|IC_4|Qout[3]~4_combout\ = ( \ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\ & ( \ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\ & ( (!\comb~0_combout\ & !\ciclagensLFSR|Contador|ClrN3~0_combout\) ) ) ) # ( 
-- !\ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\ & ( \ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\ & ( (\C|Eatual.Cicla~q\ & (!\comb~0_combout\ & (\ciclagensLFSR|Contador|ClrN3~0_combout\ & \ciclagensLFSR|Contador|IC_4|Add0~0_combout\))) ) ) ) # ( 
-- \ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\ & ( !\ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\ & ( (!\comb~0_combout\ & ((!\C|Eatual.Cicla~q\) # ((!\ciclagensLFSR|Contador|ClrN3~0_combout\) # (!\ciclagensLFSR|Contador|IC_4|Add0~0_combout\)))) ) ) ) # ( 
-- !\ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\ & ( !\ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\ & ( (\C|Eatual.Cicla~q\ & (!\comb~0_combout\ & (\ciclagensLFSR|Contador|ClrN3~0_combout\ & \ciclagensLFSR|Contador|IC_4|Add0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100110011001100100000000000000001001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C|ALT_INV_Eatual.Cicla~q\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \ciclagensLFSR|Contador|ALT_INV_ClrN3~0_combout\,
	datad => \ciclagensLFSR|Contador|IC_4|ALT_INV_Add0~0_combout\,
	datae => \ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\,
	dataf => \ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\,
	combout => \ciclagensLFSR|Contador|IC_4|Qout[3]~4_combout\);

-- Location: FF_X71_Y3_N11
\ciclagensLFSR|Contador|IC_4|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ciclagensLFSR|Contador|IC_4|Qout[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\);

-- Location: LABCELL_X71_Y3_N33
\ciclagensLFSR|S~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ciclagensLFSR|S~0_combout\ = ( !\ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\ & ( !\ciclagensLFSR|Contador|IC_4|Qout[2]~reg0_q\ & ( (!\ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\ & !\ciclagensLFSR|Contador|IC_4|Qout[1]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datac => \ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[1]~reg0_q\,
	datae => \ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\,
	dataf => \ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[2]~reg0_q\,
	combout => \ciclagensLFSR|S~0_combout\);

-- Location: LABCELL_X67_Y3_N6
\ciclagensLFSR|S~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ciclagensLFSR|S~1_combout\ = ( !\ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\ & ( !\ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\ & ( (!\ciclagensLFSR|Contador|IC_1|Qout[2]~reg0_q\ & (\ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\ & 
-- (!\ciclagensLFSR|Contador|IC_2|Qout[1]~reg0_q\ & !\ciclagensLFSR|Contador|IC_1|Qout[1]~reg0_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[2]~reg0_q\,
	datab => \ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datac => \ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[1]~reg0_q\,
	datad => \ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[1]~reg0_q\,
	datae => \ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	dataf => \ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	combout => \ciclagensLFSR|S~1_combout\);

-- Location: LABCELL_X70_Y3_N42
\ciclagensLFSR|S~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ciclagensLFSR|S~2_combout\ = ( !\ciclagensLFSR|Contador|IC_3|Qout[1]~reg0_q\ & ( \ciclagensLFSR|Contador|IC_2|Qout[2]~reg0_q\ & ( (!\ciclagensLFSR|Contador|IC_2|Qout[3]~reg0_q\ & (!\ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\ & 
-- !\ciclagensLFSR|Contador|IC_3|Qout[2]~reg0_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[3]~reg0_q\,
	datab => \ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datad => \ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[2]~reg0_q\,
	datae => \ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[1]~reg0_q\,
	dataf => \ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[2]~reg0_q\,
	combout => \ciclagensLFSR|S~2_combout\);

-- Location: LABCELL_X66_Y3_N48
\C|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C|Selector1~0_combout\ = ( \C|Eatual.Cicla~q\ & ( \ciclagensLFSR|S~2_combout\ & ( (!\ciclagensLFSR|S~0_combout\) # (((!\ciclagensLFSR|S~1_combout\) # (\ciclagensLFSR|Contador|IC_3|Qout[3]~reg0_q\)) # (\C|Eatual.RegistraSeed2~q\)) ) ) ) # ( 
-- !\C|Eatual.Cicla~q\ & ( \ciclagensLFSR|S~2_combout\ & ( \C|Eatual.RegistraSeed2~q\ ) ) ) # ( \C|Eatual.Cicla~q\ & ( !\ciclagensLFSR|S~2_combout\ ) ) # ( !\C|Eatual.Cicla~q\ & ( !\ciclagensLFSR|S~2_combout\ & ( \C|Eatual.RegistraSeed2~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111111111100110011001100111111101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ciclagensLFSR|ALT_INV_S~0_combout\,
	datab => \C|ALT_INV_Eatual.RegistraSeed2~q\,
	datac => \ciclagensLFSR|ALT_INV_S~1_combout\,
	datad => \ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[3]~reg0_q\,
	datae => \C|ALT_INV_Eatual.Cicla~q\,
	dataf => \ciclagensLFSR|ALT_INV_S~2_combout\,
	combout => \C|Selector1~0_combout\);

-- Location: FF_X66_Y3_N50
\C|Eatual.Cicla\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \C|Selector1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|Eatual.Cicla~q\);

-- Location: FF_X66_Y4_N2
\PSEUDORANDOM|count[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PSEUDORANDOM|count[1]~7_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PSEUDORANDOM|count[1]~_emulated_q\);

-- Location: LABCELL_X66_Y4_N3
\PSEUDORANDOM|count[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[1]~6_combout\ = ( \PSEUDORANDOM|count[1]~5_combout\ & ( (!\comb~0_combout\ & (!\PSEUDORANDOM|count[1]~_emulated_q\)) # (\comb~0_combout\ & ((\Registrador|Q\(1)))) ) ) # ( !\PSEUDORANDOM|count[1]~5_combout\ & ( (!\comb~0_combout\ & 
-- (\PSEUDORANDOM|count[1]~_emulated_q\)) # (\comb~0_combout\ & ((\Registrador|Q\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011110001000101110111000100010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PSEUDORANDOM|ALT_INV_count[1]~_emulated_q\,
	datab => \ALT_INV_comb~0_combout\,
	datad => \Registrador|ALT_INV_Q\(1),
	dataf => \PSEUDORANDOM|ALT_INV_count[1]~5_combout\,
	combout => \PSEUDORANDOM|count[1]~6_combout\);

-- Location: FF_X65_Y4_N29
\Registrador|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \geraSeed|IC_1|Qout[2]~reg0_q\,
	sclr => \comb~0_combout\,
	sload => VCC,
	ena => \Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador|IQ\(2));

-- Location: FF_X65_Y4_N17
\Registrador|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Registrador|IQ\(2),
	sload => VCC,
	ena => \Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador|Q\(2));

-- Location: MLABCELL_X65_Y4_N18
\PSEUDORANDOM|count[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[2]~9_combout\ = ( \Registrador|Q\(2) & ( (\comb~0_combout\) # (\PSEUDORANDOM|count[2]~9_combout\) ) ) # ( !\Registrador|Q\(2) & ( (\PSEUDORANDOM|count[2]~9_combout\ & !\comb~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PSEUDORANDOM|ALT_INV_count[2]~9_combout\,
	datad => \ALT_INV_comb~0_combout\,
	dataf => \Registrador|ALT_INV_Q\(2),
	combout => \PSEUDORANDOM|count[2]~9_combout\);

-- Location: LABCELL_X67_Y4_N12
\PSEUDORANDOM|count[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[2]~11_combout\ = ( \PSEUDORANDOM|count[2]~9_combout\ & ( !\PSEUDORANDOM|count[1]~6_combout\ ) ) # ( !\PSEUDORANDOM|count[2]~9_combout\ & ( \PSEUDORANDOM|count[1]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PSEUDORANDOM|ALT_INV_count[1]~6_combout\,
	dataf => \PSEUDORANDOM|ALT_INV_count[2]~9_combout\,
	combout => \PSEUDORANDOM|count[2]~11_combout\);

-- Location: FF_X67_Y4_N14
\PSEUDORANDOM|count[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PSEUDORANDOM|count[2]~11_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PSEUDORANDOM|count[2]~_emulated_q\);

-- Location: LABCELL_X70_Y4_N9
\PSEUDORANDOM|count[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[2]~10_combout\ = ( \PSEUDORANDOM|count[2]~9_combout\ & ( (!\comb~0_combout\ & (!\PSEUDORANDOM|count[2]~_emulated_q\)) # (\comb~0_combout\ & ((\Registrador|Q\(2)))) ) ) # ( !\PSEUDORANDOM|count[2]~9_combout\ & ( (!\comb~0_combout\ & 
-- (\PSEUDORANDOM|count[2]~_emulated_q\)) # (\comb~0_combout\ & ((\Registrador|Q\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111111000000110011111100000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PSEUDORANDOM|ALT_INV_count[2]~_emulated_q\,
	datac => \ALT_INV_comb~0_combout\,
	datad => \Registrador|ALT_INV_Q\(2),
	dataf => \PSEUDORANDOM|ALT_INV_count[2]~9_combout\,
	combout => \PSEUDORANDOM|count[2]~10_combout\);

-- Location: LABCELL_X71_Y4_N15
\PSEUDORANDOM|count[3]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[3]~15_combout\ = ( \PSEUDORANDOM|count[2]~10_combout\ & ( !\PSEUDORANDOM|count[3]~13_combout\ ) ) # ( !\PSEUDORANDOM|count[2]~10_combout\ & ( \PSEUDORANDOM|count[3]~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PSEUDORANDOM|ALT_INV_count[3]~13_combout\,
	dataf => \PSEUDORANDOM|ALT_INV_count[2]~10_combout\,
	combout => \PSEUDORANDOM|count[3]~15_combout\);

-- Location: FF_X71_Y4_N16
\PSEUDORANDOM|count[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PSEUDORANDOM|count[3]~15_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PSEUDORANDOM|count[3]~_emulated_q\);

-- Location: LABCELL_X66_Y4_N39
\PSEUDORANDOM|count[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[3]~14_combout\ = ( \PSEUDORANDOM|count[3]~13_combout\ & ( (!\comb~0_combout\ & (!\PSEUDORANDOM|count[3]~_emulated_q\)) # (\comb~0_combout\ & ((\Registrador|Q\(3)))) ) ) # ( !\PSEUDORANDOM|count[3]~13_combout\ & ( (!\comb~0_combout\ & 
-- (\PSEUDORANDOM|count[3]~_emulated_q\)) # (\comb~0_combout\ & ((\Registrador|Q\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011110001000101110111000100010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PSEUDORANDOM|ALT_INV_count[3]~_emulated_q\,
	datab => \ALT_INV_comb~0_combout\,
	datad => \Registrador|ALT_INV_Q\(3),
	dataf => \PSEUDORANDOM|ALT_INV_count[3]~13_combout\,
	combout => \PSEUDORANDOM|count[3]~14_combout\);

-- Location: MLABCELL_X65_Y4_N27
\Registrador|IQ[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registrador|IQ[4]~feeder_combout\ = ( \geraSeed|IC_2|Qout[0]~reg0_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \geraSeed|IC_2|ALT_INV_Qout[0]~reg0_q\,
	combout => \Registrador|IQ[4]~feeder_combout\);

-- Location: FF_X65_Y4_N28
\Registrador|IQ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Registrador|IQ[4]~feeder_combout\,
	sclr => \comb~0_combout\,
	ena => \Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador|IQ\(4));

-- Location: FF_X70_Y4_N23
\Registrador|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Registrador|IQ\(4),
	sload => VCC,
	ena => \Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador|Q\(4));

-- Location: LABCELL_X70_Y4_N42
\PSEUDORANDOM|count[4]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[4]~17_combout\ = ( \Registrador|Q\(4) & ( \comb~0_combout\ ) ) # ( \Registrador|Q\(4) & ( !\comb~0_combout\ & ( \PSEUDORANDOM|count[4]~17_combout\ ) ) ) # ( !\Registrador|Q\(4) & ( !\comb~0_combout\ & ( 
-- \PSEUDORANDOM|count[4]~17_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PSEUDORANDOM|ALT_INV_count[4]~17_combout\,
	datae => \Registrador|ALT_INV_Q\(4),
	dataf => \ALT_INV_comb~0_combout\,
	combout => \PSEUDORANDOM|count[4]~17_combout\);

-- Location: LABCELL_X66_Y4_N42
\PSEUDORANDOM|count[4]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[4]~19_combout\ = ( \PSEUDORANDOM|count[4]~17_combout\ & ( !\PSEUDORANDOM|count[3]~14_combout\ ) ) # ( !\PSEUDORANDOM|count[4]~17_combout\ & ( \PSEUDORANDOM|count[3]~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PSEUDORANDOM|ALT_INV_count[3]~14_combout\,
	dataf => \PSEUDORANDOM|ALT_INV_count[4]~17_combout\,
	combout => \PSEUDORANDOM|count[4]~19_combout\);

-- Location: FF_X66_Y4_N43
\PSEUDORANDOM|count[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PSEUDORANDOM|count[4]~19_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PSEUDORANDOM|count[4]~_emulated_q\);

-- Location: LABCELL_X70_Y4_N30
\PSEUDORANDOM|count[4]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[4]~18_combout\ = ( \PSEUDORANDOM|count[4]~17_combout\ & ( (!\comb~0_combout\ & (!\PSEUDORANDOM|count[4]~_emulated_q\)) # (\comb~0_combout\ & ((\Registrador|Q\(4)))) ) ) # ( !\PSEUDORANDOM|count[4]~17_combout\ & ( (!\comb~0_combout\ & 
-- (\PSEUDORANDOM|count[4]~_emulated_q\)) # (\comb~0_combout\ & ((\Registrador|Q\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011110001101100011011000110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \PSEUDORANDOM|ALT_INV_count[4]~_emulated_q\,
	datac => \Registrador|ALT_INV_Q\(4),
	dataf => \PSEUDORANDOM|ALT_INV_count[4]~17_combout\,
	combout => \PSEUDORANDOM|count[4]~18_combout\);

-- Location: LABCELL_X63_Y4_N30
\PSEUDORANDOM|count[5]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[5]~21_combout\ = ( \comb~0_combout\ & ( \Registrador|Q\(5) ) ) # ( !\comb~0_combout\ & ( \Registrador|Q\(5) & ( \PSEUDORANDOM|count[5]~21_combout\ ) ) ) # ( !\comb~0_combout\ & ( !\Registrador|Q\(5) & ( 
-- \PSEUDORANDOM|count[5]~21_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PSEUDORANDOM|ALT_INV_count[5]~21_combout\,
	datae => \ALT_INV_comb~0_combout\,
	dataf => \Registrador|ALT_INV_Q\(5),
	combout => \PSEUDORANDOM|count[5]~21_combout\);

-- Location: LABCELL_X66_Y4_N33
\PSEUDORANDOM|count[5]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[5]~23_combout\ = ( \PSEUDORANDOM|count[5]~21_combout\ & ( !\PSEUDORANDOM|count[4]~18_combout\ ) ) # ( !\PSEUDORANDOM|count[5]~21_combout\ & ( \PSEUDORANDOM|count[4]~18_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PSEUDORANDOM|ALT_INV_count[4]~18_combout\,
	dataf => \PSEUDORANDOM|ALT_INV_count[5]~21_combout\,
	combout => \PSEUDORANDOM|count[5]~23_combout\);

-- Location: FF_X66_Y4_N34
\PSEUDORANDOM|count[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PSEUDORANDOM|count[5]~23_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PSEUDORANDOM|count[5]~_emulated_q\);

-- Location: LABCELL_X63_Y4_N54
\PSEUDORANDOM|count[5]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[5]~22_combout\ = ( \PSEUDORANDOM|count[5]~_emulated_q\ & ( \PSEUDORANDOM|count[5]~21_combout\ & ( (\comb~0_combout\ & \Registrador|Q\(5)) ) ) ) # ( !\PSEUDORANDOM|count[5]~_emulated_q\ & ( \PSEUDORANDOM|count[5]~21_combout\ & ( 
-- (!\comb~0_combout\) # (\Registrador|Q\(5)) ) ) ) # ( \PSEUDORANDOM|count[5]~_emulated_q\ & ( !\PSEUDORANDOM|count[5]~21_combout\ & ( (!\comb~0_combout\) # (\Registrador|Q\(5)) ) ) ) # ( !\PSEUDORANDOM|count[5]~_emulated_q\ & ( 
-- !\PSEUDORANDOM|count[5]~21_combout\ & ( (\comb~0_combout\ & \Registrador|Q\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111111001111110011110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_comb~0_combout\,
	datac => \Registrador|ALT_INV_Q\(5),
	datae => \PSEUDORANDOM|ALT_INV_count[5]~_emulated_q\,
	dataf => \PSEUDORANDOM|ALT_INV_count[5]~21_combout\,
	combout => \PSEUDORANDOM|count[5]~22_combout\);

-- Location: LABCELL_X64_Y4_N24
\Registrador|IQ[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registrador|IQ[6]~feeder_combout\ = ( \geraSeed|IC_2|Qout[2]~reg0_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \geraSeed|IC_2|ALT_INV_Qout[2]~reg0_q\,
	combout => \Registrador|IQ[6]~feeder_combout\);

-- Location: FF_X64_Y4_N25
\Registrador|IQ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Registrador|IQ[6]~feeder_combout\,
	sclr => \comb~0_combout\,
	ena => \Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador|IQ\(6));

-- Location: LABCELL_X70_Y4_N0
\Registrador|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registrador|Q[6]~feeder_combout\ = ( \Registrador|IQ\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Registrador|ALT_INV_IQ\(6),
	combout => \Registrador|Q[6]~feeder_combout\);

-- Location: FF_X70_Y4_N2
\Registrador|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Registrador|Q[6]~feeder_combout\,
	ena => \Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador|Q\(6));

-- Location: LABCELL_X70_Y4_N18
\PSEUDORANDOM|count[6]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[6]~25_combout\ = ( \Registrador|Q\(6) & ( \comb~0_combout\ ) ) # ( \Registrador|Q\(6) & ( !\comb~0_combout\ & ( \PSEUDORANDOM|count[6]~25_combout\ ) ) ) # ( !\Registrador|Q\(6) & ( !\comb~0_combout\ & ( 
-- \PSEUDORANDOM|count[6]~25_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PSEUDORANDOM|ALT_INV_count[6]~25_combout\,
	datae => \Registrador|ALT_INV_Q\(6),
	dataf => \ALT_INV_comb~0_combout\,
	combout => \PSEUDORANDOM|count[6]~25_combout\);

-- Location: LABCELL_X67_Y4_N15
\PSEUDORANDOM|count[6]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[6]~27_combout\ = !\PSEUDORANDOM|count[5]~22_combout\ $ (!\PSEUDORANDOM|count[6]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PSEUDORANDOM|ALT_INV_count[5]~22_combout\,
	datad => \PSEUDORANDOM|ALT_INV_count[6]~25_combout\,
	combout => \PSEUDORANDOM|count[6]~27_combout\);

-- Location: FF_X67_Y4_N16
\PSEUDORANDOM|count[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PSEUDORANDOM|count[6]~27_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PSEUDORANDOM|count[6]~_emulated_q\);

-- Location: LABCELL_X70_Y4_N54
\PSEUDORANDOM|count[6]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[6]~26_combout\ = ( \PSEUDORANDOM|count[6]~25_combout\ & ( (!\comb~0_combout\ & (!\PSEUDORANDOM|count[6]~_emulated_q\)) # (\comb~0_combout\ & ((\Registrador|Q\(6)))) ) ) # ( !\PSEUDORANDOM|count[6]~25_combout\ & ( (!\comb~0_combout\ & 
-- (\PSEUDORANDOM|count[6]~_emulated_q\)) # (\comb~0_combout\ & ((\Registrador|Q\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011110001101100011011000110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \PSEUDORANDOM|ALT_INV_count[6]~_emulated_q\,
	datac => \Registrador|ALT_INV_Q\(6),
	dataf => \PSEUDORANDOM|ALT_INV_count[6]~25_combout\,
	combout => \PSEUDORANDOM|count[6]~26_combout\);

-- Location: LABCELL_X70_Y4_N57
\PSEUDORANDOM|count[7]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[7]~29_combout\ = ( \Registrador|Q\(7) & ( (\PSEUDORANDOM|count[7]~29_combout\) # (\comb~0_combout\) ) ) # ( !\Registrador|Q\(7) & ( (!\comb~0_combout\ & \PSEUDORANDOM|count[7]~29_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datad => \PSEUDORANDOM|ALT_INV_count[7]~29_combout\,
	dataf => \Registrador|ALT_INV_Q\(7),
	combout => \PSEUDORANDOM|count[7]~29_combout\);

-- Location: LABCELL_X71_Y4_N24
\PSEUDORANDOM|count[7]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[7]~31_combout\ = ( \PSEUDORANDOM|count[7]~29_combout\ & ( !\PSEUDORANDOM|count[6]~26_combout\ ) ) # ( !\PSEUDORANDOM|count[7]~29_combout\ & ( \PSEUDORANDOM|count[6]~26_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101001010101010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PSEUDORANDOM|ALT_INV_count[6]~26_combout\,
	datae => \PSEUDORANDOM|ALT_INV_count[7]~29_combout\,
	combout => \PSEUDORANDOM|count[7]~31_combout\);

-- Location: FF_X71_Y4_N25
\PSEUDORANDOM|count[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PSEUDORANDOM|count[7]~31_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PSEUDORANDOM|count[7]~_emulated_q\);

-- Location: LABCELL_X70_Y4_N51
\PSEUDORANDOM|count[7]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[7]~30_combout\ = ( \PSEUDORANDOM|count[7]~29_combout\ & ( (!\comb~0_combout\ & ((!\PSEUDORANDOM|count[7]~_emulated_q\))) # (\comb~0_combout\ & (\Registrador|Q\(7))) ) ) # ( !\PSEUDORANDOM|count[7]~29_combout\ & ( (!\comb~0_combout\ & 
-- ((\PSEUDORANDOM|count[7]~_emulated_q\))) # (\comb~0_combout\ & (\Registrador|Q\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101110110001101100011011000110110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \Registrador|ALT_INV_Q\(7),
	datac => \PSEUDORANDOM|ALT_INV_count[7]~_emulated_q\,
	dataf => \PSEUDORANDOM|ALT_INV_count[7]~29_combout\,
	combout => \PSEUDORANDOM|count[7]~30_combout\);

-- Location: LABCELL_X66_Y2_N15
\PSEUDORANDOM|count[8]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[8]~33_combout\ = ( \Registrador|Q\(8) & ( (\comb~0_combout\) # (\PSEUDORANDOM|count[8]~33_combout\) ) ) # ( !\Registrador|Q\(8) & ( (\PSEUDORANDOM|count[8]~33_combout\ & !\comb~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PSEUDORANDOM|ALT_INV_count[8]~33_combout\,
	datad => \ALT_INV_comb~0_combout\,
	dataf => \Registrador|ALT_INV_Q\(8),
	combout => \PSEUDORANDOM|count[8]~33_combout\);

-- Location: LABCELL_X67_Y4_N48
\PSEUDORANDOM|count[8]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[8]~35_combout\ = ( \PSEUDORANDOM|count[8]~33_combout\ & ( !\PSEUDORANDOM|count[7]~30_combout\ ) ) # ( !\PSEUDORANDOM|count[8]~33_combout\ & ( \PSEUDORANDOM|count[7]~30_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PSEUDORANDOM|ALT_INV_count[7]~30_combout\,
	dataf => \PSEUDORANDOM|ALT_INV_count[8]~33_combout\,
	combout => \PSEUDORANDOM|count[8]~35_combout\);

-- Location: FF_X67_Y4_N50
\PSEUDORANDOM|count[8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PSEUDORANDOM|count[8]~35_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PSEUDORANDOM|count[8]~_emulated_q\);

-- Location: LABCELL_X66_Y2_N48
\PSEUDORANDOM|count[8]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[8]~34_combout\ = ( \PSEUDORANDOM|count[8]~_emulated_q\ & ( \PSEUDORANDOM|count[8]~33_combout\ & ( (\comb~0_combout\ & \Registrador|Q\(8)) ) ) ) # ( !\PSEUDORANDOM|count[8]~_emulated_q\ & ( \PSEUDORANDOM|count[8]~33_combout\ & ( 
-- (!\comb~0_combout\) # (\Registrador|Q\(8)) ) ) ) # ( \PSEUDORANDOM|count[8]~_emulated_q\ & ( !\PSEUDORANDOM|count[8]~33_combout\ & ( (!\comb~0_combout\) # (\Registrador|Q\(8)) ) ) ) # ( !\PSEUDORANDOM|count[8]~_emulated_q\ & ( 
-- !\PSEUDORANDOM|count[8]~33_combout\ & ( (\comb~0_combout\ & \Registrador|Q\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111111001111110011110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_comb~0_combout\,
	datac => \Registrador|ALT_INV_Q\(8),
	datae => \PSEUDORANDOM|ALT_INV_count[8]~_emulated_q\,
	dataf => \PSEUDORANDOM|ALT_INV_count[8]~33_combout\,
	combout => \PSEUDORANDOM|count[8]~34_combout\);

-- Location: LABCELL_X67_Y4_N0
\PSEUDORANDOM|count[9]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[9]~39_combout\ = ( \PSEUDORANDOM|count[8]~34_combout\ & ( !\PSEUDORANDOM|count[9]~37_combout\ ) ) # ( !\PSEUDORANDOM|count[8]~34_combout\ & ( \PSEUDORANDOM|count[9]~37_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PSEUDORANDOM|ALT_INV_count[9]~37_combout\,
	dataf => \PSEUDORANDOM|ALT_INV_count[8]~34_combout\,
	combout => \PSEUDORANDOM|count[9]~39_combout\);

-- Location: FF_X67_Y4_N1
\PSEUDORANDOM|count[9]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PSEUDORANDOM|count[9]~39_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PSEUDORANDOM|count[9]~_emulated_q\);

-- Location: LABCELL_X66_Y4_N27
\PSEUDORANDOM|count[9]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[9]~38_combout\ = ( \PSEUDORANDOM|count[9]~37_combout\ & ( (!\comb~0_combout\ & ((!\PSEUDORANDOM|count[9]~_emulated_q\))) # (\comb~0_combout\ & (\Registrador|Q\(9))) ) ) # ( !\PSEUDORANDOM|count[9]~37_combout\ & ( (!\comb~0_combout\ & 
-- ((\PSEUDORANDOM|count[9]~_emulated_q\))) # (\comb~0_combout\ & (\Registrador|Q\(9))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111111001111000000111100111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_comb~0_combout\,
	datac => \Registrador|ALT_INV_Q\(9),
	datad => \PSEUDORANDOM|ALT_INV_count[9]~_emulated_q\,
	dataf => \PSEUDORANDOM|ALT_INV_count[9]~37_combout\,
	combout => \PSEUDORANDOM|count[9]~38_combout\);

-- Location: LABCELL_X66_Y2_N6
\PSEUDORANDOM|count[10]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[10]~41_combout\ = ( \comb~0_combout\ & ( \Registrador|Q\(10) ) ) # ( !\comb~0_combout\ & ( \Registrador|Q\(10) & ( \PSEUDORANDOM|count[10]~41_combout\ ) ) ) # ( !\comb~0_combout\ & ( !\Registrador|Q\(10) & ( 
-- \PSEUDORANDOM|count[10]~41_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PSEUDORANDOM|ALT_INV_count[10]~41_combout\,
	datae => \ALT_INV_comb~0_combout\,
	dataf => \Registrador|ALT_INV_Q\(10),
	combout => \PSEUDORANDOM|count[10]~41_combout\);

-- Location: LABCELL_X66_Y4_N30
\PSEUDORANDOM|count[10]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[10]~43_combout\ = !\PSEUDORANDOM|count[9]~38_combout\ $ (!\PSEUDORANDOM|count[10]~41_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110000110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PSEUDORANDOM|ALT_INV_count[9]~38_combout\,
	datad => \PSEUDORANDOM|ALT_INV_count[10]~41_combout\,
	combout => \PSEUDORANDOM|count[10]~43_combout\);

-- Location: FF_X66_Y4_N31
\PSEUDORANDOM|count[10]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PSEUDORANDOM|count[10]~43_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PSEUDORANDOM|count[10]~_emulated_q\);

-- Location: LABCELL_X66_Y2_N33
\PSEUDORANDOM|count[10]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[10]~42_combout\ = ( \PSEUDORANDOM|count[10]~41_combout\ & ( (!\comb~0_combout\ & ((!\PSEUDORANDOM|count[10]~_emulated_q\))) # (\comb~0_combout\ & (\Registrador|Q\(10))) ) ) # ( !\PSEUDORANDOM|count[10]~41_combout\ & ( 
-- (!\comb~0_combout\ & ((\PSEUDORANDOM|count[10]~_emulated_q\))) # (\comb~0_combout\ & (\Registrador|Q\(10))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110111010001110100011101000111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador|ALT_INV_Q\(10),
	datab => \ALT_INV_comb~0_combout\,
	datac => \PSEUDORANDOM|ALT_INV_count[10]~_emulated_q\,
	dataf => \PSEUDORANDOM|ALT_INV_count[10]~41_combout\,
	combout => \PSEUDORANDOM|count[10]~42_combout\);

-- Location: LABCELL_X67_Y4_N51
\PSEUDORANDOM|count[11]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[11]~47_combout\ = ( \PSEUDORANDOM|count[10]~42_combout\ & ( !\PSEUDORANDOM|count[11]~45_combout\ ) ) # ( !\PSEUDORANDOM|count[10]~42_combout\ & ( \PSEUDORANDOM|count[11]~45_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PSEUDORANDOM|ALT_INV_count[11]~45_combout\,
	dataf => \PSEUDORANDOM|ALT_INV_count[10]~42_combout\,
	combout => \PSEUDORANDOM|count[11]~47_combout\);

-- Location: FF_X67_Y4_N53
\PSEUDORANDOM|count[11]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PSEUDORANDOM|count[11]~47_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PSEUDORANDOM|count[11]~_emulated_q\);

-- Location: LABCELL_X70_Y4_N39
\PSEUDORANDOM|count[11]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[11]~46_combout\ = ( \PSEUDORANDOM|count[11]~45_combout\ & ( (!\comb~0_combout\ & ((!\PSEUDORANDOM|count[11]~_emulated_q\))) # (\comb~0_combout\ & (\Registrador|Q\(11))) ) ) # ( !\PSEUDORANDOM|count[11]~45_combout\ & ( 
-- (!\comb~0_combout\ & ((\PSEUDORANDOM|count[11]~_emulated_q\))) # (\comb~0_combout\ & (\Registrador|Q\(11))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101110110001101100011011000110110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \Registrador|ALT_INV_Q\(11),
	datac => \PSEUDORANDOM|ALT_INV_count[11]~_emulated_q\,
	dataf => \PSEUDORANDOM|ALT_INV_count[11]~45_combout\,
	combout => \PSEUDORANDOM|count[11]~46_combout\);

-- Location: FF_X65_Y4_N14
\Registrador|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \geraSeed|IC_1|Qout[0]~reg0_q\,
	sclr => \comb~0_combout\,
	sload => VCC,
	ena => \Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador|IQ\(0));

-- Location: FF_X65_Y4_N44
\Registrador|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Registrador|IQ\(0),
	sload => VCC,
	ena => \Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador|Q\(0));

-- Location: MLABCELL_X65_Y4_N39
\PSEUDORANDOM|count[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[0]~1_combout\ = ( \comb~0_combout\ & ( \Registrador|Q\(0) ) ) # ( !\comb~0_combout\ & ( \Registrador|Q\(0) & ( \PSEUDORANDOM|count[0]~1_combout\ ) ) ) # ( !\comb~0_combout\ & ( !\Registrador|Q\(0) & ( \PSEUDORANDOM|count[0]~1_combout\ 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PSEUDORANDOM|ALT_INV_count[0]~1_combout\,
	datae => \ALT_INV_comb~0_combout\,
	dataf => \Registrador|ALT_INV_Q\(0),
	combout => \PSEUDORANDOM|count[0]~1_combout\);

-- Location: LABCELL_X67_Y5_N36
\geraSeed|IC_4|Qout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \geraSeed|IC_4|Qout[0]~0_combout\ = ( \geraSeed|IC_4|Qout[0]~reg0_q\ & ( \geraSeed|IC_4|Qout[3]~reg0_q\ & ( (!\comb~0_combout\ & !\geraSeed|ClrN3~0_combout\) ) ) ) # ( !\geraSeed|IC_4|Qout[0]~reg0_q\ & ( \geraSeed|IC_4|Qout[3]~reg0_q\ & ( 
-- (!\comb~0_combout\ & (!\C|Eatual.Inicial~q\ & \geraSeed|ClrN3~0_combout\)) ) ) ) # ( \geraSeed|IC_4|Qout[0]~reg0_q\ & ( !\geraSeed|IC_4|Qout[3]~reg0_q\ & ( (!\comb~0_combout\ & ((!\geraSeed|ClrN3~0_combout\) # (\C|Eatual.Inicial~q\))) ) ) ) # ( 
-- !\geraSeed|IC_4|Qout[0]~reg0_q\ & ( !\geraSeed|IC_4|Qout[3]~reg0_q\ & ( (!\comb~0_combout\ & (!\C|Eatual.Inicial~q\ & \geraSeed|ClrN3~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000101000101010001000001000000010001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \C|ALT_INV_Eatual.Inicial~q\,
	datac => \geraSeed|ALT_INV_ClrN3~0_combout\,
	datae => \geraSeed|IC_4|ALT_INV_Qout[0]~reg0_q\,
	dataf => \geraSeed|IC_4|ALT_INV_Qout[3]~reg0_q\,
	combout => \geraSeed|IC_4|Qout[0]~0_combout\);

-- Location: FF_X67_Y5_N38
\geraSeed|IC_4|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \geraSeed|IC_4|Qout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \geraSeed|IC_4|Qout[0]~reg0_q\);

-- Location: LABCELL_X67_Y5_N12
\geraSeed|IC_4|Qout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \geraSeed|IC_4|Qout~1_combout\ = ( !\geraSeed|IC_4|Qout[1]~reg0_q\ & ( \geraSeed|IC_4|Qout[0]~reg0_q\ & ( (!\comb~0_combout\ & ((!\geraSeed|ClrN3~0_combout\) # (!\geraSeed|IC_4|Qout[3]~reg0_q\))) ) ) ) # ( \geraSeed|IC_4|Qout[1]~reg0_q\ & ( 
-- !\geraSeed|IC_4|Qout[0]~reg0_q\ & ( !\comb~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110011001000110010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \geraSeed|ALT_INV_ClrN3~0_combout\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \geraSeed|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datae => \geraSeed|IC_4|ALT_INV_Qout[1]~reg0_q\,
	dataf => \geraSeed|IC_4|ALT_INV_Qout[0]~reg0_q\,
	combout => \geraSeed|IC_4|Qout~1_combout\);

-- Location: LABCELL_X67_Y5_N27
\geraSeed|IC_4|Qout[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \geraSeed|IC_4|Qout[3]~2_combout\ = ( \geraSeed|ClrN3~0_combout\ & ( (!\C|Eatual.Inicial~q\) # (((\geraSeed|IC_4|Qout[3]~reg0_q\ & \geraSeed|IC_4|Qout[0]~reg0_q\)) # (\comb~0_combout\)) ) ) # ( !\geraSeed|ClrN3~0_combout\ & ( \comb~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111001111110111111100111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \geraSeed|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datab => \C|ALT_INV_Eatual.Inicial~q\,
	datac => \ALT_INV_comb~0_combout\,
	datad => \geraSeed|IC_4|ALT_INV_Qout[0]~reg0_q\,
	dataf => \geraSeed|ALT_INV_ClrN3~0_combout\,
	combout => \geraSeed|IC_4|Qout[3]~2_combout\);

-- Location: FF_X67_Y5_N14
\geraSeed|IC_4|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \geraSeed|IC_4|Qout~1_combout\,
	ena => \geraSeed|IC_4|Qout[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \geraSeed|IC_4|Qout[1]~reg0_q\);

-- Location: LABCELL_X67_Y5_N54
\geraSeed|IC_4|Qout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \geraSeed|IC_4|Qout~3_combout\ = ( \geraSeed|IC_4|Qout[2]~reg0_q\ & ( \geraSeed|IC_4|Qout[1]~reg0_q\ & ( (!\comb~0_combout\ & !\geraSeed|IC_4|Qout[0]~reg0_q\) ) ) ) # ( !\geraSeed|IC_4|Qout[2]~reg0_q\ & ( \geraSeed|IC_4|Qout[1]~reg0_q\ & ( 
-- (!\comb~0_combout\ & (\geraSeed|IC_4|Qout[0]~reg0_q\ & ((!\geraSeed|IC_4|Qout[3]~reg0_q\) # (!\geraSeed|ClrN3~0_combout\)))) ) ) ) # ( \geraSeed|IC_4|Qout[2]~reg0_q\ & ( !\geraSeed|IC_4|Qout[1]~reg0_q\ & ( (!\comb~0_combout\ & 
-- ((!\geraSeed|IC_4|Qout[3]~reg0_q\) # ((!\geraSeed|IC_4|Qout[0]~reg0_q\) # (!\geraSeed|ClrN3~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100100000001100000010001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \geraSeed|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \geraSeed|IC_4|ALT_INV_Qout[0]~reg0_q\,
	datad => \geraSeed|ALT_INV_ClrN3~0_combout\,
	datae => \geraSeed|IC_4|ALT_INV_Qout[2]~reg0_q\,
	dataf => \geraSeed|IC_4|ALT_INV_Qout[1]~reg0_q\,
	combout => \geraSeed|IC_4|Qout~3_combout\);

-- Location: FF_X67_Y5_N56
\geraSeed|IC_4|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \geraSeed|IC_4|Qout~3_combout\,
	ena => \geraSeed|IC_4|Qout[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \geraSeed|IC_4|Qout[2]~reg0_q\);

-- Location: LABCELL_X67_Y5_N45
\geraSeed|IC_4|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \geraSeed|IC_4|Add0~0_combout\ = ( \geraSeed|IC_4|Qout[2]~reg0_q\ & ( (\geraSeed|IC_4|Qout[0]~reg0_q\ & \geraSeed|IC_4|Qout[1]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \geraSeed|IC_4|ALT_INV_Qout[0]~reg0_q\,
	datac => \geraSeed|IC_4|ALT_INV_Qout[1]~reg0_q\,
	datae => \geraSeed|IC_4|ALT_INV_Qout[2]~reg0_q\,
	combout => \geraSeed|IC_4|Add0~0_combout\);

-- Location: LABCELL_X67_Y5_N48
\geraSeed|IC_4|Qout[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \geraSeed|IC_4|Qout[3]~4_combout\ = ( \geraSeed|IC_4|Qout[3]~reg0_q\ & ( \geraSeed|IC_4|Qout[0]~reg0_q\ & ( (!\comb~0_combout\ & !\geraSeed|ClrN3~0_combout\) ) ) ) # ( !\geraSeed|IC_4|Qout[3]~reg0_q\ & ( \geraSeed|IC_4|Qout[0]~reg0_q\ & ( 
-- (!\comb~0_combout\ & (!\C|Eatual.Inicial~q\ & (\geraSeed|ClrN3~0_combout\ & \geraSeed|IC_4|Add0~0_combout\))) ) ) ) # ( \geraSeed|IC_4|Qout[3]~reg0_q\ & ( !\geraSeed|IC_4|Qout[0]~reg0_q\ & ( (!\comb~0_combout\ & (((!\geraSeed|ClrN3~0_combout\) # 
-- (!\geraSeed|IC_4|Add0~0_combout\)) # (\C|Eatual.Inicial~q\))) ) ) ) # ( !\geraSeed|IC_4|Qout[3]~reg0_q\ & ( !\geraSeed|IC_4|Qout[0]~reg0_q\ & ( (!\comb~0_combout\ & (!\C|Eatual.Inicial~q\ & (\geraSeed|ClrN3~0_combout\ & \geraSeed|IC_4|Add0~0_combout\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000101010101010001000000000000010001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \C|ALT_INV_Eatual.Inicial~q\,
	datac => \geraSeed|ALT_INV_ClrN3~0_combout\,
	datad => \geraSeed|IC_4|ALT_INV_Add0~0_combout\,
	datae => \geraSeed|IC_4|ALT_INV_Qout[3]~reg0_q\,
	dataf => \geraSeed|IC_4|ALT_INV_Qout[0]~reg0_q\,
	combout => \geraSeed|IC_4|Qout[3]~4_combout\);

-- Location: FF_X67_Y5_N50
\geraSeed|IC_4|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \geraSeed|IC_4|Qout[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \geraSeed|IC_4|Qout[3]~reg0_q\);

-- Location: MLABCELL_X65_Y4_N45
\Registrador|IQ[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registrador|IQ[15]~feeder_combout\ = \geraSeed|IC_4|Qout[3]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \geraSeed|IC_4|ALT_INV_Qout[3]~reg0_q\,
	combout => \Registrador|IQ[15]~feeder_combout\);

-- Location: FF_X65_Y4_N47
\Registrador|IQ[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Registrador|IQ[15]~feeder_combout\,
	sclr => \comb~0_combout\,
	ena => \Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador|IQ\(15));

-- Location: FF_X65_Y4_N35
\Registrador|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Registrador|IQ\(15),
	sload => VCC,
	ena => \Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador|Q\(15));

-- Location: MLABCELL_X65_Y4_N33
\PSEUDORANDOM|count[15]~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[15]~61_combout\ = ( \PSEUDORANDOM|count[15]~61_combout\ & ( (!\comb~0_combout\) # (\Registrador|Q\(15)) ) ) # ( !\PSEUDORANDOM|count[15]~61_combout\ & ( (\comb~0_combout\ & \Registrador|Q\(15)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_comb~0_combout\,
	datad => \Registrador|ALT_INV_Q\(15),
	dataf => \PSEUDORANDOM|ALT_INV_count[15]~61_combout\,
	combout => \PSEUDORANDOM|count[15]~61_combout\);

-- Location: FF_X65_Y4_N46
\Registrador|IQ[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \geraSeed|IC_4|Qout[2]~reg0_q\,
	sclr => \comb~0_combout\,
	sload => VCC,
	ena => \Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador|IQ\(14));

-- Location: FF_X65_Y4_N8
\Registrador|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Registrador|IQ\(14),
	sload => VCC,
	ena => \Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador|Q\(14));

-- Location: MLABCELL_X65_Y4_N15
\PSEUDORANDOM|count[14]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[14]~57_combout\ = ( \Registrador|Q\(14) & ( (\PSEUDORANDOM|count[14]~57_combout\) # (\comb~0_combout\) ) ) # ( !\Registrador|Q\(14) & ( (!\comb~0_combout\ & \PSEUDORANDOM|count[14]~57_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_comb~0_combout\,
	datac => \PSEUDORANDOM|ALT_INV_count[14]~57_combout\,
	dataf => \Registrador|ALT_INV_Q\(14),
	combout => \PSEUDORANDOM|count[14]~57_combout\);

-- Location: FF_X65_Y4_N53
\Registrador|IQ[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \geraSeed|IC_4|Qout[0]~reg0_q\,
	sclr => \comb~0_combout\,
	sload => VCC,
	ena => \Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador|IQ\(12));

-- Location: MLABCELL_X65_Y4_N24
\Registrador|Q[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registrador|Q[12]~feeder_combout\ = \Registrador|IQ\(12)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Registrador|ALT_INV_IQ\(12),
	combout => \Registrador|Q[12]~feeder_combout\);

-- Location: FF_X65_Y4_N26
\Registrador|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Registrador|Q[12]~feeder_combout\,
	ena => \Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador|Q\(12));

-- Location: MLABCELL_X65_Y4_N42
\PSEUDORANDOM|count[12]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[12]~49_combout\ = ( \Registrador|Q\(12) & ( (\comb~0_combout\) # (\PSEUDORANDOM|count[12]~49_combout\) ) ) # ( !\Registrador|Q\(12) & ( (\PSEUDORANDOM|count[12]~49_combout\ & !\comb~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PSEUDORANDOM|ALT_INV_count[12]~49_combout\,
	datac => \ALT_INV_comb~0_combout\,
	dataf => \Registrador|ALT_INV_Q\(12),
	combout => \PSEUDORANDOM|count[12]~49_combout\);

-- Location: LABCELL_X71_Y4_N6
\PSEUDORANDOM|count[12]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[12]~51_combout\ = ( !\PSEUDORANDOM|count[12]~49_combout\ & ( \PSEUDORANDOM|count[11]~46_combout\ ) ) # ( \PSEUDORANDOM|count[12]~49_combout\ & ( !\PSEUDORANDOM|count[11]~46_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PSEUDORANDOM|ALT_INV_count[12]~49_combout\,
	dataf => \PSEUDORANDOM|ALT_INV_count[11]~46_combout\,
	combout => \PSEUDORANDOM|count[12]~51_combout\);

-- Location: FF_X71_Y4_N8
\PSEUDORANDOM|count[12]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PSEUDORANDOM|count[12]~51_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PSEUDORANDOM|count[12]~_emulated_q\);

-- Location: LABCELL_X66_Y4_N45
\PSEUDORANDOM|count[12]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[12]~50_combout\ = ( \PSEUDORANDOM|count[12]~49_combout\ & ( (!\comb~0_combout\ & ((!\PSEUDORANDOM|count[12]~_emulated_q\))) # (\comb~0_combout\ & (\Registrador|Q\(12))) ) ) # ( !\PSEUDORANDOM|count[12]~49_combout\ & ( 
-- (!\comb~0_combout\ & ((\PSEUDORANDOM|count[12]~_emulated_q\))) # (\comb~0_combout\ & (\Registrador|Q\(12))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110111010001110100011101000111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Registrador|ALT_INV_Q\(12),
	datab => \ALT_INV_comb~0_combout\,
	datac => \PSEUDORANDOM|ALT_INV_count[12]~_emulated_q\,
	dataf => \PSEUDORANDOM|ALT_INV_count[12]~49_combout\,
	combout => \PSEUDORANDOM|count[12]~50_combout\);

-- Location: FF_X65_Y4_N41
\Registrador|IQ[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \geraSeed|IC_4|Qout[1]~reg0_q\,
	sclr => \comb~0_combout\,
	sload => VCC,
	ena => \Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador|IQ\(13));

-- Location: LABCELL_X66_Y2_N45
\Registrador|Q[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Registrador|Q[13]~feeder_combout\ = ( \Registrador|IQ\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Registrador|ALT_INV_IQ\(13),
	combout => \Registrador|Q[13]~feeder_combout\);

-- Location: FF_X66_Y2_N47
\Registrador|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Registrador|Q[13]~feeder_combout\,
	ena => \Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registrador|Q\(13));

-- Location: LABCELL_X66_Y2_N18
\PSEUDORANDOM|count[13]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[13]~53_combout\ = ( \comb~0_combout\ & ( \Registrador|Q\(13) ) ) # ( !\comb~0_combout\ & ( \Registrador|Q\(13) & ( \PSEUDORANDOM|count[13]~53_combout\ ) ) ) # ( !\comb~0_combout\ & ( !\Registrador|Q\(13) & ( 
-- \PSEUDORANDOM|count[13]~53_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PSEUDORANDOM|ALT_INV_count[13]~53_combout\,
	datae => \ALT_INV_comb~0_combout\,
	dataf => \Registrador|ALT_INV_Q\(13),
	combout => \PSEUDORANDOM|count[13]~53_combout\);

-- Location: LABCELL_X66_Y4_N15
\PSEUDORANDOM|count[13]~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[13]~55_combout\ = ( \PSEUDORANDOM|count[13]~53_combout\ & ( !\PSEUDORANDOM|count[12]~50_combout\ ) ) # ( !\PSEUDORANDOM|count[13]~53_combout\ & ( \PSEUDORANDOM|count[12]~50_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PSEUDORANDOM|ALT_INV_count[12]~50_combout\,
	dataf => \PSEUDORANDOM|ALT_INV_count[13]~53_combout\,
	combout => \PSEUDORANDOM|count[13]~55_combout\);

-- Location: FF_X66_Y4_N17
\PSEUDORANDOM|count[13]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PSEUDORANDOM|count[13]~55_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PSEUDORANDOM|count[13]~_emulated_q\);

-- Location: LABCELL_X66_Y2_N39
\PSEUDORANDOM|count[13]~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[13]~54_combout\ = ( \PSEUDORANDOM|count[13]~53_combout\ & ( (!\comb~0_combout\ & (!\PSEUDORANDOM|count[13]~_emulated_q\)) # (\comb~0_combout\ & ((\Registrador|Q\(13)))) ) ) # ( !\PSEUDORANDOM|count[13]~53_combout\ & ( 
-- (!\comb~0_combout\ & (\PSEUDORANDOM|count[13]~_emulated_q\)) # (\comb~0_combout\ & ((\Registrador|Q\(13)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011110001000101110111000100010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PSEUDORANDOM|ALT_INV_count[13]~_emulated_q\,
	datab => \ALT_INV_comb~0_combout\,
	datad => \Registrador|ALT_INV_Q\(13),
	dataf => \PSEUDORANDOM|ALT_INV_count[13]~53_combout\,
	combout => \PSEUDORANDOM|count[13]~54_combout\);

-- Location: LABCELL_X66_Y4_N12
\PSEUDORANDOM|count[14]~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[14]~59_combout\ = ( \PSEUDORANDOM|count[13]~54_combout\ & ( !\PSEUDORANDOM|count[14]~57_combout\ ) ) # ( !\PSEUDORANDOM|count[13]~54_combout\ & ( \PSEUDORANDOM|count[14]~57_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PSEUDORANDOM|ALT_INV_count[14]~57_combout\,
	dataf => \PSEUDORANDOM|ALT_INV_count[13]~54_combout\,
	combout => \PSEUDORANDOM|count[14]~59_combout\);

-- Location: FF_X66_Y4_N14
\PSEUDORANDOM|count[14]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PSEUDORANDOM|count[14]~59_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PSEUDORANDOM|count[14]~_emulated_q\);

-- Location: LABCELL_X66_Y4_N21
\PSEUDORANDOM|count[14]~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[14]~58_combout\ = ( \PSEUDORANDOM|count[14]~57_combout\ & ( (!\comb~0_combout\ & (!\PSEUDORANDOM|count[14]~_emulated_q\)) # (\comb~0_combout\ & ((\Registrador|Q\(14)))) ) ) # ( !\PSEUDORANDOM|count[14]~57_combout\ & ( 
-- (!\comb~0_combout\ & (\PSEUDORANDOM|count[14]~_emulated_q\)) # (\comb~0_combout\ & ((\Registrador|Q\(14)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111111000000111100111100000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_comb~0_combout\,
	datac => \PSEUDORANDOM|ALT_INV_count[14]~_emulated_q\,
	datad => \Registrador|ALT_INV_Q\(14),
	dataf => \PSEUDORANDOM|ALT_INV_count[14]~57_combout\,
	combout => \PSEUDORANDOM|count[14]~58_combout\);

-- Location: LABCELL_X66_Y4_N18
\PSEUDORANDOM|count[15]~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[15]~63_combout\ = ( \PSEUDORANDOM|count[14]~58_combout\ & ( !\PSEUDORANDOM|count[15]~61_combout\ ) ) # ( !\PSEUDORANDOM|count[14]~58_combout\ & ( \PSEUDORANDOM|count[15]~61_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PSEUDORANDOM|ALT_INV_count[15]~61_combout\,
	dataf => \PSEUDORANDOM|ALT_INV_count[14]~58_combout\,
	combout => \PSEUDORANDOM|count[15]~63_combout\);

-- Location: FF_X66_Y4_N19
\PSEUDORANDOM|count[15]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PSEUDORANDOM|count[15]~63_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PSEUDORANDOM|count[15]~_emulated_q\);

-- Location: LABCELL_X71_Y4_N45
\PSEUDORANDOM|count[15]~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[15]~62_combout\ = ( \PSEUDORANDOM|count[15]~61_combout\ & ( (!\comb~0_combout\ & ((!\PSEUDORANDOM|count[15]~_emulated_q\))) # (\comb~0_combout\ & (\Registrador|Q\(15))) ) ) # ( !\PSEUDORANDOM|count[15]~61_combout\ & ( 
-- (!\comb~0_combout\ & ((\PSEUDORANDOM|count[15]~_emulated_q\))) # (\comb~0_combout\ & (\Registrador|Q\(15))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001111110000001100111111000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Registrador|ALT_INV_Q\(15),
	datac => \PSEUDORANDOM|ALT_INV_count[15]~_emulated_q\,
	datad => \ALT_INV_comb~0_combout\,
	dataf => \PSEUDORANDOM|ALT_INV_count[15]~61_combout\,
	combout => \PSEUDORANDOM|count[15]~62_combout\);

-- Location: LABCELL_X71_Y4_N42
\PSEUDORANDOM|count[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[0]~3_combout\ = ( \PSEUDORANDOM|count[15]~62_combout\ & ( !\PSEUDORANDOM|count[11]~46_combout\ $ (!\PSEUDORANDOM|count[0]~1_combout\) ) ) # ( !\PSEUDORANDOM|count[15]~62_combout\ & ( !\PSEUDORANDOM|count[11]~46_combout\ $ 
-- (\PSEUDORANDOM|count[0]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010101011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PSEUDORANDOM|ALT_INV_count[11]~46_combout\,
	datac => \PSEUDORANDOM|ALT_INV_count[0]~1_combout\,
	dataf => \PSEUDORANDOM|ALT_INV_count[15]~62_combout\,
	combout => \PSEUDORANDOM|count[0]~3_combout\);

-- Location: FF_X71_Y4_N43
\PSEUDORANDOM|count[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \PSEUDORANDOM|count[0]~3_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PSEUDORANDOM|count[0]~_emulated_q\);

-- Location: LABCELL_X66_Y4_N57
\PSEUDORANDOM|count[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \PSEUDORANDOM|count[0]~2_combout\ = ( \PSEUDORANDOM|count[0]~1_combout\ & ( (!\comb~0_combout\ & (!\PSEUDORANDOM|count[0]~_emulated_q\)) # (\comb~0_combout\ & ((\Registrador|Q\(0)))) ) ) # ( !\PSEUDORANDOM|count[0]~1_combout\ & ( (!\comb~0_combout\ & 
-- (\PSEUDORANDOM|count[0]~_emulated_q\)) # (\comb~0_combout\ & ((\Registrador|Q\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111110100000101011111010000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PSEUDORANDOM|ALT_INV_count[0]~_emulated_q\,
	datac => \ALT_INV_comb~0_combout\,
	datad => \Registrador|ALT_INV_Q\(0),
	dataf => \PSEUDORANDOM|ALT_INV_count[0]~1_combout\,
	combout => \PSEUDORANDOM|count[0]~2_combout\);

-- Location: FF_X67_Y4_N35
\Converte|binary[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|binary_next~0_combout\,
	asdata => \PSEUDORANDOM|count[0]~2_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sload => \Converte|ALT_INV_state.shift~q\,
	ena => \Converte|ALT_INV_state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|binary\(0));

-- Location: LABCELL_X66_Y4_N54
\Converte|binary[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|binary[1]~feeder_combout\ = \Converte|binary\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Converte|ALT_INV_binary\(0),
	combout => \Converte|binary[1]~feeder_combout\);

-- Location: LABCELL_X67_Y2_N36
\Converte|binary[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|binary[2]~0_combout\ = ( \Converte|shift_counter[2]~DUPLICATE_q\ & ( \Converte|state.shift~q\ & ( (!\Converte|state.done~q\ & ((!\Converte|shift_counter[3]~DUPLICATE_q\) # ((!\Converte|shift_counter\(1)) # (\Converte|shift_counter\(0))))) ) ) ) 
-- # ( !\Converte|shift_counter[2]~DUPLICATE_q\ & ( \Converte|state.shift~q\ & ( !\Converte|state.done~q\ ) ) ) # ( \Converte|shift_counter[2]~DUPLICATE_q\ & ( !\Converte|state.shift~q\ & ( !\Converte|state.done~q\ ) ) ) # ( 
-- !\Converte|shift_counter[2]~DUPLICATE_q\ & ( !\Converte|state.shift~q\ & ( !\Converte|state.done~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001110000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Converte|ALT_INV_shift_counter[3]~DUPLICATE_q\,
	datab => \Converte|ALT_INV_shift_counter\(1),
	datac => \Converte|ALT_INV_state.done~q\,
	datad => \Converte|ALT_INV_shift_counter\(0),
	datae => \Converte|ALT_INV_shift_counter[2]~DUPLICATE_q\,
	dataf => \Converte|ALT_INV_state.shift~q\,
	combout => \Converte|binary[2]~0_combout\);

-- Location: FF_X66_Y4_N55
\Converte|binary[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|binary[1]~feeder_combout\,
	asdata => \PSEUDORANDOM|count[1]~6_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sload => \Converte|ALT_INV_state.shift~q\,
	ena => \Converte|binary[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|binary\(1));

-- Location: LABCELL_X70_Y4_N6
\Converte|binary[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|binary[2]~feeder_combout\ = ( \Converte|binary\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Converte|ALT_INV_binary\(1),
	combout => \Converte|binary[2]~feeder_combout\);

-- Location: FF_X70_Y4_N7
\Converte|binary[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|binary[2]~feeder_combout\,
	asdata => \PSEUDORANDOM|count[2]~10_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sload => \Converte|ALT_INV_state.shift~q\,
	ena => \Converte|binary[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|binary\(2));

-- Location: LABCELL_X66_Y4_N36
\Converte|binary[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|binary[3]~feeder_combout\ = \Converte|binary\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Converte|ALT_INV_binary\(2),
	combout => \Converte|binary[3]~feeder_combout\);

-- Location: FF_X66_Y4_N37
\Converte|binary[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|binary[3]~feeder_combout\,
	asdata => \PSEUDORANDOM|count[3]~14_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sload => \Converte|ALT_INV_state.shift~q\,
	ena => \Converte|binary[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|binary\(3));

-- Location: LABCELL_X70_Y4_N33
\Converte|binary[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|binary[4]~feeder_combout\ = \Converte|binary\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Converte|ALT_INV_binary\(3),
	combout => \Converte|binary[4]~feeder_combout\);

-- Location: FF_X70_Y4_N35
\Converte|binary[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|binary[4]~feeder_combout\,
	asdata => \PSEUDORANDOM|count[4]~18_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sload => \Converte|ALT_INV_state.shift~q\,
	ena => \Converte|binary[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|binary\(4));

-- Location: LABCELL_X63_Y4_N51
\Converte|binary[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|binary[5]~feeder_combout\ = ( \Converte|binary\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Converte|ALT_INV_binary\(4),
	combout => \Converte|binary[5]~feeder_combout\);

-- Location: FF_X63_Y4_N52
\Converte|binary[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|binary[5]~feeder_combout\,
	asdata => \PSEUDORANDOM|count[5]~22_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sload => \Converte|ALT_INV_state.shift~q\,
	ena => \Converte|binary[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|binary\(5));

-- Location: LABCELL_X70_Y4_N36
\Converte|binary[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|binary[6]~feeder_combout\ = ( \Converte|binary\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Converte|ALT_INV_binary\(5),
	combout => \Converte|binary[6]~feeder_combout\);

-- Location: FF_X70_Y4_N38
\Converte|binary[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|binary[6]~feeder_combout\,
	asdata => \PSEUDORANDOM|count[6]~26_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sload => \Converte|ALT_INV_state.shift~q\,
	ena => \Converte|binary[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|binary\(6));

-- Location: LABCELL_X70_Y4_N12
\Converte|binary[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|binary[7]~feeder_combout\ = \Converte|binary\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Converte|ALT_INV_binary\(6),
	combout => \Converte|binary[7]~feeder_combout\);

-- Location: FF_X70_Y4_N13
\Converte|binary[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|binary[7]~feeder_combout\,
	asdata => \PSEUDORANDOM|count[7]~30_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sload => \Converte|ALT_INV_state.shift~q\,
	ena => \Converte|binary[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|binary\(7));

-- Location: LABCELL_X66_Y2_N12
\Converte|binary[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|binary[8]~feeder_combout\ = \Converte|binary\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Converte|ALT_INV_binary\(7),
	combout => \Converte|binary[8]~feeder_combout\);

-- Location: FF_X66_Y2_N13
\Converte|binary[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|binary[8]~feeder_combout\,
	asdata => \PSEUDORANDOM|count[8]~34_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sload => \Converte|ALT_INV_state.shift~q\,
	ena => \Converte|binary[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|binary\(8));

-- Location: LABCELL_X66_Y4_N24
\Converte|binary[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|binary[9]~feeder_combout\ = \Converte|binary\(8)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Converte|ALT_INV_binary\(8),
	combout => \Converte|binary[9]~feeder_combout\);

-- Location: FF_X66_Y4_N25
\Converte|binary[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|binary[9]~feeder_combout\,
	asdata => \PSEUDORANDOM|count[9]~38_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sload => \Converte|ALT_INV_state.shift~q\,
	ena => \Converte|binary[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|binary\(9));

-- Location: LABCELL_X66_Y2_N30
\Converte|binary[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|binary[10]~feeder_combout\ = \Converte|binary\(9)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Converte|ALT_INV_binary\(9),
	combout => \Converte|binary[10]~feeder_combout\);

-- Location: FF_X66_Y2_N31
\Converte|binary[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|binary[10]~feeder_combout\,
	asdata => \PSEUDORANDOM|count[10]~42_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sload => \Converte|ALT_INV_state.shift~q\,
	ena => \Converte|binary[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|binary\(10));

-- Location: LABCELL_X70_Y4_N48
\Converte|binary[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|binary[11]~feeder_combout\ = ( \Converte|binary\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Converte|ALT_INV_binary\(10),
	combout => \Converte|binary[11]~feeder_combout\);

-- Location: FF_X70_Y4_N49
\Converte|binary[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|binary[11]~feeder_combout\,
	asdata => \PSEUDORANDOM|count[11]~46_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sload => \Converte|ALT_INV_state.shift~q\,
	ena => \Converte|binary[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|binary\(11));

-- Location: LABCELL_X66_Y4_N9
\Converte|binary[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|binary[12]~feeder_combout\ = ( \Converte|binary\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Converte|ALT_INV_binary\(11),
	combout => \Converte|binary[12]~feeder_combout\);

-- Location: FF_X66_Y4_N10
\Converte|binary[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|binary[12]~feeder_combout\,
	asdata => \PSEUDORANDOM|count[12]~50_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sload => \Converte|ALT_INV_state.shift~q\,
	ena => \Converte|binary[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|binary\(12));

-- Location: LABCELL_X66_Y2_N36
\Converte|binary[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|binary[13]~feeder_combout\ = \Converte|binary\(12)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Converte|ALT_INV_binary\(12),
	combout => \Converte|binary[13]~feeder_combout\);

-- Location: FF_X66_Y2_N37
\Converte|binary[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|binary[13]~feeder_combout\,
	asdata => \PSEUDORANDOM|count[13]~54_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sload => \Converte|ALT_INV_state.shift~q\,
	ena => \Converte|binary[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|binary\(13));

-- Location: FF_X66_Y3_N40
\Converte|bcds[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|Selector31~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds\(0));

-- Location: LABCELL_X66_Y3_N39
\Converte|Selector31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|Selector31~0_combout\ = ( \Converte|bcds\(0) & ( \Converte|state_next.done~0_combout\ ) ) # ( !\Converte|bcds\(0) & ( \Converte|state_next.done~0_combout\ & ( (\Converte|binary\(13) & \Converte|Selector1~0_combout\) ) ) ) # ( \Converte|bcds\(0) 
-- & ( !\Converte|state_next.done~0_combout\ & ( ((\Converte|binary\(13) & \Converte|Selector1~0_combout\)) # (\Converte|state.done~q\) ) ) ) # ( !\Converte|bcds\(0) & ( !\Converte|state_next.done~0_combout\ & ( (\Converte|binary\(13) & 
-- \Converte|Selector1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101001100110111011100000000010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Converte|ALT_INV_binary\(13),
	datab => \Converte|ALT_INV_state.done~q\,
	datad => \Converte|ALT_INV_Selector1~0_combout\,
	datae => \Converte|ALT_INV_bcds\(0),
	dataf => \Converte|ALT_INV_state_next.done~0_combout\,
	combout => \Converte|Selector31~0_combout\);

-- Location: FF_X66_Y3_N41
\Converte|bcds[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|Selector31~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds[0]~DUPLICATE_q\);

-- Location: FF_X66_Y3_N16
\Converte|bcds[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|Selector29~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds[2]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y3_N24
\Converte|Selector28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|Selector28~0_combout\ = ( \Converte|bcds\(3) & ( \Converte|bcds[2]~DUPLICATE_q\ & ( (((\Converte|Selector1~0_combout\ & \Converte|Add4~0_combout\)) # (\Converte|state_next.done~0_combout\)) # (\Converte|state.done~q\) ) ) ) # ( 
-- !\Converte|bcds\(3) & ( \Converte|bcds[2]~DUPLICATE_q\ & ( (\Converte|Selector1~0_combout\ & \Converte|Add4~0_combout\) ) ) ) # ( \Converte|bcds\(3) & ( !\Converte|bcds[2]~DUPLICATE_q\ & ( (((\Converte|Selector1~0_combout\ & !\Converte|Add4~0_combout\)) # 
-- (\Converte|state_next.done~0_combout\)) # (\Converte|state.done~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111110111011100000000000011110111011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Converte|ALT_INV_state.done~q\,
	datab => \Converte|ALT_INV_state_next.done~0_combout\,
	datac => \Converte|ALT_INV_Selector1~0_combout\,
	datad => \Converte|ALT_INV_Add4~0_combout\,
	datae => \Converte|ALT_INV_bcds\(3),
	dataf => \Converte|ALT_INV_bcds[2]~DUPLICATE_q\,
	combout => \Converte|Selector28~0_combout\);

-- Location: FF_X66_Y3_N25
\Converte|bcds[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|Selector28~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds\(3));

-- Location: LABCELL_X66_Y3_N15
\Converte|Selector29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|Selector29~0_combout\ = ( \Converte|bcds\(2) & ( \Converte|bcds\(3) & ( (!\Converte|binary[2]~0_combout\) # ((\Converte|Selector1~0_combout\ & (!\Converte|bcds[0]~DUPLICATE_q\ $ (\Converte|bcds\(1))))) ) ) ) # ( !\Converte|bcds\(2) & ( 
-- \Converte|bcds\(3) & ( (\Converte|Selector1~0_combout\ & (!\Converte|bcds[0]~DUPLICATE_q\ $ (\Converte|bcds\(1)))) ) ) ) # ( \Converte|bcds\(2) & ( !\Converte|bcds\(3) & ( (!\Converte|binary[2]~0_combout\) # ((\Converte|Selector1~0_combout\ & 
-- (\Converte|bcds[0]~DUPLICATE_q\ & \Converte|bcds\(1)))) ) ) ) # ( !\Converte|bcds\(2) & ( !\Converte|bcds\(3) & ( (\Converte|Selector1~0_combout\ & \Converte|bcds\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111100001111000101000100000100011111010011110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Converte|ALT_INV_Selector1~0_combout\,
	datab => \Converte|ALT_INV_bcds[0]~DUPLICATE_q\,
	datac => \Converte|ALT_INV_binary[2]~0_combout\,
	datad => \Converte|ALT_INV_bcds\(1),
	datae => \Converte|ALT_INV_bcds\(2),
	dataf => \Converte|ALT_INV_bcds\(3),
	combout => \Converte|Selector29~0_combout\);

-- Location: FF_X66_Y3_N17
\Converte|bcds[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|Selector29~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds\(2));

-- Location: LABCELL_X66_Y3_N18
\Converte|Selector30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|Selector30~0_combout\ = ( \Converte|bcds\(1) & ( \Converte|bcds\(3) & ( (!\Converte|binary[2]~0_combout\) # ((\Converte|Selector1~0_combout\ & !\Converte|bcds[0]~DUPLICATE_q\)) ) ) ) # ( !\Converte|bcds\(1) & ( \Converte|bcds\(3) & ( 
-- (\Converte|Selector1~0_combout\ & !\Converte|bcds[0]~DUPLICATE_q\) ) ) ) # ( \Converte|bcds\(1) & ( !\Converte|bcds\(3) & ( (!\Converte|binary[2]~0_combout\) # ((\Converte|Selector1~0_combout\ & (!\Converte|bcds\(2) $ (!\Converte|bcds[0]~DUPLICATE_q\)))) 
-- ) ) ) # ( !\Converte|bcds\(1) & ( !\Converte|bcds\(3) & ( (\Converte|Selector1~0_combout\ & (!\Converte|bcds\(2) & \Converte|bcds[0]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100111100011111010001010101000000001111010111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Converte|ALT_INV_Selector1~0_combout\,
	datab => \Converte|ALT_INV_bcds\(2),
	datac => \Converte|ALT_INV_binary[2]~0_combout\,
	datad => \Converte|ALT_INV_bcds[0]~DUPLICATE_q\,
	datae => \Converte|ALT_INV_bcds\(1),
	dataf => \Converte|ALT_INV_bcds\(3),
	combout => \Converte|Selector30~0_combout\);

-- Location: FF_X66_Y3_N20
\Converte|bcds[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|Selector30~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds\(1));

-- Location: LABCELL_X66_Y3_N42
\Converte|Add4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|Add4~0_combout\ = ( !\Converte|bcds\(1) & ( !\Converte|bcds[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Converte|ALT_INV_bcds[0]~DUPLICATE_q\,
	dataf => \Converte|ALT_INV_bcds\(1),
	combout => \Converte|Add4~0_combout\);

-- Location: LABCELL_X66_Y3_N6
\Converte|Selector27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|Selector27~0_combout\ = ( \Converte|bcds\(4) & ( \Converte|bcds\(3) & ( (!\Converte|binary[2]~0_combout\) # ((\Converte|Selector1~0_combout\ & ((!\Converte|bcds\(2)) # (\Converte|Add4~0_combout\)))) ) ) ) # ( !\Converte|bcds\(4) & ( 
-- \Converte|bcds\(3) & ( (\Converte|Selector1~0_combout\ & ((!\Converte|bcds\(2)) # (\Converte|Add4~0_combout\))) ) ) ) # ( \Converte|bcds\(4) & ( !\Converte|bcds\(3) & ( (!\Converte|binary[2]~0_combout\) # ((\Converte|Selector1~0_combout\ & 
-- (!\Converte|Add4~0_combout\ & \Converte|bcds\(2)))) ) ) ) # ( !\Converte|bcds\(4) & ( !\Converte|bcds\(3) & ( (\Converte|Selector1~0_combout\ & (!\Converte|Add4~0_combout\ & \Converte|bcds\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100111100001111010001010101000100011111010111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Converte|ALT_INV_Selector1~0_combout\,
	datab => \Converte|ALT_INV_Add4~0_combout\,
	datac => \Converte|ALT_INV_binary[2]~0_combout\,
	datad => \Converte|ALT_INV_bcds\(2),
	datae => \Converte|ALT_INV_bcds\(4),
	dataf => \Converte|ALT_INV_bcds\(3),
	combout => \Converte|Selector27~0_combout\);

-- Location: FF_X66_Y3_N8
\Converte|bcds[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|Selector27~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds\(4));

-- Location: FF_X67_Y4_N55
\Converte|bcds[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|Selector26~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds\(5));

-- Location: LABCELL_X66_Y4_N51
\Converte|Add3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|Add3~0_combout\ = ( !\Converte|bcds\(4) & ( !\Converte|bcds\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Converte|ALT_INV_bcds\(5),
	dataf => \Converte|ALT_INV_bcds\(4),
	combout => \Converte|Add3~0_combout\);

-- Location: LABCELL_X66_Y3_N30
\Converte|Selector24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|Selector24~0_combout\ = ( \Converte|bcds\(7) & ( \Converte|state_next.done~0_combout\ ) ) # ( !\Converte|bcds\(7) & ( \Converte|state_next.done~0_combout\ & ( (\Converte|Selector1~0_combout\ & (\Converte|bcds[6]~DUPLICATE_q\ & 
-- \Converte|Add3~0_combout\)) ) ) ) # ( \Converte|bcds\(7) & ( !\Converte|state_next.done~0_combout\ & ( ((\Converte|Selector1~0_combout\ & (!\Converte|bcds[6]~DUPLICATE_q\ $ (\Converte|Add3~0_combout\)))) # (\Converte|state.done~q\) ) ) ) # ( 
-- !\Converte|bcds\(7) & ( !\Converte|state_next.done~0_combout\ & ( (\Converte|Selector1~0_combout\ & (\Converte|bcds[6]~DUPLICATE_q\ & \Converte|Add3~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001010011110001111100000000000100011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Converte|ALT_INV_Selector1~0_combout\,
	datab => \Converte|ALT_INV_bcds[6]~DUPLICATE_q\,
	datac => \Converte|ALT_INV_state.done~q\,
	datad => \Converte|ALT_INV_Add3~0_combout\,
	datae => \Converte|ALT_INV_bcds\(7),
	dataf => \Converte|ALT_INV_state_next.done~0_combout\,
	combout => \Converte|Selector24~0_combout\);

-- Location: FF_X66_Y3_N31
\Converte|bcds[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|Selector24~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds\(7));

-- Location: FF_X71_Y4_N31
\Converte|bcds[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|Selector25~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds\(6));

-- Location: LABCELL_X67_Y4_N54
\Converte|Selector26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|Selector26~0_combout\ = ( \Converte|bcds\(5) & ( \Converte|binary[2]~0_combout\ & ( (\Converte|Selector1~0_combout\ & (!\Converte|bcds\(4) $ (((!\Converte|bcds\(7) & !\Converte|bcds\(6)))))) ) ) ) # ( !\Converte|bcds\(5) & ( 
-- \Converte|binary[2]~0_combout\ & ( (\Converte|Selector1~0_combout\ & ((!\Converte|bcds\(7) & (!\Converte|bcds\(6) & \Converte|bcds\(4))) # (\Converte|bcds\(7) & ((!\Converte|bcds\(4)))))) ) ) ) # ( \Converte|bcds\(5) & ( !\Converte|binary[2]~0_combout\ ) 
-- ) # ( !\Converte|bcds\(5) & ( !\Converte|binary[2]~0_combout\ & ( (\Converte|Selector1~0_combout\ & ((!\Converte|bcds\(7) & (!\Converte|bcds\(6) & \Converte|bcds\(4))) # (\Converte|bcds\(7) & ((!\Converte|bcds\(4)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001000111111111111111100000101000010000000011100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Converte|ALT_INV_bcds\(7),
	datab => \Converte|ALT_INV_bcds\(6),
	datac => \Converte|ALT_INV_Selector1~0_combout\,
	datad => \Converte|ALT_INV_bcds\(4),
	datae => \Converte|ALT_INV_bcds\(5),
	dataf => \Converte|ALT_INV_binary[2]~0_combout\,
	combout => \Converte|Selector26~0_combout\);

-- Location: FF_X67_Y4_N56
\Converte|bcds[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|Selector26~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds[5]~DUPLICATE_q\);

-- Location: LABCELL_X71_Y4_N30
\Converte|Selector25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|Selector25~0_combout\ = ( \Converte|bcds\(6) & ( \Converte|binary[2]~0_combout\ & ( (\Converte|Selector1~0_combout\ & ((!\Converte|bcds\(4) & (!\Converte|bcds[5]~DUPLICATE_q\ & \Converte|bcds\(7))) # (\Converte|bcds\(4) & 
-- (\Converte|bcds[5]~DUPLICATE_q\)))) ) ) ) # ( !\Converte|bcds\(6) & ( \Converte|binary[2]~0_combout\ & ( (\Converte|Selector1~0_combout\ & (!\Converte|bcds[5]~DUPLICATE_q\ $ (((!\Converte|bcds\(7)) # (\Converte|bcds\(4)))))) ) ) ) # ( \Converte|bcds\(6) & 
-- ( !\Converte|binary[2]~0_combout\ ) ) # ( !\Converte|bcds\(6) & ( !\Converte|binary[2]~0_combout\ & ( (\Converte|Selector1~0_combout\ & (!\Converte|bcds[5]~DUPLICATE_q\ $ (((!\Converte|bcds\(7)) # (\Converte|bcds\(4)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100100001111111111111111100000011001000010000000100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Converte|ALT_INV_bcds\(4),
	datab => \Converte|ALT_INV_Selector1~0_combout\,
	datac => \Converte|ALT_INV_bcds[5]~DUPLICATE_q\,
	datad => \Converte|ALT_INV_bcds\(7),
	datae => \Converte|ALT_INV_bcds\(6),
	dataf => \Converte|ALT_INV_binary[2]~0_combout\,
	combout => \Converte|Selector25~0_combout\);

-- Location: FF_X71_Y4_N32
\Converte|bcds[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|Selector25~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds[6]~DUPLICATE_q\);

-- Location: LABCELL_X66_Y3_N0
\Converte|Selector23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|Selector23~0_combout\ = ( \Converte|bcds\(8) & ( \Converte|bcds\(7) & ( (!\Converte|binary[2]~0_combout\) # ((\Converte|Selector1~0_combout\ & ((!\Converte|bcds[6]~DUPLICATE_q\) # (\Converte|Add3~0_combout\)))) ) ) ) # ( !\Converte|bcds\(8) & ( 
-- \Converte|bcds\(7) & ( (\Converte|Selector1~0_combout\ & ((!\Converte|bcds[6]~DUPLICATE_q\) # (\Converte|Add3~0_combout\))) ) ) ) # ( \Converte|bcds\(8) & ( !\Converte|bcds\(7) & ( (!\Converte|binary[2]~0_combout\) # ((\Converte|Selector1~0_combout\ & 
-- (\Converte|bcds[6]~DUPLICATE_q\ & !\Converte|Add3~0_combout\))) ) ) ) # ( !\Converte|bcds\(8) & ( !\Converte|bcds\(7) & ( (\Converte|Selector1~0_combout\ & (\Converte|bcds[6]~DUPLICATE_q\ & !\Converte|Add3~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000111100011111000001000100010101011111010011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Converte|ALT_INV_Selector1~0_combout\,
	datab => \Converte|ALT_INV_bcds[6]~DUPLICATE_q\,
	datac => \Converte|ALT_INV_binary[2]~0_combout\,
	datad => \Converte|ALT_INV_Add3~0_combout\,
	datae => \Converte|ALT_INV_bcds\(8),
	dataf => \Converte|ALT_INV_bcds\(7),
	combout => \Converte|Selector23~0_combout\);

-- Location: FF_X66_Y3_N1
\Converte|bcds[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|Selector23~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds\(8));

-- Location: LABCELL_X67_Y5_N24
\Converte|Add2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|Add2~0_combout\ = ( !\Converte|bcds\(9) & ( !\Converte|bcds\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Converte|ALT_INV_bcds\(8),
	dataf => \Converte|ALT_INV_bcds\(9),
	combout => \Converte|Add2~0_combout\);

-- Location: LABCELL_X67_Y5_N18
\Converte|Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|Selector20~0_combout\ = ( \Converte|bcds\(11) & ( \Converte|Add2~0_combout\ & ( (((\Converte|Selector1~0_combout\ & \Converte|bcds\(10))) # (\Converte|state_next.done~0_combout\)) # (\Converte|state.done~q\) ) ) ) # ( !\Converte|bcds\(11) & ( 
-- \Converte|Add2~0_combout\ & ( (\Converte|Selector1~0_combout\ & \Converte|bcds\(10)) ) ) ) # ( \Converte|bcds\(11) & ( !\Converte|Add2~0_combout\ & ( (((\Converte|Selector1~0_combout\ & !\Converte|bcds\(10))) # (\Converte|state_next.done~0_combout\)) # 
-- (\Converte|state.done~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111110111011100000000000011110111011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Converte|ALT_INV_state.done~q\,
	datab => \Converte|ALT_INV_state_next.done~0_combout\,
	datac => \Converte|ALT_INV_Selector1~0_combout\,
	datad => \Converte|ALT_INV_bcds\(10),
	datae => \Converte|ALT_INV_bcds\(11),
	dataf => \Converte|ALT_INV_Add2~0_combout\,
	combout => \Converte|Selector20~0_combout\);

-- Location: FF_X67_Y5_N19
\Converte|bcds[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|Selector20~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds\(11));

-- Location: LABCELL_X67_Y5_N30
\Converte|Selector22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|Selector22~0_combout\ = ( \Converte|bcds\(9) & ( \Converte|bcds\(11) & ( (!\Converte|binary[2]~0_combout\) # ((!\Converte|bcds\(8) & \Converte|Selector1~0_combout\)) ) ) ) # ( !\Converte|bcds\(9) & ( \Converte|bcds\(11) & ( (!\Converte|bcds\(8) 
-- & \Converte|Selector1~0_combout\) ) ) ) # ( \Converte|bcds\(9) & ( !\Converte|bcds\(11) & ( (!\Converte|binary[2]~0_combout\) # ((\Converte|Selector1~0_combout\ & (!\Converte|bcds\(8) $ (!\Converte|bcds\(10))))) ) ) ) # ( !\Converte|bcds\(9) & ( 
-- !\Converte|bcds\(11) & ( (\Converte|bcds\(8) & (\Converte|Selector1~0_combout\ & !\Converte|bcds\(10))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000110011011100111000001010000010101100111011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Converte|ALT_INV_bcds\(8),
	datab => \Converte|ALT_INV_binary[2]~0_combout\,
	datac => \Converte|ALT_INV_Selector1~0_combout\,
	datad => \Converte|ALT_INV_bcds\(10),
	datae => \Converte|ALT_INV_bcds\(9),
	dataf => \Converte|ALT_INV_bcds\(11),
	combout => \Converte|Selector22~0_combout\);

-- Location: FF_X67_Y5_N32
\Converte|bcds[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|Selector22~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds\(9));

-- Location: LABCELL_X67_Y5_N6
\Converte|Selector21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|Selector21~0_combout\ = ( \Converte|bcds\(10) & ( \Converte|bcds\(11) & ( (!\Converte|binary[2]~0_combout\) # ((\Converte|Selector1~0_combout\ & (!\Converte|bcds\(8) $ (\Converte|bcds\(9))))) ) ) ) # ( !\Converte|bcds\(10) & ( 
-- \Converte|bcds\(11) & ( (\Converte|Selector1~0_combout\ & (!\Converte|bcds\(8) $ (\Converte|bcds\(9)))) ) ) ) # ( \Converte|bcds\(10) & ( !\Converte|bcds\(11) & ( (!\Converte|binary[2]~0_combout\) # ((\Converte|bcds\(8) & (\Converte|Selector1~0_combout\ & 
-- \Converte|bcds\(9)))) ) ) ) # ( !\Converte|bcds\(10) & ( !\Converte|bcds\(11) & ( (\Converte|Selector1~0_combout\ & \Converte|bcds\(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111110011001100110100001010000001011100111011001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Converte|ALT_INV_bcds\(8),
	datab => \Converte|ALT_INV_binary[2]~0_combout\,
	datac => \Converte|ALT_INV_Selector1~0_combout\,
	datad => \Converte|ALT_INV_bcds\(9),
	datae => \Converte|ALT_INV_bcds\(10),
	dataf => \Converte|ALT_INV_bcds\(11),
	combout => \Converte|Selector21~0_combout\);

-- Location: FF_X67_Y5_N8
\Converte|bcds[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|Selector21~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds\(10));

-- Location: FF_X67_Y5_N20
\Converte|bcds[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|Selector20~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds[11]~DUPLICATE_q\);

-- Location: FF_X67_Y5_N1
\Converte|bcds[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|Selector19~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds\(12));

-- Location: LABCELL_X67_Y5_N0
\Converte|Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|Selector19~0_combout\ = ( \Converte|bcds\(12) & ( \Converte|Add2~0_combout\ & ( (!\Converte|binary[2]~0_combout\) # ((\Converte|Selector1~0_combout\ & \Converte|bcds[11]~DUPLICATE_q\)) ) ) ) # ( !\Converte|bcds\(12) & ( \Converte|Add2~0_combout\ 
-- & ( (\Converte|Selector1~0_combout\ & \Converte|bcds[11]~DUPLICATE_q\) ) ) ) # ( \Converte|bcds\(12) & ( !\Converte|Add2~0_combout\ & ( (!\Converte|binary[2]~0_combout\) # ((\Converte|Selector1~0_combout\ & (!\Converte|bcds\(10) $ 
-- (!\Converte|bcds[11]~DUPLICATE_q\)))) ) ) ) # ( !\Converte|bcds\(12) & ( !\Converte|Add2~0_combout\ & ( (\Converte|Selector1~0_combout\ & (!\Converte|bcds\(10) $ (!\Converte|bcds[11]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100111111110001010000000101000001011111111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Converte|ALT_INV_Selector1~0_combout\,
	datab => \Converte|ALT_INV_bcds\(10),
	datac => \Converte|ALT_INV_bcds[11]~DUPLICATE_q\,
	datad => \Converte|ALT_INV_binary[2]~0_combout\,
	datae => \Converte|ALT_INV_bcds\(12),
	dataf => \Converte|ALT_INV_Add2~0_combout\,
	combout => \Converte|Selector19~0_combout\);

-- Location: FF_X67_Y5_N2
\Converte|bcds[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|Selector19~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds[12]~DUPLICATE_q\);

-- Location: LABCELL_X68_Y4_N15
\Converte|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|LessThan0~0_combout\ = ( !\Converte|bcds[13]~DUPLICATE_q\ & ( !\Converte|bcds[12]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Converte|ALT_INV_bcds[13]~DUPLICATE_q\,
	dataf => \Converte|ALT_INV_bcds[12]~DUPLICATE_q\,
	combout => \Converte|LessThan0~0_combout\);

-- Location: LABCELL_X71_Y4_N18
\Converte|Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|Selector16~0_combout\ = ( \Converte|bcds\(15) & ( \Converte|Selector1~0_combout\ & ( ((!\Converte|LessThan0~0_combout\ $ (\Converte|bcds[14]~DUPLICATE_q\)) # (\Converte|state_next.done~0_combout\)) # (\Converte|state.done~q\) ) ) ) # ( 
-- !\Converte|bcds\(15) & ( \Converte|Selector1~0_combout\ & ( (\Converte|LessThan0~0_combout\ & \Converte|bcds[14]~DUPLICATE_q\) ) ) ) # ( \Converte|bcds\(15) & ( !\Converte|Selector1~0_combout\ & ( (\Converte|state_next.done~0_combout\) # 
-- (\Converte|state.done~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111111100010001000100011001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Converte|ALT_INV_LessThan0~0_combout\,
	datab => \Converte|ALT_INV_bcds[14]~DUPLICATE_q\,
	datac => \Converte|ALT_INV_state.done~q\,
	datad => \Converte|ALT_INV_state_next.done~0_combout\,
	datae => \Converte|ALT_INV_bcds\(15),
	dataf => \Converte|ALT_INV_Selector1~0_combout\,
	combout => \Converte|Selector16~0_combout\);

-- Location: FF_X71_Y4_N19
\Converte|bcds[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|Selector16~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds\(15));

-- Location: FF_X68_Y5_N32
\Converte|bcds[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|Selector17~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds\(14));

-- Location: LABCELL_X68_Y5_N24
\Converte|Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|Selector18~0_combout\ = ( \Converte|bcds\(13) & ( \Converte|bcds\(12) & ( (!\Converte|binary[2]~0_combout\) # ((!\Converte|bcds\(15) & (\Converte|Selector1~0_combout\ & !\Converte|bcds\(14)))) ) ) ) # ( !\Converte|bcds\(13) & ( 
-- \Converte|bcds\(12) & ( (!\Converte|bcds\(15) & (\Converte|Selector1~0_combout\ & !\Converte|bcds\(14))) ) ) ) # ( \Converte|bcds\(13) & ( !\Converte|bcds\(12) & ( (!\Converte|binary[2]~0_combout\) # ((\Converte|Selector1~0_combout\ & 
-- ((\Converte|bcds\(14)) # (\Converte|bcds\(15))))) ) ) ) # ( !\Converte|bcds\(13) & ( !\Converte|bcds\(12) & ( (\Converte|bcds\(15) & \Converte|Selector1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101110011011100111100001010000000001100111011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Converte|ALT_INV_bcds\(15),
	datab => \Converte|ALT_INV_binary[2]~0_combout\,
	datac => \Converte|ALT_INV_Selector1~0_combout\,
	datad => \Converte|ALT_INV_bcds\(14),
	datae => \Converte|ALT_INV_bcds\(13),
	dataf => \Converte|ALT_INV_bcds\(12),
	combout => \Converte|Selector18~0_combout\);

-- Location: FF_X68_Y5_N26
\Converte|bcds[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|Selector18~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds\(13));

-- Location: LABCELL_X68_Y5_N30
\Converte|Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Converte|Selector17~0_combout\ = ( \Converte|bcds\(14) & ( \Converte|bcds\(12) & ( (!\Converte|binary[2]~0_combout\) # ((\Converte|bcds\(13) & \Converte|Selector1~0_combout\)) ) ) ) # ( !\Converte|bcds\(14) & ( \Converte|bcds\(12) & ( 
-- (\Converte|bcds\(13) & \Converte|Selector1~0_combout\) ) ) ) # ( \Converte|bcds\(14) & ( !\Converte|bcds\(12) & ( (!\Converte|binary[2]~0_combout\) # ((!\Converte|bcds\(13) & (\Converte|bcds\(15) & \Converte|Selector1~0_combout\))) ) ) ) # ( 
-- !\Converte|bcds\(14) & ( !\Converte|bcds\(12) & ( (\Converte|Selector1~0_combout\ & (!\Converte|bcds\(13) $ (!\Converte|bcds\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110111111110000001000000101000001011111111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Converte|ALT_INV_bcds\(13),
	datab => \Converte|ALT_INV_bcds\(15),
	datac => \Converte|ALT_INV_Selector1~0_combout\,
	datad => \Converte|ALT_INV_binary[2]~0_combout\,
	datae => \Converte|ALT_INV_bcds\(14),
	dataf => \Converte|ALT_INV_bcds\(12),
	combout => \Converte|Selector17~0_combout\);

-- Location: FF_X68_Y5_N31
\Converte|bcds[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|Selector17~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds[14]~DUPLICATE_q\);

-- Location: FF_X68_Y4_N56
\Converte|bcds_out_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Converte|bcds[14]~DUPLICATE_q\,
	clrn => \ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds_out_reg\(14));

-- Location: FF_X68_Y4_N14
\Converte|bcds_out_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Converte|bcds[12]~DUPLICATE_q\,
	clrn => \ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds_out_reg\(12));

-- Location: FF_X66_Y3_N26
\Converte|bcds[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|Selector28~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds[3]~DUPLICATE_q\);

-- Location: FF_X68_Y4_N29
\Converte|bcds_out_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Converte|bcds[3]~DUPLICATE_q\,
	clrn => \ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds_out_reg\(3));

-- Location: FF_X68_Y4_N35
\Converte|bcds_out_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Converte|bcds\(6),
	clrn => \ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds_out_reg\(6));

-- Location: FF_X68_Y4_N8
\Converte|bcds_out_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Converte|bcds\(4),
	clrn => \ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds_out_reg\(4));

-- Location: LABCELL_X71_Y4_N54
\ContadordoAtraso|IC_1|Qout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordoAtraso|IC_1|Qout~2_combout\ = ( \ContadordoAtraso|IC_1|Qout[3]~reg0_q\ & ( (!\ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & (!\comb~0_combout\ & \ContadordoAtraso|IC_1|Qout[1]~reg0_q\)) ) ) # ( !\ContadordoAtraso|IC_1|Qout[3]~reg0_q\ & ( 
-- (!\comb~0_combout\ & (!\ContadordoAtraso|IC_1|Qout[0]~reg0_q\ $ (!\ContadordoAtraso|IC_1|Qout[1]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010001000010001001000100000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContadordoAtraso|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datab => \ALT_INV_comb~0_combout\,
	datad => \ContadordoAtraso|IC_1|ALT_INV_Qout[1]~reg0_q\,
	dataf => \ContadordoAtraso|IC_1|ALT_INV_Qout[3]~reg0_q\,
	combout => \ContadordoAtraso|IC_1|Qout~2_combout\);

-- Location: LABCELL_X71_Y4_N0
\ContadordoAtraso|IC_1|Qout[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordoAtraso|IC_1|Qout[3]~3_combout\ = ( \ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & ( \comb~0_combout\ ) ) # ( !\ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & ( \comb~0_combout\ ) ) # ( \ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & ( !\comb~0_combout\ & ( 
-- (\ContadordoAtraso|IC_1|Qout[3]~reg0_q\) # (\C|Eatual.Contando~q\) ) ) ) # ( !\ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & ( !\comb~0_combout\ & ( \C|Eatual.Contando~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101011111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C|ALT_INV_Eatual.Contando~q\,
	datad => \ContadordoAtraso|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datae => \ContadordoAtraso|IC_1|ALT_INV_Qout[0]~reg0_q\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \ContadordoAtraso|IC_1|Qout[3]~3_combout\);

-- Location: FF_X71_Y4_N56
\ContadordoAtraso|IC_1|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContadordoAtraso|IC_1|Qout~2_combout\,
	ena => \ContadordoAtraso|IC_1|Qout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadordoAtraso|IC_1|Qout[1]~reg0_q\);

-- Location: LABCELL_X68_Y5_N48
\ContadordoAtraso|IC_1|Qout[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordoAtraso|IC_1|Qout[3]~0_combout\ = ( \ContadordoAtraso|IC_1|Qout[3]~reg0_q\ & ( \C|Eatual.Contando~q\ & ( (!\comb~0_combout\ & !\ContadordoAtraso|IC_1|Qout[0]~reg0_q\) ) ) ) # ( !\ContadordoAtraso|IC_1|Qout[3]~reg0_q\ & ( \C|Eatual.Contando~q\ & 
-- ( (!\comb~0_combout\ & (\ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & (\ContadordoAtraso|IC_1|Qout[1]~reg0_q\ & \ContadordoAtraso|IC_1|Qout[2]~reg0_q\))) ) ) ) # ( \ContadordoAtraso|IC_1|Qout[3]~reg0_q\ & ( !\C|Eatual.Contando~q\ & ( (!\comb~0_combout\ & 
-- !\ContadordoAtraso|IC_1|Qout[0]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010001000100000000000000000101000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \ContadordoAtraso|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datac => \ContadordoAtraso|IC_1|ALT_INV_Qout[1]~reg0_q\,
	datad => \ContadordoAtraso|IC_1|ALT_INV_Qout[2]~reg0_q\,
	datae => \ContadordoAtraso|IC_1|ALT_INV_Qout[3]~reg0_q\,
	dataf => \C|ALT_INV_Eatual.Contando~q\,
	combout => \ContadordoAtraso|IC_1|Qout[3]~0_combout\);

-- Location: FF_X68_Y5_N50
\ContadordoAtraso|IC_1|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContadordoAtraso|IC_1|Qout[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadordoAtraso|IC_1|Qout[3]~reg0_q\);

-- Location: LABCELL_X70_Y5_N12
\ContadordoAtraso|IC_2|Qout[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordoAtraso|IC_2|Qout[3]~0_combout\ = ( \ContadordoAtraso|IC_1|Qout[3]~reg0_q\ & ( \C|Eatual.Contando~q\ & ( \ContadordoAtraso|IC_1|Qout[0]~reg0_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ContadordoAtraso|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datae => \ContadordoAtraso|IC_1|ALT_INV_Qout[3]~reg0_q\,
	dataf => \C|ALT_INV_Eatual.Contando~q\,
	combout => \ContadordoAtraso|IC_2|Qout[3]~0_combout\);

-- Location: LABCELL_X68_Y5_N57
\ContadordoAtraso|ClrN2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordoAtraso|ClrN2~0_combout\ = ( \ContadordoAtraso|IC_2|Qout[3]~reg0_q\ & ( \ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & ( (\ContadordoAtraso|IC_2|Qout[0]~reg0_q\ & \ContadordoAtraso|IC_1|Qout[3]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ContadordoAtraso|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datad => \ContadordoAtraso|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datae => \ContadordoAtraso|IC_2|ALT_INV_Qout[3]~reg0_q\,
	dataf => \ContadordoAtraso|IC_1|ALT_INV_Qout[0]~reg0_q\,
	combout => \ContadordoAtraso|ClrN2~0_combout\);

-- Location: LABCELL_X68_Y5_N9
\ContadordoAtraso|IC_2|Qout[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordoAtraso|IC_2|Qout[0]~2_combout\ = ( \ContadordoAtraso|ClrN2~0_combout\ & ( (!\comb~0_combout\ & !\ContadordoAtraso|IC_2|Qout[0]~reg0_q\) ) ) # ( !\ContadordoAtraso|ClrN2~0_combout\ & ( (!\comb~0_combout\ & 
-- (!\ContadordoAtraso|IC_2|Qout[3]~0_combout\ $ (!\ContadordoAtraso|IC_2|Qout[0]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000010101010000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datac => \ContadordoAtraso|IC_2|ALT_INV_Qout[3]~0_combout\,
	datad => \ContadordoAtraso|IC_2|ALT_INV_Qout[0]~reg0_q\,
	dataf => \ContadordoAtraso|ALT_INV_ClrN2~0_combout\,
	combout => \ContadordoAtraso|IC_2|Qout[0]~2_combout\);

-- Location: FF_X68_Y5_N11
\ContadordoAtraso|IC_2|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContadordoAtraso|IC_2|Qout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadordoAtraso|IC_2|Qout[0]~reg0_q\);

-- Location: LABCELL_X70_Y5_N54
\ContadordoAtraso|IC_2|Qout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordoAtraso|IC_2|Qout~3_combout\ = ( !\comb~0_combout\ & ( (!\ContadordoAtraso|ClrN2~0_combout\ & (!\ContadordoAtraso|IC_2|Qout[0]~reg0_q\ $ (!\ContadordoAtraso|IC_2|Qout[1]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000010101010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContadordoAtraso|ALT_INV_ClrN2~0_combout\,
	datac => \ContadordoAtraso|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datad => \ContadordoAtraso|IC_2|ALT_INV_Qout[1]~reg0_q\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \ContadordoAtraso|IC_2|Qout~3_combout\);

-- Location: LABCELL_X70_Y5_N57
\ContadordoAtraso|IC_2|Qout[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordoAtraso|IC_2|Qout[0]~4_combout\ = ( \ContadordoAtraso|IC_2|Qout[3]~0_combout\ ) # ( !\ContadordoAtraso|IC_2|Qout[3]~0_combout\ & ( (\ContadordoAtraso|ClrN2~0_combout\) # (\comb~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_comb~0_combout\,
	datad => \ContadordoAtraso|ALT_INV_ClrN2~0_combout\,
	dataf => \ContadordoAtraso|IC_2|ALT_INV_Qout[3]~0_combout\,
	combout => \ContadordoAtraso|IC_2|Qout[0]~4_combout\);

-- Location: FF_X70_Y5_N56
\ContadordoAtraso|IC_2|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContadordoAtraso|IC_2|Qout~3_combout\,
	ena => \ContadordoAtraso|IC_2|Qout[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadordoAtraso|IC_2|Qout[1]~reg0_q\);

-- Location: LABCELL_X70_Y5_N45
\ContadordoAtraso|IC_2|Qout~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordoAtraso|IC_2|Qout~5_combout\ = ( \ContadordoAtraso|IC_2|Qout[2]~reg0_q\ & ( \ContadordoAtraso|IC_2|Qout[1]~reg0_q\ & ( (!\comb~0_combout\ & (!\ContadordoAtraso|ClrN2~0_combout\ & !\ContadordoAtraso|IC_2|Qout[0]~reg0_q\)) ) ) ) # ( 
-- !\ContadordoAtraso|IC_2|Qout[2]~reg0_q\ & ( \ContadordoAtraso|IC_2|Qout[1]~reg0_q\ & ( (!\comb~0_combout\ & (!\ContadordoAtraso|ClrN2~0_combout\ & \ContadordoAtraso|IC_2|Qout[0]~reg0_q\)) ) ) ) # ( \ContadordoAtraso|IC_2|Qout[2]~reg0_q\ & ( 
-- !\ContadordoAtraso|IC_2|Qout[1]~reg0_q\ & ( (!\comb~0_combout\ & !\ContadordoAtraso|ClrN2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000000000000101000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datac => \ContadordoAtraso|ALT_INV_ClrN2~0_combout\,
	datad => \ContadordoAtraso|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datae => \ContadordoAtraso|IC_2|ALT_INV_Qout[2]~reg0_q\,
	dataf => \ContadordoAtraso|IC_2|ALT_INV_Qout[1]~reg0_q\,
	combout => \ContadordoAtraso|IC_2|Qout~5_combout\);

-- Location: FF_X70_Y5_N47
\ContadordoAtraso|IC_2|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContadordoAtraso|IC_2|Qout~5_combout\,
	ena => \ContadordoAtraso|IC_2|Qout[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadordoAtraso|IC_2|Qout[2]~reg0_q\);

-- Location: LABCELL_X70_Y5_N51
\ContadordoAtraso|IC_2|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordoAtraso|IC_2|Add0~0_combout\ = ( \ContadordoAtraso|IC_2|Qout[1]~reg0_q\ & ( (\ContadordoAtraso|IC_2|Qout[0]~reg0_q\ & \ContadordoAtraso|IC_2|Qout[2]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContadordoAtraso|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datac => \ContadordoAtraso|IC_2|ALT_INV_Qout[2]~reg0_q\,
	datae => \ContadordoAtraso|IC_2|ALT_INV_Qout[1]~reg0_q\,
	combout => \ContadordoAtraso|IC_2|Add0~0_combout\);

-- Location: LABCELL_X68_Y5_N45
\ContadordoAtraso|IC_2|Qout[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordoAtraso|IC_2|Qout[3]~1_combout\ = ( \ContadordoAtraso|IC_2|Qout[3]~reg0_q\ & ( !\ContadordoAtraso|ClrN2~0_combout\ & ( (!\comb~0_combout\ & ((!\ContadordoAtraso|IC_2|Add0~0_combout\) # (!\ContadordoAtraso|IC_2|Qout[3]~0_combout\))) ) ) ) # ( 
-- !\ContadordoAtraso|IC_2|Qout[3]~reg0_q\ & ( !\ContadordoAtraso|ClrN2~0_combout\ & ( (!\comb~0_combout\ & (\ContadordoAtraso|IC_2|Add0~0_combout\ & \ContadordoAtraso|IC_2|Qout[3]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100110011001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_comb~0_combout\,
	datac => \ContadordoAtraso|IC_2|ALT_INV_Add0~0_combout\,
	datad => \ContadordoAtraso|IC_2|ALT_INV_Qout[3]~0_combout\,
	datae => \ContadordoAtraso|IC_2|ALT_INV_Qout[3]~reg0_q\,
	dataf => \ContadordoAtraso|ALT_INV_ClrN2~0_combout\,
	combout => \ContadordoAtraso|IC_2|Qout[3]~1_combout\);

-- Location: FF_X68_Y5_N47
\ContadordoAtraso|IC_2|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContadordoAtraso|IC_2|Qout[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadordoAtraso|IC_2|Qout[3]~reg0_q\);

-- Location: MLABCELL_X72_Y4_N42
\ContadordoAtraso|IC_3|Qout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordoAtraso|IC_3|Qout~2_combout\ = ( \ContadordoAtraso|IC_3|Qout[0]~reg0_q\ & ( (!\ContadordoAtraso|ClrN3~0_combout\ & (!\comb~0_combout\ & !\ContadordoAtraso|IC_3|Qout[1]~reg0_q\)) ) ) # ( !\ContadordoAtraso|IC_3|Qout[0]~reg0_q\ & ( 
-- (!\ContadordoAtraso|ClrN3~0_combout\ & (!\comb~0_combout\ & \ContadordoAtraso|IC_3|Qout[1]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContadordoAtraso|ALT_INV_ClrN3~0_combout\,
	datac => \ALT_INV_comb~0_combout\,
	datad => \ContadordoAtraso|IC_3|ALT_INV_Qout[1]~reg0_q\,
	dataf => \ContadordoAtraso|IC_3|ALT_INV_Qout[0]~reg0_q\,
	combout => \ContadordoAtraso|IC_3|Qout~2_combout\);

-- Location: MLABCELL_X72_Y4_N45
\ContadordoAtraso|IC_3|Qout[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordoAtraso|IC_3|Qout[3]~3_combout\ = ( \ContadordoAtraso|ClrN3~0_combout\ ) # ( !\ContadordoAtraso|ClrN3~0_combout\ & ( ((\C|Eatual.Contando~q\ & \ContadordoAtraso|ClrN2~0_combout\)) # (\comb~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C|ALT_INV_Eatual.Contando~q\,
	datac => \ALT_INV_comb~0_combout\,
	datad => \ContadordoAtraso|ALT_INV_ClrN2~0_combout\,
	dataf => \ContadordoAtraso|ALT_INV_ClrN3~0_combout\,
	combout => \ContadordoAtraso|IC_3|Qout[3]~3_combout\);

-- Location: FF_X72_Y4_N44
\ContadordoAtraso|IC_3|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContadordoAtraso|IC_3|Qout~2_combout\,
	ena => \ContadordoAtraso|IC_3|Qout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadordoAtraso|IC_3|Qout[1]~reg0_q\);

-- Location: MLABCELL_X72_Y4_N21
\ContadordoAtraso|IC_3|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordoAtraso|IC_3|Add0~0_combout\ = ( \ContadordoAtraso|IC_3|Qout[2]~reg0_q\ & ( \ContadordoAtraso|IC_3|Qout[0]~reg0_q\ & ( \ContadordoAtraso|IC_3|Qout[1]~reg0_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ContadordoAtraso|IC_3|ALT_INV_Qout[1]~reg0_q\,
	datae => \ContadordoAtraso|IC_3|ALT_INV_Qout[2]~reg0_q\,
	dataf => \ContadordoAtraso|IC_3|ALT_INV_Qout[0]~reg0_q\,
	combout => \ContadordoAtraso|IC_3|Add0~0_combout\);

-- Location: LABCELL_X68_Y5_N36
\ContadordoAtraso|IC_3|Qout[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordoAtraso|IC_3|Qout[3]~0_combout\ = ( \ContadordoAtraso|IC_3|Qout[3]~reg0_q\ & ( \ContadordoAtraso|ClrN2~0_combout\ & ( (!\comb~0_combout\ & (!\ContadordoAtraso|IC_3|Qout[0]~reg0_q\ & ((!\ContadordoAtraso|IC_3|Add0~0_combout\) # 
-- (!\C|Eatual.Contando~q\)))) ) ) ) # ( !\ContadordoAtraso|IC_3|Qout[3]~reg0_q\ & ( \ContadordoAtraso|ClrN2~0_combout\ & ( (!\comb~0_combout\ & (\ContadordoAtraso|IC_3|Add0~0_combout\ & \C|Eatual.Contando~q\)) ) ) ) # ( 
-- \ContadordoAtraso|IC_3|Qout[3]~reg0_q\ & ( !\ContadordoAtraso|ClrN2~0_combout\ & ( !\comb~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000001000101010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \ContadordoAtraso|IC_3|ALT_INV_Add0~0_combout\,
	datac => \ContadordoAtraso|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datad => \C|ALT_INV_Eatual.Contando~q\,
	datae => \ContadordoAtraso|IC_3|ALT_INV_Qout[3]~reg0_q\,
	dataf => \ContadordoAtraso|ALT_INV_ClrN2~0_combout\,
	combout => \ContadordoAtraso|IC_3|Qout[3]~0_combout\);

-- Location: FF_X68_Y5_N38
\ContadordoAtraso|IC_3|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContadordoAtraso|IC_3|Qout[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadordoAtraso|IC_3|Qout[3]~reg0_q\);

-- Location: LABCELL_X68_Y5_N3
\ContadordoAtraso|IC_3|Qout[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordoAtraso|IC_3|Qout[0]~1_combout\ = ( \ContadordoAtraso|IC_3|Qout[0]~reg0_q\ & ( \ContadordoAtraso|ClrN2~0_combout\ & ( (!\comb~0_combout\ & (!\C|Eatual.Contando~q\ & !\ContadordoAtraso|IC_3|Qout[3]~reg0_q\)) ) ) ) # ( 
-- !\ContadordoAtraso|IC_3|Qout[0]~reg0_q\ & ( \ContadordoAtraso|ClrN2~0_combout\ & ( (!\comb~0_combout\ & \C|Eatual.Contando~q\) ) ) ) # ( \ContadordoAtraso|IC_3|Qout[0]~reg0_q\ & ( !\ContadordoAtraso|ClrN2~0_combout\ & ( !\comb~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000100010001000101000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \C|ALT_INV_Eatual.Contando~q\,
	datad => \ContadordoAtraso|IC_3|ALT_INV_Qout[3]~reg0_q\,
	datae => \ContadordoAtraso|IC_3|ALT_INV_Qout[0]~reg0_q\,
	dataf => \ContadordoAtraso|ALT_INV_ClrN2~0_combout\,
	combout => \ContadordoAtraso|IC_3|Qout[0]~1_combout\);

-- Location: FF_X68_Y5_N5
\ContadordoAtraso|IC_3|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContadordoAtraso|IC_3|Qout[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadordoAtraso|IC_3|Qout[0]~reg0_q\);

-- Location: LABCELL_X68_Y4_N9
\ContadordoAtraso|ClrN3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordoAtraso|ClrN3~0_combout\ = ( \ContadordoAtraso|IC_1|Qout[3]~reg0_q\ & ( \ContadordoAtraso|IC_2|Qout[0]~reg0_q\ & ( (\ContadordoAtraso|IC_2|Qout[3]~reg0_q\ & (\ContadordoAtraso|IC_3|Qout[0]~reg0_q\ & (\ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & 
-- \ContadordoAtraso|IC_3|Qout[3]~reg0_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContadordoAtraso|IC_2|ALT_INV_Qout[3]~reg0_q\,
	datab => \ContadordoAtraso|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datac => \ContadordoAtraso|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datad => \ContadordoAtraso|IC_3|ALT_INV_Qout[3]~reg0_q\,
	datae => \ContadordoAtraso|IC_1|ALT_INV_Qout[3]~reg0_q\,
	dataf => \ContadordoAtraso|IC_2|ALT_INV_Qout[0]~reg0_q\,
	combout => \ContadordoAtraso|ClrN3~0_combout\);

-- Location: MLABCELL_X72_Y4_N27
\ContadordoAtraso|IC_3|Qout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordoAtraso|IC_3|Qout~4_combout\ = ( \ContadordoAtraso|IC_3|Qout[2]~reg0_q\ & ( \ContadordoAtraso|IC_3|Qout[1]~reg0_q\ & ( (!\ContadordoAtraso|ClrN3~0_combout\ & (!\comb~0_combout\ & !\ContadordoAtraso|IC_3|Qout[0]~reg0_q\)) ) ) ) # ( 
-- !\ContadordoAtraso|IC_3|Qout[2]~reg0_q\ & ( \ContadordoAtraso|IC_3|Qout[1]~reg0_q\ & ( (!\ContadordoAtraso|ClrN3~0_combout\ & (!\comb~0_combout\ & \ContadordoAtraso|IC_3|Qout[0]~reg0_q\)) ) ) ) # ( \ContadordoAtraso|IC_3|Qout[2]~reg0_q\ & ( 
-- !\ContadordoAtraso|IC_3|Qout[1]~reg0_q\ & ( (!\ContadordoAtraso|ClrN3~0_combout\ & !\comb~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010001000100000000000100010001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContadordoAtraso|ALT_INV_ClrN3~0_combout\,
	datab => \ALT_INV_comb~0_combout\,
	datad => \ContadordoAtraso|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datae => \ContadordoAtraso|IC_3|ALT_INV_Qout[2]~reg0_q\,
	dataf => \ContadordoAtraso|IC_3|ALT_INV_Qout[1]~reg0_q\,
	combout => \ContadordoAtraso|IC_3|Qout~4_combout\);

-- Location: FF_X72_Y4_N29
\ContadordoAtraso|IC_3|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContadordoAtraso|IC_3|Qout~4_combout\,
	ena => \ContadordoAtraso|IC_3|Qout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadordoAtraso|IC_3|Qout[2]~reg0_q\);

-- Location: FF_X68_Y4_N43
\Converte|bcds_out_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Converte|bcds[5]~DUPLICATE_q\,
	clrn => \ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds_out_reg\(5));

-- Location: LABCELL_X68_Y4_N42
\C3|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C3|Equal0~0_combout\ = ( \Converte|bcds_out_reg\(5) & ( \ContadordoAtraso|IC_3|Qout[1]~reg0_q\ & ( (!\Converte|bcds_out_reg\(6) & (!\ContadordoAtraso|IC_3|Qout[2]~reg0_q\ & (!\Converte|bcds_out_reg\(4) $ (\ContadordoAtraso|IC_3|Qout[0]~reg0_q\)))) # 
-- (\Converte|bcds_out_reg\(6) & (\ContadordoAtraso|IC_3|Qout[2]~reg0_q\ & (!\Converte|bcds_out_reg\(4) $ (\ContadordoAtraso|IC_3|Qout[0]~reg0_q\)))) ) ) ) # ( !\Converte|bcds_out_reg\(5) & ( !\ContadordoAtraso|IC_3|Qout[1]~reg0_q\ & ( 
-- (!\Converte|bcds_out_reg\(6) & (!\ContadordoAtraso|IC_3|Qout[2]~reg0_q\ & (!\Converte|bcds_out_reg\(4) $ (\ContadordoAtraso|IC_3|Qout[0]~reg0_q\)))) # (\Converte|bcds_out_reg\(6) & (\ContadordoAtraso|IC_3|Qout[2]~reg0_q\ & (!\Converte|bcds_out_reg\(4) $ 
-- (\ContadordoAtraso|IC_3|Qout[0]~reg0_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000100001000000000000000000000000000000001000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Converte|ALT_INV_bcds_out_reg\(6),
	datab => \Converte|ALT_INV_bcds_out_reg\(4),
	datac => \ContadordoAtraso|IC_3|ALT_INV_Qout[2]~reg0_q\,
	datad => \ContadordoAtraso|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datae => \Converte|ALT_INV_bcds_out_reg\(5),
	dataf => \ContadordoAtraso|IC_3|ALT_INV_Qout[1]~reg0_q\,
	combout => \C3|Equal0~0_combout\);

-- Location: LABCELL_X68_Y5_N6
\ContadordoAtraso|IC_4|Qout[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordoAtraso|IC_4|Qout[0]~1_combout\ = ( \ContadordoAtraso|ClrN3~0_combout\ & ( (!\comb~0_combout\ & ((!\C|Eatual.Contando~q\ & (!\ContadordoAtraso|IC_4|Qout[3]~reg0_q\ & \ContadordoAtraso|IC_4|Qout[0]~reg0_q\)) # (\C|Eatual.Contando~q\ & 
-- ((!\ContadordoAtraso|IC_4|Qout[0]~reg0_q\))))) ) ) # ( !\ContadordoAtraso|ClrN3~0_combout\ & ( (!\comb~0_combout\ & \ContadordoAtraso|IC_4|Qout[0]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000100010100000000010001010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \C|ALT_INV_Eatual.Contando~q\,
	datac => \ContadordoAtraso|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datad => \ContadordoAtraso|IC_4|ALT_INV_Qout[0]~reg0_q\,
	dataf => \ContadordoAtraso|ALT_INV_ClrN3~0_combout\,
	combout => \ContadordoAtraso|IC_4|Qout[0]~1_combout\);

-- Location: FF_X68_Y5_N8
\ContadordoAtraso|IC_4|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContadordoAtraso|IC_4|Qout[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadordoAtraso|IC_4|Qout[0]~reg0_q\);

-- Location: LABCELL_X68_Y3_N57
\ContadordoAtraso|IC_4|Qout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordoAtraso|IC_4|Qout~2_combout\ = ( \ContadordoAtraso|IC_4|Qout[0]~reg0_q\ & ( (!\comb~0_combout\ & (!\ContadordoAtraso|IC_4|Qout[1]~reg0_q\ & ((!\ContadordoAtraso|ClrN3~0_combout\) # (!\ContadordoAtraso|IC_4|Qout[3]~reg0_q\)))) ) ) # ( 
-- !\ContadordoAtraso|IC_4|Qout[0]~reg0_q\ & ( (!\comb~0_combout\ & \ContadordoAtraso|IC_4|Qout[1]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101010101000000000001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \ContadordoAtraso|ALT_INV_ClrN3~0_combout\,
	datac => \ContadordoAtraso|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datad => \ContadordoAtraso|IC_4|ALT_INV_Qout[1]~reg0_q\,
	dataf => \ContadordoAtraso|IC_4|ALT_INV_Qout[0]~reg0_q\,
	combout => \ContadordoAtraso|IC_4|Qout~2_combout\);

-- Location: LABCELL_X68_Y3_N3
\ContadordoAtraso|IC_4|Qout[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordoAtraso|IC_4|Qout[0]~3_combout\ = ( \ContadordoAtraso|ClrN3~0_combout\ & ( (((\ContadordoAtraso|IC_4|Qout[3]~reg0_q\ & \ContadordoAtraso|IC_4|Qout[0]~reg0_q\)) # (\C|Eatual.Contando~q\)) # (\comb~0_combout\) ) ) # ( 
-- !\ContadordoAtraso|ClrN3~0_combout\ & ( \comb~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101110111011111110111011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \C|ALT_INV_Eatual.Contando~q\,
	datac => \ContadordoAtraso|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datad => \ContadordoAtraso|IC_4|ALT_INV_Qout[0]~reg0_q\,
	dataf => \ContadordoAtraso|ALT_INV_ClrN3~0_combout\,
	combout => \ContadordoAtraso|IC_4|Qout[0]~3_combout\);

-- Location: FF_X68_Y3_N59
\ContadordoAtraso|IC_4|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContadordoAtraso|IC_4|Qout~2_combout\,
	ena => \ContadordoAtraso|IC_4|Qout[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadordoAtraso|IC_4|Qout[1]~reg0_q\);

-- Location: LABCELL_X68_Y3_N48
\ContadordoAtraso|IC_4|Qout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordoAtraso|IC_4|Qout~4_combout\ = ( \ContadordoAtraso|IC_4|Qout[2]~reg0_q\ & ( \ContadordoAtraso|IC_4|Qout[1]~reg0_q\ & ( (!\comb~0_combout\ & !\ContadordoAtraso|IC_4|Qout[0]~reg0_q\) ) ) ) # ( !\ContadordoAtraso|IC_4|Qout[2]~reg0_q\ & ( 
-- \ContadordoAtraso|IC_4|Qout[1]~reg0_q\ & ( (!\comb~0_combout\ & (\ContadordoAtraso|IC_4|Qout[0]~reg0_q\ & ((!\ContadordoAtraso|ClrN3~0_combout\) # (!\ContadordoAtraso|IC_4|Qout[3]~reg0_q\)))) ) ) ) # ( \ContadordoAtraso|IC_4|Qout[2]~reg0_q\ & ( 
-- !\ContadordoAtraso|IC_4|Qout[1]~reg0_q\ & ( (!\comb~0_combout\ & ((!\ContadordoAtraso|ClrN3~0_combout\) # ((!\ContadordoAtraso|IC_4|Qout[0]~reg0_q\) # (!\ContadordoAtraso|IC_4|Qout[3]~reg0_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010100000001010000010001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \ContadordoAtraso|ALT_INV_ClrN3~0_combout\,
	datac => \ContadordoAtraso|IC_4|ALT_INV_Qout[0]~reg0_q\,
	datad => \ContadordoAtraso|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datae => \ContadordoAtraso|IC_4|ALT_INV_Qout[2]~reg0_q\,
	dataf => \ContadordoAtraso|IC_4|ALT_INV_Qout[1]~reg0_q\,
	combout => \ContadordoAtraso|IC_4|Qout~4_combout\);

-- Location: FF_X68_Y3_N50
\ContadordoAtraso|IC_4|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContadordoAtraso|IC_4|Qout~4_combout\,
	ena => \ContadordoAtraso|IC_4|Qout[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadordoAtraso|IC_4|Qout[2]~reg0_q\);

-- Location: LABCELL_X68_Y4_N30
\ContadordoAtraso|IC_4|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordoAtraso|IC_4|Add0~0_combout\ = ( \ContadordoAtraso|IC_4|Qout[1]~reg0_q\ & ( (\ContadordoAtraso|IC_4|Qout[2]~reg0_q\ & \ContadordoAtraso|IC_4|Qout[0]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ContadordoAtraso|IC_4|ALT_INV_Qout[2]~reg0_q\,
	datad => \ContadordoAtraso|IC_4|ALT_INV_Qout[0]~reg0_q\,
	dataf => \ContadordoAtraso|IC_4|ALT_INV_Qout[1]~reg0_q\,
	combout => \ContadordoAtraso|IC_4|Add0~0_combout\);

-- Location: LABCELL_X68_Y5_N18
\ContadordoAtraso|IC_4|Qout[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordoAtraso|IC_4|Qout[3]~0_combout\ = ( \ContadordoAtraso|IC_4|Qout[3]~reg0_q\ & ( \ContadordoAtraso|IC_4|Qout[0]~reg0_q\ & ( (!\comb~0_combout\ & !\ContadordoAtraso|ClrN3~0_combout\) ) ) ) # ( !\ContadordoAtraso|IC_4|Qout[3]~reg0_q\ & ( 
-- \ContadordoAtraso|IC_4|Qout[0]~reg0_q\ & ( (!\comb~0_combout\ & (\ContadordoAtraso|IC_4|Add0~0_combout\ & (\ContadordoAtraso|ClrN3~0_combout\ & \C|Eatual.Contando~q\))) ) ) ) # ( \ContadordoAtraso|IC_4|Qout[3]~reg0_q\ & ( 
-- !\ContadordoAtraso|IC_4|Qout[0]~reg0_q\ & ( (!\comb~0_combout\ & ((!\ContadordoAtraso|IC_4|Add0~0_combout\) # ((!\ContadordoAtraso|ClrN3~0_combout\) # (!\C|Eatual.Contando~q\)))) ) ) ) # ( !\ContadordoAtraso|IC_4|Qout[3]~reg0_q\ & ( 
-- !\ContadordoAtraso|IC_4|Qout[0]~reg0_q\ & ( (!\comb~0_combout\ & (\ContadordoAtraso|IC_4|Add0~0_combout\ & (\ContadordoAtraso|ClrN3~0_combout\ & \C|Eatual.Contando~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010101010101010100000000000000000101010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \ContadordoAtraso|IC_4|ALT_INV_Add0~0_combout\,
	datac => \ContadordoAtraso|ALT_INV_ClrN3~0_combout\,
	datad => \C|ALT_INV_Eatual.Contando~q\,
	datae => \ContadordoAtraso|IC_4|ALT_INV_Qout[3]~reg0_q\,
	dataf => \ContadordoAtraso|IC_4|ALT_INV_Qout[0]~reg0_q\,
	combout => \ContadordoAtraso|IC_4|Qout[3]~0_combout\);

-- Location: FF_X68_Y5_N20
\ContadordoAtraso|IC_4|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContadordoAtraso|IC_4|Qout[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadordoAtraso|IC_4|Qout[3]~reg0_q\);

-- Location: FF_X68_Y4_N5
\Converte|bcds_out_reg[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Converte|bcds\(0),
	clrn => \ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds_out_reg[0]~DUPLICATE_q\);

-- Location: FF_X68_Y4_N41
\Converte|bcds_out_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Converte|bcds\(1),
	clrn => \ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds_out_reg\(1));

-- Location: FF_X68_Y4_N37
\Converte|bcds_out_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Converte|bcds[2]~DUPLICATE_q\,
	clrn => \ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds_out_reg\(2));

-- Location: LABCELL_X68_Y4_N36
\C4|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C4|Equal0~0_combout\ = ( \Converte|bcds_out_reg\(2) & ( \ContadordoAtraso|IC_4|Qout[0]~reg0_q\ & ( (\Converte|bcds_out_reg[0]~DUPLICATE_q\ & (\ContadordoAtraso|IC_4|Qout[2]~reg0_q\ & (!\Converte|bcds_out_reg\(1) $ 
-- (\ContadordoAtraso|IC_4|Qout[1]~reg0_q\)))) ) ) ) # ( !\Converte|bcds_out_reg\(2) & ( \ContadordoAtraso|IC_4|Qout[0]~reg0_q\ & ( (\Converte|bcds_out_reg[0]~DUPLICATE_q\ & (!\ContadordoAtraso|IC_4|Qout[2]~reg0_q\ & (!\Converte|bcds_out_reg\(1) $ 
-- (\ContadordoAtraso|IC_4|Qout[1]~reg0_q\)))) ) ) ) # ( \Converte|bcds_out_reg\(2) & ( !\ContadordoAtraso|IC_4|Qout[0]~reg0_q\ & ( (!\Converte|bcds_out_reg[0]~DUPLICATE_q\ & (\ContadordoAtraso|IC_4|Qout[2]~reg0_q\ & (!\Converte|bcds_out_reg\(1) $ 
-- (\ContadordoAtraso|IC_4|Qout[1]~reg0_q\)))) ) ) ) # ( !\Converte|bcds_out_reg\(2) & ( !\ContadordoAtraso|IC_4|Qout[0]~reg0_q\ & ( (!\Converte|bcds_out_reg[0]~DUPLICATE_q\ & (!\ContadordoAtraso|IC_4|Qout[2]~reg0_q\ & (!\Converte|bcds_out_reg\(1) $ 
-- (\ContadordoAtraso|IC_4|Qout[1]~reg0_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000000000001000001001000001000000000000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Converte|ALT_INV_bcds_out_reg[0]~DUPLICATE_q\,
	datab => \Converte|ALT_INV_bcds_out_reg\(1),
	datac => \ContadordoAtraso|IC_4|ALT_INV_Qout[1]~reg0_q\,
	datad => \ContadordoAtraso|IC_4|ALT_INV_Qout[2]~reg0_q\,
	datae => \Converte|ALT_INV_bcds_out_reg\(2),
	dataf => \ContadordoAtraso|IC_4|ALT_INV_Qout[0]~reg0_q\,
	combout => \C4|Equal0~0_combout\);

-- Location: FF_X66_Y3_N32
\Converte|bcds[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Converte|Selector24~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds[7]~DUPLICATE_q\);

-- Location: FF_X68_Y4_N17
\Converte|bcds_out_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Converte|bcds[7]~DUPLICATE_q\,
	clrn => \ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds_out_reg\(7));

-- Location: LABCELL_X68_Y4_N57
\TT2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \TT2~0_combout\ = ( \C4|Equal0~0_combout\ & ( \Converte|bcds_out_reg\(7) & ( (\C3|Equal0~0_combout\ & (\ContadordoAtraso|IC_3|Qout[3]~reg0_q\ & (!\Converte|bcds_out_reg\(3) $ (\ContadordoAtraso|IC_4|Qout[3]~reg0_q\)))) ) ) ) # ( \C4|Equal0~0_combout\ & ( 
-- !\Converte|bcds_out_reg\(7) & ( (\C3|Equal0~0_combout\ & (!\ContadordoAtraso|IC_3|Qout[3]~reg0_q\ & (!\Converte|bcds_out_reg\(3) $ (\ContadordoAtraso|IC_4|Qout[3]~reg0_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000010000000000000000000000000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Converte|ALT_INV_bcds_out_reg\(3),
	datab => \C3|ALT_INV_Equal0~0_combout\,
	datac => \ContadordoAtraso|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datad => \ContadordoAtraso|IC_3|ALT_INV_Qout[3]~reg0_q\,
	datae => \C4|ALT_INV_Equal0~0_combout\,
	dataf => \Converte|ALT_INV_bcds_out_reg\(7),
	combout => \TT2~0_combout\);

-- Location: LABCELL_X71_Y3_N54
\ContadordeConversao|Contador|IC_1|Qout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordeConversao|Contador|IC_1|Qout~1_combout\ = ( \ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\ & ( (!\comb~0_combout\ & (!\ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\ & !\ContadordeConversao|Contador|IC_1|Qout[1]~reg0_q\)) ) ) # ( 
-- !\ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\ & ( (!\comb~0_combout\ & \ContadordeConversao|Contador|IC_1|Qout[1]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_comb~0_combout\,
	datac => \ContadordeConversao|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datad => \ContadordeConversao|Contador|IC_1|ALT_INV_Qout[1]~reg0_q\,
	dataf => \ContadordeConversao|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	combout => \ContadordeConversao|Contador|IC_1|Qout~1_combout\);

-- Location: LABCELL_X67_Y3_N51
\ciclagensLFSR|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \ciclagensLFSR|S~combout\ = ( \ciclagensLFSR|S~2_combout\ & ( (\ciclagensLFSR|S~1_combout\ & (\ciclagensLFSR|S~0_combout\ & !\ciclagensLFSR|Contador|IC_3|Qout[3]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ciclagensLFSR|ALT_INV_S~1_combout\,
	datac => \ciclagensLFSR|ALT_INV_S~0_combout\,
	datad => \ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[3]~reg0_q\,
	dataf => \ciclagensLFSR|ALT_INV_S~2_combout\,
	combout => \ciclagensLFSR|S~combout\);

-- Location: FF_X67_Y3_N32
\C|Eatual.Conversao\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \C|Selector2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|Eatual.Conversao~q\);

-- Location: LABCELL_X67_Y3_N30
\C|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C|Selector2~0_combout\ = ( \ContadordeConversao|S~combout\ & ( (\C|Eatual.Cicla~q\ & \ciclagensLFSR|S~combout\) ) ) # ( !\ContadordeConversao|S~combout\ & ( ((\C|Eatual.Cicla~q\ & \ciclagensLFSR|S~combout\)) # (\C|Eatual.Conversao~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C|ALT_INV_Eatual.Cicla~q\,
	datac => \ciclagensLFSR|ALT_INV_S~combout\,
	datad => \C|ALT_INV_Eatual.Conversao~q\,
	dataf => \ContadordeConversao|ALT_INV_S~combout\,
	combout => \C|Selector2~0_combout\);

-- Location: FF_X67_Y3_N31
\C|Eatual.Conversao~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \C|Selector2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|Eatual.Conversao~DUPLICATE_q\);

-- Location: LABCELL_X71_Y3_N3
\ContadordeConversao|Contador|IC_1|Qout[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordeConversao|Contador|IC_1|Qout[0]~2_combout\ = ( \ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\ & ( \comb~0_combout\ ) ) # ( !\ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\ & ( \comb~0_combout\ ) ) # ( 
-- \ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\ & ( !\comb~0_combout\ & ( (\ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\) # (\C|Eatual.Conversao~DUPLICATE_q\) ) ) ) # ( !\ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\ & ( !\comb~0_combout\ & ( 
-- \C|Eatual.Conversao~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001111110011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C|ALT_INV_Eatual.Conversao~DUPLICATE_q\,
	datac => \ContadordeConversao|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datae => \ContadordeConversao|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \ContadordeConversao|Contador|IC_1|Qout[0]~2_combout\);

-- Location: FF_X71_Y3_N56
\ContadordeConversao|Contador|IC_1|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContadordeConversao|Contador|IC_1|Qout~1_combout\,
	ena => \ContadordeConversao|Contador|IC_1|Qout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadordeConversao|Contador|IC_1|Qout[1]~reg0_q\);

-- Location: LABCELL_X71_Y3_N57
\ContadordeConversao|Contador|IC_1|Qout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordeConversao|Contador|IC_1|Qout~3_combout\ = ( \ContadordeConversao|Contador|IC_1|Qout[1]~reg0_q\ & ( (!\comb~0_combout\ & ((!\ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\ & ((\ContadordeConversao|Contador|IC_1|Qout[2]~reg0_q\))) # 
-- (\ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\ & (!\ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\ & !\ContadordeConversao|Contador|IC_1|Qout[2]~reg0_q\)))) ) ) # ( !\ContadordeConversao|Contador|IC_1|Qout[1]~reg0_q\ & ( (!\comb~0_combout\ & 
-- (\ContadordeConversao|Contador|IC_1|Qout[2]~reg0_q\ & ((!\ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\) # (!\ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001000000000001100100001000000100010000100000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContadordeConversao|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \ContadordeConversao|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datad => \ContadordeConversao|Contador|IC_1|ALT_INV_Qout[2]~reg0_q\,
	dataf => \ContadordeConversao|Contador|IC_1|ALT_INV_Qout[1]~reg0_q\,
	combout => \ContadordeConversao|Contador|IC_1|Qout~3_combout\);

-- Location: FF_X71_Y3_N59
\ContadordeConversao|Contador|IC_1|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContadordeConversao|Contador|IC_1|Qout~3_combout\,
	ena => \ContadordeConversao|Contador|IC_1|Qout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadordeConversao|Contador|IC_1|Qout[2]~reg0_q\);

-- Location: LABCELL_X68_Y3_N18
\ContadordeConversao|Contador|IC_1|Qout[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordeConversao|Contador|IC_1|Qout[3]~4_combout\ = ( \ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\ & ( \C|Eatual.Conversao~DUPLICATE_q\ & ( (!\comb~0_combout\ & !\ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\) ) ) ) # ( 
-- !\ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\ & ( \C|Eatual.Conversao~DUPLICATE_q\ & ( (!\comb~0_combout\ & (\ContadordeConversao|Contador|IC_1|Qout[1]~reg0_q\ & (\ContadordeConversao|Contador|IC_1|Qout[2]~reg0_q\ & 
-- \ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\))) ) ) ) # ( \ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\ & ( !\C|Eatual.Conversao~DUPLICATE_q\ & ( (!\comb~0_combout\ & !\ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100000000000000000000000101010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \ContadordeConversao|Contador|IC_1|ALT_INV_Qout[1]~reg0_q\,
	datac => \ContadordeConversao|Contador|IC_1|ALT_INV_Qout[2]~reg0_q\,
	datad => \ContadordeConversao|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datae => \ContadordeConversao|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	dataf => \C|ALT_INV_Eatual.Conversao~DUPLICATE_q\,
	combout => \ContadordeConversao|Contador|IC_1|Qout[3]~4_combout\);

-- Location: FF_X68_Y3_N20
\ContadordeConversao|Contador|IC_1|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContadordeConversao|Contador|IC_1|Qout[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\);

-- Location: LABCELL_X68_Y3_N15
\ContadordeConversao|Contador|IC_1|Qout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordeConversao|Contador|IC_1|Qout[0]~0_combout\ = ( \C|Eatual.Conversao~DUPLICATE_q\ & ( (!\comb~0_combout\ & !\ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\) ) ) # ( !\C|Eatual.Conversao~DUPLICATE_q\ & ( 
-- (!\ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\ & (!\comb~0_combout\ & \ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContadordeConversao|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datac => \ALT_INV_comb~0_combout\,
	datad => \ContadordeConversao|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	dataf => \C|ALT_INV_Eatual.Conversao~DUPLICATE_q\,
	combout => \ContadordeConversao|Contador|IC_1|Qout[0]~0_combout\);

-- Location: FF_X68_Y3_N17
\ContadordeConversao|Contador|IC_1|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContadordeConversao|Contador|IC_1|Qout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\);

-- Location: LABCELL_X68_Y3_N39
\ContadordeConversao|Contador|IC_2|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordeConversao|Contador|IC_2|process_0~0_combout\ = ( \ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\ & ( (\ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\ & \C|Eatual.Conversao~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ContadordeConversao|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datad => \C|ALT_INV_Eatual.Conversao~DUPLICATE_q\,
	dataf => \ContadordeConversao|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	combout => \ContadordeConversao|Contador|IC_2|process_0~0_combout\);

-- Location: LABCELL_X68_Y3_N0
\ContadordeConversao|Contador|IC_2|Qout[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordeConversao|Contador|IC_2|Qout[0]~3_combout\ = ( \ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\ & ( (!\comb~0_combout\ & !\ContadordeConversao|Contador|IC_2|Qout[0]~reg0_q\) ) ) # ( !\ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\ & 
-- ( (!\comb~0_combout\ & (!\ContadordeConversao|Contador|IC_2|process_0~0_combout\ $ (!\ContadordeConversao|Contador|IC_2|Qout[0]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000010101010000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datac => \ContadordeConversao|Contador|IC_2|ALT_INV_process_0~0_combout\,
	datad => \ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\,
	dataf => \ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~0_combout\,
	combout => \ContadordeConversao|Contador|IC_2|Qout[0]~3_combout\);

-- Location: FF_X68_Y3_N2
\ContadordeConversao|Contador|IC_2|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContadordeConversao|Contador|IC_2|Qout[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadordeConversao|Contador|IC_2|Qout[0]~reg0_q\);

-- Location: MLABCELL_X72_Y3_N6
\ContadordeConversao|Contador|IC_2|Qout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordeConversao|Contador|IC_2|Qout~1_combout\ = ( !\ContadordeConversao|Contador|IC_2|Qout[1]~reg0_q\ & ( \ContadordeConversao|Contador|IC_2|Qout[0]~reg0_q\ & ( (!\comb~0_combout\ & !\ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\) ) ) ) # ( 
-- \ContadordeConversao|Contador|IC_2|Qout[1]~reg0_q\ & ( !\ContadordeConversao|Contador|IC_2|Qout[0]~reg0_q\ & ( (!\comb~0_combout\ & !\ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000010100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datac => \ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~0_combout\,
	datae => \ContadordeConversao|Contador|IC_2|ALT_INV_Qout[1]~reg0_q\,
	dataf => \ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\,
	combout => \ContadordeConversao|Contador|IC_2|Qout~1_combout\);

-- Location: MLABCELL_X72_Y3_N30
\ContadordeConversao|Contador|IC_2|Qout[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordeConversao|Contador|IC_2|Qout[0]~2_combout\ = ( \ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\ ) # ( !\ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\ & ( (\ContadordeConversao|Contador|IC_2|process_0~0_combout\) # (\comb~0_combout\) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_comb~0_combout\,
	datad => \ContadordeConversao|Contador|IC_2|ALT_INV_process_0~0_combout\,
	dataf => \ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~0_combout\,
	combout => \ContadordeConversao|Contador|IC_2|Qout[0]~2_combout\);

-- Location: FF_X72_Y3_N8
\ContadordeConversao|Contador|IC_2|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContadordeConversao|Contador|IC_2|Qout~1_combout\,
	ena => \ContadordeConversao|Contador|IC_2|Qout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadordeConversao|Contador|IC_2|Qout[1]~reg0_q\);

-- Location: MLABCELL_X72_Y3_N33
\ContadordeConversao|Contador|IC_2|Qout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordeConversao|Contador|IC_2|Qout~4_combout\ = ( \ContadordeConversao|Contador|IC_2|Qout[1]~reg0_q\ & ( (!\ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\ & (!\comb~0_combout\ & (!\ContadordeConversao|Contador|IC_2|Qout[0]~reg0_q\ $ 
-- (!\ContadordeConversao|Contador|IC_2|Qout[2]~reg0_q\)))) ) ) # ( !\ContadordeConversao|Contador|IC_2|Qout[1]~reg0_q\ & ( (!\ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\ & (!\comb~0_combout\ & \ContadordeConversao|Contador|IC_2|Qout[2]~reg0_q\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000001000100000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~0_combout\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datad => \ContadordeConversao|Contador|IC_2|ALT_INV_Qout[2]~reg0_q\,
	dataf => \ContadordeConversao|Contador|IC_2|ALT_INV_Qout[1]~reg0_q\,
	combout => \ContadordeConversao|Contador|IC_2|Qout~4_combout\);

-- Location: FF_X72_Y3_N35
\ContadordeConversao|Contador|IC_2|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContadordeConversao|Contador|IC_2|Qout~4_combout\,
	ena => \ContadordeConversao|Contador|IC_2|Qout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadordeConversao|Contador|IC_2|Qout[2]~reg0_q\);

-- Location: LABCELL_X68_Y3_N45
\ContadordeConversao|Contador|IC_2|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordeConversao|Contador|IC_2|Add0~0_combout\ = ( \ContadordeConversao|Contador|IC_2|Qout[1]~reg0_q\ & ( (\ContadordeConversao|Contador|IC_2|Qout[2]~reg0_q\ & \ContadordeConversao|Contador|IC_2|Qout[0]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContadordeConversao|Contador|IC_2|ALT_INV_Qout[2]~reg0_q\,
	datad => \ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\,
	dataf => \ContadordeConversao|Contador|IC_2|ALT_INV_Qout[1]~reg0_q\,
	combout => \ContadordeConversao|Contador|IC_2|Add0~0_combout\);

-- Location: LABCELL_X68_Y3_N27
\ContadordeConversao|Contador|IC_2|Qout[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordeConversao|Contador|IC_2|Qout[3]~5_combout\ = ( \ContadordeConversao|Contador|IC_2|process_0~0_combout\ & ( (!\comb~0_combout\ & (!\ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\ & (!\ContadordeConversao|Contador|IC_2|Add0~0_combout\ $ 
-- (!\ContadordeConversao|Contador|IC_2|Qout[3]~reg0_q\)))) ) ) # ( !\ContadordeConversao|Contador|IC_2|process_0~0_combout\ & ( (!\comb~0_combout\ & (!\ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\ & 
-- \ContadordeConversao|Contador|IC_2|Qout[3]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000001000100000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~0_combout\,
	datac => \ContadordeConversao|Contador|IC_2|ALT_INV_Add0~0_combout\,
	datad => \ContadordeConversao|Contador|IC_2|ALT_INV_Qout[3]~reg0_q\,
	dataf => \ContadordeConversao|Contador|IC_2|ALT_INV_process_0~0_combout\,
	combout => \ContadordeConversao|Contador|IC_2|Qout[3]~5_combout\);

-- Location: FF_X68_Y3_N29
\ContadordeConversao|Contador|IC_2|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContadordeConversao|Contador|IC_2|Qout[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadordeConversao|Contador|IC_2|Qout[3]~reg0_q\);

-- Location: LABCELL_X68_Y3_N6
\ContadordeConversao|Contador|IC_2|Qout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\ = ( \ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\ & ( (\ContadordeConversao|Contador|IC_2|Qout[0]~reg0_q\ & (\ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\ & 
-- \ContadordeConversao|Contador|IC_2|Qout[3]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datac => \ContadordeConversao|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datad => \ContadordeConversao|Contador|IC_2|ALT_INV_Qout[3]~reg0_q\,
	dataf => \ContadordeConversao|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	combout => \ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\);

-- Location: LABCELL_X68_Y3_N24
\ContadordeConversao|Contador|IC_3|Qout[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordeConversao|Contador|IC_3|Qout[0]~1_combout\ = ( \C|Eatual.Conversao~DUPLICATE_q\ & ( (!\comb~0_combout\ & (!\ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\ $ (!\ContadordeConversao|Contador|IC_3|Qout[0]~reg0_q\))) ) ) # ( 
-- !\C|Eatual.Conversao~DUPLICATE_q\ & ( (!\comb~0_combout\ & (\ContadordeConversao|Contador|IC_3|Qout[0]~reg0_q\ & ((!\ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\) # (!\ContadordeConversao|Contador|IC_3|Qout[3]~reg0_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000001010100000100010100010000010001010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~0_combout\,
	datac => \ContadordeConversao|Contador|IC_3|ALT_INV_Qout[3]~reg0_q\,
	datad => \ContadordeConversao|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\,
	dataf => \C|ALT_INV_Eatual.Conversao~DUPLICATE_q\,
	combout => \ContadordeConversao|Contador|IC_3|Qout[0]~1_combout\);

-- Location: FF_X68_Y3_N26
\ContadordeConversao|Contador|IC_3|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContadordeConversao|Contador|IC_3|Qout[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadordeConversao|Contador|IC_3|Qout[0]~reg0_q\);

-- Location: LABCELL_X68_Y3_N30
\ContadordeConversao|Contador|ClrN3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordeConversao|Contador|ClrN3~0_combout\ = ( \ContadordeConversao|Contador|IC_2|Qout[0]~reg0_q\ & ( \ContadordeConversao|Contador|IC_3|Qout[0]~reg0_q\ & ( (\ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\ & 
-- (\ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\ & (\ContadordeConversao|Contador|IC_2|Qout[3]~reg0_q\ & \ContadordeConversao|Contador|IC_3|Qout[3]~reg0_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContadordeConversao|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datab => \ContadordeConversao|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datac => \ContadordeConversao|Contador|IC_2|ALT_INV_Qout[3]~reg0_q\,
	datad => \ContadordeConversao|Contador|IC_3|ALT_INV_Qout[3]~reg0_q\,
	datae => \ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\,
	dataf => \ContadordeConversao|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\,
	combout => \ContadordeConversao|Contador|ClrN3~0_combout\);

-- Location: LABCELL_X68_Y3_N9
\ContadordeConversao|Contador|IC_3|Qout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordeConversao|Contador|IC_3|Qout~2_combout\ = ( !\ContadordeConversao|Contador|ClrN3~0_combout\ & ( (!\comb~0_combout\ & (!\ContadordeConversao|Contador|IC_3|Qout[0]~reg0_q\ $ (!\ContadordeConversao|Contador|IC_3|Qout[1]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100000010100001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContadordeConversao|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datac => \ALT_INV_comb~0_combout\,
	datad => \ContadordeConversao|Contador|IC_3|ALT_INV_Qout[1]~reg0_q\,
	dataf => \ContadordeConversao|Contador|ALT_INV_ClrN3~0_combout\,
	combout => \ContadordeConversao|Contador|IC_3|Qout~2_combout\);

-- Location: LABCELL_X68_Y3_N54
\ContadordeConversao|Contador|IC_3|Qout[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordeConversao|Contador|IC_3|Qout[0]~3_combout\ = ( \ContadordeConversao|Contador|ClrN3~0_combout\ ) # ( !\ContadordeConversao|Contador|ClrN3~0_combout\ & ( ((\C|Eatual.Conversao~DUPLICATE_q\ & \ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\)) 
-- # (\comb~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011111010101010101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datac => \C|ALT_INV_Eatual.Conversao~DUPLICATE_q\,
	datad => \ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~0_combout\,
	dataf => \ContadordeConversao|Contador|ALT_INV_ClrN3~0_combout\,
	combout => \ContadordeConversao|Contador|IC_3|Qout[0]~3_combout\);

-- Location: FF_X68_Y3_N11
\ContadordeConversao|Contador|IC_3|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContadordeConversao|Contador|IC_3|Qout~2_combout\,
	ena => \ContadordeConversao|Contador|IC_3|Qout[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadordeConversao|Contador|IC_3|Qout[1]~reg0_q\);

-- Location: LABCELL_X68_Y3_N36
\ContadordeConversao|Contador|IC_3|Qout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordeConversao|Contador|IC_3|Qout~4_combout\ = ( !\ContadordeConversao|Contador|ClrN3~0_combout\ & ( (!\comb~0_combout\ & (!\ContadordeConversao|Contador|IC_3|Qout[2]~reg0_q\ $ (((!\ContadordeConversao|Contador|IC_3|Qout[1]~reg0_q\) # 
-- (!\ContadordeConversao|Contador|IC_3|Qout[0]~reg0_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010101000000000101010100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \ContadordeConversao|Contador|IC_3|ALT_INV_Qout[1]~reg0_q\,
	datac => \ContadordeConversao|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datad => \ContadordeConversao|Contador|IC_3|ALT_INV_Qout[2]~reg0_q\,
	dataf => \ContadordeConversao|Contador|ALT_INV_ClrN3~0_combout\,
	combout => \ContadordeConversao|Contador|IC_3|Qout~4_combout\);

-- Location: FF_X68_Y3_N38
\ContadordeConversao|Contador|IC_3|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContadordeConversao|Contador|IC_3|Qout~4_combout\,
	ena => \ContadordeConversao|Contador|IC_3|Qout[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadordeConversao|Contador|IC_3|Qout[2]~reg0_q\);

-- Location: LABCELL_X67_Y3_N33
\ContadordeConversao|Contador|IC_3|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordeConversao|Contador|IC_3|Add0~0_combout\ = ( \ContadordeConversao|Contador|IC_3|Qout[0]~reg0_q\ & ( (\ContadordeConversao|Contador|IC_3|Qout[2]~reg0_q\ & \ContadordeConversao|Contador|IC_3|Qout[1]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ContadordeConversao|Contador|IC_3|ALT_INV_Qout[2]~reg0_q\,
	datad => \ContadordeConversao|Contador|IC_3|ALT_INV_Qout[1]~reg0_q\,
	dataf => \ContadordeConversao|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\,
	combout => \ContadordeConversao|Contador|IC_3|Add0~0_combout\);

-- Location: LABCELL_X67_Y3_N18
\ContadordeConversao|Contador|IC_3|Qout[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordeConversao|Contador|IC_3|Qout[3]~0_combout\ = ( \ContadordeConversao|Contador|IC_3|Qout[3]~reg0_q\ & ( \ContadordeConversao|Contador|IC_3|Qout[0]~reg0_q\ & ( (!\comb~0_combout\ & !\ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\) ) ) ) # ( 
-- !\ContadordeConversao|Contador|IC_3|Qout[3]~reg0_q\ & ( \ContadordeConversao|Contador|IC_3|Qout[0]~reg0_q\ & ( (\ContadordeConversao|Contador|IC_3|Add0~0_combout\ & (\C|Eatual.Conversao~q\ & (!\comb~0_combout\ & 
-- \ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\))) ) ) ) # ( \ContadordeConversao|Contador|IC_3|Qout[3]~reg0_q\ & ( !\ContadordeConversao|Contador|IC_3|Qout[0]~reg0_q\ & ( (!\comb~0_combout\ & ((!\ContadordeConversao|Contador|IC_3|Add0~0_combout\) # 
-- ((!\C|Eatual.Conversao~q\) # (!\ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\)))) ) ) ) # ( !\ContadordeConversao|Contador|IC_3|Qout[3]~reg0_q\ & ( !\ContadordeConversao|Contador|IC_3|Qout[0]~reg0_q\ & ( 
-- (\ContadordeConversao|Contador|IC_3|Add0~0_combout\ & (\C|Eatual.Conversao~q\ & (!\comb~0_combout\ & \ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000111100001110000000000000000100001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContadordeConversao|Contador|IC_3|ALT_INV_Add0~0_combout\,
	datab => \C|ALT_INV_Eatual.Conversao~q\,
	datac => \ALT_INV_comb~0_combout\,
	datad => \ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~0_combout\,
	datae => \ContadordeConversao|Contador|IC_3|ALT_INV_Qout[3]~reg0_q\,
	dataf => \ContadordeConversao|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\,
	combout => \ContadordeConversao|Contador|IC_3|Qout[3]~0_combout\);

-- Location: FF_X67_Y3_N20
\ContadordeConversao|Contador|IC_3|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContadordeConversao|Contador|IC_3|Qout[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadordeConversao|Contador|IC_3|Qout[3]~reg0_q\);

-- Location: LABCELL_X68_Y3_N12
\ContadordeConversao|S~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordeConversao|S~1_combout\ = ( !\ContadordeConversao|Contador|IC_1|Qout[1]~reg0_q\ & ( (!\ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\ & (!\ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\ & 
-- (!\ContadordeConversao|Contador|IC_2|Qout[0]~reg0_q\ & !\ContadordeConversao|Contador|IC_1|Qout[2]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContadordeConversao|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datab => \ContadordeConversao|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datac => \ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datad => \ContadordeConversao|Contador|IC_1|ALT_INV_Qout[2]~reg0_q\,
	dataf => \ContadordeConversao|Contador|IC_1|ALT_INV_Qout[1]~reg0_q\,
	combout => \ContadordeConversao|S~1_combout\);

-- Location: LABCELL_X68_Y3_N42
\ContadordeConversao|S~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordeConversao|S~2_combout\ = ( !\ContadordeConversao|Contador|IC_3|Qout[0]~reg0_q\ & ( (!\ContadordeConversao|Contador|IC_2|Qout[2]~reg0_q\ & (!\ContadordeConversao|Contador|IC_3|Qout[1]~reg0_q\ & 
-- (!\ContadordeConversao|Contador|IC_2|Qout[3]~reg0_q\ & !\ContadordeConversao|Contador|IC_3|Qout[2]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContadordeConversao|Contador|IC_2|ALT_INV_Qout[2]~reg0_q\,
	datab => \ContadordeConversao|Contador|IC_3|ALT_INV_Qout[1]~reg0_q\,
	datac => \ContadordeConversao|Contador|IC_2|ALT_INV_Qout[3]~reg0_q\,
	datad => \ContadordeConversao|Contador|IC_3|ALT_INV_Qout[2]~reg0_q\,
	dataf => \ContadordeConversao|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\,
	combout => \ContadordeConversao|S~2_combout\);

-- Location: MLABCELL_X72_Y3_N12
\ContadordeConversao|Contador|IC_4|Qout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordeConversao|Contador|IC_4|Qout[0]~0_combout\ = ( \ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\ & ( \ContadordeConversao|Contador|IC_4|Qout[3]~reg0_q\ & ( (!\comb~0_combout\ & !\ContadordeConversao|Contador|ClrN3~0_combout\) ) ) ) # ( 
-- !\ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\ & ( \ContadordeConversao|Contador|IC_4|Qout[3]~reg0_q\ & ( (!\comb~0_combout\ & (\C|Eatual.Conversao~DUPLICATE_q\ & \ContadordeConversao|Contador|ClrN3~0_combout\)) ) ) ) # ( 
-- \ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\ & ( !\ContadordeConversao|Contador|IC_4|Qout[3]~reg0_q\ & ( (!\comb~0_combout\ & ((!\C|Eatual.Conversao~DUPLICATE_q\) # (!\ContadordeConversao|Contador|ClrN3~0_combout\))) ) ) ) # ( 
-- !\ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\ & ( !\ContadordeConversao|Contador|IC_4|Qout[3]~reg0_q\ & ( (!\comb~0_combout\ & (\C|Eatual.Conversao~DUPLICATE_q\ & \ContadordeConversao|Contador|ClrN3~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010101010001010100000000010000000101010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \C|ALT_INV_Eatual.Conversao~DUPLICATE_q\,
	datac => \ContadordeConversao|Contador|ALT_INV_ClrN3~0_combout\,
	datae => \ContadordeConversao|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\,
	dataf => \ContadordeConversao|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\,
	combout => \ContadordeConversao|Contador|IC_4|Qout[0]~0_combout\);

-- Location: FF_X72_Y3_N14
\ContadordeConversao|Contador|IC_4|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContadordeConversao|Contador|IC_4|Qout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\);

-- Location: MLABCELL_X72_Y3_N36
\ContadordeConversao|Contador|IC_4|Qout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordeConversao|Contador|IC_4|Qout~3_combout\ = ( \ContadordeConversao|Contador|IC_4|Qout[2]~reg0_q\ & ( \ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\ & ( (!\comb~0_combout\ & (!\ContadordeConversao|Contador|IC_4|Qout[1]~reg0_q\ & 
-- ((!\ContadordeConversao|Contador|ClrN3~0_combout\) # (!\ContadordeConversao|Contador|IC_4|Qout[3]~reg0_q\)))) ) ) ) # ( !\ContadordeConversao|Contador|IC_4|Qout[2]~reg0_q\ & ( \ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\ & ( (!\comb~0_combout\ & 
-- (\ContadordeConversao|Contador|IC_4|Qout[1]~reg0_q\ & ((!\ContadordeConversao|Contador|ClrN3~0_combout\) # (!\ContadordeConversao|Contador|IC_4|Qout[3]~reg0_q\)))) ) ) ) # ( \ContadordeConversao|Contador|IC_4|Qout[2]~reg0_q\ & ( 
-- !\ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\ & ( !\comb~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000110010001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContadordeConversao|Contador|ALT_INV_ClrN3~0_combout\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \ContadordeConversao|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datad => \ContadordeConversao|Contador|IC_4|ALT_INV_Qout[1]~reg0_q\,
	datae => \ContadordeConversao|Contador|IC_4|ALT_INV_Qout[2]~reg0_q\,
	dataf => \ContadordeConversao|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\,
	combout => \ContadordeConversao|Contador|IC_4|Qout~3_combout\);

-- Location: MLABCELL_X72_Y3_N54
\ContadordeConversao|Contador|IC_4|Qout[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordeConversao|Contador|IC_4|Qout[3]~2_combout\ = ( \ContadordeConversao|Contador|ClrN3~0_combout\ & ( \comb~0_combout\ ) ) # ( !\ContadordeConversao|Contador|ClrN3~0_combout\ & ( \comb~0_combout\ ) ) # ( 
-- \ContadordeConversao|Contador|ClrN3~0_combout\ & ( !\comb~0_combout\ & ( ((\ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\ & \ContadordeConversao|Contador|IC_4|Qout[3]~reg0_q\)) # (\C|Eatual.Conversao~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101110101011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C|ALT_INV_Eatual.Conversao~DUPLICATE_q\,
	datab => \ContadordeConversao|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\,
	datac => \ContadordeConversao|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datae => \ContadordeConversao|Contador|ALT_INV_ClrN3~0_combout\,
	dataf => \ALT_INV_comb~0_combout\,
	combout => \ContadordeConversao|Contador|IC_4|Qout[3]~2_combout\);

-- Location: FF_X72_Y3_N38
\ContadordeConversao|Contador|IC_4|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContadordeConversao|Contador|IC_4|Qout~3_combout\,
	ena => \ContadordeConversao|Contador|IC_4|Qout[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadordeConversao|Contador|IC_4|Qout[2]~reg0_q\);

-- Location: MLABCELL_X72_Y3_N27
\ContadordeConversao|Contador|IC_4|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordeConversao|Contador|IC_4|Add0~0_combout\ = ( \ContadordeConversao|Contador|IC_4|Qout[2]~reg0_q\ & ( \ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\ & ( \ContadordeConversao|Contador|IC_4|Qout[1]~reg0_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ContadordeConversao|Contador|IC_4|ALT_INV_Qout[1]~reg0_q\,
	datae => \ContadordeConversao|Contador|IC_4|ALT_INV_Qout[2]~reg0_q\,
	dataf => \ContadordeConversao|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\,
	combout => \ContadordeConversao|Contador|IC_4|Add0~0_combout\);

-- Location: MLABCELL_X72_Y3_N48
\ContadordeConversao|Contador|IC_4|Qout[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordeConversao|Contador|IC_4|Qout[3]~4_combout\ = ( \ContadordeConversao|Contador|IC_4|Qout[3]~reg0_q\ & ( \ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\ & ( (!\comb~0_combout\ & !\ContadordeConversao|Contador|ClrN3~0_combout\) ) ) ) # ( 
-- !\ContadordeConversao|Contador|IC_4|Qout[3]~reg0_q\ & ( \ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\ & ( (!\comb~0_combout\ & (\ContadordeConversao|Contador|ClrN3~0_combout\ & (\ContadordeConversao|Contador|IC_4|Add0~0_combout\ & 
-- \C|Eatual.Conversao~DUPLICATE_q\))) ) ) ) # ( \ContadordeConversao|Contador|IC_4|Qout[3]~reg0_q\ & ( !\ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\ & ( (!\comb~0_combout\ & ((!\ContadordeConversao|Contador|ClrN3~0_combout\) # 
-- ((!\ContadordeConversao|Contador|IC_4|Add0~0_combout\) # (!\C|Eatual.Conversao~DUPLICATE_q\)))) ) ) ) # ( !\ContadordeConversao|Contador|IC_4|Qout[3]~reg0_q\ & ( !\ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\ & ( (!\comb~0_combout\ & 
-- (\ContadordeConversao|Contador|ClrN3~0_combout\ & (\ContadordeConversao|Contador|IC_4|Add0~0_combout\ & \C|Eatual.Conversao~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010101010101010100000000000000000101000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \ContadordeConversao|Contador|ALT_INV_ClrN3~0_combout\,
	datac => \ContadordeConversao|Contador|IC_4|ALT_INV_Add0~0_combout\,
	datad => \C|ALT_INV_Eatual.Conversao~DUPLICATE_q\,
	datae => \ContadordeConversao|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\,
	dataf => \ContadordeConversao|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\,
	combout => \ContadordeConversao|Contador|IC_4|Qout[3]~4_combout\);

-- Location: FF_X72_Y3_N50
\ContadordeConversao|Contador|IC_4|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContadordeConversao|Contador|IC_4|Qout[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadordeConversao|Contador|IC_4|Qout[3]~reg0_q\);

-- Location: MLABCELL_X72_Y3_N45
\ContadordeConversao|Contador|IC_4|Qout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordeConversao|Contador|IC_4|Qout~1_combout\ = ( !\ContadordeConversao|Contador|IC_4|Qout[1]~reg0_q\ & ( \ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\ & ( (!\comb~0_combout\ & ((!\ContadordeConversao|Contador|ClrN3~0_combout\) # 
-- (!\ContadordeConversao|Contador|IC_4|Qout[3]~reg0_q\))) ) ) ) # ( \ContadordeConversao|Contador|IC_4|Qout[1]~reg0_q\ & ( !\ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\ & ( !\comb~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110011001100110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_comb~0_combout\,
	datac => \ContadordeConversao|Contador|ALT_INV_ClrN3~0_combout\,
	datad => \ContadordeConversao|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datae => \ContadordeConversao|Contador|IC_4|ALT_INV_Qout[1]~reg0_q\,
	dataf => \ContadordeConversao|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\,
	combout => \ContadordeConversao|Contador|IC_4|Qout~1_combout\);

-- Location: FF_X72_Y3_N47
\ContadordeConversao|Contador|IC_4|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContadordeConversao|Contador|IC_4|Qout~1_combout\,
	ena => \ContadordeConversao|Contador|IC_4|Qout[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadordeConversao|Contador|IC_4|Qout[1]~reg0_q\);

-- Location: MLABCELL_X72_Y3_N21
\ContadordeConversao|S~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordeConversao|S~0_combout\ = ( !\ContadordeConversao|Contador|IC_4|Qout[2]~reg0_q\ & ( !\ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\ & ( (!\ContadordeConversao|Contador|IC_4|Qout[1]~reg0_q\ & 
-- !\ContadordeConversao|Contador|IC_4|Qout[3]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ContadordeConversao|Contador|IC_4|ALT_INV_Qout[1]~reg0_q\,
	datad => \ContadordeConversao|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datae => \ContadordeConversao|Contador|IC_4|ALT_INV_Qout[2]~reg0_q\,
	dataf => \ContadordeConversao|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\,
	combout => \ContadordeConversao|S~0_combout\);

-- Location: LABCELL_X67_Y3_N27
\ContadordeConversao|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordeConversao|S~combout\ = ( \ContadordeConversao|S~2_combout\ & ( \ContadordeConversao|S~0_combout\ & ( (!\ContadordeConversao|Contador|IC_3|Qout[3]~reg0_q\ & (\ContadordeConversao|S~1_combout\ & 
-- \ContadordeConversao|Contador|IC_2|Qout[1]~reg0_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContadordeConversao|Contador|IC_3|ALT_INV_Qout[3]~reg0_q\,
	datac => \ContadordeConversao|ALT_INV_S~1_combout\,
	datad => \ContadordeConversao|Contador|IC_2|ALT_INV_Qout[1]~reg0_q\,
	datae => \ContadordeConversao|ALT_INV_S~2_combout\,
	dataf => \ContadordeConversao|ALT_INV_S~0_combout\,
	combout => \ContadordeConversao|S~combout\);

-- Location: LABCELL_X68_Y4_N48
\C|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C|Selector3~0_combout\ = ( \C|Eatual.Conversao~DUPLICATE_q\ & ( ((\C|Eatual.Contando~q\ & ((!\TT1~0_combout\) # (!\TT2~0_combout\)))) # (\ContadordeConversao|S~combout\) ) ) # ( !\C|Eatual.Conversao~DUPLICATE_q\ & ( (\C|Eatual.Contando~q\ & 
-- ((!\TT1~0_combout\) # (!\TT2~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000000001110111000001111111011110000111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_TT1~0_combout\,
	datab => \ALT_INV_TT2~0_combout\,
	datac => \ContadordeConversao|ALT_INV_S~combout\,
	datad => \C|ALT_INV_Eatual.Contando~q\,
	dataf => \C|ALT_INV_Eatual.Conversao~DUPLICATE_q\,
	combout => \C|Selector3~0_combout\);

-- Location: FF_X68_Y4_N49
\C|Eatual.Contando\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \C|Selector3~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|Eatual.Contando~q\);

-- Location: LABCELL_X68_Y5_N12
\ContadordoAtraso|IC_1|Qout[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordoAtraso|IC_1|Qout[0]~1_combout\ = ( !\ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & ( \ContadordoAtraso|IC_1|Qout[3]~reg0_q\ & ( (!\comb~0_combout\ & \C|Eatual.Contando~q\) ) ) ) # ( \ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & ( 
-- !\ContadordoAtraso|IC_1|Qout[3]~reg0_q\ & ( (!\comb~0_combout\ & !\C|Eatual.Contando~q\) ) ) ) # ( !\ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & ( !\ContadordoAtraso|IC_1|Qout[3]~reg0_q\ & ( (!\comb~0_combout\ & \C|Eatual.Contando~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010100010001000100000100010001000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \C|ALT_INV_Eatual.Contando~q\,
	datae => \ContadordoAtraso|IC_1|ALT_INV_Qout[0]~reg0_q\,
	dataf => \ContadordoAtraso|IC_1|ALT_INV_Qout[3]~reg0_q\,
	combout => \ContadordoAtraso|IC_1|Qout[0]~1_combout\);

-- Location: FF_X68_Y5_N14
\ContadordoAtraso|IC_1|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContadordoAtraso|IC_1|Qout[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadordoAtraso|IC_1|Qout[0]~reg0_q\);

-- Location: LABCELL_X71_Y4_N57
\ContadordoAtraso|IC_1|Qout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContadordoAtraso|IC_1|Qout~4_combout\ = ( \ContadordoAtraso|IC_1|Qout[1]~reg0_q\ & ( (!\comb~0_combout\ & ((!\ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & ((\ContadordoAtraso|IC_1|Qout[2]~reg0_q\))) # (\ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & 
-- (!\ContadordoAtraso|IC_1|Qout[3]~reg0_q\ & !\ContadordoAtraso|IC_1|Qout[2]~reg0_q\)))) ) ) # ( !\ContadordoAtraso|IC_1|Qout[1]~reg0_q\ & ( (!\comb~0_combout\ & (\ContadordoAtraso|IC_1|Qout[2]~reg0_q\ & ((!\ContadordoAtraso|IC_1|Qout[0]~reg0_q\) # 
-- (!\ContadordoAtraso|IC_1|Qout[3]~reg0_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001000000000001100100001000000100010000100000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContadordoAtraso|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \ContadordoAtraso|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datad => \ContadordoAtraso|IC_1|ALT_INV_Qout[2]~reg0_q\,
	dataf => \ContadordoAtraso|IC_1|ALT_INV_Qout[1]~reg0_q\,
	combout => \ContadordoAtraso|IC_1|Qout~4_combout\);

-- Location: FF_X71_Y4_N59
\ContadordoAtraso|IC_1|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContadordoAtraso|IC_1|Qout~4_combout\,
	ena => \ContadordoAtraso|IC_1|Qout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContadordoAtraso|IC_1|Qout[2]~reg0_q\);

-- Location: FF_X68_Y4_N22
\Converte|bcds_out_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Converte|bcds[13]~DUPLICATE_q\,
	clrn => \ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds_out_reg\(13));

-- Location: LABCELL_X68_Y4_N21
\C1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Equal0~0_combout\ = ( \Converte|bcds_out_reg\(13) & ( \ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & ( (\Converte|bcds_out_reg\(12) & (\ContadordoAtraso|IC_1|Qout[1]~reg0_q\ & (!\Converte|bcds_out_reg\(14) $ (\ContadordoAtraso|IC_1|Qout[2]~reg0_q\)))) ) ) ) 
-- # ( !\Converte|bcds_out_reg\(13) & ( \ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & ( (\Converte|bcds_out_reg\(12) & (!\ContadordoAtraso|IC_1|Qout[1]~reg0_q\ & (!\Converte|bcds_out_reg\(14) $ (\ContadordoAtraso|IC_1|Qout[2]~reg0_q\)))) ) ) ) # ( 
-- \Converte|bcds_out_reg\(13) & ( !\ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & ( (!\Converte|bcds_out_reg\(12) & (\ContadordoAtraso|IC_1|Qout[1]~reg0_q\ & (!\Converte|bcds_out_reg\(14) $ (\ContadordoAtraso|IC_1|Qout[2]~reg0_q\)))) ) ) ) # ( 
-- !\Converte|bcds_out_reg\(13) & ( !\ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & ( (!\Converte|bcds_out_reg\(12) & (!\ContadordoAtraso|IC_1|Qout[1]~reg0_q\ & (!\Converte|bcds_out_reg\(14) $ (\ContadordoAtraso|IC_1|Qout[2]~reg0_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000000000001000010000100001000000000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Converte|ALT_INV_bcds_out_reg\(14),
	datab => \Converte|ALT_INV_bcds_out_reg\(12),
	datac => \ContadordoAtraso|IC_1|ALT_INV_Qout[2]~reg0_q\,
	datad => \ContadordoAtraso|IC_1|ALT_INV_Qout[1]~reg0_q\,
	datae => \Converte|ALT_INV_bcds_out_reg\(13),
	dataf => \ContadordoAtraso|IC_1|ALT_INV_Qout[0]~reg0_q\,
	combout => \C1|Equal0~0_combout\);

-- Location: FF_X68_Y4_N59
\Converte|bcds_out_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Converte|bcds[11]~DUPLICATE_q\,
	clrn => \ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds_out_reg\(11));

-- Location: FF_X68_Y4_N47
\Converte|bcds_out_reg[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Converte|bcds\(8),
	clrn => \ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds_out_reg[8]~DUPLICATE_q\);

-- Location: FF_X68_Y4_N26
\Converte|bcds_out_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Converte|bcds\(10),
	clrn => \ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds_out_reg\(10));

-- Location: FF_X68_Y4_N2
\Converte|bcds_out_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Converte|bcds\(9),
	clrn => \ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds_out_reg\(9));

-- Location: LABCELL_X68_Y4_N0
\C2|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|Equal0~0_combout\ = ( \Converte|bcds_out_reg\(9) & ( \ContadordoAtraso|IC_2|Qout[1]~reg0_q\ & ( (!\ContadordoAtraso|IC_2|Qout[2]~reg0_q\ & (!\Converte|bcds_out_reg\(10) & (!\Converte|bcds_out_reg[8]~DUPLICATE_q\ $ 
-- (\ContadordoAtraso|IC_2|Qout[0]~reg0_q\)))) # (\ContadordoAtraso|IC_2|Qout[2]~reg0_q\ & (\Converte|bcds_out_reg\(10) & (!\Converte|bcds_out_reg[8]~DUPLICATE_q\ $ (\ContadordoAtraso|IC_2|Qout[0]~reg0_q\)))) ) ) ) # ( !\Converte|bcds_out_reg\(9) & ( 
-- !\ContadordoAtraso|IC_2|Qout[1]~reg0_q\ & ( (!\ContadordoAtraso|IC_2|Qout[2]~reg0_q\ & (!\Converte|bcds_out_reg\(10) & (!\Converte|bcds_out_reg[8]~DUPLICATE_q\ $ (\ContadordoAtraso|IC_2|Qout[0]~reg0_q\)))) # (\ContadordoAtraso|IC_2|Qout[2]~reg0_q\ & 
-- (\Converte|bcds_out_reg\(10) & (!\Converte|bcds_out_reg[8]~DUPLICATE_q\ $ (\ContadordoAtraso|IC_2|Qout[0]~reg0_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001001000001000000000000000000000000000000001000001001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContadordoAtraso|IC_2|ALT_INV_Qout[2]~reg0_q\,
	datab => \Converte|ALT_INV_bcds_out_reg[8]~DUPLICATE_q\,
	datac => \ContadordoAtraso|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datad => \Converte|ALT_INV_bcds_out_reg\(10),
	datae => \Converte|ALT_INV_bcds_out_reg\(9),
	dataf => \ContadordoAtraso|IC_2|ALT_INV_Qout[1]~reg0_q\,
	combout => \C2|Equal0~0_combout\);

-- Location: FF_X68_Y4_N20
\Converte|bcds_out_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Converte|bcds\(15),
	clrn => \ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds_out_reg\(15));

-- Location: LABCELL_X68_Y4_N24
\TT1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \TT1~0_combout\ = ( \C2|Equal0~0_combout\ & ( \Converte|bcds_out_reg\(15) & ( (\C1|Equal0~0_combout\ & (\ContadordoAtraso|IC_1|Qout[3]~reg0_q\ & (!\Converte|bcds_out_reg\(11) $ (\ContadordoAtraso|IC_2|Qout[3]~reg0_q\)))) ) ) ) # ( \C2|Equal0~0_combout\ & 
-- ( !\Converte|bcds_out_reg\(15) & ( (\C1|Equal0~0_combout\ & (!\ContadordoAtraso|IC_1|Qout[3]~reg0_q\ & (!\Converte|bcds_out_reg\(11) $ (\ContadordoAtraso|IC_2|Qout[3]~reg0_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000001000000000000000000000000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|ALT_INV_Equal0~0_combout\,
	datab => \Converte|ALT_INV_bcds_out_reg\(11),
	datac => \ContadordoAtraso|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datad => \ContadordoAtraso|IC_2|ALT_INV_Qout[3]~reg0_q\,
	datae => \C2|ALT_INV_Equal0~0_combout\,
	dataf => \Converte|ALT_INV_bcds_out_reg\(15),
	combout => \TT1~0_combout\);

-- Location: LABCELL_X68_Y4_N51
s_sinalAtraso : cyclonev_lcell_comb
-- Equation(s):
-- \s_sinalAtraso~combout\ = (\TT1~0_combout\ & (\TT2~0_combout\ & \C|Eatual.Contando~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_TT1~0_combout\,
	datac => \ALT_INV_TT2~0_combout\,
	datad => \C|ALT_INV_Eatual.Contando~q\,
	combout => \s_sinalAtraso~combout\);

-- Location: FF_X68_Y4_N19
\Converte|bcds_out_reg[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Converte|bcds\(15),
	clrn => \ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds_out_reg[15]~DUPLICATE_q\);

-- Location: MLABCELL_X72_Y4_N57
\C1|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|Equal0~1_combout\ = ( \ContadordoAtraso|IC_1|Qout[3]~reg0_q\ & ( \Converte|bcds_out_reg[15]~DUPLICATE_q\ & ( \C1|Equal0~0_combout\ ) ) ) # ( !\ContadordoAtraso|IC_1|Qout[3]~reg0_q\ & ( !\Converte|bcds_out_reg[15]~DUPLICATE_q\ & ( \C1|Equal0~0_combout\ 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C1|ALT_INV_Equal0~0_combout\,
	datae => \ContadordoAtraso|IC_1|ALT_INV_Qout[3]~reg0_q\,
	dataf => \Converte|ALT_INV_bcds_out_reg[15]~DUPLICATE_q\,
	combout => \C1|Equal0~1_combout\);

-- Location: MLABCELL_X72_Y4_N39
\C2|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C2|Equal0~1_combout\ = ( \ContadordoAtraso|IC_2|Qout[3]~reg0_q\ & ( \C2|Equal0~0_combout\ & ( \Converte|bcds_out_reg\(11) ) ) ) # ( !\ContadordoAtraso|IC_2|Qout[3]~reg0_q\ & ( \C2|Equal0~0_combout\ & ( !\Converte|bcds_out_reg\(11) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Converte|ALT_INV_bcds_out_reg\(11),
	datae => \ContadordoAtraso|IC_2|ALT_INV_Qout[3]~reg0_q\,
	dataf => \C2|ALT_INV_Equal0~0_combout\,
	combout => \C2|Equal0~1_combout\);

-- Location: LABCELL_X63_Y1_N3
\C3|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C3|Equal0~1_combout\ = ( \Converte|bcds_out_reg\(7) & ( (\ContadordoAtraso|IC_3|Qout[3]~reg0_q\ & \C3|Equal0~0_combout\) ) ) # ( !\Converte|bcds_out_reg\(7) & ( (!\ContadordoAtraso|IC_3|Qout[3]~reg0_q\ & \C3|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000110000001100001100000011000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ContadordoAtraso|IC_3|ALT_INV_Qout[3]~reg0_q\,
	datac => \C3|ALT_INV_Equal0~0_combout\,
	datae => \Converte|ALT_INV_bcds_out_reg\(7),
	combout => \C3|Equal0~1_combout\);

-- Location: LABCELL_X64_Y4_N6
\C4|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C4|Equal0~1_combout\ = ( \C4|Equal0~0_combout\ & ( !\ContadordoAtraso|IC_4|Qout[3]~reg0_q\ $ (\Converte|bcds_out_reg\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ContadordoAtraso|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datac => \Converte|ALT_INV_bcds_out_reg\(3),
	dataf => \C4|ALT_INV_Equal0~0_combout\,
	combout => \C4|Equal0~1_combout\);

-- Location: LABCELL_X64_Y4_N21
\C|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C|WideOr6~0_combout\ = ( \C|Eatual.Cicla~q\ ) # ( !\C|Eatual.Cicla~q\ & ( (\C|Eatual.RegistraSeed1~q\) # (\C|Eatual.Contando~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C|ALT_INV_Eatual.Contando~q\,
	datad => \C|ALT_INV_Eatual.RegistraSeed1~q\,
	dataf => \C|ALT_INV_Eatual.Cicla~q\,
	combout => \C|WideOr6~0_combout\);

-- Location: LABCELL_X66_Y3_N54
\C|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C|WideOr5~0_combout\ = ( \C|Eatual.Cicla~q\ ) # ( !\C|Eatual.Cicla~q\ & ( (\C|Eatual.Fim~q\) # (\C|Eatual.RegistraSeed2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C|ALT_INV_Eatual.RegistraSeed2~q\,
	datac => \C|ALT_INV_Eatual.Fim~q\,
	dataf => \C|ALT_INV_Eatual.Cicla~q\,
	combout => \C|WideOr5~0_combout\);

-- Location: MLABCELL_X65_Y3_N51
\C|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C|WideOr4~0_combout\ = ( \C|Eatual.Conversao~DUPLICATE_q\ & ( \C|Eatual.Contando~q\ ) ) # ( !\C|Eatual.Conversao~DUPLICATE_q\ & ( \C|Eatual.Contando~q\ ) ) # ( \C|Eatual.Conversao~DUPLICATE_q\ & ( !\C|Eatual.Contando~q\ ) ) # ( 
-- !\C|Eatual.Conversao~DUPLICATE_q\ & ( !\C|Eatual.Contando~q\ & ( \C|Eatual.Fim~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C|ALT_INV_Eatual.Fim~q\,
	datae => \C|ALT_INV_Eatual.Conversao~DUPLICATE_q\,
	dataf => \C|ALT_INV_Eatual.Contando~q\,
	combout => \C|WideOr4~0_combout\);

-- Location: FF_X68_Y4_N46
\Converte|bcds_out_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Converte|bcds\(8),
	clrn => \ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds_out_reg\(8));

-- Location: FF_X68_Y4_N4
\Converte|bcds_out_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Converte|bcds\(0),
	clrn => \ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Converte|bcds_out_reg\(0));

-- Location: MLABCELL_X8_Y42_N3
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


