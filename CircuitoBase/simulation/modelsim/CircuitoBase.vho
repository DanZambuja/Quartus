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

-- DATE "04/08/2017 12:02:26"

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

ENTITY 	BoxRodada IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	finalizaRodada : IN std_logic;
	rodada : IN std_logic;
	resposta : IN std_logic;
	aguardando : OUT std_logic;
	erro : OUT std_logic;
	pulso : OUT std_logic_vector(15 DOWNTO 0)
	);
END BoxRodada;

-- Design Ports Information
-- aguardando	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- erro	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[0]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[1]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[2]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[3]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[4]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[5]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[6]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[7]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[8]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[9]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[10]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[11]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[12]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[13]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[14]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[15]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- finalizaRodada	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rodada	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BoxRodada IS
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
SIGNAL ww_aguardando : std_logic;
SIGNAL ww_erro : std_logic;
SIGNAL ww_pulso : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \resposta~input_o\ : std_logic;
SIGNAL \rodada~input_o\ : std_logic;
SIGNAL \finalizaRodada~input_o\ : std_logic;
SIGNAL \D|Converte|state.start~0_combout\ : std_logic;
SIGNAL \D|Converte|state.start~q\ : std_logic;
SIGNAL \D|Converte|Selector34~0_combout\ : std_logic;
SIGNAL \D|Converte|shift_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \D|Converte|shift_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \D|Converte|Selector33~0_combout\ : std_logic;
SIGNAL \D|Converte|Selector32~0_combout\ : std_logic;
SIGNAL \D|Converte|shift_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \D|Converte|Selector1~0_combout\ : std_logic;
SIGNAL \D|Converte|Selector1~1_combout\ : std_logic;
SIGNAL \D|Converte|state.shift~q\ : std_logic;
SIGNAL \D|Converte|state_next.done~0_combout\ : std_logic;
SIGNAL \D|Converte|state.done~q\ : std_logic;
SIGNAL \D|Converte|Selector35~0_combout\ : std_logic;
SIGNAL \D|Converte|binary_next~0_combout\ : std_logic;
SIGNAL \D|geraSeed|IC_1|Qout~1_combout\ : std_logic;
SIGNAL \D|geraSeed|IC_1|Qout[0]~reg0_q\ : std_logic;
SIGNAL \D|C|Selector0~0_combout\ : std_logic;
SIGNAL \D|C|Eatual.Inicial~q\ : std_logic;
SIGNAL \D|C|Eprox.RegistraSeed1~0_combout\ : std_logic;
SIGNAL \D|C|Eatual.RegistraSeed1~q\ : std_logic;
SIGNAL \D|C|Eatual.RegistraSeed2~q\ : std_logic;
SIGNAL \D|Registrador|process_0~0_combout\ : std_logic;
SIGNAL \D|geraSeed|IC_3|Qout~2_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \C|Selector5~0_combout\ : std_logic;
SIGNAL \C|Selector5~1_combout\ : std_logic;
SIGNAL \C|Eatual.Afobado~q\ : std_logic;
SIGNAL \D|geraSeed|IC_1|Qout[0]~0_combout\ : std_logic;
SIGNAL \D|geraSeed|IC_1|Qout~2_combout\ : std_logic;
SIGNAL \D|geraSeed|IC_1|Qout[1]~reg0_q\ : std_logic;
SIGNAL \D|geraSeed|IC_1|Qout~3_combout\ : std_logic;
SIGNAL \D|geraSeed|IC_1|Qout[2]~reg0_q\ : std_logic;
SIGNAL \D|geraSeed|IC_1|Qout~4_combout\ : std_logic;
SIGNAL \D|geraSeed|IC_1|Qout[3]~reg0_q\ : std_logic;
SIGNAL \D|geraSeed|ClrN1~combout\ : std_logic;
SIGNAL \D|geraSeed|IC_2|Qout[0]~2_combout\ : std_logic;
SIGNAL \D|geraSeed|IC_2|Qout[0]~reg0_q\ : std_logic;
SIGNAL \D|geraSeed|IC_2|Qout~3_combout\ : std_logic;
SIGNAL \D|geraSeed|IC_2|Qout[1]~reg0_q\ : std_logic;
SIGNAL \D|geraSeed|IC_2|Qout~4_combout\ : std_logic;
SIGNAL \D|geraSeed|IC_2|Qout[2]~reg0_q\ : std_logic;
SIGNAL \D|geraSeed|IC_2|Qout[3]~1_combout\ : std_logic;
SIGNAL \D|geraSeed|IC_2|Qout[3]~reg0_q\ : std_logic;
SIGNAL \D|geraSeed|ClrN2~0_combout\ : std_logic;
SIGNAL \D|geraSeed|IC_2|Qout[1]~0_combout\ : std_logic;
SIGNAL \D|geraSeed|IC_3|Qout[0]~reg0_q\ : std_logic;
SIGNAL \D|geraSeed|ClrN4~0_combout\ : std_logic;
SIGNAL \D|geraSeed|IC_3|Qout~3_combout\ : std_logic;
SIGNAL \D|geraSeed|IC_3|Qout[1]~reg0_q\ : std_logic;
SIGNAL \D|geraSeed|IC_3|Qout~0_combout\ : std_logic;
SIGNAL \D|geraSeed|IC_3|Qout[2]~reg0_q\ : std_logic;
SIGNAL \D|geraSeed|IC_3|Qout[3]~1_combout\ : std_logic;
SIGNAL \D|geraSeed|IC_3|Qout[3]~reg0_q\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[11]~9_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[9]~17_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[6]~29_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[4]~37_combout\ : std_logic;
SIGNAL \D|Registrador|IQ[1]~feeder_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[1]~49_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[1]~51_combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_1|Qout~1_combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_1|Qout[3]~2_combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_1|Qout[1]~reg0_q\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_1|Qout~3_combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_1|Qout[2]~reg0_q\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_1|Qout[3]~4_combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_1|Qout[0]~0_combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_2|Qout[3]~0_combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_2|Qout~3_combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_2|Qout[1]~4_combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_2|Qout[1]~reg0_q\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_2|Add0~0_combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_2|Qout[3]~1_combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_2|Qout[3]~reg0_q\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|ClrN2~0_combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_2|Qout[0]~2_combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_2|Qout~5_combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_2|Qout[2]~reg0_q\ : std_logic;
SIGNAL \D|ciclagensLFSR|S~2_combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|S~4_combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_3|Qout[0]~3_combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|ClrN3~0_combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_3|Qout~4_combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_3|Qout[3]~1_combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_3|Qout[1]~reg0_q\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_3|Qout~0_combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_3|Qout[2]~reg0_q\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_3|Add0~0_combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_3|Qout[3]~2_combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_3|Qout[3]~reg0_q\ : std_logic;
SIGNAL \D|ciclagensLFSR|S~0_combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_4|Qout~1_combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_4|Qout[0]~2_combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_4|Qout[1]~reg0_q\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_4|Qout~3_combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_4|Qout[2]~reg0_q\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_4|Add0~0_combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_4|Qout[3]~4_combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_4|Qout[0]~0_combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\ : std_logic;
SIGNAL \D|ciclagensLFSR|S~3_combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|S~1_combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|S~combout\ : std_logic;
SIGNAL \D|C|Selector1~0_combout\ : std_logic;
SIGNAL \D|C|Eatual.Cicla~q\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[1]~_emulated_q\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[1]~50_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[2]~45_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[2]~47_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[2]~_emulated_q\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[2]~46_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[3]~41_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[3]~43_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[3]~_emulated_q\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[3]~42_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[4]~39_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[4]~_emulated_q\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[4]~38_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[5]~33_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[5]~35_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[5]~_emulated_q\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[5]~34_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[6]~31_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[6]~_emulated_q\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[6]~30_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[7]~25_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[7]~27_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[7]~_emulated_q\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[7]~26_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[8]~21_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[8]~23_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[8]~_emulated_q\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[8]~22_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[9]~19_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[9]~_emulated_q\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[9]~18_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[10]~13_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[10]~15_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[10]~_emulated_q\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[10]~14_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[11]~11_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[11]~_emulated_q\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[11]~10_combout\ : std_logic;
SIGNAL \D|geraSeed|IC_4|Qout~1_combout\ : std_logic;
SIGNAL \D|geraSeed|IC_3|Qout~4_combout\ : std_logic;
SIGNAL \D|geraSeed|IC_4|Qout[0]~reg0_q\ : std_logic;
SIGNAL \D|geraSeed|IC_4|Qout~0_combout\ : std_logic;
SIGNAL \D|geraSeed|IC_4|Qout[1]~reg0_q\ : std_logic;
SIGNAL \D|geraSeed|IC_4|Qout[3]~2_combout\ : std_logic;
SIGNAL \D|geraSeed|IC_4|Qout[3]~reg0_q\ : std_logic;
SIGNAL \D|geraSeed|IC_4|Qout~3_combout\ : std_logic;
SIGNAL \D|geraSeed|IC_4|Qout[2]~reg0_q\ : std_logic;
SIGNAL \D|Registrador|Q[14]~feeder_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[12]~5_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[12]~7_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[12]~_emulated_q\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[12]~6_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[13]~1_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[13]~3_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[13]~_emulated_q\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[13]~2_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[14]~61_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[14]~63_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[14]~_emulated_q\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[14]~62_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[15]~57_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[15]~59_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[15]~_emulated_q\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[15]~58_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[0]~53_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[0]~55_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[0]~_emulated_q\ : std_logic;
SIGNAL \D|PSEUDORANDOM|count[0]~54_combout\ : std_logic;
SIGNAL \D|Converte|binary[1]~feeder_combout\ : std_logic;
SIGNAL \D|Converte|binary[1]~0_combout\ : std_logic;
SIGNAL \D|Converte|binary[2]~feeder_combout\ : std_logic;
SIGNAL \D|Converte|binary[3]~feeder_combout\ : std_logic;
SIGNAL \D|Converte|binary[4]~feeder_combout\ : std_logic;
SIGNAL \D|Converte|binary[5]~feeder_combout\ : std_logic;
SIGNAL \D|Converte|binary[6]~feeder_combout\ : std_logic;
SIGNAL \D|Converte|binary[7]~feeder_combout\ : std_logic;
SIGNAL \D|Converte|binary[8]~feeder_combout\ : std_logic;
SIGNAL \D|Converte|binary[9]~feeder_combout\ : std_logic;
SIGNAL \D|Converte|binary[10]~feeder_combout\ : std_logic;
SIGNAL \D|Converte|binary[11]~feeder_combout\ : std_logic;
SIGNAL \D|Converte|binary[12]~feeder_combout\ : std_logic;
SIGNAL \D|Converte|binary[13]~feeder_combout\ : std_logic;
SIGNAL \D|Converte|Selector31~0_combout\ : std_logic;
SIGNAL \D|Converte|bcds[0]~DUPLICATE_q\ : std_logic;
SIGNAL \D|Converte|Selector29~0_combout\ : std_logic;
SIGNAL \D|Converte|Selector30~0_combout\ : std_logic;
SIGNAL \D|Converte|bcds[1]~DUPLICATE_q\ : std_logic;
SIGNAL \D|Converte|Selector28~0_combout\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_1|Qout[0]~0_combout\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_1|Qout[0]~reg0_q\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_1|Qout~1_combout\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_1|Qout[0]~2_combout\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_1|Qout[1]~reg0_q\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_1|Qout~3_combout\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_1|Qout[2]~reg0_q\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_1|Qout[3]~4_combout\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_1|Qout[3]~reg0_q\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_2|Qout[3]~1_combout\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_2|Qout~5_combout\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_2|Qout[2]~2_combout\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_2|Qout[1]~reg0_q\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_2|Qout~0_combout\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_2|Qout[2]~reg0_q\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_2|Add0~0_combout\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_2|Qout[3]~3_combout\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_2|Qout[3]~reg0_q\ : std_logic;
SIGNAL \D|ContadordoAtraso|ClrN2~0_combout\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_2|Qout[0]~4_combout\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_2|Qout[0]~reg0_q\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_3|Qout[0]~4_combout\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_3|Qout[0]~reg0_q\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_3|Qout~0_combout\ : std_logic;
SIGNAL \D|C|Eatual.Contando~q\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_3|Qout[3]~1_combout\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_3|Qout[1]~reg0_q\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_3|Qout~2_combout\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_3|Qout[2]~reg0_q\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_3|Add0~0_combout\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_3|Qout[3]~3_combout\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_3|Qout[3]~reg0_q\ : std_logic;
SIGNAL \D|ContadordoAtraso|ClrN3~0_combout\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_4|Qout[0]~1_combout\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_4|Qout[0]~reg0_q\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_4|Qout~2_combout\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_4|Qout[0]~3_combout\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_4|Qout[1]~reg0_q\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_4|Qout~4_combout\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_4|Qout[2]~reg0_q\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_4|Add0~0_combout\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_4|Qout[3]~0_combout\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_4|Qout[3]~reg0_q\ : std_logic;
SIGNAL \D|C4|Equal0~0_combout\ : std_logic;
SIGNAL \D|Converte|Selector27~0_combout\ : std_logic;
SIGNAL \D|Converte|Selector27~1_combout\ : std_logic;
SIGNAL \D|Converte|Selector26~0_combout\ : std_logic;
SIGNAL \D|Converte|bcds[5]~DUPLICATE_q\ : std_logic;
SIGNAL \D|Converte|Selector24~0_combout\ : std_logic;
SIGNAL \D|Converte|Selector25~0_combout\ : std_logic;
SIGNAL \D|Converte|Selector23~0_combout\ : std_logic;
SIGNAL \D|Converte|Selector23~1_combout\ : std_logic;
SIGNAL \D|Converte|bcds[8]~DUPLICATE_q\ : std_logic;
SIGNAL \D|Converte|Selector21~0_combout\ : std_logic;
SIGNAL \D|Converte|Selector22~0_combout\ : std_logic;
SIGNAL \D|Converte|Selector20~0_combout\ : std_logic;
SIGNAL \D|Converte|bcds[11]~DUPLICATE_q\ : std_logic;
SIGNAL \D|Converte|bcds_out_reg[4]~feeder_combout\ : std_logic;
SIGNAL \D|s_sinalAtraso~2_combout\ : std_logic;
SIGNAL \D|Converte|Selector19~0_combout\ : std_logic;
SIGNAL \D|Converte|Selector19~1_combout\ : std_logic;
SIGNAL \D|Converte|Selector17~0_combout\ : std_logic;
SIGNAL \D|Converte|Selector18~0_combout\ : std_logic;
SIGNAL \D|Converte|Selector16~0_combout\ : std_logic;
SIGNAL \D|Converte|bcds[15]~DUPLICATE_q\ : std_logic;
SIGNAL \D|s_sinalAtraso~4_combout\ : std_logic;
SIGNAL \D|Converte|bcds[7]~DUPLICATE_q\ : std_logic;
SIGNAL \D|s_sinalAtraso~1_combout\ : std_logic;
SIGNAL \D|Converte|bcds[12]~DUPLICATE_q\ : std_logic;
SIGNAL \D|Converte|bcds[13]~DUPLICATE_q\ : std_logic;
SIGNAL \D|s_sinalAtraso~3_combout\ : std_logic;
SIGNAL \D|s_sinalAtraso~0_combout\ : std_logic;
SIGNAL \D|s_sinalAtraso~5_combout\ : std_logic;
SIGNAL \D|s_sinalAtraso~6_combout\ : std_logic;
SIGNAL \D|C|Eatual.Fim~q\ : std_logic;
SIGNAL \D|comb~0_combout\ : std_logic;
SIGNAL \D|C|Eatual.Conversao~q\ : std_logic;
SIGNAL \D|C|Selector2~0_combout\ : std_logic;
SIGNAL \D|C|Eatual.Conversao~DUPLICATE_q\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_1|Qout~1_combout\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_1|Qout[3]~2_combout\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_1|Qout[1]~reg0_q\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_1|Qout~3_combout\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_1|Qout[2]~reg0_q\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_1|Qout[3]~4_combout\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_1|Qout[0]~0_combout\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_2|process_0~0_combout\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_2|Qout[0]~3_combout\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_2|Qout[0]~reg0_q\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_2|Qout~4_combout\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_2|Qout[0]~2_combout\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_2|Qout[2]~reg0_q\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_2|Add0~0_combout\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_2|Qout[3]~5_combout\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_2|Qout[3]~reg0_q\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_2|Qout~1_combout\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_2|Qout[1]~reg0_q\ : std_logic;
SIGNAL \D|ContadordeConversao|S~1_combout\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_3|Qout~2_combout\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_3|Qout[3]~3_combout\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_3|Qout[1]~reg0_q\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_3|Qout~4_combout\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_3|Qout[2]~reg0_q\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_3|Add0~0_combout\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_3|Qout[3]~0_combout\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_3|Qout[3]~reg0_q\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_3|Qout[0]~1_combout\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_3|Qout[0]~reg0_q\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|ClrN3~0_combout\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_4|Qout~1_combout\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_4|Qout[2]~2_combout\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_4|Qout[1]~reg0_q\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_4|Qout~3_combout\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_4|Qout[2]~reg0_q\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_4|Add0~0_combout\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_4|Qout[3]~4_combout\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_4|Qout[3]~reg0_q\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_4|Qout[0]~0_combout\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\ : std_logic;
SIGNAL \D|ContadordeConversao|S~0_combout\ : std_logic;
SIGNAL \D|ContadordeConversao|S~2_combout\ : std_logic;
SIGNAL \D|ContadordeConversao|S~combout\ : std_logic;
SIGNAL \D|C|Selector3~0_combout\ : std_logic;
SIGNAL \D|C|Eatual.Contando~DUPLICATE_q\ : std_logic;
SIGNAL \C|Selector3~0_combout\ : std_logic;
SIGNAL \C|Eatual.Demorado~q\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \ContaDemora|IC_1|Qout[0]~0_combout\ : std_logic;
SIGNAL \ContaDemora|IC_1|Qout[0]~reg0_q\ : std_logic;
SIGNAL \ContaDemora|IC_1|Qout~2_combout\ : std_logic;
SIGNAL \ContaDemora|IC_1|Qout[3]~3_combout\ : std_logic;
SIGNAL \ContaDemora|IC_1|Qout[1]~reg0_q\ : std_logic;
SIGNAL \ContaDemora|IC_1|Qout~4_combout\ : std_logic;
SIGNAL \ContaDemora|IC_1|Qout[2]~reg0_q\ : std_logic;
SIGNAL \ContaDemora|IC_1|Qout[3]~1_combout\ : std_logic;
SIGNAL \ContaDemora|IC_1|Qout[3]~reg0_q\ : std_logic;
SIGNAL \ContaDemora|IC_2|Qout~3_combout\ : std_logic;
SIGNAL \ContaDemora|IC_2|Qout[3]~0_combout\ : std_logic;
SIGNAL \ContaDemora|IC_2|Qout[0]~4_combout\ : std_logic;
SIGNAL \ContaDemora|IC_2|Qout[1]~reg0_q\ : std_logic;
SIGNAL \ContaDemora|IC_2|Add0~0_combout\ : std_logic;
SIGNAL \ContaDemora|IC_2|Qout[3]~2_combout\ : std_logic;
SIGNAL \ContaDemora|IC_2|Qout[3]~reg0_q\ : std_logic;
SIGNAL \ContaDemora|ClrN2~combout\ : std_logic;
SIGNAL \ContaDemora|IC_2|Qout[0]~1_combout\ : std_logic;
SIGNAL \ContaDemora|IC_2|Qout[0]~reg0_q\ : std_logic;
SIGNAL \ContaDemora|IC_2|Qout~5_combout\ : std_logic;
SIGNAL \ContaDemora|IC_2|Qout[2]~reg0_q\ : std_logic;
SIGNAL \ContaDemora|IC_3|process_0~0_combout\ : std_logic;
SIGNAL \ContaDemora|IC_3|Qout[0]~0_combout\ : std_logic;
SIGNAL \ContaDemora|IC_3|Qout[0]~reg0_q\ : std_logic;
SIGNAL \ContaDemora|IC_3|Qout~4_combout\ : std_logic;
SIGNAL \ContaDemora|IC_3|Qout[3]~3_combout\ : std_logic;
SIGNAL \ContaDemora|IC_3|Qout[2]~reg0_q\ : std_logic;
SIGNAL \ContaDemora|IC_3|Add0~0_combout\ : std_logic;
SIGNAL \ContaDemora|IC_3|Qout[3]~1_combout\ : std_logic;
SIGNAL \ContaDemora|IC_3|Qout[3]~reg0_q\ : std_logic;
SIGNAL \ContaDemora|ClrN3~0_combout\ : std_logic;
SIGNAL \ContaDemora|IC_3|Qout~2_combout\ : std_logic;
SIGNAL \ContaDemora|IC_3|Qout[1]~reg0_q\ : std_logic;
SIGNAL \s_demorou~1_combout\ : std_logic;
SIGNAL \s_demorou~3_combout\ : std_logic;
SIGNAL \ContaDemora|IC_4|Qout[0]~0_combout\ : std_logic;
SIGNAL \ContaDemora|IC_4|Qout[0]~reg0_q\ : std_logic;
SIGNAL \s_demorou~0_combout\ : std_logic;
SIGNAL \ContaDemora|IC_4|Qout~3_combout\ : std_logic;
SIGNAL \ContaDemora|IC_4|Qout[0]~4_combout\ : std_logic;
SIGNAL \ContaDemora|IC_4|Qout[1]~reg0_q\ : std_logic;
SIGNAL \ContaDemora|IC_4|Qout[3]~1_combout\ : std_logic;
SIGNAL \ContaDemora|IC_4|Qout[3]~2_combout\ : std_logic;
SIGNAL \ContaDemora|IC_4|Qout[3]~reg0_q\ : std_logic;
SIGNAL \ContaDemora|IC_4|Qout~5_combout\ : std_logic;
SIGNAL \ContaDemora|IC_4|Qout[2]~reg0_q\ : std_logic;
SIGNAL \s_demorou~2_combout\ : std_logic;
SIGNAL \s_demorou~combout\ : std_logic;
SIGNAL \C|Selector4~0_combout\ : std_logic;
SIGNAL \C|Selector4~1_combout\ : std_logic;
SIGNAL \C|Eatual.Respondeu~q\ : std_logic;
SIGNAL \R|process_0~0_combout\ : std_logic;
SIGNAL \C|Selector0~0_combout\ : std_logic;
SIGNAL \C|Selector0~1_combout\ : std_logic;
SIGNAL \C|Eatual.Inicial~q\ : std_logic;
SIGNAL \C|Selector1~0_combout\ : std_logic;
SIGNAL \C|Selector1~1_combout\ : std_logic;
SIGNAL \C|Eatual.Atraso~q\ : std_logic;
SIGNAL \C|Selector2~0_combout\ : std_logic;
SIGNAL \C|Eatual.Aguarda~q\ : std_logic;
SIGNAL \C|WideNor2~0_combout\ : std_logic;
SIGNAL \Medicao|M1|C1|Eprox.CONTA~1_combout\ : std_logic;
SIGNAL \Medicao|M1|C1|Ereg.CONTA~q\ : std_logic;
SIGNAL \Medicao|M1|C1|Eprox.EPRONTO~0_combout\ : std_logic;
SIGNAL \Medicao|M1|C1|Ereg.EPRONTO~DUPLICATE_q\ : std_logic;
SIGNAL \Medicao|M1|C1|Ereg.LIMPA~q\ : std_logic;
SIGNAL \Medicao|M1|C1|Ereg.EPRONTO~q\ : std_logic;
SIGNAL \Medicao|C1|Selector2~0_combout\ : std_logic;
SIGNAL \Medicao|C1|Ereg.medindo~q\ : std_logic;
SIGNAL \Medicao|C1|Eprox.registra~0_combout\ : std_logic;
SIGNAL \Medicao|C1|Ereg.registra~q\ : std_logic;
SIGNAL \Medicao|C1|Ereg.soma~q\ : std_logic;
SIGNAL \Medicao|C1|Ereg.esperasoma~q\ : std_logic;
SIGNAL \Medicao|C1|Selector3~0_combout\ : std_logic;
SIGNAL \Medicao|C1|Ereg.espera~q\ : std_logic;
SIGNAL \Medicao|C1|Selector0~0_combout\ : std_logic;
SIGNAL \Medicao|C1|Ereg.parado~q\ : std_logic;
SIGNAL \Medicao|C1|Eprox.iniciado~0_combout\ : std_logic;
SIGNAL \Medicao|C1|Ereg.iniciado~q\ : std_logic;
SIGNAL \Medicao|M1|C1|Selector0~0_combout\ : std_logic;
SIGNAL \Medicao|M1|C1|Ereg.INICIAL~q\ : std_logic;
SIGNAL \Medicao|M1|C1|Eprox.CONTA~0_combout\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_1|Qout[0]~reg0_q\ : std_logic;
SIGNAL \Medicao|M1|C1|Ereg.INICIAL~DUPLICATE_q\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_1|Qout[3]~reg0_q\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_1|Qout~2_combout\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_1|Qout[1]~reg0_q\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_1|Qout~3_combout\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_1|Qout[2]~reg0_q\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_1|Qout[3]~4_combout\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_1|Qout[3]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \Medicao|M1|C1|Ereg.CONTA~DUPLICATE_q\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_1|Qout[2]~0_combout\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_1|Qout[0]~1_combout\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_1|Qout[0]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \Medicao|R1|IQ[0]~feeder_combout\ : std_logic;
SIGNAL \Medicao|C1|WideNor1~combout\ : std_logic;
SIGNAL \R|IQ~0_combout\ : std_logic;
SIGNAL \R|IQ[0]~1_combout\ : std_logic;
SIGNAL \R|Q[0]~feeder_combout\ : std_logic;
SIGNAL \R|process_0~1_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \R|Q[2]~feeder_combout\ : std_logic;
SIGNAL \R|IQ~2_combout\ : std_logic;
SIGNAL \R|Q[3]~feeder_combout\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_2|Qout[3]~0_combout\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_2|Qout~2_combout\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_2|Qout[3]~3_combout\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_2|Qout[1]~reg0_q\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_2|Qout~4_combout\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_2|Qout[2]~reg0_q\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_2|Add0~0_combout\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_2|Qout[3]~5_combout\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_2|Qout[3]~reg0_q\ : std_logic;
SIGNAL \Medicao|M1|D1|ClrN2~0_combout\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_2|Qout[0]~1_combout\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_2|Qout[0]~reg0_q\ : std_logic;
SIGNAL \R|IQ~3_combout\ : std_logic;
SIGNAL \R|Q[4]~feeder_combout\ : std_logic;
SIGNAL \Medicao|R1|IQ[5]~feeder_combout\ : std_logic;
SIGNAL \Medicao|R1|Q[5]~feeder_combout\ : std_logic;
SIGNAL \R|Q[5]~feeder_combout\ : std_logic;
SIGNAL \Medicao|R1|IQ[7]~feeder_combout\ : std_logic;
SIGNAL \R|IQ~4_combout\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_3|Qout[0]~reg0_q\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_2|Qout[3]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \Medicao|M1|D1|ClrN3~0_combout\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_3|Qout~1_combout\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_3|Qout[1]~2_combout\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_3|Qout[1]~reg0_q\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_3|Qout~3_combout\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_3|Qout[2]~reg0_q\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_3|Add0~0_combout\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_3|Qout[3]~4_combout\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_3|Qout[3]~reg0_q\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_3|Qout[0]~0_combout\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_3|Qout[0]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \Medicao|R1|Q[8]~feeder_combout\ : std_logic;
SIGNAL \R|IQ~5_combout\ : std_logic;
SIGNAL \R|Q[8]~feeder_combout\ : std_logic;
SIGNAL \Medicao|R1|IQ[9]~feeder_combout\ : std_logic;
SIGNAL \Medicao|R1|IQ[10]~feeder_combout\ : std_logic;
SIGNAL \Medicao|R1|Q[10]~feeder_combout\ : std_logic;
SIGNAL \R|Q[10]~feeder_combout\ : std_logic;
SIGNAL \Medicao|R1|IQ[11]~feeder_combout\ : std_logic;
SIGNAL \Medicao|R1|Q[11]~feeder_combout\ : std_logic;
SIGNAL \R|IQ~6_combout\ : std_logic;
SIGNAL \R|Q[11]~feeder_combout\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_4|Qout[0]~reg0_q\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_4|Qout[3]~2_combout\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_4|Qout[1]~reg0_q\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_4|Qout~1_combout\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_4|Qout[1]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_4|Qout~3_combout\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_4|Qout[2]~reg0_q\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_4|Add0~0_combout\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_4|Qout[3]~4_combout\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_4|Qout[3]~reg0_q\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_4|Qout[0]~0_combout\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_4|Qout[0]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \Medicao|R1|IQ[12]~feeder_combout\ : std_logic;
SIGNAL \R|IQ~7_combout\ : std_logic;
SIGNAL \R|Q[13]~feeder_combout\ : std_logic;
SIGNAL \Medicao|R1|Q[14]~feeder_combout\ : std_logic;
SIGNAL \Medicao|R1|IQ[15]~feeder_combout\ : std_logic;
SIGNAL \Medicao|R1|Q[15]~feeder_combout\ : std_logic;
SIGNAL \R|IQ~8_combout\ : std_logic;
SIGNAL \R|Q[15]~feeder_combout\ : std_logic;
SIGNAL \D|Converte|bcds\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \D|Converte|shift_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \R|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \D|Converte|bcds_out_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Medicao|R1|IQ\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Medicao|R1|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \D|Registrador|IQ\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \D|Converte|binary\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \D|Registrador|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \R|IQ\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Medicao|M1|C1|ALT_INV_Ereg.CONTA~DUPLICATE_q\ : std_logic;
SIGNAL \Medicao|M1|C1|ALT_INV_Ereg.INICIAL~DUPLICATE_q\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_4|ALT_INV_Qout[1]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_4|ALT_INV_Qout[0]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_3|ALT_INV_Qout[0]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_2|ALT_INV_Qout[3]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_1|ALT_INV_Qout[3]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \Medicao|M1|C1|ALT_INV_Ereg.EPRONTO~DUPLICATE_q\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_1|ALT_INV_Qout[0]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \D|Converte|ALT_INV_shift_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \D|Converte|ALT_INV_shift_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \D|Converte|ALT_INV_shift_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \D|Converte|ALT_INV_bcds[8]~DUPLICATE_q\ : std_logic;
SIGNAL \D|Converte|ALT_INV_bcds[11]~DUPLICATE_q\ : std_logic;
SIGNAL \D|Converte|ALT_INV_bcds[5]~DUPLICATE_q\ : std_logic;
SIGNAL \D|Converte|ALT_INV_bcds[1]~DUPLICATE_q\ : std_logic;
SIGNAL \D|Converte|ALT_INV_bcds[0]~DUPLICATE_q\ : std_logic;
SIGNAL \D|C|ALT_INV_Eatual.Conversao~DUPLICATE_q\ : std_logic;
SIGNAL \D|C|ALT_INV_Eatual.Contando~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_rodada~input_o\ : std_logic;
SIGNAL \ALT_INV_finalizaRodada~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_resposta~input_o\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[14]~61_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[15]~57_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[0]~53_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[1]~49_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[2]~45_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[3]~41_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[4]~37_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[5]~33_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[6]~29_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[7]~25_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[8]~21_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[9]~17_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[10]~13_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[11]~9_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[12]~5_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[13]~1_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[14]~62_combout\ : std_logic;
SIGNAL \D|Registrador|ALT_INV_Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[14]~_emulated_q\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[15]~58_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[15]~_emulated_q\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[0]~54_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[0]~_emulated_q\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[1]~50_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[1]~_emulated_q\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[2]~46_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[2]~_emulated_q\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[3]~42_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[3]~_emulated_q\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[4]~38_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[4]~_emulated_q\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[5]~34_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[5]~_emulated_q\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[6]~30_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[6]~_emulated_q\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[7]~26_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[7]~_emulated_q\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[8]~22_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[8]~_emulated_q\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[9]~18_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[9]~_emulated_q\ : std_logic;
SIGNAL \D|geraSeed|IC_4|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[10]~14_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[10]~_emulated_q\ : std_logic;
SIGNAL \Medicao|C1|ALT_INV_Ereg.espera~q\ : std_logic;
SIGNAL \D|geraSeed|IC_4|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \D|geraSeed|IC_4|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[11]~10_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[11]~_emulated_q\ : std_logic;
SIGNAL \Medicao|C1|ALT_INV_Ereg.parado~q\ : std_logic;
SIGNAL \D|geraSeed|IC_4|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[12]~6_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[12]~_emulated_q\ : std_logic;
SIGNAL \D|geraSeed|IC_1|ALT_INV_Qout[0]~0_combout\ : std_logic;
SIGNAL \D|geraSeed|ALT_INV_ClrN1~combout\ : std_logic;
SIGNAL \D|geraSeed|ALT_INV_ClrN2~0_combout\ : std_logic;
SIGNAL \D|geraSeed|ALT_INV_ClrN4~0_combout\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_4|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_3|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \Medicao|M1|D1|ALT_INV_ClrN3~0_combout\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_2|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_2|ALT_INV_Qout[3]~0_combout\ : std_logic;
SIGNAL \Medicao|M1|D1|ALT_INV_ClrN2~0_combout\ : std_logic;
SIGNAL \Medicao|C1|ALT_INV_Ereg.iniciado~q\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_1|ALT_INV_Qout[2]~0_combout\ : std_logic;
SIGNAL \Medicao|M1|C1|ALT_INV_Ereg.CONTA~q\ : std_logic;
SIGNAL \Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\ : std_logic;
SIGNAL \Medicao|M1|C1|ALT_INV_Ereg.LIMPA~q\ : std_logic;
SIGNAL \Medicao|M1|C1|ALT_INV_Ereg.INICIAL~q\ : std_logic;
SIGNAL \D|geraSeed|IC_1|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \D|geraSeed|IC_1|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \D|geraSeed|IC_1|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \D|geraSeed|IC_1|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \D|geraSeed|IC_2|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \D|geraSeed|IC_2|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \D|geraSeed|IC_2|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \D|geraSeed|IC_3|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \D|geraSeed|IC_3|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \D|geraSeed|IC_2|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \D|geraSeed|IC_3|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \D|C|ALT_INV_Eatual.Inicial~q\ : std_logic;
SIGNAL \D|geraSeed|IC_3|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_4|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_4|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_4|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_4|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_3|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_3|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_3|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_3|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_2|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_2|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_2|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_2|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_1|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_1|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_1|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \Medicao|M1|C1|ALT_INV_Ereg.EPRONTO~q\ : std_logic;
SIGNAL \Medicao|C1|ALT_INV_Ereg.medindo~q\ : std_logic;
SIGNAL \Medicao|M1|D1|IC_1|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[13]~2_combout\ : std_logic;
SIGNAL \D|PSEUDORANDOM|ALT_INV_count[13]~_emulated_q\ : std_logic;
SIGNAL \D|Converte|ALT_INV_state.start~q\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_4|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_2|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[3]~0_combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_3|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \D|C|ALT_INV_Eatual.RegistraSeed1~q\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|ALT_INV_ClrN2~0_combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|ALT_INV_ClrN3~0_combout\ : std_logic;
SIGNAL \D|C|ALT_INV_Eatual.RegistraSeed2~q\ : std_logic;
SIGNAL \Medicao|R1|ALT_INV_IQ\ : std_logic_vector(15 DOWNTO 5);
SIGNAL \Medicao|C1|ALT_INV_Ereg.esperasoma~q\ : std_logic;
SIGNAL \Medicao|C1|ALT_INV_Ereg.registra~q\ : std_logic;
SIGNAL \C|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \D|Converte|ALT_INV_Selector23~0_combout\ : std_logic;
SIGNAL \D|Converte|ALT_INV_Selector19~0_combout\ : std_logic;
SIGNAL \D|Converte|ALT_INV_Selector27~0_combout\ : std_logic;
SIGNAL \D|Converte|ALT_INV_binary[1]~0_combout\ : std_logic;
SIGNAL \D|Converte|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \D|Converte|ALT_INV_state.shift~q\ : std_logic;
SIGNAL \D|Converte|ALT_INV_shift_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \D|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \D|C|ALT_INV_Eatual.Fim~q\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_2|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_4|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|ALT_INV_ClrN3~0_combout\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_3|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_2|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~0_combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|ALT_INV_S~combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|ALT_INV_S~4_combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \D|ciclagensLFSR|ALT_INV_S~3_combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \D|ciclagensLFSR|ALT_INV_S~2_combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \D|ciclagensLFSR|ALT_INV_S~1_combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \D|ciclagensLFSR|ALT_INV_S~0_combout\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \D|C|ALT_INV_Eatual.Cicla~q\ : std_logic;
SIGNAL \Medicao|R1|ALT_INV_Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \C|ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \ContaDemora|IC_4|ALT_INV_Qout[3]~1_combout\ : std_logic;
SIGNAL \ALT_INV_s_demorou~3_combout\ : std_logic;
SIGNAL \ContaDemora|IC_2|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \ContaDemora|IC_2|ALT_INV_Qout[3]~0_combout\ : std_logic;
SIGNAL \ContaDemora|ALT_INV_ClrN2~combout\ : std_logic;
SIGNAL \ContaDemora|IC_3|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \ContaDemora|IC_3|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \C|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \C|ALT_INV_Eatual.Inicial~q\ : std_logic;
SIGNAL \D|Converte|ALT_INV_bcds\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \D|ContadordoAtraso|IC_2|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_2|ALT_INV_Qout[3]~1_combout\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_3|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \D|ContadordoAtraso|ALT_INV_ClrN2~0_combout\ : std_logic;
SIGNAL \D|Converte|ALT_INV_state.done~q\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_4|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \D|ContadordoAtraso|ALT_INV_ClrN3~0_combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \D|ContadordeConversao|ALT_INV_S~combout\ : std_logic;
SIGNAL \D|ContadordeConversao|ALT_INV_S~2_combout\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \D|ContadordeConversao|ALT_INV_S~1_combout\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \D|ContadordeConversao|ALT_INV_S~0_combout\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \D|C|ALT_INV_Eatual.Conversao~q\ : std_logic;
SIGNAL \R|ALT_INV_IQ\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \R|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \C|ALT_INV_Eatual.Respondeu~q\ : std_logic;
SIGNAL \C|ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \ALT_INV_s_demorou~combout\ : std_logic;
SIGNAL \ALT_INV_s_demorou~2_combout\ : std_logic;
SIGNAL \ContaDemora|IC_4|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \ContaDemora|IC_4|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_s_demorou~1_combout\ : std_logic;
SIGNAL \ContaDemora|IC_3|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \ContaDemora|IC_3|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \ContaDemora|IC_2|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \ContaDemora|IC_2|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \ContaDemora|IC_1|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \ContaDemora|IC_1|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_s_demorou~0_combout\ : std_logic;
SIGNAL \ContaDemora|IC_4|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \ContaDemora|IC_4|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \ContaDemora|ALT_INV_ClrN3~0_combout\ : std_logic;
SIGNAL \ContaDemora|IC_1|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \ContaDemora|IC_1|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \ContaDemora|IC_2|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \ContaDemora|IC_2|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \ContaDemora|IC_3|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \ContaDemora|IC_3|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \C|ALT_INV_Eatual.Atraso~q\ : std_logic;
SIGNAL \D|ALT_INV_s_sinalAtraso~5_combout\ : std_logic;
SIGNAL \D|ALT_INV_s_sinalAtraso~4_combout\ : std_logic;
SIGNAL \D|Converte|ALT_INV_bcds_out_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \D|ContadordoAtraso|IC_2|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_2|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_1|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \D|ALT_INV_s_sinalAtraso~3_combout\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_1|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_1|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_1|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \D|ALT_INV_s_sinalAtraso~2_combout\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_3|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_2|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_2|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \D|ALT_INV_s_sinalAtraso~1_combout\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_3|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_3|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_3|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \D|ALT_INV_s_sinalAtraso~0_combout\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_4|ALT_INV_Qout[2]~reg0_q\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_4|ALT_INV_Qout[1]~reg0_q\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_4|ALT_INV_Qout[0]~reg0_q\ : std_logic;
SIGNAL \D|C4|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \D|ContadordoAtraso|IC_4|ALT_INV_Qout[3]~reg0_q\ : std_logic;
SIGNAL \D|C|ALT_INV_Eatual.Contando~q\ : std_logic;
SIGNAL \C|ALT_INV_WideNor2~0_combout\ : std_logic;
SIGNAL \C|ALT_INV_Eatual.Afobado~q\ : std_logic;
SIGNAL \C|ALT_INV_Eatual.Demorado~q\ : std_logic;
SIGNAL \C|ALT_INV_Eatual.Aguarda~q\ : std_logic;
SIGNAL \D|Registrador|ALT_INV_IQ\ : std_logic_vector(14 DOWNTO 14);
SIGNAL \D|Converte|ALT_INV_binary\ : std_logic_vector(13 DOWNTO 0);

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_finalizaRodada <= finalizaRodada;
ww_rodada <= rodada;
ww_resposta <= resposta;
aguardando <= ww_aguardando;
erro <= ww_erro;
pulso <= ww_pulso;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Medicao|M1|C1|ALT_INV_Ereg.CONTA~DUPLICATE_q\ <= NOT \Medicao|M1|C1|Ereg.CONTA~DUPLICATE_q\;
\Medicao|M1|C1|ALT_INV_Ereg.INICIAL~DUPLICATE_q\ <= NOT \Medicao|M1|C1|Ereg.INICIAL~DUPLICATE_q\;
\Medicao|M1|D1|IC_4|ALT_INV_Qout[1]~reg0DUPLICATE_q\ <= NOT \Medicao|M1|D1|IC_4|Qout[1]~reg0DUPLICATE_q\;
\Medicao|M1|D1|IC_4|ALT_INV_Qout[0]~reg0DUPLICATE_q\ <= NOT \Medicao|M1|D1|IC_4|Qout[0]~reg0DUPLICATE_q\;
\Medicao|M1|D1|IC_3|ALT_INV_Qout[0]~reg0DUPLICATE_q\ <= NOT \Medicao|M1|D1|IC_3|Qout[0]~reg0DUPLICATE_q\;
\Medicao|M1|D1|IC_2|ALT_INV_Qout[3]~reg0DUPLICATE_q\ <= NOT \Medicao|M1|D1|IC_2|Qout[3]~reg0DUPLICATE_q\;
\Medicao|M1|D1|IC_1|ALT_INV_Qout[3]~reg0DUPLICATE_q\ <= NOT \Medicao|M1|D1|IC_1|Qout[3]~reg0DUPLICATE_q\;
\Medicao|M1|C1|ALT_INV_Ereg.EPRONTO~DUPLICATE_q\ <= NOT \Medicao|M1|C1|Ereg.EPRONTO~DUPLICATE_q\;
\Medicao|M1|D1|IC_1|ALT_INV_Qout[0]~reg0DUPLICATE_q\ <= NOT \Medicao|M1|D1|IC_1|Qout[0]~reg0DUPLICATE_q\;
\D|Converte|ALT_INV_shift_counter[0]~DUPLICATE_q\ <= NOT \D|Converte|shift_counter[0]~DUPLICATE_q\;
\D|Converte|ALT_INV_shift_counter[1]~DUPLICATE_q\ <= NOT \D|Converte|shift_counter[1]~DUPLICATE_q\;
\D|Converte|ALT_INV_shift_counter[2]~DUPLICATE_q\ <= NOT \D|Converte|shift_counter[2]~DUPLICATE_q\;
\D|Converte|ALT_INV_bcds[8]~DUPLICATE_q\ <= NOT \D|Converte|bcds[8]~DUPLICATE_q\;
\D|Converte|ALT_INV_bcds[11]~DUPLICATE_q\ <= NOT \D|Converte|bcds[11]~DUPLICATE_q\;
\D|Converte|ALT_INV_bcds[5]~DUPLICATE_q\ <= NOT \D|Converte|bcds[5]~DUPLICATE_q\;
\D|Converte|ALT_INV_bcds[1]~DUPLICATE_q\ <= NOT \D|Converte|bcds[1]~DUPLICATE_q\;
\D|Converte|ALT_INV_bcds[0]~DUPLICATE_q\ <= NOT \D|Converte|bcds[0]~DUPLICATE_q\;
\D|C|ALT_INV_Eatual.Conversao~DUPLICATE_q\ <= NOT \D|C|Eatual.Conversao~DUPLICATE_q\;
\D|C|ALT_INV_Eatual.Contando~DUPLICATE_q\ <= NOT \D|C|Eatual.Contando~DUPLICATE_q\;
\ALT_INV_rodada~input_o\ <= NOT \rodada~input_o\;
\ALT_INV_finalizaRodada~input_o\ <= NOT \finalizaRodada~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_resposta~input_o\ <= NOT \resposta~input_o\;
\D|PSEUDORANDOM|ALT_INV_count[14]~61_combout\ <= NOT \D|PSEUDORANDOM|count[14]~61_combout\;
\D|PSEUDORANDOM|ALT_INV_count[15]~57_combout\ <= NOT \D|PSEUDORANDOM|count[15]~57_combout\;
\D|PSEUDORANDOM|ALT_INV_count[0]~53_combout\ <= NOT \D|PSEUDORANDOM|count[0]~53_combout\;
\D|PSEUDORANDOM|ALT_INV_count[1]~49_combout\ <= NOT \D|PSEUDORANDOM|count[1]~49_combout\;
\D|PSEUDORANDOM|ALT_INV_count[2]~45_combout\ <= NOT \D|PSEUDORANDOM|count[2]~45_combout\;
\D|PSEUDORANDOM|ALT_INV_count[3]~41_combout\ <= NOT \D|PSEUDORANDOM|count[3]~41_combout\;
\D|PSEUDORANDOM|ALT_INV_count[4]~37_combout\ <= NOT \D|PSEUDORANDOM|count[4]~37_combout\;
\D|PSEUDORANDOM|ALT_INV_count[5]~33_combout\ <= NOT \D|PSEUDORANDOM|count[5]~33_combout\;
\D|PSEUDORANDOM|ALT_INV_count[6]~29_combout\ <= NOT \D|PSEUDORANDOM|count[6]~29_combout\;
\D|PSEUDORANDOM|ALT_INV_count[7]~25_combout\ <= NOT \D|PSEUDORANDOM|count[7]~25_combout\;
\D|PSEUDORANDOM|ALT_INV_count[8]~21_combout\ <= NOT \D|PSEUDORANDOM|count[8]~21_combout\;
\D|PSEUDORANDOM|ALT_INV_count[9]~17_combout\ <= NOT \D|PSEUDORANDOM|count[9]~17_combout\;
\D|PSEUDORANDOM|ALT_INV_count[10]~13_combout\ <= NOT \D|PSEUDORANDOM|count[10]~13_combout\;
\D|PSEUDORANDOM|ALT_INV_count[11]~9_combout\ <= NOT \D|PSEUDORANDOM|count[11]~9_combout\;
\D|PSEUDORANDOM|ALT_INV_count[12]~5_combout\ <= NOT \D|PSEUDORANDOM|count[12]~5_combout\;
\D|PSEUDORANDOM|ALT_INV_count[13]~1_combout\ <= NOT \D|PSEUDORANDOM|count[13]~1_combout\;
\D|PSEUDORANDOM|ALT_INV_count[14]~62_combout\ <= NOT \D|PSEUDORANDOM|count[14]~62_combout\;
\D|Registrador|ALT_INV_Q\(14) <= NOT \D|Registrador|Q\(14);
\D|PSEUDORANDOM|ALT_INV_count[14]~_emulated_q\ <= NOT \D|PSEUDORANDOM|count[14]~_emulated_q\;
\D|PSEUDORANDOM|ALT_INV_count[15]~58_combout\ <= NOT \D|PSEUDORANDOM|count[15]~58_combout\;
\D|Registrador|ALT_INV_Q\(15) <= NOT \D|Registrador|Q\(15);
\D|PSEUDORANDOM|ALT_INV_count[15]~_emulated_q\ <= NOT \D|PSEUDORANDOM|count[15]~_emulated_q\;
\D|PSEUDORANDOM|ALT_INV_count[0]~54_combout\ <= NOT \D|PSEUDORANDOM|count[0]~54_combout\;
\D|PSEUDORANDOM|ALT_INV_count[0]~_emulated_q\ <= NOT \D|PSEUDORANDOM|count[0]~_emulated_q\;
\D|PSEUDORANDOM|ALT_INV_count[1]~50_combout\ <= NOT \D|PSEUDORANDOM|count[1]~50_combout\;
\D|PSEUDORANDOM|ALT_INV_count[1]~_emulated_q\ <= NOT \D|PSEUDORANDOM|count[1]~_emulated_q\;
\D|PSEUDORANDOM|ALT_INV_count[2]~46_combout\ <= NOT \D|PSEUDORANDOM|count[2]~46_combout\;
\D|PSEUDORANDOM|ALT_INV_count[2]~_emulated_q\ <= NOT \D|PSEUDORANDOM|count[2]~_emulated_q\;
\D|PSEUDORANDOM|ALT_INV_count[3]~42_combout\ <= NOT \D|PSEUDORANDOM|count[3]~42_combout\;
\D|PSEUDORANDOM|ALT_INV_count[3]~_emulated_q\ <= NOT \D|PSEUDORANDOM|count[3]~_emulated_q\;
\D|PSEUDORANDOM|ALT_INV_count[4]~38_combout\ <= NOT \D|PSEUDORANDOM|count[4]~38_combout\;
\D|PSEUDORANDOM|ALT_INV_count[4]~_emulated_q\ <= NOT \D|PSEUDORANDOM|count[4]~_emulated_q\;
\D|PSEUDORANDOM|ALT_INV_count[5]~34_combout\ <= NOT \D|PSEUDORANDOM|count[5]~34_combout\;
\D|PSEUDORANDOM|ALT_INV_count[5]~_emulated_q\ <= NOT \D|PSEUDORANDOM|count[5]~_emulated_q\;
\D|PSEUDORANDOM|ALT_INV_count[6]~30_combout\ <= NOT \D|PSEUDORANDOM|count[6]~30_combout\;
\D|PSEUDORANDOM|ALT_INV_count[6]~_emulated_q\ <= NOT \D|PSEUDORANDOM|count[6]~_emulated_q\;
\D|PSEUDORANDOM|ALT_INV_count[7]~26_combout\ <= NOT \D|PSEUDORANDOM|count[7]~26_combout\;
\D|PSEUDORANDOM|ALT_INV_count[7]~_emulated_q\ <= NOT \D|PSEUDORANDOM|count[7]~_emulated_q\;
\D|PSEUDORANDOM|ALT_INV_count[8]~22_combout\ <= NOT \D|PSEUDORANDOM|count[8]~22_combout\;
\D|PSEUDORANDOM|ALT_INV_count[8]~_emulated_q\ <= NOT \D|PSEUDORANDOM|count[8]~_emulated_q\;
\D|PSEUDORANDOM|ALT_INV_count[9]~18_combout\ <= NOT \D|PSEUDORANDOM|count[9]~18_combout\;
\D|PSEUDORANDOM|ALT_INV_count[9]~_emulated_q\ <= NOT \D|PSEUDORANDOM|count[9]~_emulated_q\;
\D|geraSeed|IC_4|ALT_INV_Qout[2]~reg0_q\ <= NOT \D|geraSeed|IC_4|Qout[2]~reg0_q\;
\D|PSEUDORANDOM|ALT_INV_count[10]~14_combout\ <= NOT \D|PSEUDORANDOM|count[10]~14_combout\;
\D|PSEUDORANDOM|ALT_INV_count[10]~_emulated_q\ <= NOT \D|PSEUDORANDOM|count[10]~_emulated_q\;
\Medicao|C1|ALT_INV_Ereg.espera~q\ <= NOT \Medicao|C1|Ereg.espera~q\;
\D|geraSeed|IC_4|ALT_INV_Qout[3]~reg0_q\ <= NOT \D|geraSeed|IC_4|Qout[3]~reg0_q\;
\D|geraSeed|IC_4|ALT_INV_Qout[0]~reg0_q\ <= NOT \D|geraSeed|IC_4|Qout[0]~reg0_q\;
\D|PSEUDORANDOM|ALT_INV_count[11]~10_combout\ <= NOT \D|PSEUDORANDOM|count[11]~10_combout\;
\D|PSEUDORANDOM|ALT_INV_count[11]~_emulated_q\ <= NOT \D|PSEUDORANDOM|count[11]~_emulated_q\;
\Medicao|C1|ALT_INV_Ereg.parado~q\ <= NOT \Medicao|C1|Ereg.parado~q\;
\D|geraSeed|IC_4|ALT_INV_Qout[1]~reg0_q\ <= NOT \D|geraSeed|IC_4|Qout[1]~reg0_q\;
\D|PSEUDORANDOM|ALT_INV_count[12]~6_combout\ <= NOT \D|PSEUDORANDOM|count[12]~6_combout\;
\D|Registrador|ALT_INV_Q\(12) <= NOT \D|Registrador|Q\(12);
\D|PSEUDORANDOM|ALT_INV_count[12]~_emulated_q\ <= NOT \D|PSEUDORANDOM|count[12]~_emulated_q\;
\D|geraSeed|IC_1|ALT_INV_Qout[0]~0_combout\ <= NOT \D|geraSeed|IC_1|Qout[0]~0_combout\;
\D|geraSeed|ALT_INV_ClrN1~combout\ <= NOT \D|geraSeed|ClrN1~combout\;
\D|geraSeed|ALT_INV_ClrN2~0_combout\ <= NOT \D|geraSeed|ClrN2~0_combout\;
\D|geraSeed|ALT_INV_ClrN4~0_combout\ <= NOT \D|geraSeed|ClrN4~0_combout\;
\Medicao|M1|D1|IC_4|ALT_INV_Add0~0_combout\ <= NOT \Medicao|M1|D1|IC_4|Add0~0_combout\;
\Medicao|M1|D1|IC_3|ALT_INV_Add0~0_combout\ <= NOT \Medicao|M1|D1|IC_3|Add0~0_combout\;
\Medicao|M1|D1|ALT_INV_ClrN3~0_combout\ <= NOT \Medicao|M1|D1|ClrN3~0_combout\;
\Medicao|M1|D1|IC_2|ALT_INV_Add0~0_combout\ <= NOT \Medicao|M1|D1|IC_2|Add0~0_combout\;
\Medicao|M1|D1|IC_2|ALT_INV_Qout[3]~0_combout\ <= NOT \Medicao|M1|D1|IC_2|Qout[3]~0_combout\;
\Medicao|M1|D1|ALT_INV_ClrN2~0_combout\ <= NOT \Medicao|M1|D1|ClrN2~0_combout\;
\Medicao|C1|ALT_INV_Ereg.iniciado~q\ <= NOT \Medicao|C1|Ereg.iniciado~q\;
\Medicao|M1|D1|IC_1|ALT_INV_Qout[2]~0_combout\ <= NOT \Medicao|M1|D1|IC_1|Qout[2]~0_combout\;
\Medicao|M1|C1|ALT_INV_Ereg.CONTA~q\ <= NOT \Medicao|M1|C1|Ereg.CONTA~q\;
\Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\ <= NOT \Medicao|M1|C1|Eprox.CONTA~0_combout\;
\Medicao|M1|C1|ALT_INV_Ereg.LIMPA~q\ <= NOT \Medicao|M1|C1|Ereg.LIMPA~q\;
\Medicao|M1|C1|ALT_INV_Ereg.INICIAL~q\ <= NOT \Medicao|M1|C1|Ereg.INICIAL~q\;
\D|geraSeed|IC_1|ALT_INV_Qout[3]~reg0_q\ <= NOT \D|geraSeed|IC_1|Qout[3]~reg0_q\;
\D|geraSeed|IC_1|ALT_INV_Qout[2]~reg0_q\ <= NOT \D|geraSeed|IC_1|Qout[2]~reg0_q\;
\D|geraSeed|IC_1|ALT_INV_Qout[1]~reg0_q\ <= NOT \D|geraSeed|IC_1|Qout[1]~reg0_q\;
\D|geraSeed|IC_1|ALT_INV_Qout[0]~reg0_q\ <= NOT \D|geraSeed|IC_1|Qout[0]~reg0_q\;
\D|geraSeed|IC_2|ALT_INV_Qout[2]~reg0_q\ <= NOT \D|geraSeed|IC_2|Qout[2]~reg0_q\;
\D|geraSeed|IC_2|ALT_INV_Qout[1]~reg0_q\ <= NOT \D|geraSeed|IC_2|Qout[1]~reg0_q\;
\D|geraSeed|IC_2|ALT_INV_Qout[0]~reg0_q\ <= NOT \D|geraSeed|IC_2|Qout[0]~reg0_q\;
\D|geraSeed|IC_3|ALT_INV_Qout[1]~reg0_q\ <= NOT \D|geraSeed|IC_3|Qout[1]~reg0_q\;
\D|geraSeed|IC_3|ALT_INV_Qout[0]~reg0_q\ <= NOT \D|geraSeed|IC_3|Qout[0]~reg0_q\;
\D|geraSeed|IC_2|ALT_INV_Qout[3]~reg0_q\ <= NOT \D|geraSeed|IC_2|Qout[3]~reg0_q\;
\D|geraSeed|IC_3|ALT_INV_Qout[3]~reg0_q\ <= NOT \D|geraSeed|IC_3|Qout[3]~reg0_q\;
\D|C|ALT_INV_Eatual.Inicial~q\ <= NOT \D|C|Eatual.Inicial~q\;
\D|geraSeed|IC_3|ALT_INV_Qout[2]~reg0_q\ <= NOT \D|geraSeed|IC_3|Qout[2]~reg0_q\;
\Medicao|M1|D1|IC_4|ALT_INV_Qout[3]~reg0_q\ <= NOT \Medicao|M1|D1|IC_4|Qout[3]~reg0_q\;
\Medicao|M1|D1|IC_4|ALT_INV_Qout[2]~reg0_q\ <= NOT \Medicao|M1|D1|IC_4|Qout[2]~reg0_q\;
\Medicao|M1|D1|IC_4|ALT_INV_Qout[1]~reg0_q\ <= NOT \Medicao|M1|D1|IC_4|Qout[1]~reg0_q\;
\Medicao|M1|D1|IC_4|ALT_INV_Qout[0]~reg0_q\ <= NOT \Medicao|M1|D1|IC_4|Qout[0]~reg0_q\;
\Medicao|M1|D1|IC_3|ALT_INV_Qout[3]~reg0_q\ <= NOT \Medicao|M1|D1|IC_3|Qout[3]~reg0_q\;
\Medicao|M1|D1|IC_3|ALT_INV_Qout[2]~reg0_q\ <= NOT \Medicao|M1|D1|IC_3|Qout[2]~reg0_q\;
\Medicao|M1|D1|IC_3|ALT_INV_Qout[1]~reg0_q\ <= NOT \Medicao|M1|D1|IC_3|Qout[1]~reg0_q\;
\Medicao|M1|D1|IC_3|ALT_INV_Qout[0]~reg0_q\ <= NOT \Medicao|M1|D1|IC_3|Qout[0]~reg0_q\;
\Medicao|M1|D1|IC_2|ALT_INV_Qout[3]~reg0_q\ <= NOT \Medicao|M1|D1|IC_2|Qout[3]~reg0_q\;
\Medicao|M1|D1|IC_2|ALT_INV_Qout[2]~reg0_q\ <= NOT \Medicao|M1|D1|IC_2|Qout[2]~reg0_q\;
\Medicao|M1|D1|IC_2|ALT_INV_Qout[1]~reg0_q\ <= NOT \Medicao|M1|D1|IC_2|Qout[1]~reg0_q\;
\Medicao|M1|D1|IC_2|ALT_INV_Qout[0]~reg0_q\ <= NOT \Medicao|M1|D1|IC_2|Qout[0]~reg0_q\;
\Medicao|M1|D1|IC_1|ALT_INV_Qout[3]~reg0_q\ <= NOT \Medicao|M1|D1|IC_1|Qout[3]~reg0_q\;
\Medicao|M1|D1|IC_1|ALT_INV_Qout[2]~reg0_q\ <= NOT \Medicao|M1|D1|IC_1|Qout[2]~reg0_q\;
\Medicao|M1|D1|IC_1|ALT_INV_Qout[1]~reg0_q\ <= NOT \Medicao|M1|D1|IC_1|Qout[1]~reg0_q\;
\Medicao|M1|C1|ALT_INV_Ereg.EPRONTO~q\ <= NOT \Medicao|M1|C1|Ereg.EPRONTO~q\;
\Medicao|C1|ALT_INV_Ereg.medindo~q\ <= NOT \Medicao|C1|Ereg.medindo~q\;
\Medicao|M1|D1|IC_1|ALT_INV_Qout[0]~reg0_q\ <= NOT \Medicao|M1|D1|IC_1|Qout[0]~reg0_q\;
\D|PSEUDORANDOM|ALT_INV_count[13]~2_combout\ <= NOT \D|PSEUDORANDOM|count[13]~2_combout\;
\D|Registrador|ALT_INV_Q\(13) <= NOT \D|Registrador|Q\(13);
\D|PSEUDORANDOM|ALT_INV_count[13]~_emulated_q\ <= NOT \D|PSEUDORANDOM|count[13]~_emulated_q\;
\D|Converte|ALT_INV_state.start~q\ <= NOT \D|Converte|state.start~q\;
\D|ciclagensLFSR|Contador|IC_4|ALT_INV_Add0~0_combout\ <= NOT \D|ciclagensLFSR|Contador|IC_4|Add0~0_combout\;
\D|ciclagensLFSR|Contador|IC_2|ALT_INV_Add0~0_combout\ <= NOT \D|ciclagensLFSR|Contador|IC_2|Add0~0_combout\;
\D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[3]~0_combout\ <= NOT \D|ciclagensLFSR|Contador|IC_2|Qout[3]~0_combout\;
\D|ciclagensLFSR|Contador|IC_3|ALT_INV_Add0~0_combout\ <= NOT \D|ciclagensLFSR|Contador|IC_3|Add0~0_combout\;
\D|C|ALT_INV_Eatual.RegistraSeed1~q\ <= NOT \D|C|Eatual.RegistraSeed1~q\;
\D|ciclagensLFSR|Contador|ALT_INV_ClrN2~0_combout\ <= NOT \D|ciclagensLFSR|Contador|ClrN2~0_combout\;
\D|ciclagensLFSR|Contador|ALT_INV_ClrN3~0_combout\ <= NOT \D|ciclagensLFSR|Contador|ClrN3~0_combout\;
\D|C|ALT_INV_Eatual.RegistraSeed2~q\ <= NOT \D|C|Eatual.RegistraSeed2~q\;
\Medicao|R1|ALT_INV_IQ\(15) <= NOT \Medicao|R1|IQ\(15);
\Medicao|R1|ALT_INV_IQ\(11) <= NOT \Medicao|R1|IQ\(11);
\Medicao|R1|ALT_INV_IQ\(8) <= NOT \Medicao|R1|IQ\(8);
\Medicao|C1|ALT_INV_Ereg.esperasoma~q\ <= NOT \Medicao|C1|Ereg.esperasoma~q\;
\Medicao|C1|ALT_INV_Ereg.registra~q\ <= NOT \Medicao|C1|Ereg.registra~q\;
\C|ALT_INV_Selector0~0_combout\ <= NOT \C|Selector0~0_combout\;
\D|Converte|ALT_INV_Selector23~0_combout\ <= NOT \D|Converte|Selector23~0_combout\;
\D|Converte|ALT_INV_Selector19~0_combout\ <= NOT \D|Converte|Selector19~0_combout\;
\D|Converte|ALT_INV_Selector27~0_combout\ <= NOT \D|Converte|Selector27~0_combout\;
\D|Converte|ALT_INV_binary[1]~0_combout\ <= NOT \D|Converte|binary[1]~0_combout\;
\D|Converte|ALT_INV_Selector1~0_combout\ <= NOT \D|Converte|Selector1~0_combout\;
\D|Converte|ALT_INV_state.shift~q\ <= NOT \D|Converte|state.shift~q\;
\D|Converte|ALT_INV_shift_counter\(0) <= NOT \D|Converte|shift_counter\(0);
\D|Converte|ALT_INV_shift_counter\(1) <= NOT \D|Converte|shift_counter\(1);
\D|Converte|ALT_INV_shift_counter\(2) <= NOT \D|Converte|shift_counter\(2);
\D|Converte|ALT_INV_shift_counter\(3) <= NOT \D|Converte|shift_counter\(3);
\D|ALT_INV_comb~0_combout\ <= NOT \D|comb~0_combout\;
\D|C|ALT_INV_Eatual.Fim~q\ <= NOT \D|C|Eatual.Fim~q\;
\D|ContadordeConversao|Contador|IC_2|ALT_INV_Add0~0_combout\ <= NOT \D|ContadordeConversao|Contador|IC_2|Add0~0_combout\;
\D|ContadordeConversao|Contador|IC_4|ALT_INV_Add0~0_combout\ <= NOT \D|ContadordeConversao|Contador|IC_4|Add0~0_combout\;
\D|ContadordeConversao|Contador|ALT_INV_ClrN3~0_combout\ <= NOT \D|ContadordeConversao|Contador|ClrN3~0_combout\;
\D|ContadordeConversao|Contador|IC_3|ALT_INV_Add0~0_combout\ <= NOT \D|ContadordeConversao|Contador|IC_3|Add0~0_combout\;
\D|ContadordeConversao|Contador|IC_2|ALT_INV_process_0~0_combout\ <= NOT \D|ContadordeConversao|Contador|IC_2|process_0~0_combout\;
\D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~0_combout\ <= NOT \D|ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\;
\D|ciclagensLFSR|ALT_INV_S~combout\ <= NOT \D|ciclagensLFSR|S~combout\;
\D|ciclagensLFSR|ALT_INV_S~4_combout\ <= NOT \D|ciclagensLFSR|S~4_combout\;
\D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\ <= NOT \D|ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\;
\D|Registrador|ALT_INV_Q\(3) <= NOT \D|Registrador|Q\(3);
\D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[2]~reg0_q\ <= NOT \D|ciclagensLFSR|Contador|IC_1|Qout[2]~reg0_q\;
\D|Registrador|ALT_INV_Q\(2) <= NOT \D|Registrador|Q\(2);
\D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[1]~reg0_q\ <= NOT \D|ciclagensLFSR|Contador|IC_1|Qout[1]~reg0_q\;
\D|Registrador|ALT_INV_Q\(1) <= NOT \D|Registrador|Q\(1);
\D|ciclagensLFSR|ALT_INV_S~3_combout\ <= NOT \D|ciclagensLFSR|S~3_combout\;
\D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\ <= NOT \D|ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\;
\D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\ <= NOT \D|ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\;
\D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[2]~reg0_q\ <= NOT \D|ciclagensLFSR|Contador|IC_4|Qout[2]~reg0_q\;
\D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[1]~reg0_q\ <= NOT \D|ciclagensLFSR|Contador|IC_4|Qout[1]~reg0_q\;
\D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\ <= NOT \D|ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\;
\D|Registrador|ALT_INV_Q\(0) <= NOT \D|Registrador|Q\(0);
\D|ciclagensLFSR|ALT_INV_S~2_combout\ <= NOT \D|ciclagensLFSR|S~2_combout\;
\D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[2]~reg0_q\ <= NOT \D|ciclagensLFSR|Contador|IC_2|Qout[2]~reg0_q\;
\D|Registrador|ALT_INV_Q\(6) <= NOT \D|Registrador|Q\(6);
\D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[1]~reg0_q\ <= NOT \D|ciclagensLFSR|Contador|IC_2|Qout[1]~reg0_q\;
\D|Registrador|ALT_INV_Q\(5) <= NOT \D|Registrador|Q\(5);
\D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\ <= NOT \D|ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\;
\D|Registrador|ALT_INV_Q\(4) <= NOT \D|Registrador|Q\(4);
\D|ciclagensLFSR|ALT_INV_S~1_combout\ <= NOT \D|ciclagensLFSR|S~1_combout\;
\D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[1]~reg0_q\ <= NOT \D|ciclagensLFSR|Contador|IC_3|Qout[1]~reg0_q\;
\D|Registrador|ALT_INV_Q\(9) <= NOT \D|Registrador|Q\(9);
\D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\ <= NOT \D|ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\;
\D|Registrador|ALT_INV_Q\(8) <= NOT \D|Registrador|Q\(8);
\D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[3]~reg0_q\ <= NOT \D|ciclagensLFSR|Contador|IC_2|Qout[3]~reg0_q\;
\D|Registrador|ALT_INV_Q\(7) <= NOT \D|Registrador|Q\(7);
\D|ciclagensLFSR|ALT_INV_S~0_combout\ <= NOT \D|ciclagensLFSR|S~0_combout\;
\D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[3]~reg0_q\ <= NOT \D|ciclagensLFSR|Contador|IC_3|Qout[3]~reg0_q\;
\D|Registrador|ALT_INV_Q\(11) <= NOT \D|Registrador|Q\(11);
\D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[2]~reg0_q\ <= NOT \D|ciclagensLFSR|Contador|IC_3|Qout[2]~reg0_q\;
\D|Registrador|ALT_INV_Q\(10) <= NOT \D|Registrador|Q\(10);
\D|C|ALT_INV_Eatual.Cicla~q\ <= NOT \D|C|Eatual.Cicla~q\;
\Medicao|R1|ALT_INV_Q\(15) <= NOT \Medicao|R1|Q\(15);
\Medicao|R1|ALT_INV_Q\(12) <= NOT \Medicao|R1|Q\(12);
\Medicao|R1|ALT_INV_Q\(11) <= NOT \Medicao|R1|Q\(11);
\Medicao|R1|ALT_INV_Q\(8) <= NOT \Medicao|R1|Q\(8);
\Medicao|R1|ALT_INV_Q\(7) <= NOT \Medicao|R1|Q\(7);
\Medicao|R1|ALT_INV_Q\(4) <= NOT \Medicao|R1|Q\(4);
\Medicao|R1|ALT_INV_Q\(3) <= NOT \Medicao|R1|Q\(3);
\C|ALT_INV_Selector4~0_combout\ <= NOT \C|Selector4~0_combout\;
\Medicao|R1|ALT_INV_Q\(0) <= NOT \Medicao|R1|Q\(0);
\ContaDemora|IC_4|ALT_INV_Qout[3]~1_combout\ <= NOT \ContaDemora|IC_4|Qout[3]~1_combout\;
\ALT_INV_s_demorou~3_combout\ <= NOT \s_demorou~3_combout\;
\ContaDemora|IC_2|ALT_INV_Add0~0_combout\ <= NOT \ContaDemora|IC_2|Add0~0_combout\;
\ContaDemora|IC_2|ALT_INV_Qout[3]~0_combout\ <= NOT \ContaDemora|IC_2|Qout[3]~0_combout\;
\ContaDemora|ALT_INV_ClrN2~combout\ <= NOT \ContaDemora|ClrN2~combout\;
\ContaDemora|IC_3|ALT_INV_Add0~0_combout\ <= NOT \ContaDemora|IC_3|Add0~0_combout\;
\ContaDemora|IC_3|ALT_INV_process_0~0_combout\ <= NOT \ContaDemora|IC_3|process_0~0_combout\;
\C|ALT_INV_Selector1~0_combout\ <= NOT \C|Selector1~0_combout\;
\C|ALT_INV_Eatual.Inicial~q\ <= NOT \C|Eatual.Inicial~q\;
\D|Converte|ALT_INV_bcds\(9) <= NOT \D|Converte|bcds\(9);
\D|Converte|ALT_INV_bcds\(8) <= NOT \D|Converte|bcds\(8);
\D|Converte|ALT_INV_bcds\(15) <= NOT \D|Converte|bcds\(15);
\D|Converte|ALT_INV_bcds\(14) <= NOT \D|Converte|bcds\(14);
\D|Converte|ALT_INV_bcds\(13) <= NOT \D|Converte|bcds\(13);
\D|Converte|ALT_INV_bcds\(12) <= NOT \D|Converte|bcds\(12);
\D|Converte|ALT_INV_bcds\(4) <= NOT \D|Converte|bcds\(4);
\D|Converte|ALT_INV_bcds\(11) <= NOT \D|Converte|bcds\(11);
\D|ContadordoAtraso|IC_2|ALT_INV_Add0~0_combout\ <= NOT \D|ContadordoAtraso|IC_2|Add0~0_combout\;
\D|Converte|ALT_INV_bcds\(10) <= NOT \D|Converte|bcds\(10);
\D|ContadordoAtraso|IC_2|ALT_INV_Qout[3]~1_combout\ <= NOT \D|ContadordoAtraso|IC_2|Qout[3]~1_combout\;
\D|Converte|ALT_INV_bcds\(7) <= NOT \D|Converte|bcds\(7);
\D|ContadordoAtraso|IC_3|ALT_INV_Add0~0_combout\ <= NOT \D|ContadordoAtraso|IC_3|Add0~0_combout\;
\D|Converte|ALT_INV_bcds\(6) <= NOT \D|Converte|bcds\(6);
\D|Converte|ALT_INV_bcds\(5) <= NOT \D|Converte|bcds\(5);
\D|ContadordoAtraso|ALT_INV_ClrN2~0_combout\ <= NOT \D|ContadordoAtraso|ClrN2~0_combout\;
\D|Converte|ALT_INV_bcds\(2) <= NOT \D|Converte|bcds\(2);
\D|Converte|ALT_INV_bcds\(1) <= NOT \D|Converte|bcds\(1);
\D|Converte|ALT_INV_bcds\(0) <= NOT \D|Converte|bcds\(0);
\D|Converte|ALT_INV_state.done~q\ <= NOT \D|Converte|state.done~q\;
\D|Converte|ALT_INV_bcds\(3) <= NOT \D|Converte|bcds\(3);
\D|ContadordoAtraso|IC_4|ALT_INV_Add0~0_combout\ <= NOT \D|ContadordoAtraso|IC_4|Add0~0_combout\;
\D|ContadordoAtraso|ALT_INV_ClrN3~0_combout\ <= NOT \D|ContadordoAtraso|ClrN3~0_combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\D|ContadordeConversao|ALT_INV_S~combout\ <= NOT \D|ContadordeConversao|S~combout\;
\D|ContadordeConversao|ALT_INV_S~2_combout\ <= NOT \D|ContadordeConversao|S~2_combout\;
\D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[2]~reg0_q\ <= NOT \D|ContadordeConversao|Contador|IC_3|Qout[2]~reg0_q\;
\D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[1]~reg0_q\ <= NOT \D|ContadordeConversao|Contador|IC_3|Qout[1]~reg0_q\;
\D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\ <= NOT \D|ContadordeConversao|Contador|IC_3|Qout[0]~reg0_q\;
\D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[3]~reg0_q\ <= NOT \D|ContadordeConversao|Contador|IC_2|Qout[3]~reg0_q\;
\D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[2]~reg0_q\ <= NOT \D|ContadordeConversao|Contador|IC_2|Qout[2]~reg0_q\;
\D|ContadordeConversao|ALT_INV_S~1_combout\ <= NOT \D|ContadordeConversao|S~1_combout\;
\D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\ <= NOT \D|ContadordeConversao|Contador|IC_2|Qout[0]~reg0_q\;
\D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\ <= NOT \D|ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\;
\D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[2]~reg0_q\ <= NOT \D|ContadordeConversao|Contador|IC_1|Qout[2]~reg0_q\;
\D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[1]~reg0_q\ <= NOT \D|ContadordeConversao|Contador|IC_1|Qout[1]~reg0_q\;
\D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\ <= NOT \D|ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\;
\D|ContadordeConversao|ALT_INV_S~0_combout\ <= NOT \D|ContadordeConversao|S~0_combout\;
\D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\ <= NOT \D|ContadordeConversao|Contador|IC_4|Qout[3]~reg0_q\;
\D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[2]~reg0_q\ <= NOT \D|ContadordeConversao|Contador|IC_4|Qout[2]~reg0_q\;
\D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[1]~reg0_q\ <= NOT \D|ContadordeConversao|Contador|IC_4|Qout[1]~reg0_q\;
\D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\ <= NOT \D|ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\;
\D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[3]~reg0_q\ <= NOT \D|ContadordeConversao|Contador|IC_3|Qout[3]~reg0_q\;
\D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[1]~reg0_q\ <= NOT \D|ContadordeConversao|Contador|IC_2|Qout[1]~reg0_q\;
\D|C|ALT_INV_Eatual.Conversao~q\ <= NOT \D|C|Eatual.Conversao~q\;
\R|ALT_INV_IQ\(15) <= NOT \R|IQ\(15);
\R|ALT_INV_IQ\(11) <= NOT \R|IQ\(11);
\R|ALT_INV_IQ\(8) <= NOT \R|IQ\(8);
\R|ALT_INV_IQ\(4) <= NOT \R|IQ\(4);
\R|ALT_INV_IQ\(3) <= NOT \R|IQ\(3);
\R|ALT_INV_process_0~0_combout\ <= NOT \R|process_0~0_combout\;
\C|ALT_INV_Eatual.Respondeu~q\ <= NOT \C|Eatual.Respondeu~q\;
\R|ALT_INV_IQ\(0) <= NOT \R|IQ\(0);
\C|ALT_INV_Selector5~0_combout\ <= NOT \C|Selector5~0_combout\;
\ALT_INV_s_demorou~combout\ <= NOT \s_demorou~combout\;
\ALT_INV_s_demorou~2_combout\ <= NOT \s_demorou~2_combout\;
\ContaDemora|IC_4|ALT_INV_Qout[2]~reg0_q\ <= NOT \ContaDemora|IC_4|Qout[2]~reg0_q\;
\ContaDemora|IC_4|ALT_INV_Qout[1]~reg0_q\ <= NOT \ContaDemora|IC_4|Qout[1]~reg0_q\;
\ALT_INV_s_demorou~1_combout\ <= NOT \s_demorou~1_combout\;
\ContaDemora|IC_3|ALT_INV_Qout[2]~reg0_q\ <= NOT \ContaDemora|IC_3|Qout[2]~reg0_q\;
\ContaDemora|IC_3|ALT_INV_Qout[1]~reg0_q\ <= NOT \ContaDemora|IC_3|Qout[1]~reg0_q\;
\ContaDemora|IC_2|ALT_INV_Qout[2]~reg0_q\ <= NOT \ContaDemora|IC_2|Qout[2]~reg0_q\;
\ContaDemora|IC_2|ALT_INV_Qout[1]~reg0_q\ <= NOT \ContaDemora|IC_2|Qout[1]~reg0_q\;
\ContaDemora|IC_1|ALT_INV_Qout[2]~reg0_q\ <= NOT \ContaDemora|IC_1|Qout[2]~reg0_q\;
\ContaDemora|IC_1|ALT_INV_Qout[1]~reg0_q\ <= NOT \ContaDemora|IC_1|Qout[1]~reg0_q\;
\ALT_INV_s_demorou~0_combout\ <= NOT \s_demorou~0_combout\;
\ContaDemora|IC_4|ALT_INV_Qout[3]~reg0_q\ <= NOT \ContaDemora|IC_4|Qout[3]~reg0_q\;
\ContaDemora|IC_4|ALT_INV_Qout[0]~reg0_q\ <= NOT \ContaDemora|IC_4|Qout[0]~reg0_q\;
\ContaDemora|ALT_INV_ClrN3~0_combout\ <= NOT \ContaDemora|ClrN3~0_combout\;
\ContaDemora|IC_1|ALT_INV_Qout[3]~reg0_q\ <= NOT \ContaDemora|IC_1|Qout[3]~reg0_q\;
\ContaDemora|IC_1|ALT_INV_Qout[0]~reg0_q\ <= NOT \ContaDemora|IC_1|Qout[0]~reg0_q\;
\ContaDemora|IC_2|ALT_INV_Qout[3]~reg0_q\ <= NOT \ContaDemora|IC_2|Qout[3]~reg0_q\;
\ContaDemora|IC_2|ALT_INV_Qout[0]~reg0_q\ <= NOT \ContaDemora|IC_2|Qout[0]~reg0_q\;
\ContaDemora|IC_3|ALT_INV_Qout[3]~reg0_q\ <= NOT \ContaDemora|IC_3|Qout[3]~reg0_q\;
\ContaDemora|IC_3|ALT_INV_Qout[0]~reg0_q\ <= NOT \ContaDemora|IC_3|Qout[0]~reg0_q\;
\C|ALT_INV_Eatual.Atraso~q\ <= NOT \C|Eatual.Atraso~q\;
\D|ALT_INV_s_sinalAtraso~5_combout\ <= NOT \D|s_sinalAtraso~5_combout\;
\D|ALT_INV_s_sinalAtraso~4_combout\ <= NOT \D|s_sinalAtraso~4_combout\;
\D|Converte|ALT_INV_bcds_out_reg\(9) <= NOT \D|Converte|bcds_out_reg\(9);
\D|ContadordoAtraso|IC_2|ALT_INV_Qout[1]~reg0_q\ <= NOT \D|ContadordoAtraso|IC_2|Qout[1]~reg0_q\;
\D|Converte|ALT_INV_bcds_out_reg\(8) <= NOT \D|Converte|bcds_out_reg\(8);
\D|ContadordoAtraso|IC_2|ALT_INV_Qout[0]~reg0_q\ <= NOT \D|ContadordoAtraso|IC_2|Qout[0]~reg0_q\;
\D|Converte|ALT_INV_bcds_out_reg\(15) <= NOT \D|Converte|bcds_out_reg\(15);
\D|ContadordoAtraso|IC_1|ALT_INV_Qout[3]~reg0_q\ <= NOT \D|ContadordoAtraso|IC_1|Qout[3]~reg0_q\;
\D|ALT_INV_s_sinalAtraso~3_combout\ <= NOT \D|s_sinalAtraso~3_combout\;
\D|Converte|ALT_INV_bcds_out_reg\(14) <= NOT \D|Converte|bcds_out_reg\(14);
\D|ContadordoAtraso|IC_1|ALT_INV_Qout[2]~reg0_q\ <= NOT \D|ContadordoAtraso|IC_1|Qout[2]~reg0_q\;
\D|Converte|ALT_INV_bcds_out_reg\(13) <= NOT \D|Converte|bcds_out_reg\(13);
\D|ContadordoAtraso|IC_1|ALT_INV_Qout[1]~reg0_q\ <= NOT \D|ContadordoAtraso|IC_1|Qout[1]~reg0_q\;
\D|Converte|ALT_INV_bcds_out_reg\(12) <= NOT \D|Converte|bcds_out_reg\(12);
\D|ContadordoAtraso|IC_1|ALT_INV_Qout[0]~reg0_q\ <= NOT \D|ContadordoAtraso|IC_1|Qout[0]~reg0_q\;
\D|ALT_INV_s_sinalAtraso~2_combout\ <= NOT \D|s_sinalAtraso~2_combout\;
\D|Converte|ALT_INV_bcds_out_reg\(4) <= NOT \D|Converte|bcds_out_reg\(4);
\D|ContadordoAtraso|IC_3|ALT_INV_Qout[0]~reg0_q\ <= NOT \D|ContadordoAtraso|IC_3|Qout[0]~reg0_q\;
\D|Converte|ALT_INV_bcds_out_reg\(11) <= NOT \D|Converte|bcds_out_reg\(11);
\D|ContadordoAtraso|IC_2|ALT_INV_Qout[3]~reg0_q\ <= NOT \D|ContadordoAtraso|IC_2|Qout[3]~reg0_q\;
\D|Converte|ALT_INV_bcds_out_reg\(10) <= NOT \D|Converte|bcds_out_reg\(10);
\D|ContadordoAtraso|IC_2|ALT_INV_Qout[2]~reg0_q\ <= NOT \D|ContadordoAtraso|IC_2|Qout[2]~reg0_q\;
\D|ALT_INV_s_sinalAtraso~1_combout\ <= NOT \D|s_sinalAtraso~1_combout\;
\D|Converte|ALT_INV_bcds_out_reg\(7) <= NOT \D|Converte|bcds_out_reg\(7);
\D|ContadordoAtraso|IC_3|ALT_INV_Qout[3]~reg0_q\ <= NOT \D|ContadordoAtraso|IC_3|Qout[3]~reg0_q\;
\D|Converte|ALT_INV_bcds_out_reg\(6) <= NOT \D|Converte|bcds_out_reg\(6);
\D|ContadordoAtraso|IC_3|ALT_INV_Qout[2]~reg0_q\ <= NOT \D|ContadordoAtraso|IC_3|Qout[2]~reg0_q\;
\D|Converte|ALT_INV_bcds_out_reg\(5) <= NOT \D|Converte|bcds_out_reg\(5);
\D|ContadordoAtraso|IC_3|ALT_INV_Qout[1]~reg0_q\ <= NOT \D|ContadordoAtraso|IC_3|Qout[1]~reg0_q\;
\D|ALT_INV_s_sinalAtraso~0_combout\ <= NOT \D|s_sinalAtraso~0_combout\;
\D|Converte|ALT_INV_bcds_out_reg\(2) <= NOT \D|Converte|bcds_out_reg\(2);
\D|ContadordoAtraso|IC_4|ALT_INV_Qout[2]~reg0_q\ <= NOT \D|ContadordoAtraso|IC_4|Qout[2]~reg0_q\;
\D|Converte|ALT_INV_bcds_out_reg\(1) <= NOT \D|Converte|bcds_out_reg\(1);
\D|ContadordoAtraso|IC_4|ALT_INV_Qout[1]~reg0_q\ <= NOT \D|ContadordoAtraso|IC_4|Qout[1]~reg0_q\;
\D|Converte|ALT_INV_bcds_out_reg\(0) <= NOT \D|Converte|bcds_out_reg\(0);
\D|ContadordoAtraso|IC_4|ALT_INV_Qout[0]~reg0_q\ <= NOT \D|ContadordoAtraso|IC_4|Qout[0]~reg0_q\;
\D|C4|ALT_INV_Equal0~0_combout\ <= NOT \D|C4|Equal0~0_combout\;
\D|Converte|ALT_INV_bcds_out_reg\(3) <= NOT \D|Converte|bcds_out_reg\(3);
\D|ContadordoAtraso|IC_4|ALT_INV_Qout[3]~reg0_q\ <= NOT \D|ContadordoAtraso|IC_4|Qout[3]~reg0_q\;
\D|C|ALT_INV_Eatual.Contando~q\ <= NOT \D|C|Eatual.Contando~q\;
\C|ALT_INV_WideNor2~0_combout\ <= NOT \C|WideNor2~0_combout\;
\C|ALT_INV_Eatual.Afobado~q\ <= NOT \C|Eatual.Afobado~q\;
\C|ALT_INV_Eatual.Demorado~q\ <= NOT \C|Eatual.Demorado~q\;
\C|ALT_INV_Eatual.Aguarda~q\ <= NOT \C|Eatual.Aguarda~q\;
\D|Registrador|ALT_INV_IQ\(14) <= NOT \D|Registrador|IQ\(14);
\D|Converte|ALT_INV_binary\(0) <= NOT \D|Converte|binary\(0);
\D|Converte|ALT_INV_binary\(1) <= NOT \D|Converte|binary\(1);
\D|Converte|ALT_INV_binary\(2) <= NOT \D|Converte|binary\(2);
\D|Converte|ALT_INV_binary\(3) <= NOT \D|Converte|binary\(3);
\D|Converte|ALT_INV_binary\(4) <= NOT \D|Converte|binary\(4);
\D|Converte|ALT_INV_binary\(5) <= NOT \D|Converte|binary\(5);
\D|Converte|ALT_INV_binary\(6) <= NOT \D|Converte|binary\(6);
\D|Converte|ALT_INV_binary\(7) <= NOT \D|Converte|binary\(7);
\D|Converte|ALT_INV_binary\(8) <= NOT \D|Converte|binary\(8);
\D|Converte|ALT_INV_binary\(9) <= NOT \D|Converte|binary\(9);
\D|Converte|ALT_INV_binary\(10) <= NOT \D|Converte|binary\(10);
\D|Converte|ALT_INV_binary\(11) <= NOT \D|Converte|binary\(11);
\D|Converte|ALT_INV_binary\(12) <= NOT \D|Converte|binary\(12);
\Medicao|R1|ALT_INV_IQ\(14) <= NOT \Medicao|R1|IQ\(14);
\Medicao|R1|ALT_INV_IQ\(10) <= NOT \Medicao|R1|IQ\(10);
\Medicao|R1|ALT_INV_IQ\(5) <= NOT \Medicao|R1|IQ\(5);
\D|Converte|ALT_INV_binary\(13) <= NOT \D|Converte|binary\(13);
\R|ALT_INV_IQ\(13) <= NOT \R|IQ\(13);
\R|ALT_INV_IQ\(10) <= NOT \R|IQ\(10);
\R|ALT_INV_IQ\(5) <= NOT \R|IQ\(5);
\R|ALT_INV_IQ\(2) <= NOT \R|IQ\(2);

-- Location: IOOBUF_X89_Y36_N39
\aguardando~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C|Eatual.Aguarda~q\,
	devoe => ww_devoe,
	o => ww_aguardando);

-- Location: IOOBUF_X84_Y81_N53
\erro~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C|ALT_INV_WideNor2~0_combout\,
	devoe => ww_devoe,
	o => ww_erro);

-- Location: IOOBUF_X89_Y38_N22
\pulso[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R|Q\(0),
	devoe => ww_devoe,
	o => ww_pulso(0));

-- Location: IOOBUF_X89_Y9_N56
\pulso[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R|Q\(1),
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
	i => \R|Q\(2),
	devoe => ww_devoe,
	o => ww_pulso(2));

-- Location: IOOBUF_X89_Y9_N5
\pulso[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R|Q\(3),
	devoe => ww_devoe,
	o => ww_pulso(3));

-- Location: IOOBUF_X89_Y38_N5
\pulso[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R|Q\(4),
	devoe => ww_devoe,
	o => ww_pulso(4));

-- Location: IOOBUF_X89_Y37_N56
\pulso[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R|Q\(5),
	devoe => ww_devoe,
	o => ww_pulso(5));

-- Location: IOOBUF_X89_Y37_N39
\pulso[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R|Q\(6),
	devoe => ww_devoe,
	o => ww_pulso(6));

-- Location: IOOBUF_X89_Y36_N5
\pulso[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R|Q\(7),
	devoe => ww_devoe,
	o => ww_pulso(7));

-- Location: IOOBUF_X89_Y38_N56
\pulso[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R|Q\(8),
	devoe => ww_devoe,
	o => ww_pulso(8));

-- Location: IOOBUF_X86_Y81_N19
\pulso[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R|Q\(9),
	devoe => ww_devoe,
	o => ww_pulso(9));

-- Location: IOOBUF_X89_Y35_N96
\pulso[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R|Q\(10),
	devoe => ww_devoe,
	o => ww_pulso(10));

-- Location: IOOBUF_X89_Y37_N5
\pulso[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R|Q\(11),
	devoe => ww_devoe,
	o => ww_pulso(11));

-- Location: IOOBUF_X89_Y35_N79
\pulso[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R|Q\(12),
	devoe => ww_devoe,
	o => ww_pulso(12));

-- Location: IOOBUF_X89_Y36_N56
\pulso[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R|Q\(13),
	devoe => ww_devoe,
	o => ww_pulso(13));

-- Location: IOOBUF_X84_Y81_N2
\pulso[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R|Q\(14),
	devoe => ww_devoe,
	o => ww_pulso(14));

-- Location: IOOBUF_X89_Y38_N39
\pulso[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \R|Q\(15),
	devoe => ww_devoe,
	o => ww_pulso(15));

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

-- Location: IOIBUF_X82_Y81_N75
\resposta~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resposta,
	o => \resposta~input_o\);

-- Location: IOIBUF_X89_Y36_N21
\rodada~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rodada,
	o => \rodada~input_o\);

-- Location: IOIBUF_X89_Y9_N21
\finalizaRodada~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_finalizaRodada,
	o => \finalizaRodada~input_o\);

-- Location: LABCELL_X83_Y34_N51
\D|Converte|state.start~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|state.start~0_combout\ = ( !\D|Converte|state.done~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \D|Converte|ALT_INV_state.done~q\,
	combout => \D|Converte|state.start~0_combout\);

-- Location: FF_X83_Y34_N25
\D|Converte|state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|Converte|state.start~0_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|state.start~q\);

-- Location: FF_X83_Y34_N16
\D|Converte|shift_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|Selector34~0_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|shift_counter\(1));

-- Location: LABCELL_X83_Y34_N15
\D|Converte|Selector34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|Selector34~0_combout\ = ( \D|Converte|shift_counter\(0) & ( (!\D|Converte|shift_counter\(1) & ((\D|Converte|state.shift~q\))) # (\D|Converte|shift_counter\(1) & (\D|Converte|state.done~q\)) ) ) # ( !\D|Converte|shift_counter\(0) & ( 
-- (\D|Converte|shift_counter\(1) & ((\D|Converte|state.shift~q\) # (\D|Converte|state.done~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|Converte|ALT_INV_state.done~q\,
	datac => \D|Converte|ALT_INV_state.shift~q\,
	datad => \D|Converte|ALT_INV_shift_counter\(1),
	dataf => \D|Converte|ALT_INV_shift_counter\(0),
	combout => \D|Converte|Selector34~0_combout\);

-- Location: FF_X83_Y34_N17
\D|Converte|shift_counter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|Selector34~0_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|shift_counter[1]~DUPLICATE_q\);

-- Location: FF_X83_Y34_N8
\D|Converte|shift_counter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|Selector35~0_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|shift_counter[0]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y34_N12
\D|Converte|Selector33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|Selector33~0_combout\ = ( \D|Converte|shift_counter\(1) & ( (!\D|Converte|shift_counter\(2) & (((\D|Converte|shift_counter[0]~DUPLICATE_q\ & \D|Converte|state.shift~q\)))) # (\D|Converte|shift_counter\(2) & 
-- (((!\D|Converte|shift_counter[0]~DUPLICATE_q\ & \D|Converte|state.shift~q\)) # (\D|Converte|state.done~q\))) ) ) # ( !\D|Converte|shift_counter\(1) & ( (\D|Converte|shift_counter\(2) & ((\D|Converte|state.shift~q\) # (\D|Converte|state.done~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100000011010111010000001101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|Converte|ALT_INV_state.done~q\,
	datab => \D|Converte|ALT_INV_shift_counter[0]~DUPLICATE_q\,
	datac => \D|Converte|ALT_INV_state.shift~q\,
	datad => \D|Converte|ALT_INV_shift_counter\(2),
	dataf => \D|Converte|ALT_INV_shift_counter\(1),
	combout => \D|Converte|Selector33~0_combout\);

-- Location: FF_X83_Y34_N13
\D|Converte|shift_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|Selector33~0_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|shift_counter\(2));

-- Location: LABCELL_X83_Y34_N42
\D|Converte|Selector32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|Selector32~0_combout\ = ( \D|Converte|shift_counter\(3) & ( \D|Converte|shift_counter\(2) & ( ((\D|Converte|state.shift~q\ & ((!\D|Converte|shift_counter[0]~DUPLICATE_q\) # (!\D|Converte|shift_counter[1]~DUPLICATE_q\)))) # 
-- (\D|Converte|state.done~q\) ) ) ) # ( !\D|Converte|shift_counter\(3) & ( \D|Converte|shift_counter\(2) & ( (\D|Converte|shift_counter[0]~DUPLICATE_q\ & (\D|Converte|state.shift~q\ & \D|Converte|shift_counter[1]~DUPLICATE_q\)) ) ) ) # ( 
-- \D|Converte|shift_counter\(3) & ( !\D|Converte|shift_counter\(2) & ( (\D|Converte|state.shift~q\) # (\D|Converte|state.done~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111110101111100000000000000110101111101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|Converte|ALT_INV_state.done~q\,
	datab => \D|Converte|ALT_INV_shift_counter[0]~DUPLICATE_q\,
	datac => \D|Converte|ALT_INV_state.shift~q\,
	datad => \D|Converte|ALT_INV_shift_counter[1]~DUPLICATE_q\,
	datae => \D|Converte|ALT_INV_shift_counter\(3),
	dataf => \D|Converte|ALT_INV_shift_counter\(2),
	combout => \D|Converte|Selector32~0_combout\);

-- Location: FF_X83_Y34_N43
\D|Converte|shift_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|Selector32~0_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|shift_counter\(3));

-- Location: FF_X83_Y34_N14
\D|Converte|shift_counter[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|Selector33~0_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|shift_counter[2]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y34_N18
\D|Converte|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|Selector1~0_combout\ = ( \D|Converte|shift_counter[2]~DUPLICATE_q\ & ( (\D|Converte|state.shift~q\ & ((!\D|Converte|shift_counter[1]~DUPLICATE_q\) # ((!\D|Converte|shift_counter\(3)) # (\D|Converte|shift_counter\(0))))) ) ) # ( 
-- !\D|Converte|shift_counter[2]~DUPLICATE_q\ & ( \D|Converte|state.shift~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010001010101010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|Converte|ALT_INV_state.shift~q\,
	datab => \D|Converte|ALT_INV_shift_counter[1]~DUPLICATE_q\,
	datac => \D|Converte|ALT_INV_shift_counter\(0),
	datad => \D|Converte|ALT_INV_shift_counter\(3),
	dataf => \D|Converte|ALT_INV_shift_counter[2]~DUPLICATE_q\,
	combout => \D|Converte|Selector1~0_combout\);

-- Location: LABCELL_X83_Y34_N57
\D|Converte|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|Selector1~1_combout\ = ( \D|Converte|Selector1~0_combout\ ) # ( !\D|Converte|Selector1~0_combout\ & ( !\D|Converte|state.start~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \D|Converte|ALT_INV_state.start~q\,
	dataf => \D|Converte|ALT_INV_Selector1~0_combout\,
	combout => \D|Converte|Selector1~1_combout\);

-- Location: FF_X83_Y34_N59
\D|Converte|state.shift\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|Selector1~1_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|state.shift~q\);

-- Location: LABCELL_X83_Y36_N9
\D|Converte|state_next.done~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|state_next.done~0_combout\ = ( !\D|Converte|shift_counter\(0) & ( \D|Converte|shift_counter\(3) & ( (\D|Converte|state.shift~q\ & (\D|Converte|shift_counter\(2) & \D|Converte|shift_counter\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|Converte|ALT_INV_state.shift~q\,
	datab => \D|Converte|ALT_INV_shift_counter\(2),
	datad => \D|Converte|ALT_INV_shift_counter\(1),
	datae => \D|Converte|ALT_INV_shift_counter\(0),
	dataf => \D|Converte|ALT_INV_shift_counter\(3),
	combout => \D|Converte|state_next.done~0_combout\);

-- Location: FF_X83_Y36_N11
\D|Converte|state.done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|state_next.done~0_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|state.done~q\);

-- Location: LABCELL_X83_Y34_N6
\D|Converte|Selector35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|Selector35~0_combout\ = ( \D|Converte|Selector1~0_combout\ & ( (!\D|Converte|shift_counter\(0)) # (\D|Converte|state.done~q\) ) ) # ( !\D|Converte|Selector1~0_combout\ & ( (\D|Converte|state.done~q\ & \D|Converte|shift_counter\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \D|Converte|ALT_INV_state.done~q\,
	datad => \D|Converte|ALT_INV_shift_counter\(0),
	dataf => \D|Converte|ALT_INV_Selector1~0_combout\,
	combout => \D|Converte|Selector35~0_combout\);

-- Location: FF_X83_Y34_N7
\D|Converte|shift_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|Selector35~0_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|shift_counter\(0));

-- Location: LABCELL_X83_Y36_N51
\D|Converte|binary_next~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|binary_next~0_combout\ = ( \D|Converte|binary\(0) & ( \D|Converte|shift_counter\(3) & ( (!\D|Converte|shift_counter\(0) & (\D|Converte|shift_counter\(2) & \D|Converte|shift_counter\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|Converte|ALT_INV_shift_counter\(0),
	datac => \D|Converte|ALT_INV_shift_counter\(2),
	datad => \D|Converte|ALT_INV_shift_counter\(1),
	datae => \D|Converte|ALT_INV_binary\(0),
	dataf => \D|Converte|ALT_INV_shift_counter\(3),
	combout => \D|Converte|binary_next~0_combout\);

-- Location: LABCELL_X85_Y34_N57
\D|geraSeed|IC_1|Qout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|geraSeed|IC_1|Qout~1_combout\ = ( !\D|geraSeed|IC_1|Qout[0]~reg0_q\ & ( !\comb~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000010101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datae => \D|geraSeed|IC_1|ALT_INV_Qout[0]~reg0_q\,
	combout => \D|geraSeed|IC_1|Qout~1_combout\);

-- Location: FF_X85_Y34_N59
\D|geraSeed|IC_1|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|geraSeed|IC_1|Qout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|geraSeed|IC_1|Qout[0]~reg0_q\);

-- Location: MLABCELL_X82_Y35_N0
\D|C|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|C|Selector0~0_combout\ = ( \C|Eatual.Atraso~q\ & ( !\D|C|Eatual.Fim~q\ ) ) # ( !\C|Eatual.Atraso~q\ & ( (!\D|C|Eatual.Fim~q\ & \D|C|Eatual.Inicial~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \D|C|ALT_INV_Eatual.Fim~q\,
	datad => \D|C|ALT_INV_Eatual.Inicial~q\,
	dataf => \C|ALT_INV_Eatual.Atraso~q\,
	combout => \D|C|Selector0~0_combout\);

-- Location: FF_X82_Y35_N1
\D|C|Eatual.Inicial\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|C|Selector0~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|C|Eatual.Inicial~q\);

-- Location: MLABCELL_X82_Y35_N39
\D|C|Eprox.RegistraSeed1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|C|Eprox.RegistraSeed1~0_combout\ = ( \C|Eatual.Atraso~q\ & ( !\D|C|Eatual.Inicial~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D|C|ALT_INV_Eatual.Inicial~q\,
	dataf => \C|ALT_INV_Eatual.Atraso~q\,
	combout => \D|C|Eprox.RegistraSeed1~0_combout\);

-- Location: FF_X82_Y35_N41
\D|C|Eatual.RegistraSeed1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|C|Eprox.RegistraSeed1~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|C|Eatual.RegistraSeed1~q\);

-- Location: FF_X82_Y35_N20
\D|C|Eatual.RegistraSeed2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|C|Eatual.RegistraSeed1~q\,
	clrn => \ALT_INV_comb~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|C|Eatual.RegistraSeed2~q\);

-- Location: MLABCELL_X82_Y35_N57
\D|Registrador|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Registrador|process_0~0_combout\ = ( \D|comb~0_combout\ ) # ( !\D|comb~0_combout\ & ( (\D|C|Eatual.RegistraSeed1~q\) # (\D|C|Eatual.RegistraSeed2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|C|ALT_INV_Eatual.RegistraSeed2~q\,
	datac => \D|C|ALT_INV_Eatual.RegistraSeed1~q\,
	dataf => \D|ALT_INV_comb~0_combout\,
	combout => \D|Registrador|process_0~0_combout\);

-- Location: FF_X82_Y35_N13
\D|Registrador|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|geraSeed|IC_1|Qout[0]~reg0_q\,
	sclr => \D|comb~0_combout\,
	sload => VCC,
	ena => \D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Registrador|IQ\(0));

-- Location: FF_X82_Y36_N26
\D|Registrador|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|Registrador|IQ\(0),
	sload => VCC,
	ena => \D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Registrador|Q\(0));

-- Location: LABCELL_X85_Y34_N12
\D|geraSeed|IC_3|Qout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|geraSeed|IC_3|Qout~2_combout\ = (!\comb~0_combout\ & !\D|geraSeed|IC_3|Qout[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datad => \D|geraSeed|IC_3|ALT_INV_Qout[0]~reg0_q\,
	combout => \D|geraSeed|IC_3|Qout~2_combout\);

-- Location: IOIBUF_X89_Y35_N44
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: MLABCELL_X82_Y35_N54
\C|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C|Selector5~0_combout\ = ( \C|Eatual.Atraso~q\ & ( \resposta~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_resposta~input_o\,
	dataf => \C|ALT_INV_Eatual.Atraso~q\,
	combout => \C|Selector5~0_combout\);

-- Location: LABCELL_X83_Y35_N12
\C|Selector5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C|Selector5~1_combout\ = ( \C|Eatual.Afobado~q\ & ( \D|s_sinalAtraso~5_combout\ & ( ((!\finalizaRodada~input_o\) # ((\D|C|Eatual.Contando~DUPLICATE_q\) # (\s_demorou~combout\))) # (\C|Selector5~0_combout\) ) ) ) # ( !\C|Eatual.Afobado~q\ & ( 
-- \D|s_sinalAtraso~5_combout\ & ( (\C|Selector5~0_combout\ & !\s_demorou~combout\) ) ) ) # ( \C|Eatual.Afobado~q\ & ( !\D|s_sinalAtraso~5_combout\ & ( ((!\finalizaRodada~input_o\) # (\s_demorou~combout\)) # (\C|Selector5~0_combout\) ) ) ) # ( 
-- !\C|Eatual.Afobado~q\ & ( !\D|s_sinalAtraso~5_combout\ & ( (\C|Selector5~0_combout\ & !\s_demorou~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000110111111101111101010000010100001101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C|ALT_INV_Selector5~0_combout\,
	datab => \ALT_INV_finalizaRodada~input_o\,
	datac => \ALT_INV_s_demorou~combout\,
	datad => \D|C|ALT_INV_Eatual.Contando~DUPLICATE_q\,
	datae => \C|ALT_INV_Eatual.Afobado~q\,
	dataf => \D|ALT_INV_s_sinalAtraso~5_combout\,
	combout => \C|Selector5~1_combout\);

-- Location: FF_X83_Y35_N14
\C|Eatual.Afobado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \C|Selector5~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|Eatual.Afobado~q\);

-- Location: MLABCELL_X84_Y34_N12
\D|geraSeed|IC_1|Qout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|geraSeed|IC_1|Qout[0]~0_combout\ = ( \C|Eatual.Respondeu~q\ & ( \C|Eatual.Afobado~q\ ) ) # ( !\C|Eatual.Respondeu~q\ & ( \C|Eatual.Afobado~q\ ) ) # ( \C|Eatual.Respondeu~q\ & ( !\C|Eatual.Afobado~q\ ) ) # ( !\C|Eatual.Respondeu~q\ & ( 
-- !\C|Eatual.Afobado~q\ & ( (((\D|geraSeed|IC_1|Qout[0]~reg0_q\ & \D|geraSeed|IC_1|Qout[3]~reg0_q\)) # (\C|Eatual.Demorado~q\)) # (\reset~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \D|geraSeed|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datac => \C|ALT_INV_Eatual.Demorado~q\,
	datad => \D|geraSeed|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datae => \C|ALT_INV_Eatual.Respondeu~q\,
	dataf => \C|ALT_INV_Eatual.Afobado~q\,
	combout => \D|geraSeed|IC_1|Qout[0]~0_combout\);

-- Location: LABCELL_X85_Y34_N51
\D|geraSeed|IC_1|Qout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|geraSeed|IC_1|Qout~2_combout\ = ( !\D|geraSeed|IC_1|Qout[0]~0_combout\ & ( !\D|geraSeed|IC_1|Qout[0]~reg0_q\ $ (!\D|geraSeed|IC_1|Qout[1]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \D|geraSeed|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datad => \D|geraSeed|IC_1|ALT_INV_Qout[1]~reg0_q\,
	dataf => \D|geraSeed|IC_1|ALT_INV_Qout[0]~0_combout\,
	combout => \D|geraSeed|IC_1|Qout~2_combout\);

-- Location: FF_X85_Y34_N53
\D|geraSeed|IC_1|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|geraSeed|IC_1|Qout~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|geraSeed|IC_1|Qout[1]~reg0_q\);

-- Location: LABCELL_X85_Y34_N42
\D|geraSeed|IC_1|Qout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|geraSeed|IC_1|Qout~3_combout\ = ( \D|geraSeed|IC_1|Qout[2]~reg0_q\ & ( !\D|geraSeed|IC_1|Qout[0]~0_combout\ & ( (!\D|geraSeed|IC_1|Qout[1]~reg0_q\) # (!\D|geraSeed|IC_1|Qout[0]~reg0_q\) ) ) ) # ( !\D|geraSeed|IC_1|Qout[2]~reg0_q\ & ( 
-- !\D|geraSeed|IC_1|Qout[0]~0_combout\ & ( (\D|geraSeed|IC_1|Qout[1]~reg0_q\ & \D|geraSeed|IC_1|Qout[0]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001111011101110111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|geraSeed|IC_1|ALT_INV_Qout[1]~reg0_q\,
	datab => \D|geraSeed|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datae => \D|geraSeed|IC_1|ALT_INV_Qout[2]~reg0_q\,
	dataf => \D|geraSeed|IC_1|ALT_INV_Qout[0]~0_combout\,
	combout => \D|geraSeed|IC_1|Qout~3_combout\);

-- Location: FF_X85_Y34_N44
\D|geraSeed|IC_1|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|geraSeed|IC_1|Qout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|geraSeed|IC_1|Qout[2]~reg0_q\);

-- Location: LABCELL_X85_Y34_N48
\D|geraSeed|IC_1|Qout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|geraSeed|IC_1|Qout~4_combout\ = ( \D|geraSeed|IC_1|Qout[2]~reg0_q\ & ( (!\comb~0_combout\ & ((!\D|geraSeed|IC_1|Qout[0]~reg0_q\ & ((\D|geraSeed|IC_1|Qout[3]~reg0_q\))) # (\D|geraSeed|IC_1|Qout[0]~reg0_q\ & (\D|geraSeed|IC_1|Qout[1]~reg0_q\ & 
-- !\D|geraSeed|IC_1|Qout[3]~reg0_q\)))) ) ) # ( !\D|geraSeed|IC_1|Qout[2]~reg0_q\ & ( (!\comb~0_combout\ & (!\D|geraSeed|IC_1|Qout[0]~reg0_q\ & \D|geraSeed|IC_1|Qout[3]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000000010100010000000001010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \D|geraSeed|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datac => \D|geraSeed|IC_1|ALT_INV_Qout[1]~reg0_q\,
	datad => \D|geraSeed|IC_1|ALT_INV_Qout[3]~reg0_q\,
	dataf => \D|geraSeed|IC_1|ALT_INV_Qout[2]~reg0_q\,
	combout => \D|geraSeed|IC_1|Qout~4_combout\);

-- Location: FF_X85_Y34_N50
\D|geraSeed|IC_1|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|geraSeed|IC_1|Qout~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|geraSeed|IC_1|Qout[3]~reg0_q\);

-- Location: MLABCELL_X84_Y34_N51
\D|geraSeed|ClrN1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|geraSeed|ClrN1~combout\ = ( \D|geraSeed|IC_1|Qout[3]~reg0_q\ & ( \D|geraSeed|IC_1|Qout[0]~reg0_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \D|geraSeed|IC_1|ALT_INV_Qout[3]~reg0_q\,
	dataf => \D|geraSeed|IC_1|ALT_INV_Qout[0]~reg0_q\,
	combout => \D|geraSeed|ClrN1~combout\);

-- Location: MLABCELL_X84_Y34_N42
\D|geraSeed|IC_2|Qout[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|geraSeed|IC_2|Qout[0]~2_combout\ = ( !\D|geraSeed|IC_2|Qout[0]~reg0_q\ & ( \D|geraSeed|ClrN1~combout\ & ( !\comb~0_combout\ ) ) ) # ( \D|geraSeed|IC_2|Qout[0]~reg0_q\ & ( !\D|geraSeed|ClrN1~combout\ & ( !\comb~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110011001100110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_comb~0_combout\,
	datae => \D|geraSeed|IC_2|ALT_INV_Qout[0]~reg0_q\,
	dataf => \D|geraSeed|ALT_INV_ClrN1~combout\,
	combout => \D|geraSeed|IC_2|Qout[0]~2_combout\);

-- Location: FF_X84_Y34_N44
\D|geraSeed|IC_2|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|geraSeed|IC_2|Qout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|geraSeed|IC_2|Qout[0]~reg0_q\);

-- Location: MLABCELL_X84_Y34_N33
\D|geraSeed|IC_2|Qout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|geraSeed|IC_2|Qout~3_combout\ = ( \D|geraSeed|IC_2|Qout[1]~reg0_q\ & ( !\D|geraSeed|ClrN2~0_combout\ & ( (!\comb~0_combout\ & !\D|geraSeed|IC_2|Qout[0]~reg0_q\) ) ) ) # ( !\D|geraSeed|IC_2|Qout[1]~reg0_q\ & ( !\D|geraSeed|ClrN2~0_combout\ & ( 
-- (!\comb~0_combout\ & \D|geraSeed|IC_2|Qout[0]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_comb~0_combout\,
	datac => \D|geraSeed|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datae => \D|geraSeed|IC_2|ALT_INV_Qout[1]~reg0_q\,
	dataf => \D|geraSeed|ALT_INV_ClrN2~0_combout\,
	combout => \D|geraSeed|IC_2|Qout~3_combout\);

-- Location: FF_X84_Y34_N35
\D|geraSeed|IC_2|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|geraSeed|IC_2|Qout~3_combout\,
	ena => \D|geraSeed|IC_1|Qout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|geraSeed|IC_2|Qout[1]~reg0_q\);

-- Location: MLABCELL_X84_Y34_N6
\D|geraSeed|IC_2|Qout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|geraSeed|IC_2|Qout~4_combout\ = ( \D|geraSeed|IC_2|Qout[2]~reg0_q\ & ( !\D|geraSeed|ClrN2~0_combout\ & ( (!\comb~0_combout\ & ((!\D|geraSeed|IC_2|Qout[1]~reg0_q\) # (!\D|geraSeed|IC_2|Qout[0]~reg0_q\))) ) ) ) # ( !\D|geraSeed|IC_2|Qout[2]~reg0_q\ & ( 
-- !\D|geraSeed|ClrN2~0_combout\ & ( (!\comb~0_combout\ & (\D|geraSeed|IC_2|Qout[1]~reg0_q\ & \D|geraSeed|IC_2|Qout[0]~reg0_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100110011001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_comb~0_combout\,
	datac => \D|geraSeed|IC_2|ALT_INV_Qout[1]~reg0_q\,
	datad => \D|geraSeed|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datae => \D|geraSeed|IC_2|ALT_INV_Qout[2]~reg0_q\,
	dataf => \D|geraSeed|ALT_INV_ClrN2~0_combout\,
	combout => \D|geraSeed|IC_2|Qout~4_combout\);

-- Location: FF_X84_Y34_N8
\D|geraSeed|IC_2|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|geraSeed|IC_2|Qout~4_combout\,
	ena => \D|geraSeed|IC_1|Qout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|geraSeed|IC_2|Qout[2]~reg0_q\);

-- Location: MLABCELL_X84_Y34_N36
\D|geraSeed|IC_2|Qout[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|geraSeed|IC_2|Qout[3]~1_combout\ = ( \D|geraSeed|IC_2|Qout[3]~reg0_q\ & ( \D|geraSeed|IC_2|Qout[0]~reg0_q\ & ( (!\D|geraSeed|ClrN1~combout\ & !\comb~0_combout\) ) ) ) # ( !\D|geraSeed|IC_2|Qout[3]~reg0_q\ & ( \D|geraSeed|IC_2|Qout[0]~reg0_q\ & ( 
-- (\D|geraSeed|ClrN1~combout\ & (!\comb~0_combout\ & (\D|geraSeed|IC_2|Qout[1]~reg0_q\ & \D|geraSeed|IC_2|Qout[2]~reg0_q\))) ) ) ) # ( \D|geraSeed|IC_2|Qout[3]~reg0_q\ & ( !\D|geraSeed|IC_2|Qout[0]~reg0_q\ & ( !\comb~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000001001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|geraSeed|ALT_INV_ClrN1~combout\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \D|geraSeed|IC_2|ALT_INV_Qout[1]~reg0_q\,
	datad => \D|geraSeed|IC_2|ALT_INV_Qout[2]~reg0_q\,
	datae => \D|geraSeed|IC_2|ALT_INV_Qout[3]~reg0_q\,
	dataf => \D|geraSeed|IC_2|ALT_INV_Qout[0]~reg0_q\,
	combout => \D|geraSeed|IC_2|Qout[3]~1_combout\);

-- Location: FF_X84_Y34_N38
\D|geraSeed|IC_2|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|geraSeed|IC_2|Qout[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|geraSeed|IC_2|Qout[3]~reg0_q\);

-- Location: MLABCELL_X84_Y34_N27
\D|geraSeed|ClrN2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|geraSeed|ClrN2~0_combout\ = ( \D|geraSeed|IC_1|Qout[0]~reg0_q\ & ( \D|geraSeed|IC_1|Qout[3]~reg0_q\ & ( (\D|geraSeed|IC_2|Qout[0]~reg0_q\ & \D|geraSeed|IC_2|Qout[3]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \D|geraSeed|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datad => \D|geraSeed|IC_2|ALT_INV_Qout[3]~reg0_q\,
	datae => \D|geraSeed|IC_1|ALT_INV_Qout[0]~reg0_q\,
	dataf => \D|geraSeed|IC_1|ALT_INV_Qout[3]~reg0_q\,
	combout => \D|geraSeed|ClrN2~0_combout\);

-- Location: LABCELL_X85_Y34_N9
\D|geraSeed|IC_2|Qout[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|geraSeed|IC_2|Qout[1]~0_combout\ = ( \R|process_0~0_combout\ & ( (\D|geraSeed|ClrN2~0_combout\) # (\reset~input_o\) ) ) # ( !\R|process_0~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	datad => \D|geraSeed|ALT_INV_ClrN2~0_combout\,
	dataf => \R|ALT_INV_process_0~0_combout\,
	combout => \D|geraSeed|IC_2|Qout[1]~0_combout\);

-- Location: FF_X85_Y34_N14
\D|geraSeed|IC_3|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|geraSeed|IC_3|Qout~2_combout\,
	ena => \D|geraSeed|IC_2|Qout[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|geraSeed|IC_3|Qout[0]~reg0_q\);

-- Location: LABCELL_X85_Y34_N24
\D|geraSeed|ClrN4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|geraSeed|ClrN4~0_combout\ = ( \D|geraSeed|IC_2|Qout[0]~reg0_q\ & ( \D|geraSeed|IC_3|Qout[0]~reg0_q\ & ( (\D|geraSeed|IC_1|Qout[3]~reg0_q\ & (\D|geraSeed|IC_3|Qout[3]~reg0_q\ & (\D|geraSeed|IC_2|Qout[3]~reg0_q\ & \D|geraSeed|IC_1|Qout[0]~reg0_q\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|geraSeed|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datab => \D|geraSeed|IC_3|ALT_INV_Qout[3]~reg0_q\,
	datac => \D|geraSeed|IC_2|ALT_INV_Qout[3]~reg0_q\,
	datad => \D|geraSeed|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datae => \D|geraSeed|IC_2|ALT_INV_Qout[0]~reg0_q\,
	dataf => \D|geraSeed|IC_3|ALT_INV_Qout[0]~reg0_q\,
	combout => \D|geraSeed|ClrN4~0_combout\);

-- Location: LABCELL_X85_Y34_N15
\D|geraSeed|IC_3|Qout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|geraSeed|IC_3|Qout~3_combout\ = ( !\D|geraSeed|ClrN4~0_combout\ & ( (!\comb~0_combout\ & (!\D|geraSeed|IC_3|Qout[0]~reg0_q\ $ (!\D|geraSeed|IC_3|Qout[1]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000010101010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datac => \D|geraSeed|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datad => \D|geraSeed|IC_3|ALT_INV_Qout[1]~reg0_q\,
	dataf => \D|geraSeed|ALT_INV_ClrN4~0_combout\,
	combout => \D|geraSeed|IC_3|Qout~3_combout\);

-- Location: FF_X85_Y34_N17
\D|geraSeed|IC_3|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|geraSeed|IC_3|Qout~3_combout\,
	ena => \D|geraSeed|IC_2|Qout[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|geraSeed|IC_3|Qout[1]~reg0_q\);

-- Location: LABCELL_X85_Y34_N6
\D|geraSeed|IC_3|Qout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|geraSeed|IC_3|Qout~0_combout\ = ( !\D|geraSeed|ClrN4~0_combout\ & ( (!\comb~0_combout\ & (!\D|geraSeed|IC_3|Qout[2]~reg0_q\ $ (((!\D|geraSeed|IC_3|Qout[1]~reg0_q\) # (!\D|geraSeed|IC_3|Qout[0]~reg0_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010101000000000101010100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \D|geraSeed|IC_3|ALT_INV_Qout[1]~reg0_q\,
	datac => \D|geraSeed|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datad => \D|geraSeed|IC_3|ALT_INV_Qout[2]~reg0_q\,
	dataf => \D|geraSeed|ALT_INV_ClrN4~0_combout\,
	combout => \D|geraSeed|IC_3|Qout~0_combout\);

-- Location: FF_X85_Y34_N8
\D|geraSeed|IC_3|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|geraSeed|IC_3|Qout~0_combout\,
	ena => \D|geraSeed|IC_2|Qout[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|geraSeed|IC_3|Qout[2]~reg0_q\);

-- Location: LABCELL_X85_Y34_N30
\D|geraSeed|IC_3|Qout[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|geraSeed|IC_3|Qout[3]~1_combout\ = ( \D|geraSeed|IC_3|Qout[3]~reg0_q\ & ( \D|geraSeed|IC_3|Qout[0]~reg0_q\ & ( (!\comb~0_combout\ & !\D|geraSeed|ClrN2~0_combout\) ) ) ) # ( !\D|geraSeed|IC_3|Qout[3]~reg0_q\ & ( \D|geraSeed|IC_3|Qout[0]~reg0_q\ & ( 
-- (!\comb~0_combout\ & (\D|geraSeed|IC_3|Qout[1]~reg0_q\ & (\D|geraSeed|ClrN2~0_combout\ & \D|geraSeed|IC_3|Qout[2]~reg0_q\))) ) ) ) # ( \D|geraSeed|IC_3|Qout[3]~reg0_q\ & ( !\D|geraSeed|IC_3|Qout[0]~reg0_q\ & ( !\comb~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000101010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \D|geraSeed|IC_3|ALT_INV_Qout[1]~reg0_q\,
	datac => \D|geraSeed|ALT_INV_ClrN2~0_combout\,
	datad => \D|geraSeed|IC_3|ALT_INV_Qout[2]~reg0_q\,
	datae => \D|geraSeed|IC_3|ALT_INV_Qout[3]~reg0_q\,
	dataf => \D|geraSeed|IC_3|ALT_INV_Qout[0]~reg0_q\,
	combout => \D|geraSeed|IC_3|Qout[3]~1_combout\);

-- Location: FF_X85_Y34_N32
\D|geraSeed|IC_3|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|geraSeed|IC_3|Qout[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|geraSeed|IC_3|Qout[3]~reg0_q\);

-- Location: FF_X81_Y36_N53
\D|Registrador|IQ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|geraSeed|IC_3|Qout[3]~reg0_q\,
	sclr => \D|comb~0_combout\,
	sload => VCC,
	ena => \D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Registrador|IQ\(11));

-- Location: FF_X81_Y36_N29
\D|Registrador|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|Registrador|IQ\(11),
	sload => VCC,
	ena => \D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Registrador|Q\(11));

-- Location: LABCELL_X81_Y36_N45
\D|PSEUDORANDOM|count[11]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[11]~9_combout\ = ( \D|comb~0_combout\ & ( \D|Registrador|Q\(11) ) ) # ( !\D|comb~0_combout\ & ( \D|PSEUDORANDOM|count[11]~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|Registrador|ALT_INV_Q\(11),
	datac => \D|PSEUDORANDOM|ALT_INV_count[11]~9_combout\,
	dataf => \D|ALT_INV_comb~0_combout\,
	combout => \D|PSEUDORANDOM|count[11]~9_combout\);

-- Location: FF_X82_Y34_N26
\D|Registrador|IQ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|geraSeed|IC_3|Qout[1]~reg0_q\,
	sclr => \D|comb~0_combout\,
	sload => VCC,
	ena => \D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Registrador|IQ\(9));

-- Location: FF_X82_Y35_N17
\D|Registrador|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|Registrador|IQ\(9),
	sload => VCC,
	ena => \D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Registrador|Q\(9));

-- Location: MLABCELL_X82_Y35_N18
\D|PSEUDORANDOM|count[9]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[9]~17_combout\ = ( \D|Registrador|Q\(9) & ( (\D|PSEUDORANDOM|count[9]~17_combout\) # (\D|comb~0_combout\) ) ) # ( !\D|Registrador|Q\(9) & ( (!\D|comb~0_combout\ & \D|PSEUDORANDOM|count[9]~17_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ALT_INV_comb~0_combout\,
	datac => \D|PSEUDORANDOM|ALT_INV_count[9]~17_combout\,
	dataf => \D|Registrador|ALT_INV_Q\(9),
	combout => \D|PSEUDORANDOM|count[9]~17_combout\);

-- Location: FF_X82_Y35_N7
\D|Registrador|IQ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|geraSeed|IC_3|Qout[0]~reg0_q\,
	sclr => \D|comb~0_combout\,
	sload => VCC,
	ena => \D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Registrador|IQ\(8));

-- Location: FF_X82_Y35_N32
\D|Registrador|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|Registrador|IQ\(8),
	sload => VCC,
	ena => \D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Registrador|Q\(8));

-- Location: FF_X82_Y34_N52
\D|Registrador|IQ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|geraSeed|IC_2|Qout[2]~reg0_q\,
	sclr => \D|comb~0_combout\,
	sload => VCC,
	ena => \D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Registrador|IQ\(6));

-- Location: FF_X82_Y34_N20
\D|Registrador|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|Registrador|IQ\(6),
	sload => VCC,
	ena => \D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Registrador|Q\(6));

-- Location: MLABCELL_X82_Y34_N51
\D|PSEUDORANDOM|count[6]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[6]~29_combout\ = ( \D|comb~0_combout\ & ( \D|Registrador|Q\(6) ) ) # ( !\D|comb~0_combout\ & ( \D|PSEUDORANDOM|count[6]~29_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|PSEUDORANDOM|ALT_INV_count[6]~29_combout\,
	datac => \D|Registrador|ALT_INV_Q\(6),
	dataf => \D|ALT_INV_comb~0_combout\,
	combout => \D|PSEUDORANDOM|count[6]~29_combout\);

-- Location: FF_X82_Y34_N7
\D|Registrador|IQ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|geraSeed|IC_2|Qout[1]~reg0_q\,
	sclr => \D|comb~0_combout\,
	sload => VCC,
	ena => \D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Registrador|IQ\(5));

-- Location: FF_X83_Y34_N53
\D|Registrador|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|Registrador|IQ\(5),
	sload => VCC,
	ena => \D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Registrador|Q\(5));

-- Location: FF_X81_Y36_N46
\D|Registrador|IQ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|geraSeed|IC_2|Qout[0]~reg0_q\,
	sclr => \D|comb~0_combout\,
	sload => VCC,
	ena => \D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Registrador|IQ\(4));

-- Location: FF_X82_Y36_N5
\D|Registrador|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|Registrador|IQ\(4),
	sload => VCC,
	ena => \D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Registrador|Q\(4));

-- Location: MLABCELL_X82_Y36_N15
\D|PSEUDORANDOM|count[4]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[4]~37_combout\ = ( \D|Registrador|Q\(4) & ( (\D|PSEUDORANDOM|count[4]~37_combout\) # (\D|comb~0_combout\) ) ) # ( !\D|Registrador|Q\(4) & ( (!\D|comb~0_combout\ & \D|PSEUDORANDOM|count[4]~37_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ALT_INV_comb~0_combout\,
	datac => \D|PSEUDORANDOM|ALT_INV_count[4]~37_combout\,
	dataf => \D|Registrador|ALT_INV_Q\(4),
	combout => \D|PSEUDORANDOM|count[4]~37_combout\);

-- Location: MLABCELL_X82_Y34_N21
\D|Registrador|IQ[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Registrador|IQ[1]~feeder_combout\ = ( \D|geraSeed|IC_1|Qout[1]~reg0_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \D|geraSeed|IC_1|ALT_INV_Qout[1]~reg0_q\,
	combout => \D|Registrador|IQ[1]~feeder_combout\);

-- Location: FF_X82_Y34_N22
\D|Registrador|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Registrador|IQ[1]~feeder_combout\,
	sclr => \D|comb~0_combout\,
	ena => \D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Registrador|IQ\(1));

-- Location: FF_X81_Y36_N17
\D|Registrador|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|Registrador|IQ\(1),
	sload => VCC,
	ena => \D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Registrador|Q\(1));

-- Location: LABCELL_X81_Y36_N33
\D|PSEUDORANDOM|count[1]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[1]~49_combout\ = ( \D|Registrador|Q\(1) & ( (\D|comb~0_combout\) # (\D|PSEUDORANDOM|count[1]~49_combout\) ) ) # ( !\D|Registrador|Q\(1) & ( (\D|PSEUDORANDOM|count[1]~49_combout\ & !\D|comb~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|PSEUDORANDOM|ALT_INV_count[1]~49_combout\,
	datad => \D|ALT_INV_comb~0_combout\,
	dataf => \D|Registrador|ALT_INV_Q\(1),
	combout => \D|PSEUDORANDOM|count[1]~49_combout\);

-- Location: LABCELL_X81_Y36_N30
\D|PSEUDORANDOM|count[1]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[1]~51_combout\ = ( \D|PSEUDORANDOM|count[0]~54_combout\ & ( !\D|PSEUDORANDOM|count[1]~49_combout\ ) ) # ( !\D|PSEUDORANDOM|count[0]~54_combout\ & ( \D|PSEUDORANDOM|count[1]~49_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \D|PSEUDORANDOM|ALT_INV_count[1]~49_combout\,
	dataf => \D|PSEUDORANDOM|ALT_INV_count[0]~54_combout\,
	combout => \D|PSEUDORANDOM|count[1]~51_combout\);

-- Location: LABCELL_X81_Y34_N6
\D|ciclagensLFSR|Contador|IC_1|Qout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ciclagensLFSR|Contador|IC_1|Qout~1_combout\ = ( \D|ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\ & ( (!\D|ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\ & (!\D|comb~0_combout\ & !\D|ciclagensLFSR|Contador|IC_1|Qout[1]~reg0_q\)) ) ) # ( 
-- !\D|ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\ & ( (!\D|comb~0_combout\ & \D|ciclagensLFSR|Contador|IC_1|Qout[1]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datab => \D|ALT_INV_comb~0_combout\,
	datad => \D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[1]~reg0_q\,
	dataf => \D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	combout => \D|ciclagensLFSR|Contador|IC_1|Qout~1_combout\);

-- Location: LABCELL_X81_Y34_N24
\D|ciclagensLFSR|Contador|IC_1|Qout[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ciclagensLFSR|Contador|IC_1|Qout[3]~2_combout\ = ( \D|ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\ & ( ((\D|C|Eatual.Cicla~q\) # (\D|ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\)) # (\D|comb~0_combout\) ) ) # ( 
-- !\D|ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\ & ( (\D|C|Eatual.Cicla~q\) # (\D|comb~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111101011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ALT_INV_comb~0_combout\,
	datac => \D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datad => \D|C|ALT_INV_Eatual.Cicla~q\,
	dataf => \D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	combout => \D|ciclagensLFSR|Contador|IC_1|Qout[3]~2_combout\);

-- Location: FF_X81_Y34_N8
\D|ciclagensLFSR|Contador|IC_1|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ciclagensLFSR|Contador|IC_1|Qout~1_combout\,
	ena => \D|ciclagensLFSR|Contador|IC_1|Qout[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ciclagensLFSR|Contador|IC_1|Qout[1]~reg0_q\);

-- Location: LABCELL_X81_Y34_N9
\D|ciclagensLFSR|Contador|IC_1|Qout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ciclagensLFSR|Contador|IC_1|Qout~3_combout\ = ( \D|ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\ & ( (!\D|ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\ & (!\D|comb~0_combout\ & (!\D|ciclagensLFSR|Contador|IC_1|Qout[1]~reg0_q\ $ 
-- (!\D|ciclagensLFSR|Contador|IC_1|Qout[2]~reg0_q\)))) ) ) # ( !\D|ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\ & ( (!\D|comb~0_combout\ & \D|ciclagensLFSR|Contador|IC_1|Qout[2]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000001000100000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datab => \D|ALT_INV_comb~0_combout\,
	datac => \D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[1]~reg0_q\,
	datad => \D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[2]~reg0_q\,
	dataf => \D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	combout => \D|ciclagensLFSR|Contador|IC_1|Qout~3_combout\);

-- Location: FF_X81_Y34_N11
\D|ciclagensLFSR|Contador|IC_1|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ciclagensLFSR|Contador|IC_1|Qout~3_combout\,
	ena => \D|ciclagensLFSR|Contador|IC_1|Qout[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ciclagensLFSR|Contador|IC_1|Qout[2]~reg0_q\);

-- Location: LABCELL_X81_Y35_N36
\D|ciclagensLFSR|Contador|IC_1|Qout[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ciclagensLFSR|Contador|IC_1|Qout[3]~4_combout\ = ( \D|ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\ & ( !\D|comb~0_combout\ & ( !\D|ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\ ) ) ) # ( !\D|ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\ & ( 
-- !\D|comb~0_combout\ & ( (\D|ciclagensLFSR|Contador|IC_1|Qout[1]~reg0_q\ & (\D|ciclagensLFSR|Contador|IC_1|Qout[2]~reg0_q\ & (\D|C|Eatual.Cicla~q\ & \D|ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[1]~reg0_q\,
	datab => \D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[2]~reg0_q\,
	datac => \D|C|ALT_INV_Eatual.Cicla~q\,
	datad => \D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datae => \D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	dataf => \D|ALT_INV_comb~0_combout\,
	combout => \D|ciclagensLFSR|Contador|IC_1|Qout[3]~4_combout\);

-- Location: FF_X81_Y35_N38
\D|ciclagensLFSR|Contador|IC_1|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ciclagensLFSR|Contador|IC_1|Qout[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\);

-- Location: MLABCELL_X82_Y35_N24
\D|ciclagensLFSR|Contador|IC_1|Qout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ciclagensLFSR|Contador|IC_1|Qout[0]~0_combout\ = ( !\D|comb~0_combout\ & ( (!\D|C|Eatual.Cicla~q\ & (!\D|ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\ & \D|ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\)) # (\D|C|Eatual.Cicla~q\ & 
-- ((!\D|ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111000000000011111100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datac => \D|C|ALT_INV_Eatual.Cicla~q\,
	datad => \D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	dataf => \D|ALT_INV_comb~0_combout\,
	combout => \D|ciclagensLFSR|Contador|IC_1|Qout[0]~0_combout\);

-- Location: FF_X82_Y35_N26
\D|ciclagensLFSR|Contador|IC_1|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ciclagensLFSR|Contador|IC_1|Qout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\);

-- Location: MLABCELL_X82_Y37_N15
\D|ciclagensLFSR|Contador|IC_2|Qout[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ciclagensLFSR|Contador|IC_2|Qout[3]~0_combout\ = ( \D|ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\ & ( (\D|C|Eatual.Cicla~q\ & \D|ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \D|C|ALT_INV_Eatual.Cicla~q\,
	datad => \D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	dataf => \D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	combout => \D|ciclagensLFSR|Contador|IC_2|Qout[3]~0_combout\);

-- Location: MLABCELL_X82_Y37_N6
\D|ciclagensLFSR|Contador|IC_2|Qout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ciclagensLFSR|Contador|IC_2|Qout~3_combout\ = ( !\D|ciclagensLFSR|Contador|ClrN2~0_combout\ & ( (!\D|comb~0_combout\ & (!\D|ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\ $ (!\D|ciclagensLFSR|Contador|IC_2|Qout[1]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000001100001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datac => \D|ALT_INV_comb~0_combout\,
	datad => \D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[1]~reg0_q\,
	dataf => \D|ciclagensLFSR|Contador|ALT_INV_ClrN2~0_combout\,
	combout => \D|ciclagensLFSR|Contador|IC_2|Qout~3_combout\);

-- Location: MLABCELL_X82_Y37_N24
\D|ciclagensLFSR|Contador|IC_2|Qout[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ciclagensLFSR|Contador|IC_2|Qout[1]~4_combout\ = ( \D|ciclagensLFSR|Contador|ClrN2~0_combout\ & ( \D|comb~0_combout\ ) ) # ( !\D|ciclagensLFSR|Contador|ClrN2~0_combout\ & ( \D|comb~0_combout\ ) ) # ( \D|ciclagensLFSR|Contador|ClrN2~0_combout\ & ( 
-- !\D|comb~0_combout\ ) ) # ( !\D|ciclagensLFSR|Contador|ClrN2~0_combout\ & ( !\D|comb~0_combout\ & ( \D|ciclagensLFSR|Contador|IC_2|Qout[3]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[3]~0_combout\,
	datae => \D|ciclagensLFSR|Contador|ALT_INV_ClrN2~0_combout\,
	dataf => \D|ALT_INV_comb~0_combout\,
	combout => \D|ciclagensLFSR|Contador|IC_2|Qout[1]~4_combout\);

-- Location: FF_X82_Y37_N8
\D|ciclagensLFSR|Contador|IC_2|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ciclagensLFSR|Contador|IC_2|Qout~3_combout\,
	ena => \D|ciclagensLFSR|Contador|IC_2|Qout[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ciclagensLFSR|Contador|IC_2|Qout[1]~reg0_q\);

-- Location: MLABCELL_X82_Y37_N39
\D|ciclagensLFSR|Contador|IC_2|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ciclagensLFSR|Contador|IC_2|Add0~0_combout\ = ( \D|ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\ & ( (\D|ciclagensLFSR|Contador|IC_2|Qout[1]~reg0_q\ & \D|ciclagensLFSR|Contador|IC_2|Qout[2]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[1]~reg0_q\,
	datad => \D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[2]~reg0_q\,
	dataf => \D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\,
	combout => \D|ciclagensLFSR|Contador|IC_2|Add0~0_combout\);

-- Location: LABCELL_X81_Y35_N33
\D|ciclagensLFSR|Contador|IC_2|Qout[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ciclagensLFSR|Contador|IC_2|Qout[3]~1_combout\ = ( \D|ciclagensLFSR|Contador|IC_2|Add0~0_combout\ & ( (!\D|ciclagensLFSR|Contador|ClrN2~0_combout\ & (!\D|comb~0_combout\ & (!\D|ciclagensLFSR|Contador|IC_2|Qout[3]~0_combout\ $ 
-- (!\D|ciclagensLFSR|Contador|IC_2|Qout[3]~reg0_q\)))) ) ) # ( !\D|ciclagensLFSR|Contador|IC_2|Add0~0_combout\ & ( (!\D|ciclagensLFSR|Contador|ClrN2~0_combout\ & (!\D|comb~0_combout\ & \D|ciclagensLFSR|Contador|IC_2|Qout[3]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000001000100000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ciclagensLFSR|Contador|ALT_INV_ClrN2~0_combout\,
	datab => \D|ALT_INV_comb~0_combout\,
	datac => \D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[3]~0_combout\,
	datad => \D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[3]~reg0_q\,
	dataf => \D|ciclagensLFSR|Contador|IC_2|ALT_INV_Add0~0_combout\,
	combout => \D|ciclagensLFSR|Contador|IC_2|Qout[3]~1_combout\);

-- Location: FF_X81_Y35_N35
\D|ciclagensLFSR|Contador|IC_2|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ciclagensLFSR|Contador|IC_2|Qout[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ciclagensLFSR|Contador|IC_2|Qout[3]~reg0_q\);

-- Location: LABCELL_X81_Y35_N51
\D|ciclagensLFSR|Contador|ClrN2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ciclagensLFSR|Contador|ClrN2~0_combout\ = ( \D|ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\ & ( (\D|ciclagensLFSR|Contador|IC_2|Qout[3]~reg0_q\ & (\D|ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\ & \D|ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[3]~reg0_q\,
	datac => \D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datad => \D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	dataf => \D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\,
	combout => \D|ciclagensLFSR|Contador|ClrN2~0_combout\);

-- Location: LABCELL_X81_Y35_N12
\D|ciclagensLFSR|Contador|IC_2|Qout[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ciclagensLFSR|Contador|IC_2|Qout[0]~2_combout\ = ( \D|ciclagensLFSR|Contador|ClrN2~0_combout\ & ( (!\D|comb~0_combout\ & !\D|ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\) ) ) # ( !\D|ciclagensLFSR|Contador|ClrN2~0_combout\ & ( (!\D|comb~0_combout\ & 
-- (!\D|ciclagensLFSR|Contador|IC_2|Qout[3]~0_combout\ $ (!\D|ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000000011001100000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D|ALT_INV_comb~0_combout\,
	datac => \D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[3]~0_combout\,
	datad => \D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\,
	dataf => \D|ciclagensLFSR|Contador|ALT_INV_ClrN2~0_combout\,
	combout => \D|ciclagensLFSR|Contador|IC_2|Qout[0]~2_combout\);

-- Location: FF_X81_Y35_N14
\D|ciclagensLFSR|Contador|IC_2|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ciclagensLFSR|Contador|IC_2|Qout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\);

-- Location: MLABCELL_X82_Y37_N9
\D|ciclagensLFSR|Contador|IC_2|Qout~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ciclagensLFSR|Contador|IC_2|Qout~5_combout\ = ( \D|ciclagensLFSR|Contador|IC_2|Qout[1]~reg0_q\ & ( (!\D|comb~0_combout\ & (!\D|ciclagensLFSR|Contador|ClrN2~0_combout\ & (!\D|ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\ $ 
-- (!\D|ciclagensLFSR|Contador|IC_2|Qout[2]~reg0_q\)))) ) ) # ( !\D|ciclagensLFSR|Contador|IC_2|Qout[1]~reg0_q\ & ( (!\D|comb~0_combout\ & (!\D|ciclagensLFSR|Contador|ClrN2~0_combout\ & \D|ciclagensLFSR|Contador|IC_2|Qout[2]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000100000100000000010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ALT_INV_comb~0_combout\,
	datab => \D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datac => \D|ciclagensLFSR|Contador|ALT_INV_ClrN2~0_combout\,
	datad => \D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[2]~reg0_q\,
	dataf => \D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[1]~reg0_q\,
	combout => \D|ciclagensLFSR|Contador|IC_2|Qout~5_combout\);

-- Location: FF_X82_Y37_N11
\D|ciclagensLFSR|Contador|IC_2|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ciclagensLFSR|Contador|IC_2|Qout~5_combout\,
	ena => \D|ciclagensLFSR|Contador|IC_2|Qout[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ciclagensLFSR|Contador|IC_2|Qout[2]~reg0_q\);

-- Location: MLABCELL_X82_Y35_N33
\D|ciclagensLFSR|S~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ciclagensLFSR|S~2_combout\ = ( \D|ciclagensLFSR|Contador|IC_2|Qout[1]~reg0_q\ & ( \D|Registrador|Q\(4) & ( (\D|Registrador|Q\(5) & (\D|ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\ & (!\D|ciclagensLFSR|Contador|IC_2|Qout[2]~reg0_q\ $ 
-- (\D|Registrador|Q\(6))))) ) ) ) # ( !\D|ciclagensLFSR|Contador|IC_2|Qout[1]~reg0_q\ & ( \D|Registrador|Q\(4) & ( (!\D|Registrador|Q\(5) & (\D|ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\ & (!\D|ciclagensLFSR|Contador|IC_2|Qout[2]~reg0_q\ $ 
-- (\D|Registrador|Q\(6))))) ) ) ) # ( \D|ciclagensLFSR|Contador|IC_2|Qout[1]~reg0_q\ & ( !\D|Registrador|Q\(4) & ( (\D|Registrador|Q\(5) & (!\D|ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\ & (!\D|ciclagensLFSR|Contador|IC_2|Qout[2]~reg0_q\ $ 
-- (\D|Registrador|Q\(6))))) ) ) ) # ( !\D|ciclagensLFSR|Contador|IC_2|Qout[1]~reg0_q\ & ( !\D|Registrador|Q\(4) & ( (!\D|Registrador|Q\(5) & (!\D|ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\ & (!\D|ciclagensLFSR|Contador|IC_2|Qout[2]~reg0_q\ $ 
-- (\D|Registrador|Q\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000010010000000000000000100100000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[2]~reg0_q\,
	datab => \D|Registrador|ALT_INV_Q\(6),
	datac => \D|Registrador|ALT_INV_Q\(5),
	datad => \D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datae => \D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[1]~reg0_q\,
	dataf => \D|Registrador|ALT_INV_Q\(4),
	combout => \D|ciclagensLFSR|S~2_combout\);

-- Location: FF_X82_Y35_N10
\D|Registrador|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|geraSeed|IC_1|Qout[2]~reg0_q\,
	sclr => \D|comb~0_combout\,
	sload => VCC,
	ena => \D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Registrador|IQ\(2));

-- Location: FF_X82_Y36_N2
\D|Registrador|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|Registrador|IQ\(2),
	sload => VCC,
	ena => \D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Registrador|Q\(2));

-- Location: FF_X82_Y35_N59
\D|Registrador|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|geraSeed|IC_1|Qout[3]~reg0_q\,
	sclr => \D|comb~0_combout\,
	sload => VCC,
	ena => \D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Registrador|IQ\(3));

-- Location: FF_X82_Y36_N56
\D|Registrador|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|Registrador|IQ\(3),
	sload => VCC,
	ena => \D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Registrador|Q\(3));

-- Location: LABCELL_X81_Y36_N18
\D|ciclagensLFSR|S~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ciclagensLFSR|S~4_combout\ = ( \D|ciclagensLFSR|Contador|IC_1|Qout[2]~reg0_q\ & ( \D|ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\ & ( (\D|Registrador|Q\(2) & (\D|Registrador|Q\(3) & (!\D|ciclagensLFSR|Contador|IC_1|Qout[1]~reg0_q\ $ 
-- (\D|Registrador|Q\(1))))) ) ) ) # ( !\D|ciclagensLFSR|Contador|IC_1|Qout[2]~reg0_q\ & ( \D|ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\ & ( (!\D|Registrador|Q\(2) & (\D|Registrador|Q\(3) & (!\D|ciclagensLFSR|Contador|IC_1|Qout[1]~reg0_q\ $ 
-- (\D|Registrador|Q\(1))))) ) ) ) # ( \D|ciclagensLFSR|Contador|IC_1|Qout[2]~reg0_q\ & ( !\D|ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\ & ( (\D|Registrador|Q\(2) & (!\D|Registrador|Q\(3) & (!\D|ciclagensLFSR|Contador|IC_1|Qout[1]~reg0_q\ $ 
-- (\D|Registrador|Q\(1))))) ) ) ) # ( !\D|ciclagensLFSR|Contador|IC_1|Qout[2]~reg0_q\ & ( !\D|ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\ & ( (!\D|Registrador|Q\(2) & (!\D|Registrador|Q\(3) & (!\D|ciclagensLFSR|Contador|IC_1|Qout[1]~reg0_q\ $ 
-- (\D|Registrador|Q\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000010000000000010000100000000000100001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|Registrador|ALT_INV_Q\(2),
	datab => \D|Registrador|ALT_INV_Q\(3),
	datac => \D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[1]~reg0_q\,
	datad => \D|Registrador|ALT_INV_Q\(1),
	datae => \D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[2]~reg0_q\,
	dataf => \D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	combout => \D|ciclagensLFSR|S~4_combout\);

-- Location: LABCELL_X81_Y35_N30
\D|ciclagensLFSR|Contador|IC_3|Qout[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ciclagensLFSR|Contador|IC_3|Qout[0]~3_combout\ = ( \D|ciclagensLFSR|Contador|IC_3|Qout[3]~reg0_q\ & ( (!\D|comb~0_combout\ & ((!\D|ciclagensLFSR|Contador|ClrN2~0_combout\ & ((\D|ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\))) # 
-- (\D|ciclagensLFSR|Contador|ClrN2~0_combout\ & (\D|C|Eatual.Cicla~q\ & !\D|ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\)))) ) ) # ( !\D|ciclagensLFSR|Contador|IC_3|Qout[3]~reg0_q\ & ( (!\D|comb~0_combout\ & (!\D|ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\ $ 
-- (((!\D|ciclagensLFSR|Contador|ClrN2~0_combout\) # (!\D|C|Eatual.Cicla~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011001000000001001100100000000100100010000000010010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ciclagensLFSR|Contador|ALT_INV_ClrN2~0_combout\,
	datab => \D|ALT_INV_comb~0_combout\,
	datac => \D|C|ALT_INV_Eatual.Cicla~q\,
	datad => \D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\,
	dataf => \D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[3]~reg0_q\,
	combout => \D|ciclagensLFSR|Contador|IC_3|Qout[0]~3_combout\);

-- Location: FF_X81_Y35_N32
\D|ciclagensLFSR|Contador|IC_3|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ciclagensLFSR|Contador|IC_3|Qout[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\);

-- Location: LABCELL_X81_Y35_N18
\D|ciclagensLFSR|Contador|ClrN3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ciclagensLFSR|Contador|ClrN3~0_combout\ = ( \D|ciclagensLFSR|Contador|IC_2|Qout[0]~reg0_q\ & ( \D|ciclagensLFSR|Contador|IC_3|Qout[3]~reg0_q\ & ( (\D|ciclagensLFSR|Contador|IC_2|Qout[3]~reg0_q\ & (\D|ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\ & 
-- (\D|ciclagensLFSR|Contador|IC_1|Qout[3]~reg0_q\ & \D|ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[3]~reg0_q\,
	datab => \D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datac => \D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datad => \D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datae => \D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\,
	dataf => \D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[3]~reg0_q\,
	combout => \D|ciclagensLFSR|Contador|ClrN3~0_combout\);

-- Location: LABCELL_X81_Y35_N27
\D|ciclagensLFSR|Contador|IC_3|Qout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ciclagensLFSR|Contador|IC_3|Qout~4_combout\ = ( !\D|ciclagensLFSR|Contador|ClrN3~0_combout\ & ( (!\D|comb~0_combout\ & (!\D|ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\ $ (!\D|ciclagensLFSR|Contador|IC_3|Qout[1]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000010101010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ALT_INV_comb~0_combout\,
	datac => \D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datad => \D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[1]~reg0_q\,
	dataf => \D|ciclagensLFSR|Contador|ALT_INV_ClrN3~0_combout\,
	combout => \D|ciclagensLFSR|Contador|IC_3|Qout~4_combout\);

-- Location: LABCELL_X81_Y35_N3
\D|ciclagensLFSR|Contador|IC_3|Qout[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ciclagensLFSR|Contador|IC_3|Qout[3]~1_combout\ = ( \D|ciclagensLFSR|Contador|ClrN2~0_combout\ & ( ((\D|C|Eatual.Cicla~q\) # (\D|ciclagensLFSR|Contador|ClrN3~0_combout\)) # (\D|comb~0_combout\) ) ) # ( !\D|ciclagensLFSR|Contador|ClrN2~0_combout\ & ( 
-- (\D|ciclagensLFSR|Contador|ClrN3~0_combout\) # (\D|comb~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D|ALT_INV_comb~0_combout\,
	datac => \D|ciclagensLFSR|Contador|ALT_INV_ClrN3~0_combout\,
	datad => \D|C|ALT_INV_Eatual.Cicla~q\,
	dataf => \D|ciclagensLFSR|Contador|ALT_INV_ClrN2~0_combout\,
	combout => \D|ciclagensLFSR|Contador|IC_3|Qout[3]~1_combout\);

-- Location: FF_X81_Y35_N29
\D|ciclagensLFSR|Contador|IC_3|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ciclagensLFSR|Contador|IC_3|Qout~4_combout\,
	ena => \D|ciclagensLFSR|Contador|IC_3|Qout[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ciclagensLFSR|Contador|IC_3|Qout[1]~reg0_q\);

-- Location: LABCELL_X81_Y35_N24
\D|ciclagensLFSR|Contador|IC_3|Qout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ciclagensLFSR|Contador|IC_3|Qout~0_combout\ = ( !\D|ciclagensLFSR|Contador|ClrN3~0_combout\ & ( (!\D|comb~0_combout\ & (!\D|ciclagensLFSR|Contador|IC_3|Qout[2]~reg0_q\ $ (((!\D|ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\) # 
-- (!\D|ciclagensLFSR|Contador|IC_3|Qout[1]~reg0_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010101000000000101010100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ALT_INV_comb~0_combout\,
	datab => \D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datac => \D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[1]~reg0_q\,
	datad => \D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[2]~reg0_q\,
	dataf => \D|ciclagensLFSR|Contador|ALT_INV_ClrN3~0_combout\,
	combout => \D|ciclagensLFSR|Contador|IC_3|Qout~0_combout\);

-- Location: FF_X81_Y35_N26
\D|ciclagensLFSR|Contador|IC_3|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ciclagensLFSR|Contador|IC_3|Qout~0_combout\,
	ena => \D|ciclagensLFSR|Contador|IC_3|Qout[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ciclagensLFSR|Contador|IC_3|Qout[2]~reg0_q\);

-- Location: LABCELL_X81_Y36_N15
\D|ciclagensLFSR|Contador|IC_3|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ciclagensLFSR|Contador|IC_3|Add0~0_combout\ = ( \D|ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\ & ( (\D|ciclagensLFSR|Contador|IC_3|Qout[2]~reg0_q\ & \D|ciclagensLFSR|Contador|IC_3|Qout[1]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[2]~reg0_q\,
	datac => \D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[1]~reg0_q\,
	datae => \D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\,
	combout => \D|ciclagensLFSR|Contador|IC_3|Add0~0_combout\);

-- Location: LABCELL_X81_Y36_N6
\D|ciclagensLFSR|Contador|IC_3|Qout[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ciclagensLFSR|Contador|IC_3|Qout[3]~2_combout\ = ( \D|ciclagensLFSR|Contador|IC_3|Qout[3]~reg0_q\ & ( !\D|comb~0_combout\ & ( (!\D|ciclagensLFSR|Contador|ClrN2~0_combout\) # ((!\D|ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\ & 
-- ((!\D|ciclagensLFSR|Contador|IC_3|Add0~0_combout\) # (!\D|C|Eatual.Cicla~q\)))) ) ) ) # ( !\D|ciclagensLFSR|Contador|IC_3|Qout[3]~reg0_q\ & ( !\D|comb~0_combout\ & ( (\D|ciclagensLFSR|Contador|IC_3|Add0~0_combout\ & 
-- (\D|ciclagensLFSR|Contador|ClrN2~0_combout\ & \D|C|Eatual.Cicla~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011111110101111100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datab => \D|ciclagensLFSR|Contador|IC_3|ALT_INV_Add0~0_combout\,
	datac => \D|ciclagensLFSR|Contador|ALT_INV_ClrN2~0_combout\,
	datad => \D|C|ALT_INV_Eatual.Cicla~q\,
	datae => \D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[3]~reg0_q\,
	dataf => \D|ALT_INV_comb~0_combout\,
	combout => \D|ciclagensLFSR|Contador|IC_3|Qout[3]~2_combout\);

-- Location: FF_X81_Y36_N8
\D|ciclagensLFSR|Contador|IC_3|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ciclagensLFSR|Contador|IC_3|Qout[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ciclagensLFSR|Contador|IC_3|Qout[3]~reg0_q\);

-- Location: FF_X82_Y36_N29
\D|Registrador|IQ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|geraSeed|IC_3|Qout[2]~reg0_q\,
	sclr => \D|comb~0_combout\,
	sload => VCC,
	ena => \D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Registrador|IQ\(10));

-- Location: FF_X82_Y36_N14
\D|Registrador|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|Registrador|IQ\(10),
	sload => VCC,
	ena => \D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Registrador|Q\(10));

-- Location: LABCELL_X81_Y36_N3
\D|ciclagensLFSR|S~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ciclagensLFSR|S~0_combout\ = ( \D|Registrador|Q\(10) & ( (\D|ciclagensLFSR|Contador|IC_3|Qout[2]~reg0_q\ & (!\D|Registrador|Q\(11) $ (\D|ciclagensLFSR|Contador|IC_3|Qout[3]~reg0_q\))) ) ) # ( !\D|Registrador|Q\(10) & ( 
-- (!\D|ciclagensLFSR|Contador|IC_3|Qout[2]~reg0_q\ & (!\D|Registrador|Q\(11) $ (\D|ciclagensLFSR|Contador|IC_3|Qout[3]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010100000000101001010000000000000000101001010000000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|Registrador|ALT_INV_Q\(11),
	datac => \D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[3]~reg0_q\,
	datad => \D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[2]~reg0_q\,
	dataf => \D|Registrador|ALT_INV_Q\(10),
	combout => \D|ciclagensLFSR|S~0_combout\);

-- Location: LABCELL_X83_Y37_N42
\D|ciclagensLFSR|Contador|IC_4|Qout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ciclagensLFSR|Contador|IC_4|Qout~1_combout\ = ( \D|ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\ & ( (!\D|comb~0_combout\ & (!\D|ciclagensLFSR|Contador|IC_4|Qout[1]~reg0_q\ & ((!\D|ciclagensLFSR|Contador|ClrN3~0_combout\) # 
-- (!\D|ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\)))) ) ) # ( !\D|ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\ & ( (!\D|comb~0_combout\ & \D|ciclagensLFSR|Contador|IC_4|Qout[1]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101010101000000000001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ALT_INV_comb~0_combout\,
	datab => \D|ciclagensLFSR|Contador|ALT_INV_ClrN3~0_combout\,
	datac => \D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datad => \D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[1]~reg0_q\,
	dataf => \D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\,
	combout => \D|ciclagensLFSR|Contador|IC_4|Qout~1_combout\);

-- Location: LABCELL_X83_Y37_N9
\D|ciclagensLFSR|Contador|IC_4|Qout[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ciclagensLFSR|Contador|IC_4|Qout[0]~2_combout\ = ( \D|ciclagensLFSR|Contador|ClrN3~0_combout\ & ( \D|comb~0_combout\ ) ) # ( !\D|ciclagensLFSR|Contador|ClrN3~0_combout\ & ( \D|comb~0_combout\ ) ) # ( \D|ciclagensLFSR|Contador|ClrN3~0_combout\ & ( 
-- !\D|comb~0_combout\ & ( ((\D|ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\ & \D|ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\)) # (\D|C|Eatual.Cicla~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datac => \D|C|ALT_INV_Eatual.Cicla~q\,
	datad => \D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\,
	datae => \D|ciclagensLFSR|Contador|ALT_INV_ClrN3~0_combout\,
	dataf => \D|ALT_INV_comb~0_combout\,
	combout => \D|ciclagensLFSR|Contador|IC_4|Qout[0]~2_combout\);

-- Location: FF_X83_Y37_N44
\D|ciclagensLFSR|Contador|IC_4|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ciclagensLFSR|Contador|IC_4|Qout~1_combout\,
	ena => \D|ciclagensLFSR|Contador|IC_4|Qout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ciclagensLFSR|Contador|IC_4|Qout[1]~reg0_q\);

-- Location: LABCELL_X83_Y37_N30
\D|ciclagensLFSR|Contador|IC_4|Qout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ciclagensLFSR|Contador|IC_4|Qout~3_combout\ = ( \D|ciclagensLFSR|Contador|IC_4|Qout[2]~reg0_q\ & ( \D|ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\ & ( (!\D|comb~0_combout\ & (!\D|ciclagensLFSR|Contador|IC_4|Qout[1]~reg0_q\ & 
-- ((!\D|ciclagensLFSR|Contador|ClrN3~0_combout\) # (!\D|ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\)))) ) ) ) # ( !\D|ciclagensLFSR|Contador|IC_4|Qout[2]~reg0_q\ & ( \D|ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\ & ( (!\D|comb~0_combout\ & 
-- (\D|ciclagensLFSR|Contador|IC_4|Qout[1]~reg0_q\ & ((!\D|ciclagensLFSR|Contador|ClrN3~0_combout\) # (!\D|ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\)))) ) ) ) # ( \D|ciclagensLFSR|Contador|IC_4|Qout[2]~reg0_q\ & ( 
-- !\D|ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\ & ( !\D|comb~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000101010001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ALT_INV_comb~0_combout\,
	datab => \D|ciclagensLFSR|Contador|ALT_INV_ClrN3~0_combout\,
	datac => \D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datad => \D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[1]~reg0_q\,
	datae => \D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[2]~reg0_q\,
	dataf => \D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\,
	combout => \D|ciclagensLFSR|Contador|IC_4|Qout~3_combout\);

-- Location: FF_X83_Y37_N32
\D|ciclagensLFSR|Contador|IC_4|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ciclagensLFSR|Contador|IC_4|Qout~3_combout\,
	ena => \D|ciclagensLFSR|Contador|IC_4|Qout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ciclagensLFSR|Contador|IC_4|Qout[2]~reg0_q\);

-- Location: LABCELL_X83_Y37_N54
\D|ciclagensLFSR|Contador|IC_4|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ciclagensLFSR|Contador|IC_4|Add0~0_combout\ = ( \D|ciclagensLFSR|Contador|IC_4|Qout[2]~reg0_q\ & ( (\D|ciclagensLFSR|Contador|IC_4|Qout[1]~reg0_q\ & \D|ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[1]~reg0_q\,
	datac => \D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\,
	dataf => \D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[2]~reg0_q\,
	combout => \D|ciclagensLFSR|Contador|IC_4|Add0~0_combout\);

-- Location: LABCELL_X83_Y37_N18
\D|ciclagensLFSR|Contador|IC_4|Qout[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ciclagensLFSR|Contador|IC_4|Qout[3]~4_combout\ = ( \D|ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\ & ( \D|ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\ & ( (!\D|comb~0_combout\ & !\D|ciclagensLFSR|Contador|ClrN3~0_combout\) ) ) ) # ( 
-- !\D|ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\ & ( \D|ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\ & ( (\D|C|Eatual.Cicla~q\ & (!\D|comb~0_combout\ & (\D|ciclagensLFSR|Contador|IC_4|Add0~0_combout\ & \D|ciclagensLFSR|Contador|ClrN3~0_combout\))) ) ) ) # ( 
-- \D|ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\ & ( !\D|ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\ & ( (!\D|comb~0_combout\ & ((!\D|C|Eatual.Cicla~q\) # ((!\D|ciclagensLFSR|Contador|IC_4|Add0~0_combout\) # (!\D|ciclagensLFSR|Contador|ClrN3~0_combout\)))) 
-- ) ) ) # ( !\D|ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\ & ( !\D|ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\ & ( (\D|C|Eatual.Cicla~q\ & (!\D|comb~0_combout\ & (\D|ciclagensLFSR|Contador|IC_4|Add0~0_combout\ & 
-- \D|ciclagensLFSR|Contador|ClrN3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100110011001100100000000000000001001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|C|ALT_INV_Eatual.Cicla~q\,
	datab => \D|ALT_INV_comb~0_combout\,
	datac => \D|ciclagensLFSR|Contador|IC_4|ALT_INV_Add0~0_combout\,
	datad => \D|ciclagensLFSR|Contador|ALT_INV_ClrN3~0_combout\,
	datae => \D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\,
	dataf => \D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\,
	combout => \D|ciclagensLFSR|Contador|IC_4|Qout[3]~4_combout\);

-- Location: FF_X83_Y37_N20
\D|ciclagensLFSR|Contador|IC_4|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ciclagensLFSR|Contador|IC_4|Qout[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\);

-- Location: LABCELL_X83_Y37_N48
\D|ciclagensLFSR|Contador|IC_4|Qout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ciclagensLFSR|Contador|IC_4|Qout[0]~0_combout\ = ( \D|ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\ & ( (!\D|comb~0_combout\ & ((!\D|ciclagensLFSR|Contador|ClrN3~0_combout\ & ((\D|ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\))) # 
-- (\D|ciclagensLFSR|Contador|ClrN3~0_combout\ & (\D|C|Eatual.Cicla~q\ & !\D|ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\)))) ) ) # ( !\D|ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\ & ( (!\D|comb~0_combout\ & (!\D|ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\ $ 
-- (((!\D|ciclagensLFSR|Contador|ClrN3~0_combout\) # (!\D|C|Eatual.Cicla~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010101000000000101010100000000010100010000000001010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ALT_INV_comb~0_combout\,
	datab => \D|ciclagensLFSR|Contador|ALT_INV_ClrN3~0_combout\,
	datac => \D|C|ALT_INV_Eatual.Cicla~q\,
	datad => \D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\,
	dataf => \D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\,
	combout => \D|ciclagensLFSR|Contador|IC_4|Qout[0]~0_combout\);

-- Location: FF_X83_Y37_N50
\D|ciclagensLFSR|Contador|IC_4|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ciclagensLFSR|Contador|IC_4|Qout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\);

-- Location: LABCELL_X83_Y37_N3
\D|ciclagensLFSR|S~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ciclagensLFSR|S~3_combout\ = ( \D|ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\ & ( \D|Registrador|Q\(0) & ( (!\D|ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\ & (!\D|ciclagensLFSR|Contador|IC_4|Qout[1]~reg0_q\ & 
-- (!\D|ciclagensLFSR|Contador|IC_4|Qout[2]~reg0_q\ & !\D|ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\))) ) ) ) # ( !\D|ciclagensLFSR|Contador|IC_1|Qout[0]~reg0_q\ & ( !\D|Registrador|Q\(0) & ( (!\D|ciclagensLFSR|Contador|IC_4|Qout[0]~reg0_q\ & 
-- (!\D|ciclagensLFSR|Contador|IC_4|Qout[1]~reg0_q\ & (!\D|ciclagensLFSR|Contador|IC_4|Qout[2]~reg0_q\ & !\D|ciclagensLFSR|Contador|IC_4|Qout[3]~reg0_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\,
	datab => \D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[1]~reg0_q\,
	datac => \D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[2]~reg0_q\,
	datad => \D|ciclagensLFSR|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datae => \D|ciclagensLFSR|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	dataf => \D|Registrador|ALT_INV_Q\(0),
	combout => \D|ciclagensLFSR|S~3_combout\);

-- Location: FF_X82_Y34_N28
\D|Registrador|IQ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|geraSeed|IC_2|Qout[3]~reg0_q\,
	sclr => \D|comb~0_combout\,
	sload => VCC,
	ena => \D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Registrador|IQ\(7));

-- Location: FF_X82_Y34_N32
\D|Registrador|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|Registrador|IQ\(7),
	sload => VCC,
	ena => \D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Registrador|Q\(7));

-- Location: MLABCELL_X82_Y35_N12
\D|ciclagensLFSR|S~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ciclagensLFSR|S~1_combout\ = ( \D|ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\ & ( \D|ciclagensLFSR|Contador|IC_3|Qout[1]~reg0_q\ & ( (\D|Registrador|Q\(8) & (\D|Registrador|Q\(9) & (!\D|Registrador|Q\(7) $ 
-- (\D|ciclagensLFSR|Contador|IC_2|Qout[3]~reg0_q\)))) ) ) ) # ( !\D|ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\ & ( \D|ciclagensLFSR|Contador|IC_3|Qout[1]~reg0_q\ & ( (!\D|Registrador|Q\(8) & (\D|Registrador|Q\(9) & (!\D|Registrador|Q\(7) $ 
-- (\D|ciclagensLFSR|Contador|IC_2|Qout[3]~reg0_q\)))) ) ) ) # ( \D|ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\ & ( !\D|ciclagensLFSR|Contador|IC_3|Qout[1]~reg0_q\ & ( (\D|Registrador|Q\(8) & (!\D|Registrador|Q\(9) & (!\D|Registrador|Q\(7) $ 
-- (\D|ciclagensLFSR|Contador|IC_2|Qout[3]~reg0_q\)))) ) ) ) # ( !\D|ciclagensLFSR|Contador|IC_3|Qout[0]~reg0_q\ & ( !\D|ciclagensLFSR|Contador|IC_3|Qout[1]~reg0_q\ & ( (!\D|Registrador|Q\(8) & (!\D|Registrador|Q\(9) & (!\D|Registrador|Q\(7) $ 
-- (\D|ciclagensLFSR|Contador|IC_2|Qout[3]~reg0_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000001000010000000000000000100001000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|Registrador|ALT_INV_Q\(7),
	datab => \D|Registrador|ALT_INV_Q\(8),
	datac => \D|ciclagensLFSR|Contador|IC_2|ALT_INV_Qout[3]~reg0_q\,
	datad => \D|Registrador|ALT_INV_Q\(9),
	datae => \D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\,
	dataf => \D|ciclagensLFSR|Contador|IC_3|ALT_INV_Qout[1]~reg0_q\,
	combout => \D|ciclagensLFSR|S~1_combout\);

-- Location: MLABCELL_X82_Y35_N48
\D|ciclagensLFSR|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ciclagensLFSR|S~combout\ = ( \D|ciclagensLFSR|S~1_combout\ & ( (\D|ciclagensLFSR|S~2_combout\ & (\D|ciclagensLFSR|S~4_combout\ & (\D|ciclagensLFSR|S~0_combout\ & \D|ciclagensLFSR|S~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ciclagensLFSR|ALT_INV_S~2_combout\,
	datab => \D|ciclagensLFSR|ALT_INV_S~4_combout\,
	datac => \D|ciclagensLFSR|ALT_INV_S~0_combout\,
	datad => \D|ciclagensLFSR|ALT_INV_S~3_combout\,
	dataf => \D|ciclagensLFSR|ALT_INV_S~1_combout\,
	combout => \D|ciclagensLFSR|S~combout\);

-- Location: MLABCELL_X82_Y35_N3
\D|C|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|C|Selector1~0_combout\ = ( \D|ciclagensLFSR|S~combout\ & ( \D|C|Eatual.RegistraSeed2~q\ ) ) # ( !\D|ciclagensLFSR|S~combout\ & ( (\D|C|Eatual.Cicla~q\) # (\D|C|Eatual.RegistraSeed2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|C|ALT_INV_Eatual.RegistraSeed2~q\,
	datad => \D|C|ALT_INV_Eatual.Cicla~q\,
	dataf => \D|ciclagensLFSR|ALT_INV_S~combout\,
	combout => \D|C|Selector1~0_combout\);

-- Location: FF_X82_Y35_N5
\D|C|Eatual.Cicla\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|C|Selector1~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|C|Eatual.Cicla~q\);

-- Location: FF_X81_Y36_N31
\D|PSEUDORANDOM|count[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|PSEUDORANDOM|count[1]~51_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	ena => \D|C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|PSEUDORANDOM|count[1]~_emulated_q\);

-- Location: MLABCELL_X82_Y36_N33
\D|PSEUDORANDOM|count[1]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[1]~50_combout\ = ( \D|comb~0_combout\ & ( \D|Registrador|Q\(1) ) ) # ( !\D|comb~0_combout\ & ( !\D|PSEUDORANDOM|count[1]~_emulated_q\ $ (!\D|PSEUDORANDOM|count[1]~49_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|Registrador|ALT_INV_Q\(1),
	datac => \D|PSEUDORANDOM|ALT_INV_count[1]~_emulated_q\,
	datad => \D|PSEUDORANDOM|ALT_INV_count[1]~49_combout\,
	dataf => \D|ALT_INV_comb~0_combout\,
	combout => \D|PSEUDORANDOM|count[1]~50_combout\);

-- Location: MLABCELL_X82_Y36_N0
\D|PSEUDORANDOM|count[2]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[2]~45_combout\ = ( \D|comb~0_combout\ & ( \D|Registrador|Q\(2) ) ) # ( !\D|comb~0_combout\ & ( \D|PSEUDORANDOM|count[2]~45_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \D|PSEUDORANDOM|ALT_INV_count[2]~45_combout\,
	datad => \D|Registrador|ALT_INV_Q\(2),
	dataf => \D|ALT_INV_comb~0_combout\,
	combout => \D|PSEUDORANDOM|count[2]~45_combout\);

-- Location: MLABCELL_X82_Y36_N39
\D|PSEUDORANDOM|count[2]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[2]~47_combout\ = !\D|PSEUDORANDOM|count[1]~50_combout\ $ (!\D|PSEUDORANDOM|count[2]~45_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|PSEUDORANDOM|ALT_INV_count[1]~50_combout\,
	datad => \D|PSEUDORANDOM|ALT_INV_count[2]~45_combout\,
	combout => \D|PSEUDORANDOM|count[2]~47_combout\);

-- Location: FF_X82_Y36_N40
\D|PSEUDORANDOM|count[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|PSEUDORANDOM|count[2]~47_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	ena => \D|C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|PSEUDORANDOM|count[2]~_emulated_q\);

-- Location: LABCELL_X83_Y36_N42
\D|PSEUDORANDOM|count[2]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[2]~46_combout\ = ( \D|PSEUDORANDOM|count[2]~45_combout\ & ( (!\D|comb~0_combout\ & (!\D|PSEUDORANDOM|count[2]~_emulated_q\)) # (\D|comb~0_combout\ & ((\D|Registrador|Q\(2)))) ) ) # ( !\D|PSEUDORANDOM|count[2]~45_combout\ & ( 
-- (!\D|comb~0_combout\ & (\D|PSEUDORANDOM|count[2]~_emulated_q\)) # (\D|comb~0_combout\ & ((\D|Registrador|Q\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011110001000110111011000100011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ALT_INV_comb~0_combout\,
	datab => \D|PSEUDORANDOM|ALT_INV_count[2]~_emulated_q\,
	datad => \D|Registrador|ALT_INV_Q\(2),
	dataf => \D|PSEUDORANDOM|ALT_INV_count[2]~45_combout\,
	combout => \D|PSEUDORANDOM|count[2]~46_combout\);

-- Location: MLABCELL_X82_Y36_N54
\D|PSEUDORANDOM|count[3]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[3]~41_combout\ = ( \D|comb~0_combout\ & ( \D|Registrador|Q\(3) ) ) # ( !\D|comb~0_combout\ & ( \D|PSEUDORANDOM|count[3]~41_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \D|PSEUDORANDOM|ALT_INV_count[3]~41_combout\,
	datad => \D|Registrador|ALT_INV_Q\(3),
	dataf => \D|ALT_INV_comb~0_combout\,
	combout => \D|PSEUDORANDOM|count[3]~41_combout\);

-- Location: MLABCELL_X82_Y36_N30
\D|PSEUDORANDOM|count[3]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[3]~43_combout\ = ( \D|PSEUDORANDOM|count[3]~41_combout\ & ( !\D|PSEUDORANDOM|count[2]~46_combout\ ) ) # ( !\D|PSEUDORANDOM|count[3]~41_combout\ & ( \D|PSEUDORANDOM|count[2]~46_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \D|PSEUDORANDOM|ALT_INV_count[2]~46_combout\,
	dataf => \D|PSEUDORANDOM|ALT_INV_count[3]~41_combout\,
	combout => \D|PSEUDORANDOM|count[3]~43_combout\);

-- Location: FF_X82_Y36_N31
\D|PSEUDORANDOM|count[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|PSEUDORANDOM|count[3]~43_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	ena => \D|C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|PSEUDORANDOM|count[3]~_emulated_q\);

-- Location: LABCELL_X83_Y36_N30
\D|PSEUDORANDOM|count[3]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[3]~42_combout\ = ( \D|comb~0_combout\ & ( \D|Registrador|Q\(3) ) ) # ( !\D|comb~0_combout\ & ( !\D|PSEUDORANDOM|count[3]~_emulated_q\ $ (!\D|PSEUDORANDOM|count[3]~41_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|PSEUDORANDOM|ALT_INV_count[3]~_emulated_q\,
	datac => \D|PSEUDORANDOM|ALT_INV_count[3]~41_combout\,
	datad => \D|Registrador|ALT_INV_Q\(3),
	dataf => \D|ALT_INV_comb~0_combout\,
	combout => \D|PSEUDORANDOM|count[3]~42_combout\);

-- Location: MLABCELL_X82_Y36_N36
\D|PSEUDORANDOM|count[4]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[4]~39_combout\ = !\D|PSEUDORANDOM|count[4]~37_combout\ $ (!\D|PSEUDORANDOM|count[3]~42_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D|PSEUDORANDOM|ALT_INV_count[4]~37_combout\,
	datac => \D|PSEUDORANDOM|ALT_INV_count[3]~42_combout\,
	combout => \D|PSEUDORANDOM|count[4]~39_combout\);

-- Location: FF_X82_Y36_N38
\D|PSEUDORANDOM|count[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|PSEUDORANDOM|count[4]~39_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	ena => \D|C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|PSEUDORANDOM|count[4]~_emulated_q\);

-- Location: MLABCELL_X82_Y36_N24
\D|PSEUDORANDOM|count[4]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[4]~38_combout\ = ( \D|PSEUDORANDOM|count[4]~37_combout\ & ( (!\D|comb~0_combout\ & ((!\D|PSEUDORANDOM|count[4]~_emulated_q\))) # (\D|comb~0_combout\ & (\D|Registrador|Q\(4))) ) ) # ( !\D|PSEUDORANDOM|count[4]~37_combout\ & ( 
-- (!\D|comb~0_combout\ & ((\D|PSEUDORANDOM|count[4]~_emulated_q\))) # (\D|comb~0_combout\ & (\D|Registrador|Q\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110111010001110100011101000111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|Registrador|ALT_INV_Q\(4),
	datab => \D|ALT_INV_comb~0_combout\,
	datac => \D|PSEUDORANDOM|ALT_INV_count[4]~_emulated_q\,
	dataf => \D|PSEUDORANDOM|ALT_INV_count[4]~37_combout\,
	combout => \D|PSEUDORANDOM|count[4]~38_combout\);

-- Location: LABCELL_X83_Y34_N24
\D|PSEUDORANDOM|count[5]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[5]~33_combout\ = ( \D|comb~0_combout\ & ( \D|Registrador|Q\(5) ) ) # ( !\D|comb~0_combout\ & ( \D|PSEUDORANDOM|count[5]~33_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D|Registrador|ALT_INV_Q\(5),
	datac => \D|PSEUDORANDOM|ALT_INV_count[5]~33_combout\,
	dataf => \D|ALT_INV_comb~0_combout\,
	combout => \D|PSEUDORANDOM|count[5]~33_combout\);

-- Location: MLABCELL_X82_Y36_N42
\D|PSEUDORANDOM|count[5]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[5]~35_combout\ = ( \D|PSEUDORANDOM|count[5]~33_combout\ & ( !\D|PSEUDORANDOM|count[4]~38_combout\ ) ) # ( !\D|PSEUDORANDOM|count[5]~33_combout\ & ( \D|PSEUDORANDOM|count[4]~38_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D|PSEUDORANDOM|ALT_INV_count[4]~38_combout\,
	dataf => \D|PSEUDORANDOM|ALT_INV_count[5]~33_combout\,
	combout => \D|PSEUDORANDOM|count[5]~35_combout\);

-- Location: FF_X82_Y36_N44
\D|PSEUDORANDOM|count[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|PSEUDORANDOM|count[5]~35_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	ena => \D|C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|PSEUDORANDOM|count[5]~_emulated_q\);

-- Location: LABCELL_X83_Y34_N27
\D|PSEUDORANDOM|count[5]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[5]~34_combout\ = ( \D|PSEUDORANDOM|count[5]~33_combout\ & ( (!\D|comb~0_combout\ & ((!\D|PSEUDORANDOM|count[5]~_emulated_q\))) # (\D|comb~0_combout\ & (\D|Registrador|Q\(5))) ) ) # ( !\D|PSEUDORANDOM|count[5]~33_combout\ & ( 
-- (!\D|comb~0_combout\ & ((\D|PSEUDORANDOM|count[5]~_emulated_q\))) # (\D|comb~0_combout\ & (\D|Registrador|Q\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111110101111000001011010111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ALT_INV_comb~0_combout\,
	datac => \D|Registrador|ALT_INV_Q\(5),
	datad => \D|PSEUDORANDOM|ALT_INV_count[5]~_emulated_q\,
	dataf => \D|PSEUDORANDOM|ALT_INV_count[5]~33_combout\,
	combout => \D|PSEUDORANDOM|count[5]~34_combout\);

-- Location: MLABCELL_X82_Y34_N3
\D|PSEUDORANDOM|count[6]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[6]~31_combout\ = !\D|PSEUDORANDOM|count[6]~29_combout\ $ (!\D|PSEUDORANDOM|count[5]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|PSEUDORANDOM|ALT_INV_count[6]~29_combout\,
	datab => \D|PSEUDORANDOM|ALT_INV_count[5]~34_combout\,
	combout => \D|PSEUDORANDOM|count[6]~31_combout\);

-- Location: FF_X82_Y34_N5
\D|PSEUDORANDOM|count[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|PSEUDORANDOM|count[6]~31_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	ena => \D|C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|PSEUDORANDOM|count[6]~_emulated_q\);

-- Location: MLABCELL_X82_Y34_N48
\D|PSEUDORANDOM|count[6]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[6]~30_combout\ = ( \D|comb~0_combout\ & ( \D|Registrador|Q\(6) ) ) # ( !\D|comb~0_combout\ & ( !\D|PSEUDORANDOM|count[6]~29_combout\ $ (!\D|PSEUDORANDOM|count[6]~_emulated_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|PSEUDORANDOM|ALT_INV_count[6]~29_combout\,
	datac => \D|Registrador|ALT_INV_Q\(6),
	datad => \D|PSEUDORANDOM|ALT_INV_count[6]~_emulated_q\,
	dataf => \D|ALT_INV_comb~0_combout\,
	combout => \D|PSEUDORANDOM|count[6]~30_combout\);

-- Location: MLABCELL_X82_Y34_N27
\D|PSEUDORANDOM|count[7]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[7]~25_combout\ = ( \D|PSEUDORANDOM|count[7]~25_combout\ & ( \D|comb~0_combout\ & ( \D|Registrador|Q\(7) ) ) ) # ( !\D|PSEUDORANDOM|count[7]~25_combout\ & ( \D|comb~0_combout\ & ( \D|Registrador|Q\(7) ) ) ) # ( 
-- \D|PSEUDORANDOM|count[7]~25_combout\ & ( !\D|comb~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D|Registrador|ALT_INV_Q\(7),
	datae => \D|PSEUDORANDOM|ALT_INV_count[7]~25_combout\,
	dataf => \D|ALT_INV_comb~0_combout\,
	combout => \D|PSEUDORANDOM|count[7]~25_combout\);

-- Location: MLABCELL_X82_Y34_N0
\D|PSEUDORANDOM|count[7]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[7]~27_combout\ = ( \D|PSEUDORANDOM|count[7]~25_combout\ & ( !\D|PSEUDORANDOM|count[6]~30_combout\ ) ) # ( !\D|PSEUDORANDOM|count[7]~25_combout\ & ( \D|PSEUDORANDOM|count[6]~30_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \D|PSEUDORANDOM|ALT_INV_count[6]~30_combout\,
	dataf => \D|PSEUDORANDOM|ALT_INV_count[7]~25_combout\,
	combout => \D|PSEUDORANDOM|count[7]~27_combout\);

-- Location: FF_X82_Y34_N2
\D|PSEUDORANDOM|count[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|PSEUDORANDOM|count[7]~27_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	ena => \D|C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|PSEUDORANDOM|count[7]~_emulated_q\);

-- Location: MLABCELL_X82_Y34_N57
\D|PSEUDORANDOM|count[7]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[7]~26_combout\ = ( \D|comb~0_combout\ & ( \D|Registrador|Q\(7) ) ) # ( !\D|comb~0_combout\ & ( !\D|PSEUDORANDOM|count[7]~_emulated_q\ $ (!\D|PSEUDORANDOM|count[7]~25_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|PSEUDORANDOM|ALT_INV_count[7]~_emulated_q\,
	datac => \D|Registrador|ALT_INV_Q\(7),
	datad => \D|PSEUDORANDOM|ALT_INV_count[7]~25_combout\,
	dataf => \D|ALT_INV_comb~0_combout\,
	combout => \D|PSEUDORANDOM|count[7]~26_combout\);

-- Location: MLABCELL_X82_Y35_N6
\D|PSEUDORANDOM|count[8]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[8]~21_combout\ = ( \D|comb~0_combout\ & ( \D|Registrador|Q\(8) ) ) # ( !\D|comb~0_combout\ & ( \D|Registrador|Q\(8) & ( \D|PSEUDORANDOM|count[8]~21_combout\ ) ) ) # ( !\D|comb~0_combout\ & ( !\D|Registrador|Q\(8) & ( 
-- \D|PSEUDORANDOM|count[8]~21_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D|PSEUDORANDOM|ALT_INV_count[8]~21_combout\,
	datae => \D|ALT_INV_comb~0_combout\,
	dataf => \D|Registrador|ALT_INV_Q\(8),
	combout => \D|PSEUDORANDOM|count[8]~21_combout\);

-- Location: MLABCELL_X82_Y34_N54
\D|PSEUDORANDOM|count[8]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[8]~23_combout\ = ( \D|PSEUDORANDOM|count[8]~21_combout\ & ( !\D|PSEUDORANDOM|count[7]~26_combout\ ) ) # ( !\D|PSEUDORANDOM|count[8]~21_combout\ & ( \D|PSEUDORANDOM|count[7]~26_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D|PSEUDORANDOM|ALT_INV_count[7]~26_combout\,
	dataf => \D|PSEUDORANDOM|ALT_INV_count[8]~21_combout\,
	combout => \D|PSEUDORANDOM|count[8]~23_combout\);

-- Location: FF_X82_Y34_N56
\D|PSEUDORANDOM|count[8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|PSEUDORANDOM|count[8]~23_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	ena => \D|C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|PSEUDORANDOM|count[8]~_emulated_q\);

-- Location: MLABCELL_X82_Y35_N27
\D|PSEUDORANDOM|count[8]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[8]~22_combout\ = ( \D|PSEUDORANDOM|count[8]~21_combout\ & ( (!\D|comb~0_combout\ & ((!\D|PSEUDORANDOM|count[8]~_emulated_q\))) # (\D|comb~0_combout\ & (\D|Registrador|Q\(8))) ) ) # ( !\D|PSEUDORANDOM|count[8]~21_combout\ & ( 
-- (!\D|comb~0_combout\ & ((\D|PSEUDORANDOM|count[8]~_emulated_q\))) # (\D|comb~0_combout\ & (\D|Registrador|Q\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111110101111000001011010111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ALT_INV_comb~0_combout\,
	datac => \D|Registrador|ALT_INV_Q\(8),
	datad => \D|PSEUDORANDOM|ALT_INV_count[8]~_emulated_q\,
	dataf => \D|PSEUDORANDOM|ALT_INV_count[8]~21_combout\,
	combout => \D|PSEUDORANDOM|count[8]~22_combout\);

-- Location: LABCELL_X80_Y35_N30
\D|PSEUDORANDOM|count[9]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[9]~19_combout\ = ( \D|PSEUDORANDOM|count[8]~22_combout\ & ( !\D|PSEUDORANDOM|count[9]~17_combout\ ) ) # ( !\D|PSEUDORANDOM|count[8]~22_combout\ & ( \D|PSEUDORANDOM|count[9]~17_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \D|PSEUDORANDOM|ALT_INV_count[9]~17_combout\,
	dataf => \D|PSEUDORANDOM|ALT_INV_count[8]~22_combout\,
	combout => \D|PSEUDORANDOM|count[9]~19_combout\);

-- Location: FF_X80_Y35_N32
\D|PSEUDORANDOM|count[9]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|PSEUDORANDOM|count[9]~19_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	ena => \D|C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|PSEUDORANDOM|count[9]~_emulated_q\);

-- Location: MLABCELL_X82_Y35_N42
\D|PSEUDORANDOM|count[9]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[9]~18_combout\ = ( \D|PSEUDORANDOM|count[9]~17_combout\ & ( (!\D|comb~0_combout\ & ((!\D|PSEUDORANDOM|count[9]~_emulated_q\))) # (\D|comb~0_combout\ & (\D|Registrador|Q\(9))) ) ) # ( !\D|PSEUDORANDOM|count[9]~17_combout\ & ( 
-- (!\D|comb~0_combout\ & ((\D|PSEUDORANDOM|count[9]~_emulated_q\))) # (\D|comb~0_combout\ & (\D|Registrador|Q\(9))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001111110011000000111111001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D|Registrador|ALT_INV_Q\(9),
	datac => \D|ALT_INV_comb~0_combout\,
	datad => \D|PSEUDORANDOM|ALT_INV_count[9]~_emulated_q\,
	dataf => \D|PSEUDORANDOM|ALT_INV_count[9]~17_combout\,
	combout => \D|PSEUDORANDOM|count[9]~18_combout\);

-- Location: MLABCELL_X82_Y36_N12
\D|PSEUDORANDOM|count[10]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[10]~13_combout\ = ( \D|comb~0_combout\ & ( \D|Registrador|Q\(10) ) ) # ( !\D|comb~0_combout\ & ( \D|PSEUDORANDOM|count[10]~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D|PSEUDORANDOM|ALT_INV_count[10]~13_combout\,
	datad => \D|Registrador|ALT_INV_Q\(10),
	dataf => \D|ALT_INV_comb~0_combout\,
	combout => \D|PSEUDORANDOM|count[10]~13_combout\);

-- Location: MLABCELL_X82_Y36_N51
\D|PSEUDORANDOM|count[10]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[10]~15_combout\ = !\D|PSEUDORANDOM|count[9]~18_combout\ $ (!\D|PSEUDORANDOM|count[10]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|PSEUDORANDOM|ALT_INV_count[9]~18_combout\,
	datac => \D|PSEUDORANDOM|ALT_INV_count[10]~13_combout\,
	combout => \D|PSEUDORANDOM|count[10]~15_combout\);

-- Location: FF_X82_Y36_N52
\D|PSEUDORANDOM|count[10]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|PSEUDORANDOM|count[10]~15_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	ena => \D|C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|PSEUDORANDOM|count[10]~_emulated_q\);

-- Location: LABCELL_X83_Y36_N36
\D|PSEUDORANDOM|count[10]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[10]~14_combout\ = ( \D|PSEUDORANDOM|count[10]~13_combout\ & ( (!\D|comb~0_combout\ & (!\D|PSEUDORANDOM|count[10]~_emulated_q\)) # (\D|comb~0_combout\ & ((\D|Registrador|Q\(10)))) ) ) # ( !\D|PSEUDORANDOM|count[10]~13_combout\ & ( 
-- (!\D|comb~0_combout\ & (\D|PSEUDORANDOM|count[10]~_emulated_q\)) # (\D|comb~0_combout\ & ((\D|Registrador|Q\(10)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111110100000111101011010000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ALT_INV_comb~0_combout\,
	datac => \D|PSEUDORANDOM|ALT_INV_count[10]~_emulated_q\,
	datad => \D|Registrador|ALT_INV_Q\(10),
	dataf => \D|PSEUDORANDOM|ALT_INV_count[10]~13_combout\,
	combout => \D|PSEUDORANDOM|count[10]~14_combout\);

-- Location: MLABCELL_X82_Y36_N18
\D|PSEUDORANDOM|count[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[11]~11_combout\ = ( \D|PSEUDORANDOM|count[11]~9_combout\ & ( !\D|PSEUDORANDOM|count[10]~14_combout\ ) ) # ( !\D|PSEUDORANDOM|count[11]~9_combout\ & ( \D|PSEUDORANDOM|count[10]~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \D|PSEUDORANDOM|ALT_INV_count[10]~14_combout\,
	dataf => \D|PSEUDORANDOM|ALT_INV_count[11]~9_combout\,
	combout => \D|PSEUDORANDOM|count[11]~11_combout\);

-- Location: FF_X82_Y36_N20
\D|PSEUDORANDOM|count[11]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|PSEUDORANDOM|count[11]~11_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	ena => \D|C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|PSEUDORANDOM|count[11]~_emulated_q\);

-- Location: MLABCELL_X82_Y36_N9
\D|PSEUDORANDOM|count[11]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[11]~10_combout\ = ( \D|comb~0_combout\ & ( \D|Registrador|Q\(11) ) ) # ( !\D|comb~0_combout\ & ( !\D|PSEUDORANDOM|count[11]~9_combout\ $ (!\D|PSEUDORANDOM|count[11]~_emulated_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|PSEUDORANDOM|ALT_INV_count[11]~9_combout\,
	datac => \D|PSEUDORANDOM|ALT_INV_count[11]~_emulated_q\,
	datad => \D|Registrador|ALT_INV_Q\(11),
	dataf => \D|ALT_INV_comb~0_combout\,
	combout => \D|PSEUDORANDOM|count[11]~10_combout\);

-- Location: LABCELL_X80_Y36_N3
\D|geraSeed|IC_4|Qout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|geraSeed|IC_4|Qout~1_combout\ = (!\comb~0_combout\ & !\D|geraSeed|IC_4|Qout[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_comb~0_combout\,
	datad => \D|geraSeed|IC_4|ALT_INV_Qout[0]~reg0_q\,
	combout => \D|geraSeed|IC_4|Qout~1_combout\);

-- Location: LABCELL_X80_Y36_N0
\D|geraSeed|IC_3|Qout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|geraSeed|IC_3|Qout~4_combout\ = ( \D|geraSeed|ClrN4~0_combout\ ) # ( !\D|geraSeed|ClrN4~0_combout\ & ( (!\R|process_0~0_combout\) # (\reset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111101011111010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \R|ALT_INV_process_0~0_combout\,
	dataf => \D|geraSeed|ALT_INV_ClrN4~0_combout\,
	combout => \D|geraSeed|IC_3|Qout~4_combout\);

-- Location: FF_X80_Y36_N5
\D|geraSeed|IC_4|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|geraSeed|IC_4|Qout~1_combout\,
	ena => \D|geraSeed|IC_3|Qout~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|geraSeed|IC_4|Qout[0]~reg0_q\);

-- Location: LABCELL_X80_Y36_N42
\D|geraSeed|IC_4|Qout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|geraSeed|IC_4|Qout~0_combout\ = ( !\D|geraSeed|IC_4|Qout[1]~reg0_q\ & ( \D|geraSeed|IC_4|Qout[0]~reg0_q\ & ( (!\comb~0_combout\ & ((!\D|geraSeed|ClrN4~0_combout\) # (!\D|geraSeed|IC_4|Qout[3]~reg0_q\))) ) ) ) # ( \D|geraSeed|IC_4|Qout[1]~reg0_q\ & ( 
-- !\D|geraSeed|IC_4|Qout[0]~reg0_q\ & ( !\comb~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110011001100110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_comb~0_combout\,
	datac => \D|geraSeed|ALT_INV_ClrN4~0_combout\,
	datad => \D|geraSeed|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datae => \D|geraSeed|IC_4|ALT_INV_Qout[1]~reg0_q\,
	dataf => \D|geraSeed|IC_4|ALT_INV_Qout[0]~reg0_q\,
	combout => \D|geraSeed|IC_4|Qout~0_combout\);

-- Location: FF_X80_Y36_N44
\D|geraSeed|IC_4|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|geraSeed|IC_4|Qout~0_combout\,
	ena => \D|geraSeed|IC_3|Qout~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|geraSeed|IC_4|Qout[1]~reg0_q\);

-- Location: LABCELL_X80_Y36_N30
\D|geraSeed|IC_4|Qout[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|geraSeed|IC_4|Qout[3]~2_combout\ = ( \D|geraSeed|IC_4|Qout[3]~reg0_q\ & ( \D|geraSeed|IC_4|Qout[0]~reg0_q\ & ( (!\D|geraSeed|ClrN4~0_combout\ & !\comb~0_combout\) ) ) ) # ( !\D|geraSeed|IC_4|Qout[3]~reg0_q\ & ( \D|geraSeed|IC_4|Qout[0]~reg0_q\ & ( 
-- (\D|geraSeed|ClrN4~0_combout\ & (!\comb~0_combout\ & (\D|geraSeed|IC_4|Qout[2]~reg0_q\ & \D|geraSeed|IC_4|Qout[1]~reg0_q\))) ) ) ) # ( \D|geraSeed|IC_4|Qout[3]~reg0_q\ & ( !\D|geraSeed|IC_4|Qout[0]~reg0_q\ & ( !\comb~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000001001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|geraSeed|ALT_INV_ClrN4~0_combout\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \D|geraSeed|IC_4|ALT_INV_Qout[2]~reg0_q\,
	datad => \D|geraSeed|IC_4|ALT_INV_Qout[1]~reg0_q\,
	datae => \D|geraSeed|IC_4|ALT_INV_Qout[3]~reg0_q\,
	dataf => \D|geraSeed|IC_4|ALT_INV_Qout[0]~reg0_q\,
	combout => \D|geraSeed|IC_4|Qout[3]~2_combout\);

-- Location: FF_X80_Y36_N32
\D|geraSeed|IC_4|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|geraSeed|IC_4|Qout[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|geraSeed|IC_4|Qout[3]~reg0_q\);

-- Location: LABCELL_X80_Y36_N54
\D|geraSeed|IC_4|Qout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|geraSeed|IC_4|Qout~3_combout\ = ( \D|geraSeed|IC_4|Qout[2]~reg0_q\ & ( \D|geraSeed|IC_4|Qout[0]~reg0_q\ & ( (!\comb~0_combout\ & (!\D|geraSeed|IC_4|Qout[1]~reg0_q\ & ((!\D|geraSeed|IC_4|Qout[3]~reg0_q\) # (!\D|geraSeed|ClrN4~0_combout\)))) ) ) ) # ( 
-- !\D|geraSeed|IC_4|Qout[2]~reg0_q\ & ( \D|geraSeed|IC_4|Qout[0]~reg0_q\ & ( (!\comb~0_combout\ & (\D|geraSeed|IC_4|Qout[1]~reg0_q\ & ((!\D|geraSeed|IC_4|Qout[3]~reg0_q\) # (!\D|geraSeed|ClrN4~0_combout\)))) ) ) ) # ( \D|geraSeed|IC_4|Qout[2]~reg0_q\ & ( 
-- !\D|geraSeed|IC_4|Qout[0]~reg0_q\ & ( !\comb~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000110010001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|geraSeed|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \D|geraSeed|ALT_INV_ClrN4~0_combout\,
	datad => \D|geraSeed|IC_4|ALT_INV_Qout[1]~reg0_q\,
	datae => \D|geraSeed|IC_4|ALT_INV_Qout[2]~reg0_q\,
	dataf => \D|geraSeed|IC_4|ALT_INV_Qout[0]~reg0_q\,
	combout => \D|geraSeed|IC_4|Qout~3_combout\);

-- Location: FF_X80_Y36_N56
\D|geraSeed|IC_4|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|geraSeed|IC_4|Qout~3_combout\,
	ena => \D|geraSeed|IC_3|Qout~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|geraSeed|IC_4|Qout[2]~reg0_q\);

-- Location: FF_X81_Y36_N43
\D|Registrador|IQ[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|geraSeed|IC_4|Qout[2]~reg0_q\,
	sclr => \D|comb~0_combout\,
	sload => VCC,
	ena => \D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Registrador|IQ\(14));

-- Location: MLABCELL_X82_Y34_N12
\D|Registrador|Q[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Registrador|Q[14]~feeder_combout\ = ( \D|Registrador|IQ\(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \D|Registrador|ALT_INV_IQ\(14),
	combout => \D|Registrador|Q[14]~feeder_combout\);

-- Location: FF_X82_Y34_N14
\D|Registrador|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Registrador|Q[14]~feeder_combout\,
	ena => \D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Registrador|Q\(14));

-- Location: FF_X82_Y35_N56
\D|Registrador|IQ[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|geraSeed|IC_4|Qout[0]~reg0_q\,
	sclr => \D|comb~0_combout\,
	sload => VCC,
	ena => \D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Registrador|IQ\(12));

-- Location: FF_X82_Y36_N59
\D|Registrador|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|Registrador|IQ\(12),
	sload => VCC,
	ena => \D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Registrador|Q\(12));

-- Location: MLABCELL_X82_Y36_N57
\D|PSEUDORANDOM|count[12]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[12]~5_combout\ = ( \D|comb~0_combout\ & ( \D|Registrador|Q\(12) ) ) # ( !\D|comb~0_combout\ & ( \D|PSEUDORANDOM|count[12]~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \D|PSEUDORANDOM|ALT_INV_count[12]~5_combout\,
	datad => \D|Registrador|ALT_INV_Q\(12),
	dataf => \D|ALT_INV_comb~0_combout\,
	combout => \D|PSEUDORANDOM|count[12]~5_combout\);

-- Location: MLABCELL_X82_Y36_N6
\D|PSEUDORANDOM|count[12]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[12]~7_combout\ = !\D|PSEUDORANDOM|count[11]~10_combout\ $ (!\D|PSEUDORANDOM|count[12]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110000110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D|PSEUDORANDOM|ALT_INV_count[11]~10_combout\,
	datad => \D|PSEUDORANDOM|ALT_INV_count[12]~5_combout\,
	combout => \D|PSEUDORANDOM|count[12]~7_combout\);

-- Location: FF_X82_Y36_N7
\D|PSEUDORANDOM|count[12]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|PSEUDORANDOM|count[12]~7_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	ena => \D|C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|PSEUDORANDOM|count[12]~_emulated_q\);

-- Location: LABCELL_X83_Y36_N54
\D|PSEUDORANDOM|count[12]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[12]~6_combout\ = (!\D|comb~0_combout\ & (!\D|PSEUDORANDOM|count[12]~_emulated_q\ $ (((!\D|PSEUDORANDOM|count[12]~5_combout\))))) # (\D|comb~0_combout\ & (((\D|Registrador|Q\(12)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011110001101001001111000110100100111100011010010011110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ALT_INV_comb~0_combout\,
	datab => \D|PSEUDORANDOM|ALT_INV_count[12]~_emulated_q\,
	datac => \D|Registrador|ALT_INV_Q\(12),
	datad => \D|PSEUDORANDOM|ALT_INV_count[12]~5_combout\,
	combout => \D|PSEUDORANDOM|count[12]~6_combout\);

-- Location: FF_X81_Y36_N58
\D|Registrador|IQ[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|geraSeed|IC_4|Qout[1]~reg0_q\,
	sclr => \D|comb~0_combout\,
	sload => VCC,
	ena => \D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Registrador|IQ\(13));

-- Location: FF_X82_Y36_N17
\D|Registrador|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|Registrador|IQ\(13),
	sload => VCC,
	ena => \D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Registrador|Q\(13));

-- Location: MLABCELL_X82_Y36_N3
\D|PSEUDORANDOM|count[13]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[13]~1_combout\ = ( \D|Registrador|Q\(13) & ( (\D|comb~0_combout\) # (\D|PSEUDORANDOM|count[13]~1_combout\) ) ) # ( !\D|Registrador|Q\(13) & ( (\D|PSEUDORANDOM|count[13]~1_combout\ & !\D|comb~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|PSEUDORANDOM|ALT_INV_count[13]~1_combout\,
	datac => \D|ALT_INV_comb~0_combout\,
	dataf => \D|Registrador|ALT_INV_Q\(13),
	combout => \D|PSEUDORANDOM|count[13]~1_combout\);

-- Location: MLABCELL_X82_Y36_N48
\D|PSEUDORANDOM|count[13]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[13]~3_combout\ = ( \D|PSEUDORANDOM|count[13]~1_combout\ & ( !\D|PSEUDORANDOM|count[12]~6_combout\ ) ) # ( !\D|PSEUDORANDOM|count[13]~1_combout\ & ( \D|PSEUDORANDOM|count[12]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D|PSEUDORANDOM|ALT_INV_count[12]~6_combout\,
	dataf => \D|PSEUDORANDOM|ALT_INV_count[13]~1_combout\,
	combout => \D|PSEUDORANDOM|count[13]~3_combout\);

-- Location: FF_X82_Y36_N49
\D|PSEUDORANDOM|count[13]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|PSEUDORANDOM|count[13]~3_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	ena => \D|C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|PSEUDORANDOM|count[13]~_emulated_q\);

-- Location: LABCELL_X83_Y36_N15
\D|PSEUDORANDOM|count[13]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[13]~2_combout\ = ( \D|comb~0_combout\ & ( \D|Registrador|Q\(13) ) ) # ( !\D|comb~0_combout\ & ( !\D|PSEUDORANDOM|count[13]~_emulated_q\ $ (!\D|PSEUDORANDOM|count[13]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D|PSEUDORANDOM|ALT_INV_count[13]~_emulated_q\,
	datac => \D|PSEUDORANDOM|ALT_INV_count[13]~1_combout\,
	datad => \D|Registrador|ALT_INV_Q\(13),
	dataf => \D|ALT_INV_comb~0_combout\,
	combout => \D|PSEUDORANDOM|count[13]~2_combout\);

-- Location: MLABCELL_X82_Y34_N6
\D|PSEUDORANDOM|count[14]~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[14]~61_combout\ = ( \D|comb~0_combout\ & ( \D|Registrador|Q\(14) ) ) # ( !\D|comb~0_combout\ & ( \D|PSEUDORANDOM|count[14]~61_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D|Registrador|ALT_INV_Q\(14),
	datad => \D|PSEUDORANDOM|ALT_INV_count[14]~61_combout\,
	dataf => \D|ALT_INV_comb~0_combout\,
	combout => \D|PSEUDORANDOM|count[14]~61_combout\);

-- Location: MLABCELL_X82_Y36_N21
\D|PSEUDORANDOM|count[14]~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[14]~63_combout\ = !\D|PSEUDORANDOM|count[13]~2_combout\ $ (!\D|PSEUDORANDOM|count[14]~61_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \D|PSEUDORANDOM|ALT_INV_count[13]~2_combout\,
	datad => \D|PSEUDORANDOM|ALT_INV_count[14]~61_combout\,
	combout => \D|PSEUDORANDOM|count[14]~63_combout\);

-- Location: FF_X82_Y36_N22
\D|PSEUDORANDOM|count[14]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|PSEUDORANDOM|count[14]~63_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	ena => \D|C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|PSEUDORANDOM|count[14]~_emulated_q\);

-- Location: MLABCELL_X82_Y34_N39
\D|PSEUDORANDOM|count[14]~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[14]~62_combout\ = ( \D|PSEUDORANDOM|count[14]~61_combout\ & ( (!\D|comb~0_combout\ & ((!\D|PSEUDORANDOM|count[14]~_emulated_q\))) # (\D|comb~0_combout\ & (\D|Registrador|Q\(14))) ) ) # ( !\D|PSEUDORANDOM|count[14]~61_combout\ & ( 
-- (!\D|comb~0_combout\ & ((\D|PSEUDORANDOM|count[14]~_emulated_q\))) # (\D|comb~0_combout\ & (\D|Registrador|Q\(14))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111111001111000000111100111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D|ALT_INV_comb~0_combout\,
	datac => \D|Registrador|ALT_INV_Q\(14),
	datad => \D|PSEUDORANDOM|ALT_INV_count[14]~_emulated_q\,
	dataf => \D|PSEUDORANDOM|ALT_INV_count[14]~61_combout\,
	combout => \D|PSEUDORANDOM|count[14]~62_combout\);

-- Location: FF_X82_Y35_N34
\D|Registrador|IQ[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|geraSeed|IC_4|Qout[3]~reg0_q\,
	sclr => \D|comb~0_combout\,
	sload => VCC,
	ena => \D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Registrador|IQ\(15));

-- Location: FF_X81_Y36_N56
\D|Registrador|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|Registrador|IQ\(15),
	sload => VCC,
	ena => \D|Registrador|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Registrador|Q\(15));

-- Location: LABCELL_X81_Y36_N42
\D|PSEUDORANDOM|count[15]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[15]~57_combout\ = ( \D|comb~0_combout\ & ( \D|Registrador|Q\(15) ) ) # ( !\D|comb~0_combout\ & ( \D|PSEUDORANDOM|count[15]~57_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D|PSEUDORANDOM|ALT_INV_count[15]~57_combout\,
	datac => \D|Registrador|ALT_INV_Q\(15),
	dataf => \D|ALT_INV_comb~0_combout\,
	combout => \D|PSEUDORANDOM|count[15]~57_combout\);

-- Location: MLABCELL_X82_Y34_N36
\D|PSEUDORANDOM|count[15]~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[15]~59_combout\ = !\D|PSEUDORANDOM|count[14]~62_combout\ $ (!\D|PSEUDORANDOM|count[15]~57_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \D|PSEUDORANDOM|ALT_INV_count[14]~62_combout\,
	datad => \D|PSEUDORANDOM|ALT_INV_count[15]~57_combout\,
	combout => \D|PSEUDORANDOM|count[15]~59_combout\);

-- Location: FF_X82_Y34_N37
\D|PSEUDORANDOM|count[15]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|PSEUDORANDOM|count[15]~59_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	ena => \D|C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|PSEUDORANDOM|count[15]~_emulated_q\);

-- Location: LABCELL_X81_Y36_N39
\D|PSEUDORANDOM|count[15]~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[15]~58_combout\ = ( \D|Registrador|Q\(15) & ( \D|PSEUDORANDOM|count[15]~57_combout\ & ( (!\D|PSEUDORANDOM|count[15]~_emulated_q\) # (\D|comb~0_combout\) ) ) ) # ( !\D|Registrador|Q\(15) & ( \D|PSEUDORANDOM|count[15]~57_combout\ & ( 
-- (!\D|comb~0_combout\ & !\D|PSEUDORANDOM|count[15]~_emulated_q\) ) ) ) # ( \D|Registrador|Q\(15) & ( !\D|PSEUDORANDOM|count[15]~57_combout\ & ( (\D|PSEUDORANDOM|count[15]~_emulated_q\) # (\D|comb~0_combout\) ) ) ) # ( !\D|Registrador|Q\(15) & ( 
-- !\D|PSEUDORANDOM|count[15]~57_combout\ & ( (!\D|comb~0_combout\ & \D|PSEUDORANDOM|count[15]~_emulated_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010010101011111111110101010000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ALT_INV_comb~0_combout\,
	datad => \D|PSEUDORANDOM|ALT_INV_count[15]~_emulated_q\,
	datae => \D|Registrador|ALT_INV_Q\(15),
	dataf => \D|PSEUDORANDOM|ALT_INV_count[15]~57_combout\,
	combout => \D|PSEUDORANDOM|count[15]~58_combout\);

-- Location: MLABCELL_X82_Y36_N27
\D|PSEUDORANDOM|count[0]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[0]~53_combout\ = ( \D|Registrador|Q\(0) & ( (\D|PSEUDORANDOM|count[0]~53_combout\) # (\D|comb~0_combout\) ) ) # ( !\D|Registrador|Q\(0) & ( (!\D|comb~0_combout\ & \D|PSEUDORANDOM|count[0]~53_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D|ALT_INV_comb~0_combout\,
	datac => \D|PSEUDORANDOM|ALT_INV_count[0]~53_combout\,
	dataf => \D|Registrador|ALT_INV_Q\(0),
	combout => \D|PSEUDORANDOM|count[0]~53_combout\);

-- Location: LABCELL_X81_Y36_N0
\D|PSEUDORANDOM|count[0]~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[0]~55_combout\ = ( \D|PSEUDORANDOM|count[0]~53_combout\ & ( !\D|PSEUDORANDOM|count[11]~10_combout\ $ (!\D|PSEUDORANDOM|count[15]~58_combout\) ) ) # ( !\D|PSEUDORANDOM|count[0]~53_combout\ & ( !\D|PSEUDORANDOM|count[11]~10_combout\ $ 
-- (\D|PSEUDORANDOM|count[15]~58_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110000111100001100111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D|PSEUDORANDOM|ALT_INV_count[11]~10_combout\,
	datac => \D|PSEUDORANDOM|ALT_INV_count[15]~58_combout\,
	dataf => \D|PSEUDORANDOM|ALT_INV_count[0]~53_combout\,
	combout => \D|PSEUDORANDOM|count[0]~55_combout\);

-- Location: FF_X81_Y36_N2
\D|PSEUDORANDOM|count[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|PSEUDORANDOM|count[0]~55_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	ena => \D|C|Eatual.Cicla~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|PSEUDORANDOM|count[0]~_emulated_q\);

-- Location: MLABCELL_X82_Y36_N45
\D|PSEUDORANDOM|count[0]~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|PSEUDORANDOM|count[0]~54_combout\ = ( \D|PSEUDORANDOM|count[0]~53_combout\ & ( (!\D|comb~0_combout\ & ((!\D|PSEUDORANDOM|count[0]~_emulated_q\))) # (\D|comb~0_combout\ & (\D|Registrador|Q\(0))) ) ) # ( !\D|PSEUDORANDOM|count[0]~53_combout\ & ( 
-- (!\D|comb~0_combout\ & ((\D|PSEUDORANDOM|count[0]~_emulated_q\))) # (\D|comb~0_combout\ & (\D|Registrador|Q\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111110101111000001011010111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ALT_INV_comb~0_combout\,
	datac => \D|Registrador|ALT_INV_Q\(0),
	datad => \D|PSEUDORANDOM|ALT_INV_count[0]~_emulated_q\,
	dataf => \D|PSEUDORANDOM|ALT_INV_count[0]~53_combout\,
	combout => \D|PSEUDORANDOM|count[0]~54_combout\);

-- Location: FF_X83_Y36_N53
\D|Converte|binary[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|binary_next~0_combout\,
	asdata => \D|PSEUDORANDOM|count[0]~54_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	sload => \D|Converte|ALT_INV_state.shift~q\,
	ena => \D|Converte|ALT_INV_state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|binary\(0));

-- Location: LABCELL_X83_Y36_N21
\D|Converte|binary[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|binary[1]~feeder_combout\ = \D|Converte|binary\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|Converte|ALT_INV_binary\(0),
	combout => \D|Converte|binary[1]~feeder_combout\);

-- Location: MLABCELL_X82_Y34_N45
\D|Converte|binary[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|binary[1]~0_combout\ = ( \D|Converte|shift_counter\(3) & ( !\D|Converte|state.done~q\ & ( ((!\D|Converte|state.shift~q\) # ((!\D|Converte|shift_counter[2]~DUPLICATE_q\) # (!\D|Converte|shift_counter[1]~DUPLICATE_q\))) # 
-- (\D|Converte|shift_counter[0]~DUPLICATE_q\) ) ) ) # ( !\D|Converte|shift_counter\(3) & ( !\D|Converte|state.done~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|Converte|ALT_INV_shift_counter[0]~DUPLICATE_q\,
	datab => \D|Converte|ALT_INV_state.shift~q\,
	datac => \D|Converte|ALT_INV_shift_counter[2]~DUPLICATE_q\,
	datad => \D|Converte|ALT_INV_shift_counter[1]~DUPLICATE_q\,
	datae => \D|Converte|ALT_INV_shift_counter\(3),
	dataf => \D|Converte|ALT_INV_state.done~q\,
	combout => \D|Converte|binary[1]~0_combout\);

-- Location: FF_X83_Y36_N22
\D|Converte|binary[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|binary[1]~feeder_combout\,
	asdata => \D|PSEUDORANDOM|count[1]~50_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	sload => \D|Converte|ALT_INV_state.shift~q\,
	ena => \D|Converte|binary[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|binary\(1));

-- Location: LABCELL_X83_Y36_N45
\D|Converte|binary[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|binary[2]~feeder_combout\ = ( \D|Converte|binary\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \D|Converte|ALT_INV_binary\(1),
	combout => \D|Converte|binary[2]~feeder_combout\);

-- Location: FF_X83_Y36_N47
\D|Converte|binary[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|binary[2]~feeder_combout\,
	asdata => \D|PSEUDORANDOM|count[2]~46_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	sload => \D|Converte|ALT_INV_state.shift~q\,
	ena => \D|Converte|binary[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|binary\(2));

-- Location: LABCELL_X83_Y36_N33
\D|Converte|binary[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|binary[3]~feeder_combout\ = \D|Converte|binary\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \D|Converte|ALT_INV_binary\(2),
	combout => \D|Converte|binary[3]~feeder_combout\);

-- Location: FF_X83_Y36_N35
\D|Converte|binary[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|binary[3]~feeder_combout\,
	asdata => \D|PSEUDORANDOM|count[3]~42_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	sload => \D|Converte|ALT_INV_state.shift~q\,
	ena => \D|Converte|binary[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|binary\(3));

-- Location: LABCELL_X83_Y36_N57
\D|Converte|binary[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|binary[4]~feeder_combout\ = ( \D|Converte|binary\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \D|Converte|ALT_INV_binary\(3),
	combout => \D|Converte|binary[4]~feeder_combout\);

-- Location: FF_X83_Y36_N58
\D|Converte|binary[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|binary[4]~feeder_combout\,
	asdata => \D|PSEUDORANDOM|count[4]~38_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	sload => \D|Converte|ALT_INV_state.shift~q\,
	ena => \D|Converte|binary[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|binary\(4));

-- Location: LABCELL_X83_Y34_N21
\D|Converte|binary[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|binary[5]~feeder_combout\ = ( \D|Converte|binary\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \D|Converte|ALT_INV_binary\(4),
	combout => \D|Converte|binary[5]~feeder_combout\);

-- Location: FF_X83_Y34_N22
\D|Converte|binary[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|binary[5]~feeder_combout\,
	asdata => \D|PSEUDORANDOM|count[5]~34_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	sload => \D|Converte|ALT_INV_state.shift~q\,
	ena => \D|Converte|binary[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|binary\(5));

-- Location: LABCELL_X81_Y34_N15
\D|Converte|binary[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|binary[6]~feeder_combout\ = \D|Converte|binary\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D|Converte|ALT_INV_binary\(5),
	combout => \D|Converte|binary[6]~feeder_combout\);

-- Location: FF_X81_Y34_N17
\D|Converte|binary[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|binary[6]~feeder_combout\,
	asdata => \D|PSEUDORANDOM|count[6]~30_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	sload => \D|Converte|ALT_INV_state.shift~q\,
	ena => \D|Converte|binary[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|binary\(6));

-- Location: LABCELL_X81_Y34_N12
\D|Converte|binary[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|binary[7]~feeder_combout\ = \D|Converte|binary\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D|Converte|ALT_INV_binary\(6),
	combout => \D|Converte|binary[7]~feeder_combout\);

-- Location: FF_X81_Y34_N13
\D|Converte|binary[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|binary[7]~feeder_combout\,
	asdata => \D|PSEUDORANDOM|count[7]~26_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	sload => \D|Converte|ALT_INV_state.shift~q\,
	ena => \D|Converte|binary[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|binary\(7));

-- Location: LABCELL_X83_Y36_N0
\D|Converte|binary[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|binary[8]~feeder_combout\ = \D|Converte|binary\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D|Converte|ALT_INV_binary\(7),
	combout => \D|Converte|binary[8]~feeder_combout\);

-- Location: FF_X83_Y36_N1
\D|Converte|binary[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|binary[8]~feeder_combout\,
	asdata => \D|PSEUDORANDOM|count[8]~22_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	sload => \D|Converte|ALT_INV_state.shift~q\,
	ena => \D|Converte|binary[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|binary\(8));

-- Location: LABCELL_X83_Y36_N39
\D|Converte|binary[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|binary[9]~feeder_combout\ = ( \D|Converte|binary\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \D|Converte|ALT_INV_binary\(8),
	combout => \D|Converte|binary[9]~feeder_combout\);

-- Location: FF_X83_Y36_N41
\D|Converte|binary[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|binary[9]~feeder_combout\,
	asdata => \D|PSEUDORANDOM|count[9]~18_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	sload => \D|Converte|ALT_INV_state.shift~q\,
	ena => \D|Converte|binary[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|binary\(9));

-- Location: LABCELL_X83_Y36_N24
\D|Converte|binary[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|binary[10]~feeder_combout\ = \D|Converte|binary\(9)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D|Converte|ALT_INV_binary\(9),
	combout => \D|Converte|binary[10]~feeder_combout\);

-- Location: FF_X83_Y36_N26
\D|Converte|binary[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|binary[10]~feeder_combout\,
	asdata => \D|PSEUDORANDOM|count[10]~14_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	sload => \D|Converte|ALT_INV_state.shift~q\,
	ena => \D|Converte|binary[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|binary\(10));

-- Location: LABCELL_X83_Y36_N27
\D|Converte|binary[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|binary[11]~feeder_combout\ = \D|Converte|binary\(10)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|Converte|ALT_INV_binary\(10),
	combout => \D|Converte|binary[11]~feeder_combout\);

-- Location: FF_X83_Y36_N29
\D|Converte|binary[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|binary[11]~feeder_combout\,
	asdata => \D|PSEUDORANDOM|count[11]~10_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	sload => \D|Converte|ALT_INV_state.shift~q\,
	ena => \D|Converte|binary[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|binary\(11));

-- Location: LABCELL_X83_Y36_N18
\D|Converte|binary[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|binary[12]~feeder_combout\ = \D|Converte|binary\(11)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \D|Converte|ALT_INV_binary\(11),
	combout => \D|Converte|binary[12]~feeder_combout\);

-- Location: FF_X83_Y36_N20
\D|Converte|binary[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|binary[12]~feeder_combout\,
	asdata => \D|PSEUDORANDOM|count[12]~6_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	sload => \D|Converte|ALT_INV_state.shift~q\,
	ena => \D|Converte|binary[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|binary\(12));

-- Location: LABCELL_X83_Y36_N12
\D|Converte|binary[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|binary[13]~feeder_combout\ = \D|Converte|binary\(12)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \D|Converte|ALT_INV_binary\(12),
	combout => \D|Converte|binary[13]~feeder_combout\);

-- Location: FF_X83_Y36_N13
\D|Converte|binary[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|binary[13]~feeder_combout\,
	asdata => \D|PSEUDORANDOM|count[13]~2_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	sload => \D|Converte|ALT_INV_state.shift~q\,
	ena => \D|Converte|binary[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|binary\(13));

-- Location: LABCELL_X83_Y34_N54
\D|Converte|Selector31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|Selector31~0_combout\ = ( \D|Converte|binary[1]~0_combout\ & ( (\D|Converte|binary\(13) & \D|Converte|Selector1~0_combout\) ) ) # ( !\D|Converte|binary[1]~0_combout\ & ( ((\D|Converte|binary\(13) & \D|Converte|Selector1~0_combout\)) # 
-- (\D|Converte|bcds\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|Converte|ALT_INV_binary\(13),
	datac => \D|Converte|ALT_INV_Selector1~0_combout\,
	datad => \D|Converte|ALT_INV_bcds\(0),
	dataf => \D|Converte|ALT_INV_binary[1]~0_combout\,
	combout => \D|Converte|Selector31~0_combout\);

-- Location: FF_X83_Y34_N56
\D|Converte|bcds[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|Selector31~0_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|bcds\(0));

-- Location: FF_X83_Y34_N55
\D|Converte|bcds[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|Selector31~0_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|bcds[0]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y36_N48
\D|Converte|Selector29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|Selector29~0_combout\ = ( \D|Converte|Selector1~0_combout\ & ( \D|Converte|binary[1]~0_combout\ & ( (!\D|Converte|bcds[1]~DUPLICATE_q\ & (((\D|Converte|bcds\(3) & !\D|Converte|bcds[0]~DUPLICATE_q\)))) # (\D|Converte|bcds[1]~DUPLICATE_q\ & 
-- (((!\D|Converte|bcds\(2) & !\D|Converte|bcds\(3))) # (\D|Converte|bcds[0]~DUPLICATE_q\))) ) ) ) # ( \D|Converte|Selector1~0_combout\ & ( !\D|Converte|binary[1]~0_combout\ & ( (!\D|Converte|bcds[1]~DUPLICATE_q\ $ (((!\D|Converte|bcds\(3)) # 
-- (\D|Converte|bcds[0]~DUPLICATE_q\)))) # (\D|Converte|bcds\(2)) ) ) ) # ( !\D|Converte|Selector1~0_combout\ & ( !\D|Converte|binary[1]~0_combout\ & ( \D|Converte|bcds\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011011110110111011100000000000000000100101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|Converte|ALT_INV_bcds[1]~DUPLICATE_q\,
	datab => \D|Converte|ALT_INV_bcds\(2),
	datac => \D|Converte|ALT_INV_bcds\(3),
	datad => \D|Converte|ALT_INV_bcds[0]~DUPLICATE_q\,
	datae => \D|Converte|ALT_INV_Selector1~0_combout\,
	dataf => \D|Converte|ALT_INV_binary[1]~0_combout\,
	combout => \D|Converte|Selector29~0_combout\);

-- Location: FF_X81_Y35_N20
\D|Converte|bcds[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|Converte|Selector29~0_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|bcds\(2));

-- Location: FF_X82_Y33_N31
\D|Converte|bcds[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|Selector30~0_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|bcds\(1));

-- Location: MLABCELL_X82_Y33_N30
\D|Converte|Selector30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|Selector30~0_combout\ = ( \D|Converte|bcds\(1) & ( \D|Converte|binary[1]~0_combout\ & ( (\D|Converte|Selector1~0_combout\ & (!\D|Converte|bcds[0]~DUPLICATE_q\ $ (((!\D|Converte|bcds\(3) & !\D|Converte|bcds\(2)))))) ) ) ) # ( 
-- !\D|Converte|bcds\(1) & ( \D|Converte|binary[1]~0_combout\ & ( (\D|Converte|Selector1~0_combout\ & ((!\D|Converte|bcds\(3) & (!\D|Converte|bcds\(2) & \D|Converte|bcds[0]~DUPLICATE_q\)) # (\D|Converte|bcds\(3) & ((!\D|Converte|bcds[0]~DUPLICATE_q\))))) ) ) 
-- ) # ( \D|Converte|bcds\(1) & ( !\D|Converte|binary[1]~0_combout\ ) ) # ( !\D|Converte|bcds\(1) & ( !\D|Converte|binary[1]~0_combout\ & ( (\D|Converte|Selector1~0_combout\ & ((!\D|Converte|bcds\(3) & (!\D|Converte|bcds\(2) & 
-- \D|Converte|bcds[0]~DUPLICATE_q\)) # (\D|Converte|bcds\(3) & ((!\D|Converte|bcds[0]~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011000111111111111111100000000010110000000000001111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|Converte|ALT_INV_bcds\(3),
	datab => \D|Converte|ALT_INV_bcds\(2),
	datac => \D|Converte|ALT_INV_bcds[0]~DUPLICATE_q\,
	datad => \D|Converte|ALT_INV_Selector1~0_combout\,
	datae => \D|Converte|ALT_INV_bcds\(1),
	dataf => \D|Converte|ALT_INV_binary[1]~0_combout\,
	combout => \D|Converte|Selector30~0_combout\);

-- Location: FF_X82_Y33_N32
\D|Converte|bcds[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|Selector30~0_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|bcds[1]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y34_N33
\D|Converte|Selector28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|Selector28~0_combout\ = ( \D|Converte|binary[1]~0_combout\ & ( \D|Converte|Selector1~0_combout\ & ( (!\D|Converte|bcds\(2) & (\D|Converte|bcds\(3) & ((\D|Converte|bcds[1]~DUPLICATE_q\) # (\D|Converte|bcds\(0))))) # (\D|Converte|bcds\(2) & 
-- (((!\D|Converte|bcds\(0) & !\D|Converte|bcds[1]~DUPLICATE_q\)))) ) ) ) # ( !\D|Converte|binary[1]~0_combout\ & ( \D|Converte|Selector1~0_combout\ & ( ((!\D|Converte|bcds\(0) & (!\D|Converte|bcds[1]~DUPLICATE_q\ & \D|Converte|bcds\(2)))) # 
-- (\D|Converte|bcds\(3)) ) ) ) # ( !\D|Converte|binary[1]~0_combout\ & ( !\D|Converte|Selector1~0_combout\ & ( \D|Converte|bcds\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101110101010001010111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|Converte|ALT_INV_bcds\(3),
	datab => \D|Converte|ALT_INV_bcds\(0),
	datac => \D|Converte|ALT_INV_bcds[1]~DUPLICATE_q\,
	datad => \D|Converte|ALT_INV_bcds\(2),
	datae => \D|Converte|ALT_INV_binary[1]~0_combout\,
	dataf => \D|Converte|ALT_INV_Selector1~0_combout\,
	combout => \D|Converte|Selector28~0_combout\);

-- Location: FF_X81_Y35_N22
\D|Converte|bcds[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|Converte|Selector28~0_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|bcds\(3));

-- Location: FF_X82_Y33_N14
\D|Converte|bcds_out_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|Converte|bcds\(3),
	clrn => \D|ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \D|Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|bcds_out_reg\(3));

-- Location: MLABCELL_X82_Y37_N57
\D|ContadordoAtraso|IC_1|Qout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordoAtraso|IC_1|Qout[0]~0_combout\ = ( !\D|ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & ( \D|ContadordoAtraso|IC_1|Qout[3]~reg0_q\ & ( (!\D|comb~0_combout\ & \D|C|Eatual.Contando~DUPLICATE_q\) ) ) ) # ( \D|ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & ( 
-- !\D|ContadordoAtraso|IC_1|Qout[3]~reg0_q\ & ( (!\D|comb~0_combout\ & !\D|C|Eatual.Contando~DUPLICATE_q\) ) ) ) # ( !\D|ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & ( !\D|ContadordoAtraso|IC_1|Qout[3]~reg0_q\ & ( (!\D|comb~0_combout\ & 
-- \D|C|Eatual.Contando~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100110011000000000000000000110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D|ALT_INV_comb~0_combout\,
	datad => \D|C|ALT_INV_Eatual.Contando~DUPLICATE_q\,
	datae => \D|ContadordoAtraso|IC_1|ALT_INV_Qout[0]~reg0_q\,
	dataf => \D|ContadordoAtraso|IC_1|ALT_INV_Qout[3]~reg0_q\,
	combout => \D|ContadordoAtraso|IC_1|Qout[0]~0_combout\);

-- Location: FF_X82_Y37_N59
\D|ContadordoAtraso|IC_1|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ContadordoAtraso|IC_1|Qout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ContadordoAtraso|IC_1|Qout[0]~reg0_q\);

-- Location: MLABCELL_X84_Y35_N12
\D|ContadordoAtraso|IC_1|Qout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordoAtraso|IC_1|Qout~1_combout\ = ( \D|ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & ( (!\D|comb~0_combout\ & (!\D|ContadordoAtraso|IC_1|Qout[3]~reg0_q\ & !\D|ContadordoAtraso|IC_1|Qout[1]~reg0_q\)) ) ) # ( !\D|ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & ( 
-- (!\D|comb~0_combout\ & \D|ContadordoAtraso|IC_1|Qout[1]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D|ALT_INV_comb~0_combout\,
	datac => \D|ContadordoAtraso|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datad => \D|ContadordoAtraso|IC_1|ALT_INV_Qout[1]~reg0_q\,
	dataf => \D|ContadordoAtraso|IC_1|ALT_INV_Qout[0]~reg0_q\,
	combout => \D|ContadordoAtraso|IC_1|Qout~1_combout\);

-- Location: MLABCELL_X84_Y35_N54
\D|ContadordoAtraso|IC_1|Qout[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordoAtraso|IC_1|Qout[0]~2_combout\ = ( \D|ContadordoAtraso|IC_1|Qout[3]~reg0_q\ & ( ((\D|comb~0_combout\) # (\D|C|Eatual.Contando~DUPLICATE_q\)) # (\D|ContadordoAtraso|IC_1|Qout[0]~reg0_q\) ) ) # ( !\D|ContadordoAtraso|IC_1|Qout[3]~reg0_q\ & ( 
-- (\D|comb~0_combout\) # (\D|C|Eatual.Contando~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ContadordoAtraso|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datab => \D|C|ALT_INV_Eatual.Contando~DUPLICATE_q\,
	datac => \D|ALT_INV_comb~0_combout\,
	dataf => \D|ContadordoAtraso|IC_1|ALT_INV_Qout[3]~reg0_q\,
	combout => \D|ContadordoAtraso|IC_1|Qout[0]~2_combout\);

-- Location: FF_X84_Y35_N14
\D|ContadordoAtraso|IC_1|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ContadordoAtraso|IC_1|Qout~1_combout\,
	ena => \D|ContadordoAtraso|IC_1|Qout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ContadordoAtraso|IC_1|Qout[1]~reg0_q\);

-- Location: MLABCELL_X84_Y35_N24
\D|ContadordoAtraso|IC_1|Qout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordoAtraso|IC_1|Qout~3_combout\ = ( !\D|comb~0_combout\ & ( (!\D|ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & (((\D|ContadordoAtraso|IC_1|Qout[2]~reg0_q\)))) # (\D|ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & (!\D|ContadordoAtraso|IC_1|Qout[3]~reg0_q\ & 
-- (!\D|ContadordoAtraso|IC_1|Qout[1]~reg0_q\ $ (!\D|ContadordoAtraso|IC_1|Qout[2]~reg0_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011111000000000101111100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ContadordoAtraso|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datab => \D|ContadordoAtraso|IC_1|ALT_INV_Qout[1]~reg0_q\,
	datac => \D|ContadordoAtraso|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datad => \D|ContadordoAtraso|IC_1|ALT_INV_Qout[2]~reg0_q\,
	dataf => \D|ALT_INV_comb~0_combout\,
	combout => \D|ContadordoAtraso|IC_1|Qout~3_combout\);

-- Location: FF_X84_Y35_N26
\D|ContadordoAtraso|IC_1|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ContadordoAtraso|IC_1|Qout~3_combout\,
	ena => \D|ContadordoAtraso|IC_1|Qout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ContadordoAtraso|IC_1|Qout[2]~reg0_q\);

-- Location: MLABCELL_X82_Y37_N42
\D|ContadordoAtraso|IC_1|Qout[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordoAtraso|IC_1|Qout[3]~4_combout\ = ( !\D|ContadordoAtraso|IC_1|Qout[3]~reg0_q\ & ( \D|ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & ( (\D|ContadordoAtraso|IC_1|Qout[2]~reg0_q\ & (!\D|comb~0_combout\ & (\D|C|Eatual.Contando~DUPLICATE_q\ & 
-- \D|ContadordoAtraso|IC_1|Qout[1]~reg0_q\))) ) ) ) # ( \D|ContadordoAtraso|IC_1|Qout[3]~reg0_q\ & ( !\D|ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & ( !\D|comb~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ContadordoAtraso|IC_1|ALT_INV_Qout[2]~reg0_q\,
	datab => \D|ALT_INV_comb~0_combout\,
	datac => \D|C|ALT_INV_Eatual.Contando~DUPLICATE_q\,
	datad => \D|ContadordoAtraso|IC_1|ALT_INV_Qout[1]~reg0_q\,
	datae => \D|ContadordoAtraso|IC_1|ALT_INV_Qout[3]~reg0_q\,
	dataf => \D|ContadordoAtraso|IC_1|ALT_INV_Qout[0]~reg0_q\,
	combout => \D|ContadordoAtraso|IC_1|Qout[3]~4_combout\);

-- Location: FF_X82_Y37_N44
\D|ContadordoAtraso|IC_1|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ContadordoAtraso|IC_1|Qout[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ContadordoAtraso|IC_1|Qout[3]~reg0_q\);

-- Location: LABCELL_X83_Y37_N51
\D|ContadordoAtraso|IC_2|Qout[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordoAtraso|IC_2|Qout[3]~1_combout\ = ( \D|C|Eatual.Contando~DUPLICATE_q\ & ( (\D|ContadordoAtraso|IC_1|Qout[3]~reg0_q\ & \D|ContadordoAtraso|IC_1|Qout[0]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \D|ContadordoAtraso|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datad => \D|ContadordoAtraso|IC_1|ALT_INV_Qout[0]~reg0_q\,
	dataf => \D|C|ALT_INV_Eatual.Contando~DUPLICATE_q\,
	combout => \D|ContadordoAtraso|IC_2|Qout[3]~1_combout\);

-- Location: LABCELL_X83_Y37_N12
\D|ContadordoAtraso|IC_2|Qout~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordoAtraso|IC_2|Qout~5_combout\ = ( !\D|ContadordoAtraso|ClrN2~0_combout\ & ( (!\D|comb~0_combout\ & (!\D|ContadordoAtraso|IC_2|Qout[0]~reg0_q\ $ (!\D|ContadordoAtraso|IC_2|Qout[1]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100000010100001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ContadordoAtraso|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datac => \D|ALT_INV_comb~0_combout\,
	datad => \D|ContadordoAtraso|IC_2|ALT_INV_Qout[1]~reg0_q\,
	dataf => \D|ContadordoAtraso|ALT_INV_ClrN2~0_combout\,
	combout => \D|ContadordoAtraso|IC_2|Qout~5_combout\);

-- Location: LABCELL_X83_Y37_N45
\D|ContadordoAtraso|IC_2|Qout[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordoAtraso|IC_2|Qout[2]~2_combout\ = ( \D|comb~0_combout\ ) # ( !\D|comb~0_combout\ & ( (\D|ContadordoAtraso|ClrN2~0_combout\) # (\D|ContadordoAtraso|IC_2|Qout[3]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \D|ContadordoAtraso|IC_2|ALT_INV_Qout[3]~1_combout\,
	datad => \D|ContadordoAtraso|ALT_INV_ClrN2~0_combout\,
	dataf => \D|ALT_INV_comb~0_combout\,
	combout => \D|ContadordoAtraso|IC_2|Qout[2]~2_combout\);

-- Location: FF_X83_Y37_N14
\D|ContadordoAtraso|IC_2|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ContadordoAtraso|IC_2|Qout~5_combout\,
	ena => \D|ContadordoAtraso|IC_2|Qout[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ContadordoAtraso|IC_2|Qout[1]~reg0_q\);

-- Location: LABCELL_X83_Y37_N15
\D|ContadordoAtraso|IC_2|Qout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordoAtraso|IC_2|Qout~0_combout\ = ( \D|ContadordoAtraso|IC_2|Qout[1]~reg0_q\ & ( (!\D|comb~0_combout\ & (!\D|ContadordoAtraso|ClrN2~0_combout\ & (!\D|ContadordoAtraso|IC_2|Qout[0]~reg0_q\ $ (!\D|ContadordoAtraso|IC_2|Qout[2]~reg0_q\)))) ) ) # ( 
-- !\D|ContadordoAtraso|IC_2|Qout[1]~reg0_q\ & ( (!\D|comb~0_combout\ & (!\D|ContadordoAtraso|ClrN2~0_combout\ & \D|ContadordoAtraso|IC_2|Qout[2]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000001000000100000000100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ContadordoAtraso|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datab => \D|ALT_INV_comb~0_combout\,
	datac => \D|ContadordoAtraso|ALT_INV_ClrN2~0_combout\,
	datad => \D|ContadordoAtraso|IC_2|ALT_INV_Qout[2]~reg0_q\,
	dataf => \D|ContadordoAtraso|IC_2|ALT_INV_Qout[1]~reg0_q\,
	combout => \D|ContadordoAtraso|IC_2|Qout~0_combout\);

-- Location: FF_X83_Y37_N17
\D|ContadordoAtraso|IC_2|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ContadordoAtraso|IC_2|Qout~0_combout\,
	ena => \D|ContadordoAtraso|IC_2|Qout[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ContadordoAtraso|IC_2|Qout[2]~reg0_q\);

-- Location: LABCELL_X83_Y37_N39
\D|ContadordoAtraso|IC_2|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordoAtraso|IC_2|Add0~0_combout\ = ( \D|ContadordoAtraso|IC_2|Qout[1]~reg0_q\ & ( (\D|ContadordoAtraso|IC_2|Qout[0]~reg0_q\ & \D|ContadordoAtraso|IC_2|Qout[2]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ContadordoAtraso|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datac => \D|ContadordoAtraso|IC_2|ALT_INV_Qout[2]~reg0_q\,
	dataf => \D|ContadordoAtraso|IC_2|ALT_INV_Qout[1]~reg0_q\,
	combout => \D|ContadordoAtraso|IC_2|Add0~0_combout\);

-- Location: MLABCELL_X82_Y37_N36
\D|ContadordoAtraso|IC_2|Qout[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordoAtraso|IC_2|Qout[3]~3_combout\ = ( !\D|ContadordoAtraso|ClrN2~0_combout\ & ( (!\D|comb~0_combout\ & (!\D|ContadordoAtraso|IC_2|Qout[3]~reg0_q\ $ (((!\D|ContadordoAtraso|IC_2|Qout[3]~1_combout\) # 
-- (!\D|ContadordoAtraso|IC_2|Add0~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011100000000100001110000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ContadordoAtraso|IC_2|ALT_INV_Qout[3]~1_combout\,
	datab => \D|ContadordoAtraso|IC_2|ALT_INV_Add0~0_combout\,
	datac => \D|ALT_INV_comb~0_combout\,
	datad => \D|ContadordoAtraso|IC_2|ALT_INV_Qout[3]~reg0_q\,
	dataf => \D|ContadordoAtraso|ALT_INV_ClrN2~0_combout\,
	combout => \D|ContadordoAtraso|IC_2|Qout[3]~3_combout\);

-- Location: FF_X82_Y37_N38
\D|ContadordoAtraso|IC_2|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ContadordoAtraso|IC_2|Qout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ContadordoAtraso|IC_2|Qout[3]~reg0_q\);

-- Location: MLABCELL_X82_Y37_N30
\D|ContadordoAtraso|ClrN2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordoAtraso|ClrN2~0_combout\ = ( \D|ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & ( \D|ContadordoAtraso|IC_2|Qout[0]~reg0_q\ & ( (\D|ContadordoAtraso|IC_1|Qout[3]~reg0_q\ & \D|ContadordoAtraso|IC_2|Qout[3]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D|ContadordoAtraso|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datac => \D|ContadordoAtraso|IC_2|ALT_INV_Qout[3]~reg0_q\,
	datae => \D|ContadordoAtraso|IC_1|ALT_INV_Qout[0]~reg0_q\,
	dataf => \D|ContadordoAtraso|IC_2|ALT_INV_Qout[0]~reg0_q\,
	combout => \D|ContadordoAtraso|ClrN2~0_combout\);

-- Location: MLABCELL_X82_Y37_N48
\D|ContadordoAtraso|IC_2|Qout[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordoAtraso|IC_2|Qout[0]~4_combout\ = ( \D|ContadordoAtraso|IC_2|Qout[0]~reg0_q\ & ( !\D|comb~0_combout\ & ( (!\D|ContadordoAtraso|IC_2|Qout[3]~1_combout\ & !\D|ContadordoAtraso|ClrN2~0_combout\) ) ) ) # ( !\D|ContadordoAtraso|IC_2|Qout[0]~reg0_q\ 
-- & ( !\D|comb~0_combout\ & ( (\D|ContadordoAtraso|ClrN2~0_combout\) # (\D|ContadordoAtraso|IC_2|Qout[3]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \D|ContadordoAtraso|IC_2|ALT_INV_Qout[3]~1_combout\,
	datad => \D|ContadordoAtraso|ALT_INV_ClrN2~0_combout\,
	datae => \D|ContadordoAtraso|IC_2|ALT_INV_Qout[0]~reg0_q\,
	dataf => \D|ALT_INV_comb~0_combout\,
	combout => \D|ContadordoAtraso|IC_2|Qout[0]~4_combout\);

-- Location: FF_X82_Y37_N50
\D|ContadordoAtraso|IC_2|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ContadordoAtraso|IC_2|Qout[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ContadordoAtraso|IC_2|Qout[0]~reg0_q\);

-- Location: MLABCELL_X82_Y37_N12
\D|ContadordoAtraso|IC_3|Qout[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordoAtraso|IC_3|Qout[0]~4_combout\ = ( \D|ContadordoAtraso|ClrN2~0_combout\ & ( (!\D|comb~0_combout\ & ((!\D|C|Eatual.Contando~DUPLICATE_q\ & (!\D|ContadordoAtraso|IC_3|Qout[3]~reg0_q\ & \D|ContadordoAtraso|IC_3|Qout[0]~reg0_q\)) # 
-- (\D|C|Eatual.Contando~DUPLICATE_q\ & ((!\D|ContadordoAtraso|IC_3|Qout[0]~reg0_q\))))) ) ) # ( !\D|ContadordoAtraso|ClrN2~0_combout\ & ( (!\D|comb~0_combout\ & \D|ContadordoAtraso|IC_3|Qout[0]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110001000100100000000100010010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|C|ALT_INV_Eatual.Contando~DUPLICATE_q\,
	datab => \D|ALT_INV_comb~0_combout\,
	datac => \D|ContadordoAtraso|IC_3|ALT_INV_Qout[3]~reg0_q\,
	datad => \D|ContadordoAtraso|IC_3|ALT_INV_Qout[0]~reg0_q\,
	dataf => \D|ContadordoAtraso|ALT_INV_ClrN2~0_combout\,
	combout => \D|ContadordoAtraso|IC_3|Qout[0]~4_combout\);

-- Location: FF_X82_Y37_N14
\D|ContadordoAtraso|IC_3|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ContadordoAtraso|IC_3|Qout[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ContadordoAtraso|IC_3|Qout[0]~reg0_q\);

-- Location: LABCELL_X81_Y35_N57
\D|ContadordoAtraso|IC_3|Qout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordoAtraso|IC_3|Qout~0_combout\ = ( !\D|comb~0_combout\ & ( (!\D|ContadordoAtraso|ClrN3~0_combout\ & (!\D|ContadordoAtraso|IC_3|Qout[0]~reg0_q\ $ (!\D|ContadordoAtraso|IC_3|Qout[1]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100000010100001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ContadordoAtraso|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datac => \D|ContadordoAtraso|ALT_INV_ClrN3~0_combout\,
	datad => \D|ContadordoAtraso|IC_3|ALT_INV_Qout[1]~reg0_q\,
	dataf => \D|ALT_INV_comb~0_combout\,
	combout => \D|ContadordoAtraso|IC_3|Qout~0_combout\);

-- Location: FF_X82_Y35_N23
\D|C|Eatual.Contando\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|C|Selector3~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|C|Eatual.Contando~q\);

-- Location: LABCELL_X81_Y35_N9
\D|ContadordoAtraso|IC_3|Qout[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordoAtraso|IC_3|Qout[3]~1_combout\ = ( \D|ContadordoAtraso|ClrN2~0_combout\ & ( ((\D|ContadordoAtraso|ClrN3~0_combout\) # (\D|C|Eatual.Contando~q\)) # (\D|comb~0_combout\) ) ) # ( !\D|ContadordoAtraso|ClrN2~0_combout\ & ( 
-- (\D|ContadordoAtraso|ClrN3~0_combout\) # (\D|comb~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111100111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D|ALT_INV_comb~0_combout\,
	datac => \D|C|ALT_INV_Eatual.Contando~q\,
	datad => \D|ContadordoAtraso|ALT_INV_ClrN3~0_combout\,
	dataf => \D|ContadordoAtraso|ALT_INV_ClrN2~0_combout\,
	combout => \D|ContadordoAtraso|IC_3|Qout[3]~1_combout\);

-- Location: FF_X81_Y35_N59
\D|ContadordoAtraso|IC_3|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ContadordoAtraso|IC_3|Qout~0_combout\,
	ena => \D|ContadordoAtraso|IC_3|Qout[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ContadordoAtraso|IC_3|Qout[1]~reg0_q\);

-- Location: LABCELL_X81_Y35_N54
\D|ContadordoAtraso|IC_3|Qout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordoAtraso|IC_3|Qout~2_combout\ = ( \D|ContadordoAtraso|IC_3|Qout[1]~reg0_q\ & ( (!\D|ContadordoAtraso|ClrN3~0_combout\ & (!\D|comb~0_combout\ & (!\D|ContadordoAtraso|IC_3|Qout[0]~reg0_q\ $ (!\D|ContadordoAtraso|IC_3|Qout[2]~reg0_q\)))) ) ) # ( 
-- !\D|ContadordoAtraso|IC_3|Qout[1]~reg0_q\ & ( (!\D|ContadordoAtraso|ClrN3~0_combout\ & (!\D|comb~0_combout\ & \D|ContadordoAtraso|IC_3|Qout[2]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000001000000100000000100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ContadordoAtraso|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datab => \D|ContadordoAtraso|ALT_INV_ClrN3~0_combout\,
	datac => \D|ALT_INV_comb~0_combout\,
	datad => \D|ContadordoAtraso|IC_3|ALT_INV_Qout[2]~reg0_q\,
	dataf => \D|ContadordoAtraso|IC_3|ALT_INV_Qout[1]~reg0_q\,
	combout => \D|ContadordoAtraso|IC_3|Qout~2_combout\);

-- Location: FF_X81_Y35_N56
\D|ContadordoAtraso|IC_3|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ContadordoAtraso|IC_3|Qout~2_combout\,
	ena => \D|ContadordoAtraso|IC_3|Qout[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ContadordoAtraso|IC_3|Qout[2]~reg0_q\);

-- Location: LABCELL_X81_Y35_N0
\D|ContadordoAtraso|IC_3|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordoAtraso|IC_3|Add0~0_combout\ = (\D|ContadordoAtraso|IC_3|Qout[2]~reg0_q\ & (\D|ContadordoAtraso|IC_3|Qout[0]~reg0_q\ & \D|ContadordoAtraso|IC_3|Qout[1]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ContadordoAtraso|IC_3|ALT_INV_Qout[2]~reg0_q\,
	datac => \D|ContadordoAtraso|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datad => \D|ContadordoAtraso|IC_3|ALT_INV_Qout[1]~reg0_q\,
	combout => \D|ContadordoAtraso|IC_3|Add0~0_combout\);

-- Location: MLABCELL_X82_Y37_N18
\D|ContadordoAtraso|IC_3|Qout[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordoAtraso|IC_3|Qout[3]~3_combout\ = ( \D|ContadordoAtraso|IC_3|Qout[3]~reg0_q\ & ( \D|ContadordoAtraso|ClrN2~0_combout\ & ( (!\D|comb~0_combout\ & (!\D|ContadordoAtraso|IC_3|Qout[0]~reg0_q\ & ((!\D|C|Eatual.Contando~DUPLICATE_q\) # 
-- (!\D|ContadordoAtraso|IC_3|Add0~0_combout\)))) ) ) ) # ( !\D|ContadordoAtraso|IC_3|Qout[3]~reg0_q\ & ( \D|ContadordoAtraso|ClrN2~0_combout\ & ( (\D|C|Eatual.Contando~DUPLICATE_q\ & (!\D|comb~0_combout\ & \D|ContadordoAtraso|IC_3|Add0~0_combout\)) ) ) ) # 
-- ( \D|ContadordoAtraso|IC_3|Qout[3]~reg0_q\ & ( !\D|ContadordoAtraso|ClrN2~0_combout\ & ( !\D|comb~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000100000001001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|C|ALT_INV_Eatual.Contando~DUPLICATE_q\,
	datab => \D|ALT_INV_comb~0_combout\,
	datac => \D|ContadordoAtraso|IC_3|ALT_INV_Add0~0_combout\,
	datad => \D|ContadordoAtraso|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datae => \D|ContadordoAtraso|IC_3|ALT_INV_Qout[3]~reg0_q\,
	dataf => \D|ContadordoAtraso|ALT_INV_ClrN2~0_combout\,
	combout => \D|ContadordoAtraso|IC_3|Qout[3]~3_combout\);

-- Location: FF_X82_Y37_N20
\D|ContadordoAtraso|IC_3|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ContadordoAtraso|IC_3|Qout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ContadordoAtraso|IC_3|Qout[3]~reg0_q\);

-- Location: MLABCELL_X82_Y37_N0
\D|ContadordoAtraso|ClrN3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordoAtraso|ClrN3~0_combout\ = ( \D|ContadordoAtraso|IC_2|Qout[3]~reg0_q\ & ( \D|ContadordoAtraso|IC_3|Qout[0]~reg0_q\ & ( (\D|ContadordoAtraso|IC_2|Qout[0]~reg0_q\ & (\D|ContadordoAtraso|IC_1|Qout[3]~reg0_q\ & 
-- (\D|ContadordoAtraso|IC_3|Qout[3]~reg0_q\ & \D|ContadordoAtraso|IC_1|Qout[0]~reg0_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ContadordoAtraso|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datab => \D|ContadordoAtraso|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datac => \D|ContadordoAtraso|IC_3|ALT_INV_Qout[3]~reg0_q\,
	datad => \D|ContadordoAtraso|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datae => \D|ContadordoAtraso|IC_2|ALT_INV_Qout[3]~reg0_q\,
	dataf => \D|ContadordoAtraso|IC_3|ALT_INV_Qout[0]~reg0_q\,
	combout => \D|ContadordoAtraso|ClrN3~0_combout\);

-- Location: MLABCELL_X82_Y33_N18
\D|ContadordoAtraso|IC_4|Qout[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordoAtraso|IC_4|Qout[0]~1_combout\ = ( \D|ContadordoAtraso|IC_4|Qout[0]~reg0_q\ & ( \D|ContadordoAtraso|IC_4|Qout[3]~reg0_q\ & ( (!\D|comb~0_combout\ & !\D|ContadordoAtraso|ClrN3~0_combout\) ) ) ) # ( !\D|ContadordoAtraso|IC_4|Qout[0]~reg0_q\ & ( 
-- \D|ContadordoAtraso|IC_4|Qout[3]~reg0_q\ & ( (!\D|comb~0_combout\ & (\D|ContadordoAtraso|ClrN3~0_combout\ & \D|C|Eatual.Contando~DUPLICATE_q\)) ) ) ) # ( \D|ContadordoAtraso|IC_4|Qout[0]~reg0_q\ & ( !\D|ContadordoAtraso|IC_4|Qout[3]~reg0_q\ & ( 
-- (!\D|comb~0_combout\ & ((!\D|ContadordoAtraso|ClrN3~0_combout\) # (!\D|C|Eatual.Contando~DUPLICATE_q\))) ) ) ) # ( !\D|ContadordoAtraso|IC_4|Qout[0]~reg0_q\ & ( !\D|ContadordoAtraso|IC_4|Qout[3]~reg0_q\ & ( (!\D|comb~0_combout\ & 
-- (\D|ContadordoAtraso|ClrN3~0_combout\ & \D|C|Eatual.Contando~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100110011001100000000000000000011001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D|ALT_INV_comb~0_combout\,
	datac => \D|ContadordoAtraso|ALT_INV_ClrN3~0_combout\,
	datad => \D|C|ALT_INV_Eatual.Contando~DUPLICATE_q\,
	datae => \D|ContadordoAtraso|IC_4|ALT_INV_Qout[0]~reg0_q\,
	dataf => \D|ContadordoAtraso|IC_4|ALT_INV_Qout[3]~reg0_q\,
	combout => \D|ContadordoAtraso|IC_4|Qout[0]~1_combout\);

-- Location: FF_X82_Y33_N20
\D|ContadordoAtraso|IC_4|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ContadordoAtraso|IC_4|Qout[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ContadordoAtraso|IC_4|Qout[0]~reg0_q\);

-- Location: MLABCELL_X82_Y33_N24
\D|ContadordoAtraso|IC_4|Qout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordoAtraso|IC_4|Qout~2_combout\ = ( !\D|ContadordoAtraso|IC_4|Qout[1]~reg0_q\ & ( \D|ContadordoAtraso|IC_4|Qout[0]~reg0_q\ & ( (!\D|comb~0_combout\ & ((!\D|ContadordoAtraso|ClrN3~0_combout\) # (!\D|ContadordoAtraso|IC_4|Qout[3]~reg0_q\))) ) ) ) # 
-- ( \D|ContadordoAtraso|IC_4|Qout[1]~reg0_q\ & ( !\D|ContadordoAtraso|IC_4|Qout[0]~reg0_q\ & ( !\D|comb~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101010101000101010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ALT_INV_comb~0_combout\,
	datab => \D|ContadordoAtraso|ALT_INV_ClrN3~0_combout\,
	datac => \D|ContadordoAtraso|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datae => \D|ContadordoAtraso|IC_4|ALT_INV_Qout[1]~reg0_q\,
	dataf => \D|ContadordoAtraso|IC_4|ALT_INV_Qout[0]~reg0_q\,
	combout => \D|ContadordoAtraso|IC_4|Qout~2_combout\);

-- Location: MLABCELL_X82_Y33_N45
\D|ContadordoAtraso|IC_4|Qout[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordoAtraso|IC_4|Qout[0]~3_combout\ = ( \D|ContadordoAtraso|ClrN3~0_combout\ & ( \D|comb~0_combout\ ) ) # ( !\D|ContadordoAtraso|ClrN3~0_combout\ & ( \D|comb~0_combout\ ) ) # ( \D|ContadordoAtraso|ClrN3~0_combout\ & ( !\D|comb~0_combout\ & ( 
-- ((\D|ContadordoAtraso|IC_4|Qout[0]~reg0_q\ & \D|ContadordoAtraso|IC_4|Qout[3]~reg0_q\)) # (\D|C|Eatual.Contando~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ContadordoAtraso|IC_4|ALT_INV_Qout[0]~reg0_q\,
	datac => \D|C|ALT_INV_Eatual.Contando~DUPLICATE_q\,
	datad => \D|ContadordoAtraso|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datae => \D|ContadordoAtraso|ALT_INV_ClrN3~0_combout\,
	dataf => \D|ALT_INV_comb~0_combout\,
	combout => \D|ContadordoAtraso|IC_4|Qout[0]~3_combout\);

-- Location: FF_X82_Y33_N26
\D|ContadordoAtraso|IC_4|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ContadordoAtraso|IC_4|Qout~2_combout\,
	ena => \D|ContadordoAtraso|IC_4|Qout[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ContadordoAtraso|IC_4|Qout[1]~reg0_q\);

-- Location: MLABCELL_X82_Y33_N54
\D|ContadordoAtraso|IC_4|Qout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordoAtraso|IC_4|Qout~4_combout\ = ( \D|ContadordoAtraso|IC_4|Qout[2]~reg0_q\ & ( \D|ContadordoAtraso|IC_4|Qout[0]~reg0_q\ & ( (!\D|ContadordoAtraso|IC_4|Qout[1]~reg0_q\ & (!\D|comb~0_combout\ & ((!\D|ContadordoAtraso|IC_4|Qout[3]~reg0_q\) # 
-- (!\D|ContadordoAtraso|ClrN3~0_combout\)))) ) ) ) # ( !\D|ContadordoAtraso|IC_4|Qout[2]~reg0_q\ & ( \D|ContadordoAtraso|IC_4|Qout[0]~reg0_q\ & ( (\D|ContadordoAtraso|IC_4|Qout[1]~reg0_q\ & (!\D|comb~0_combout\ & ((!\D|ContadordoAtraso|IC_4|Qout[3]~reg0_q\) 
-- # (!\D|ContadordoAtraso|ClrN3~0_combout\)))) ) ) ) # ( \D|ContadordoAtraso|IC_4|Qout[2]~reg0_q\ & ( !\D|ContadordoAtraso|IC_4|Qout[0]~reg0_q\ & ( !\D|comb~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110001000100010000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ContadordoAtraso|IC_4|ALT_INV_Qout[1]~reg0_q\,
	datab => \D|ALT_INV_comb~0_combout\,
	datac => \D|ContadordoAtraso|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datad => \D|ContadordoAtraso|ALT_INV_ClrN3~0_combout\,
	datae => \D|ContadordoAtraso|IC_4|ALT_INV_Qout[2]~reg0_q\,
	dataf => \D|ContadordoAtraso|IC_4|ALT_INV_Qout[0]~reg0_q\,
	combout => \D|ContadordoAtraso|IC_4|Qout~4_combout\);

-- Location: FF_X82_Y33_N56
\D|ContadordoAtraso|IC_4|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ContadordoAtraso|IC_4|Qout~4_combout\,
	ena => \D|ContadordoAtraso|IC_4|Qout[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ContadordoAtraso|IC_4|Qout[2]~reg0_q\);

-- Location: MLABCELL_X82_Y33_N15
\D|ContadordoAtraso|IC_4|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordoAtraso|IC_4|Add0~0_combout\ = ( \D|ContadordoAtraso|IC_4|Qout[0]~reg0_q\ & ( (\D|ContadordoAtraso|IC_4|Qout[1]~reg0_q\ & \D|ContadordoAtraso|IC_4|Qout[2]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ContadordoAtraso|IC_4|ALT_INV_Qout[1]~reg0_q\,
	datad => \D|ContadordoAtraso|IC_4|ALT_INV_Qout[2]~reg0_q\,
	dataf => \D|ContadordoAtraso|IC_4|ALT_INV_Qout[0]~reg0_q\,
	combout => \D|ContadordoAtraso|IC_4|Add0~0_combout\);

-- Location: MLABCELL_X82_Y33_N48
\D|ContadordoAtraso|IC_4|Qout[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordoAtraso|IC_4|Qout[3]~0_combout\ = ( \D|ContadordoAtraso|IC_4|Qout[3]~reg0_q\ & ( \D|ContadordoAtraso|IC_4|Qout[0]~reg0_q\ & ( (!\D|comb~0_combout\ & !\D|ContadordoAtraso|ClrN3~0_combout\) ) ) ) # ( !\D|ContadordoAtraso|IC_4|Qout[3]~reg0_q\ & ( 
-- \D|ContadordoAtraso|IC_4|Qout[0]~reg0_q\ & ( (!\D|comb~0_combout\ & (\D|ContadordoAtraso|IC_4|Add0~0_combout\ & (\D|ContadordoAtraso|ClrN3~0_combout\ & \D|C|Eatual.Contando~DUPLICATE_q\))) ) ) ) # ( \D|ContadordoAtraso|IC_4|Qout[3]~reg0_q\ & ( 
-- !\D|ContadordoAtraso|IC_4|Qout[0]~reg0_q\ & ( (!\D|comb~0_combout\ & ((!\D|ContadordoAtraso|IC_4|Add0~0_combout\) # ((!\D|ContadordoAtraso|ClrN3~0_combout\) # (!\D|C|Eatual.Contando~DUPLICATE_q\)))) ) ) ) # ( !\D|ContadordoAtraso|IC_4|Qout[3]~reg0_q\ & ( 
-- !\D|ContadordoAtraso|IC_4|Qout[0]~reg0_q\ & ( (!\D|comb~0_combout\ & (\D|ContadordoAtraso|IC_4|Add0~0_combout\ & (\D|ContadordoAtraso|ClrN3~0_combout\ & \D|C|Eatual.Contando~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010101010101010100000000000000000101010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ALT_INV_comb~0_combout\,
	datab => \D|ContadordoAtraso|IC_4|ALT_INV_Add0~0_combout\,
	datac => \D|ContadordoAtraso|ALT_INV_ClrN3~0_combout\,
	datad => \D|C|ALT_INV_Eatual.Contando~DUPLICATE_q\,
	datae => \D|ContadordoAtraso|IC_4|ALT_INV_Qout[3]~reg0_q\,
	dataf => \D|ContadordoAtraso|IC_4|ALT_INV_Qout[0]~reg0_q\,
	combout => \D|ContadordoAtraso|IC_4|Qout[3]~0_combout\);

-- Location: FF_X82_Y33_N50
\D|ContadordoAtraso|IC_4|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ContadordoAtraso|IC_4|Qout[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ContadordoAtraso|IC_4|Qout[3]~reg0_q\);

-- Location: MLABCELL_X82_Y33_N39
\D|C4|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|C4|Equal0~0_combout\ = ( \D|ContadordoAtraso|IC_4|Qout[3]~reg0_q\ & ( !\D|Converte|bcds_out_reg\(3) ) ) # ( !\D|ContadordoAtraso|IC_4|Qout[3]~reg0_q\ & ( \D|Converte|bcds_out_reg\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \D|Converte|ALT_INV_bcds_out_reg\(3),
	dataf => \D|ContadordoAtraso|IC_4|ALT_INV_Qout[3]~reg0_q\,
	combout => \D|C4|Equal0~0_combout\);

-- Location: MLABCELL_X82_Y33_N12
\D|Converte|Selector27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|Selector27~0_combout\ = ( \D|Converte|bcds\(2) & ( !\D|Converte|bcds\(3) $ (((!\D|Converte|bcds[1]~DUPLICATE_q\ & !\D|Converte|bcds[0]~DUPLICATE_q\))) ) ) # ( !\D|Converte|bcds\(2) & ( \D|Converte|bcds\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100111111110000000011111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D|Converte|ALT_INV_bcds[1]~DUPLICATE_q\,
	datac => \D|Converte|ALT_INV_bcds[0]~DUPLICATE_q\,
	datad => \D|Converte|ALT_INV_bcds\(3),
	dataf => \D|Converte|ALT_INV_bcds\(2),
	combout => \D|Converte|Selector27~0_combout\);

-- Location: LABCELL_X81_Y35_N6
\D|Converte|Selector27~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|Selector27~1_combout\ = ( \D|Converte|Selector1~0_combout\ & ( ((!\D|Converte|binary[1]~0_combout\ & \D|Converte|bcds\(4))) # (\D|Converte|Selector27~0_combout\) ) ) # ( !\D|Converte|Selector1~0_combout\ & ( (!\D|Converte|binary[1]~0_combout\ 
-- & \D|Converte|bcds\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001111101011110000111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|Converte|ALT_INV_binary[1]~0_combout\,
	datac => \D|Converte|ALT_INV_Selector27~0_combout\,
	datad => \D|Converte|ALT_INV_bcds\(4),
	dataf => \D|Converte|ALT_INV_Selector1~0_combout\,
	combout => \D|Converte|Selector27~1_combout\);

-- Location: FF_X81_Y35_N7
\D|Converte|bcds[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|Selector27~1_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|bcds\(4));

-- Location: FF_X81_Y34_N43
\D|Converte|bcds[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|Selector26~0_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|bcds\(5));

-- Location: LABCELL_X81_Y34_N42
\D|Converte|Selector26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|Selector26~0_combout\ = ( \D|Converte|bcds\(5) & ( \D|Converte|bcds\(6) & ( (!\D|Converte|binary[1]~0_combout\) # ((!\D|Converte|bcds\(4) & \D|Converte|Selector1~0_combout\)) ) ) ) # ( !\D|Converte|bcds\(5) & ( \D|Converte|bcds\(6) & ( 
-- (!\D|Converte|bcds\(4) & (\D|Converte|bcds\(7) & \D|Converte|Selector1~0_combout\)) ) ) ) # ( \D|Converte|bcds\(5) & ( !\D|Converte|bcds\(6) & ( (!\D|Converte|binary[1]~0_combout\) # ((\D|Converte|Selector1~0_combout\ & (!\D|Converte|bcds\(4) $ 
-- (!\D|Converte|bcds\(7))))) ) ) ) # ( !\D|Converte|bcds\(5) & ( !\D|Converte|bcds\(6) & ( (\D|Converte|Selector1~0_combout\ & (!\D|Converte|bcds\(4) $ (!\D|Converte|bcds\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100101010101011111000000000000011001010101011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|Converte|ALT_INV_binary[1]~0_combout\,
	datab => \D|Converte|ALT_INV_bcds\(4),
	datac => \D|Converte|ALT_INV_bcds\(7),
	datad => \D|Converte|ALT_INV_Selector1~0_combout\,
	datae => \D|Converte|ALT_INV_bcds\(5),
	dataf => \D|Converte|ALT_INV_bcds\(6),
	combout => \D|Converte|Selector26~0_combout\);

-- Location: FF_X81_Y34_N44
\D|Converte|bcds[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|Selector26~0_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|bcds[5]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y34_N48
\D|Converte|Selector24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|Selector24~0_combout\ = ( \D|Converte|bcds\(7) & ( \D|Converte|bcds\(6) & ( (!\D|Converte|binary[1]~0_combout\) # ((!\D|Converte|bcds\(4) & (!\D|Converte|bcds[5]~DUPLICATE_q\ & \D|Converte|Selector1~0_combout\))) ) ) ) # ( 
-- !\D|Converte|bcds\(7) & ( \D|Converte|bcds\(6) & ( (!\D|Converte|bcds\(4) & (!\D|Converte|bcds[5]~DUPLICATE_q\ & \D|Converte|Selector1~0_combout\)) ) ) ) # ( \D|Converte|bcds\(7) & ( !\D|Converte|bcds\(6) & ( (!\D|Converte|binary[1]~0_combout\) # 
-- ((\D|Converte|Selector1~0_combout\ & ((\D|Converte|bcds[5]~DUPLICATE_q\) # (\D|Converte|bcds\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111011100000000100010001111000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|Converte|ALT_INV_bcds\(4),
	datab => \D|Converte|ALT_INV_bcds[5]~DUPLICATE_q\,
	datac => \D|Converte|ALT_INV_binary[1]~0_combout\,
	datad => \D|Converte|ALT_INV_Selector1~0_combout\,
	datae => \D|Converte|ALT_INV_bcds\(7),
	dataf => \D|Converte|ALT_INV_bcds\(6),
	combout => \D|Converte|Selector24~0_combout\);

-- Location: FF_X81_Y34_N50
\D|Converte|bcds[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|Selector24~0_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|bcds\(7));

-- Location: LABCELL_X81_Y34_N18
\D|Converte|Selector25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|Selector25~0_combout\ = ( \D|Converte|bcds\(6) & ( \D|Converte|bcds[5]~DUPLICATE_q\ & ( (!\D|Converte|binary[1]~0_combout\) # ((\D|Converte|bcds\(4) & \D|Converte|Selector1~0_combout\)) ) ) ) # ( !\D|Converte|bcds\(6) & ( 
-- \D|Converte|bcds[5]~DUPLICATE_q\ & ( (\D|Converte|Selector1~0_combout\ & ((!\D|Converte|bcds\(7)) # (\D|Converte|bcds\(4)))) ) ) ) # ( \D|Converte|bcds\(6) & ( !\D|Converte|bcds[5]~DUPLICATE_q\ & ( (!\D|Converte|binary[1]~0_combout\) # 
-- ((!\D|Converte|bcds\(4) & (\D|Converte|bcds\(7) & \D|Converte|Selector1~0_combout\))) ) ) ) # ( !\D|Converte|bcds\(6) & ( !\D|Converte|bcds[5]~DUPLICATE_q\ & ( (!\D|Converte|bcds\(4) & (\D|Converte|bcds\(7) & \D|Converte|Selector1~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100101010101010111000000000111100111010101010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|Converte|ALT_INV_binary[1]~0_combout\,
	datab => \D|Converte|ALT_INV_bcds\(4),
	datac => \D|Converte|ALT_INV_bcds\(7),
	datad => \D|Converte|ALT_INV_Selector1~0_combout\,
	datae => \D|Converte|ALT_INV_bcds\(6),
	dataf => \D|Converte|ALT_INV_bcds[5]~DUPLICATE_q\,
	combout => \D|Converte|Selector25~0_combout\);

-- Location: FF_X81_Y34_N19
\D|Converte|bcds[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|Selector25~0_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|bcds\(6));

-- Location: LABCELL_X81_Y34_N27
\D|Converte|Selector23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|Selector23~0_combout\ = ( \D|Converte|bcds\(7) & ( (!\D|Converte|bcds\(6)) # ((!\D|Converte|bcds\(4) & !\D|Converte|bcds\(5))) ) ) # ( !\D|Converte|bcds\(7) & ( (\D|Converte|bcds\(6) & ((\D|Converte|bcds\(5)) # (\D|Converte|bcds\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001111111100110011001111110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D|Converte|ALT_INV_bcds\(6),
	datac => \D|Converte|ALT_INV_bcds\(4),
	datad => \D|Converte|ALT_INV_bcds\(5),
	dataf => \D|Converte|ALT_INV_bcds\(7),
	combout => \D|Converte|Selector23~0_combout\);

-- Location: LABCELL_X81_Y34_N54
\D|Converte|Selector23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|Selector23~1_combout\ = ( \D|Converte|Selector23~0_combout\ & ( ((!\D|Converte|binary[1]~0_combout\ & \D|Converte|bcds\(8))) # (\D|Converte|Selector1~0_combout\) ) ) # ( !\D|Converte|Selector23~0_combout\ & ( (!\D|Converte|binary[1]~0_combout\ 
-- & \D|Converte|bcds\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000110011111100110011001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D|Converte|ALT_INV_Selector1~0_combout\,
	datac => \D|Converte|ALT_INV_binary[1]~0_combout\,
	datad => \D|Converte|ALT_INV_bcds\(8),
	dataf => \D|Converte|ALT_INV_Selector23~0_combout\,
	combout => \D|Converte|Selector23~1_combout\);

-- Location: FF_X81_Y34_N56
\D|Converte|bcds[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|Selector23~1_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|bcds\(8));

-- Location: FF_X81_Y34_N38
\D|Converte|bcds[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|Selector20~0_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|bcds\(11));

-- Location: FF_X81_Y34_N55
\D|Converte|bcds[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|Selector23~1_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|bcds[8]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y34_N30
\D|Converte|Selector21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|Selector21~0_combout\ = ( \D|Converte|bcds\(10) & ( \D|Converte|bcds[8]~DUPLICATE_q\ & ( (!\D|Converte|binary[1]~0_combout\) # ((\D|Converte|bcds\(9) & \D|Converte|Selector1~0_combout\)) ) ) ) # ( !\D|Converte|bcds\(10) & ( 
-- \D|Converte|bcds[8]~DUPLICATE_q\ & ( (\D|Converte|bcds\(9) & \D|Converte|Selector1~0_combout\) ) ) ) # ( \D|Converte|bcds\(10) & ( !\D|Converte|bcds[8]~DUPLICATE_q\ & ( (!\D|Converte|binary[1]~0_combout\) # ((!\D|Converte|bcds\(9) & 
-- (\D|Converte|Selector1~0_combout\ & \D|Converte|bcds\(11)))) ) ) ) # ( !\D|Converte|bcds\(10) & ( !\D|Converte|bcds[8]~DUPLICATE_q\ & ( (\D|Converte|Selector1~0_combout\ & (!\D|Converte|bcds\(9) $ (!\D|Converte|bcds\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010111111110000001000010001000100011111111100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|Converte|ALT_INV_bcds\(9),
	datab => \D|Converte|ALT_INV_Selector1~0_combout\,
	datac => \D|Converte|ALT_INV_bcds\(11),
	datad => \D|Converte|ALT_INV_binary[1]~0_combout\,
	datae => \D|Converte|ALT_INV_bcds\(10),
	dataf => \D|Converte|ALT_INV_bcds[8]~DUPLICATE_q\,
	combout => \D|Converte|Selector21~0_combout\);

-- Location: FF_X81_Y34_N31
\D|Converte|bcds[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|Selector21~0_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|bcds\(10));

-- Location: LABCELL_X81_Y34_N0
\D|Converte|Selector22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|Selector22~0_combout\ = ( \D|Converte|bcds\(9) & ( \D|Converte|bcds\(10) & ( (!\D|Converte|binary[1]~0_combout\) # ((!\D|Converte|bcds\(8) & \D|Converte|Selector1~0_combout\)) ) ) ) # ( !\D|Converte|bcds\(9) & ( \D|Converte|bcds\(10) & ( 
-- (!\D|Converte|bcds\(8) & (\D|Converte|Selector1~0_combout\ & \D|Converte|bcds\(11))) ) ) ) # ( \D|Converte|bcds\(9) & ( !\D|Converte|bcds\(10) & ( (!\D|Converte|binary[1]~0_combout\) # ((\D|Converte|Selector1~0_combout\ & (!\D|Converte|bcds\(8) $ 
-- (!\D|Converte|bcds\(11))))) ) ) ) # ( !\D|Converte|bcds\(9) & ( !\D|Converte|bcds\(10) & ( (\D|Converte|Selector1~0_combout\ & (!\D|Converte|bcds\(8) $ (!\D|Converte|bcds\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010111111110001001000000010000000101111111100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|Converte|ALT_INV_bcds\(8),
	datab => \D|Converte|ALT_INV_Selector1~0_combout\,
	datac => \D|Converte|ALT_INV_bcds\(11),
	datad => \D|Converte|ALT_INV_binary[1]~0_combout\,
	datae => \D|Converte|ALT_INV_bcds\(9),
	dataf => \D|Converte|ALT_INV_bcds\(10),
	combout => \D|Converte|Selector22~0_combout\);

-- Location: FF_X81_Y34_N2
\D|Converte|bcds[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|Selector22~0_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|bcds\(9));

-- Location: LABCELL_X81_Y34_N36
\D|Converte|Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|Selector20~0_combout\ = ( \D|Converte|bcds\(11) & ( \D|Converte|bcds\(10) & ( (!\D|Converte|binary[1]~0_combout\) # ((!\D|Converte|bcds\(8) & (\D|Converte|Selector1~0_combout\ & !\D|Converte|bcds\(9)))) ) ) ) # ( !\D|Converte|bcds\(11) & ( 
-- \D|Converte|bcds\(10) & ( (!\D|Converte|bcds\(8) & (\D|Converte|Selector1~0_combout\ & !\D|Converte|bcds\(9))) ) ) ) # ( \D|Converte|bcds\(11) & ( !\D|Converte|bcds\(10) & ( (!\D|Converte|binary[1]~0_combout\) # ((\D|Converte|Selector1~0_combout\ & 
-- ((\D|Converte|bcds\(9)) # (\D|Converte|bcds\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110001001100100000001000001111111100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|Converte|ALT_INV_bcds\(8),
	datab => \D|Converte|ALT_INV_Selector1~0_combout\,
	datac => \D|Converte|ALT_INV_bcds\(9),
	datad => \D|Converte|ALT_INV_binary[1]~0_combout\,
	datae => \D|Converte|ALT_INV_bcds\(11),
	dataf => \D|Converte|ALT_INV_bcds\(10),
	combout => \D|Converte|Selector20~0_combout\);

-- Location: FF_X81_Y34_N37
\D|Converte|bcds[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|Selector20~0_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|bcds[11]~DUPLICATE_q\);

-- Location: FF_X84_Y35_N19
\D|Converte|bcds_out_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|Converte|bcds[11]~DUPLICATE_q\,
	clrn => \D|ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \D|Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|bcds_out_reg\(11));

-- Location: LABCELL_X83_Y33_N0
\D|Converte|bcds_out_reg[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|bcds_out_reg[4]~feeder_combout\ = ( \D|Converte|bcds\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \D|Converte|ALT_INV_bcds\(4),
	combout => \D|Converte|bcds_out_reg[4]~feeder_combout\);

-- Location: FF_X83_Y33_N2
\D|Converte|bcds_out_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|bcds_out_reg[4]~feeder_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	ena => \D|Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|bcds_out_reg\(4));

-- Location: FF_X84_Y35_N22
\D|Converte|bcds_out_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|Converte|bcds\(10),
	clrn => \D|ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \D|Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|bcds_out_reg\(10));

-- Location: LABCELL_X83_Y35_N45
\D|s_sinalAtraso~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|s_sinalAtraso~2_combout\ = ( \D|ContadordoAtraso|IC_2|Qout[2]~reg0_q\ & ( \D|ContadordoAtraso|IC_3|Qout[0]~reg0_q\ & ( (\D|Converte|bcds_out_reg\(4) & (\D|Converte|bcds_out_reg\(10) & (!\D|Converte|bcds_out_reg\(11) $ 
-- (\D|ContadordoAtraso|IC_2|Qout[3]~reg0_q\)))) ) ) ) # ( !\D|ContadordoAtraso|IC_2|Qout[2]~reg0_q\ & ( \D|ContadordoAtraso|IC_3|Qout[0]~reg0_q\ & ( (\D|Converte|bcds_out_reg\(4) & (!\D|Converte|bcds_out_reg\(10) & (!\D|Converte|bcds_out_reg\(11) $ 
-- (\D|ContadordoAtraso|IC_2|Qout[3]~reg0_q\)))) ) ) ) # ( \D|ContadordoAtraso|IC_2|Qout[2]~reg0_q\ & ( !\D|ContadordoAtraso|IC_3|Qout[0]~reg0_q\ & ( (!\D|Converte|bcds_out_reg\(4) & (\D|Converte|bcds_out_reg\(10) & (!\D|Converte|bcds_out_reg\(11) $ 
-- (\D|ContadordoAtraso|IC_2|Qout[3]~reg0_q\)))) ) ) ) # ( !\D|ContadordoAtraso|IC_2|Qout[2]~reg0_q\ & ( !\D|ContadordoAtraso|IC_3|Qout[0]~reg0_q\ & ( (!\D|Converte|bcds_out_reg\(4) & (!\D|Converte|bcds_out_reg\(10) & (!\D|Converte|bcds_out_reg\(11) $ 
-- (\D|ContadordoAtraso|IC_2|Qout[3]~reg0_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000000000001000010000100001000000000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|Converte|ALT_INV_bcds_out_reg\(11),
	datab => \D|Converte|ALT_INV_bcds_out_reg\(4),
	datac => \D|ContadordoAtraso|IC_2|ALT_INV_Qout[3]~reg0_q\,
	datad => \D|Converte|ALT_INV_bcds_out_reg\(10),
	datae => \D|ContadordoAtraso|IC_2|ALT_INV_Qout[2]~reg0_q\,
	dataf => \D|ContadordoAtraso|IC_3|ALT_INV_Qout[0]~reg0_q\,
	combout => \D|s_sinalAtraso~2_combout\);

-- Location: FF_X83_Y35_N59
\D|Converte|bcds_out_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|Converte|bcds\(9),
	clrn => \D|ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \D|Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|bcds_out_reg\(9));

-- Location: FF_X83_Y34_N32
\D|Converte|bcds[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|Selector16~0_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|bcds\(15));

-- Location: LABCELL_X81_Y34_N57
\D|Converte|Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|Selector19~0_combout\ = ( \D|Converte|bcds[8]~DUPLICATE_q\ & ( !\D|Converte|bcds\(10) $ (!\D|Converte|bcds[11]~DUPLICATE_q\) ) ) # ( !\D|Converte|bcds[8]~DUPLICATE_q\ & ( !\D|Converte|bcds[11]~DUPLICATE_q\ $ (((!\D|Converte|bcds\(10)) # 
-- (!\D|Converte|bcds\(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011010000011110101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|Converte|ALT_INV_bcds\(10),
	datac => \D|Converte|ALT_INV_bcds[11]~DUPLICATE_q\,
	datad => \D|Converte|ALT_INV_bcds\(9),
	dataf => \D|Converte|ALT_INV_bcds[8]~DUPLICATE_q\,
	combout => \D|Converte|Selector19~0_combout\);

-- Location: LABCELL_X83_Y34_N9
\D|Converte|Selector19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|Selector19~1_combout\ = ( \D|Converte|Selector1~0_combout\ & ( ((!\D|Converte|binary[1]~0_combout\ & \D|Converte|bcds\(12))) # (\D|Converte|Selector19~0_combout\) ) ) # ( !\D|Converte|Selector1~0_combout\ & ( (!\D|Converte|binary[1]~0_combout\ 
-- & \D|Converte|bcds\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001111101011110000111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|Converte|ALT_INV_binary[1]~0_combout\,
	datac => \D|Converte|ALT_INV_Selector19~0_combout\,
	datad => \D|Converte|ALT_INV_bcds\(12),
	dataf => \D|Converte|ALT_INV_Selector1~0_combout\,
	combout => \D|Converte|Selector19~1_combout\);

-- Location: FF_X83_Y34_N11
\D|Converte|bcds[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|Selector19~1_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|bcds\(12));

-- Location: LABCELL_X83_Y34_N0
\D|Converte|Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|Selector17~0_combout\ = ( \D|Converte|bcds\(14) & ( \D|Converte|Selector1~0_combout\ & ( (!\D|Converte|binary[1]~0_combout\) # ((!\D|Converte|bcds\(12) & (!\D|Converte|bcds\(13) & \D|Converte|bcds\(15))) # (\D|Converte|bcds\(12) & 
-- (\D|Converte|bcds\(13)))) ) ) ) # ( !\D|Converte|bcds\(14) & ( \D|Converte|Selector1~0_combout\ & ( !\D|Converte|bcds\(13) $ (((!\D|Converte|bcds\(15)) # (\D|Converte|bcds\(12)))) ) ) ) # ( \D|Converte|bcds\(14) & ( !\D|Converte|Selector1~0_combout\ & ( 
-- !\D|Converte|binary[1]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000001111110000111010101111101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|Converte|ALT_INV_binary[1]~0_combout\,
	datab => \D|Converte|ALT_INV_bcds\(12),
	datac => \D|Converte|ALT_INV_bcds\(13),
	datad => \D|Converte|ALT_INV_bcds\(15),
	datae => \D|Converte|ALT_INV_bcds\(14),
	dataf => \D|Converte|ALT_INV_Selector1~0_combout\,
	combout => \D|Converte|Selector17~0_combout\);

-- Location: FF_X83_Y34_N2
\D|Converte|bcds[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|Selector17~0_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|bcds\(14));

-- Location: LABCELL_X83_Y34_N36
\D|Converte|Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|Selector18~0_combout\ = ( \D|Converte|bcds\(13) & ( \D|Converte|Selector1~0_combout\ & ( (!\D|Converte|binary[1]~0_combout\) # (!\D|Converte|bcds\(12) $ (((!\D|Converte|bcds\(15) & !\D|Converte|bcds\(14))))) ) ) ) # ( !\D|Converte|bcds\(13) & 
-- ( \D|Converte|Selector1~0_combout\ & ( (!\D|Converte|bcds\(15) & (!\D|Converte|bcds\(14) & \D|Converte|bcds\(12))) # (\D|Converte|bcds\(15) & ((!\D|Converte|bcds\(12)))) ) ) ) # ( \D|Converte|bcds\(13) & ( !\D|Converte|Selector1~0_combout\ & ( 
-- !\D|Converte|binary[1]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000110011110000001011111111101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|Converte|ALT_INV_binary[1]~0_combout\,
	datab => \D|Converte|ALT_INV_bcds\(15),
	datac => \D|Converte|ALT_INV_bcds\(14),
	datad => \D|Converte|ALT_INV_bcds\(12),
	datae => \D|Converte|ALT_INV_bcds\(13),
	dataf => \D|Converte|ALT_INV_Selector1~0_combout\,
	combout => \D|Converte|Selector18~0_combout\);

-- Location: FF_X83_Y34_N38
\D|Converte|bcds[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|Selector18~0_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|bcds\(13));

-- Location: LABCELL_X83_Y34_N30
\D|Converte|Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|Converte|Selector16~0_combout\ = ( \D|Converte|bcds\(15) & ( \D|Converte|Selector1~0_combout\ & ( (!\D|Converte|binary[1]~0_combout\) # (!\D|Converte|bcds\(14) $ (((!\D|Converte|bcds\(13) & !\D|Converte|bcds\(12))))) ) ) ) # ( !\D|Converte|bcds\(15) & 
-- ( \D|Converte|Selector1~0_combout\ & ( (!\D|Converte|bcds\(13) & (!\D|Converte|bcds\(12) & \D|Converte|bcds\(14))) ) ) ) # ( \D|Converte|bcds\(15) & ( !\D|Converte|Selector1~0_combout\ & ( !\D|Converte|binary[1]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000001000000010001111111101111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|Converte|ALT_INV_bcds\(13),
	datab => \D|Converte|ALT_INV_bcds\(12),
	datac => \D|Converte|ALT_INV_bcds\(14),
	datad => \D|Converte|ALT_INV_binary[1]~0_combout\,
	datae => \D|Converte|ALT_INV_bcds\(15),
	dataf => \D|Converte|ALT_INV_Selector1~0_combout\,
	combout => \D|Converte|Selector16~0_combout\);

-- Location: FF_X83_Y34_N31
\D|Converte|bcds[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|Selector16~0_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|bcds[15]~DUPLICATE_q\);

-- Location: FF_X83_Y35_N35
\D|Converte|bcds_out_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|Converte|bcds[15]~DUPLICATE_q\,
	clrn => \D|ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \D|Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|bcds_out_reg\(15));

-- Location: FF_X83_Y35_N37
\D|Converte|bcds_out_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|Converte|bcds[8]~DUPLICATE_q\,
	clrn => \D|ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \D|Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|bcds_out_reg\(8));

-- Location: MLABCELL_X84_Y35_N21
\D|s_sinalAtraso~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|s_sinalAtraso~4_combout\ = ( \D|ContadordoAtraso|IC_2|Qout[0]~reg0_q\ & ( \D|ContadordoAtraso|IC_1|Qout[3]~reg0_q\ & ( (\D|Converte|bcds_out_reg\(15) & (\D|Converte|bcds_out_reg\(8) & (!\D|ContadordoAtraso|IC_2|Qout[1]~reg0_q\ $ 
-- (\D|Converte|bcds_out_reg\(9))))) ) ) ) # ( !\D|ContadordoAtraso|IC_2|Qout[0]~reg0_q\ & ( \D|ContadordoAtraso|IC_1|Qout[3]~reg0_q\ & ( (\D|Converte|bcds_out_reg\(15) & (!\D|Converte|bcds_out_reg\(8) & (!\D|ContadordoAtraso|IC_2|Qout[1]~reg0_q\ $ 
-- (\D|Converte|bcds_out_reg\(9))))) ) ) ) # ( \D|ContadordoAtraso|IC_2|Qout[0]~reg0_q\ & ( !\D|ContadordoAtraso|IC_1|Qout[3]~reg0_q\ & ( (!\D|Converte|bcds_out_reg\(15) & (\D|Converte|bcds_out_reg\(8) & (!\D|ContadordoAtraso|IC_2|Qout[1]~reg0_q\ $ 
-- (\D|Converte|bcds_out_reg\(9))))) ) ) ) # ( !\D|ContadordoAtraso|IC_2|Qout[0]~reg0_q\ & ( !\D|ContadordoAtraso|IC_1|Qout[3]~reg0_q\ & ( (!\D|Converte|bcds_out_reg\(15) & (!\D|Converte|bcds_out_reg\(8) & (!\D|ContadordoAtraso|IC_2|Qout[1]~reg0_q\ $ 
-- (\D|Converte|bcds_out_reg\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000000001001000000001001000000000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ContadordoAtraso|IC_2|ALT_INV_Qout[1]~reg0_q\,
	datab => \D|Converte|ALT_INV_bcds_out_reg\(9),
	datac => \D|Converte|ALT_INV_bcds_out_reg\(15),
	datad => \D|Converte|ALT_INV_bcds_out_reg\(8),
	datae => \D|ContadordoAtraso|IC_2|ALT_INV_Qout[0]~reg0_q\,
	dataf => \D|ContadordoAtraso|IC_1|ALT_INV_Qout[3]~reg0_q\,
	combout => \D|s_sinalAtraso~4_combout\);

-- Location: FF_X83_Y35_N46
\D|Converte|bcds_out_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|Converte|bcds\(6),
	clrn => \D|ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \D|Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|bcds_out_reg\(6));

-- Location: FF_X83_Y35_N41
\D|Converte|bcds_out_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|Converte|bcds[5]~DUPLICATE_q\,
	clrn => \D|ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \D|Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|bcds_out_reg\(5));

-- Location: FF_X81_Y34_N49
\D|Converte|bcds[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|Selector24~0_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|bcds[7]~DUPLICATE_q\);

-- Location: FF_X84_Y35_N38
\D|Converte|bcds_out_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|Converte|bcds[7]~DUPLICATE_q\,
	clrn => \D|ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \D|Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|bcds_out_reg\(7));

-- Location: MLABCELL_X84_Y35_N36
\D|s_sinalAtraso~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|s_sinalAtraso~1_combout\ = ( \D|Converte|bcds_out_reg\(7) & ( \D|ContadordoAtraso|IC_3|Qout[3]~reg0_q\ & ( (!\D|Converte|bcds_out_reg\(6) & (!\D|ContadordoAtraso|IC_3|Qout[2]~reg0_q\ & (!\D|ContadordoAtraso|IC_3|Qout[1]~reg0_q\ $ 
-- (\D|Converte|bcds_out_reg\(5))))) # (\D|Converte|bcds_out_reg\(6) & (\D|ContadordoAtraso|IC_3|Qout[2]~reg0_q\ & (!\D|ContadordoAtraso|IC_3|Qout[1]~reg0_q\ $ (\D|Converte|bcds_out_reg\(5))))) ) ) ) # ( !\D|Converte|bcds_out_reg\(7) & ( 
-- !\D|ContadordoAtraso|IC_3|Qout[3]~reg0_q\ & ( (!\D|Converte|bcds_out_reg\(6) & (!\D|ContadordoAtraso|IC_3|Qout[2]~reg0_q\ & (!\D|ContadordoAtraso|IC_3|Qout[1]~reg0_q\ $ (\D|Converte|bcds_out_reg\(5))))) # (\D|Converte|bcds_out_reg\(6) & 
-- (\D|ContadordoAtraso|IC_3|Qout[2]~reg0_q\ & (!\D|ContadordoAtraso|IC_3|Qout[1]~reg0_q\ $ (\D|Converte|bcds_out_reg\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000100001000000000000000000000000000000001000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|Converte|ALT_INV_bcds_out_reg\(6),
	datab => \D|ContadordoAtraso|IC_3|ALT_INV_Qout[1]~reg0_q\,
	datac => \D|ContadordoAtraso|IC_3|ALT_INV_Qout[2]~reg0_q\,
	datad => \D|Converte|ALT_INV_bcds_out_reg\(5),
	datae => \D|Converte|ALT_INV_bcds_out_reg\(7),
	dataf => \D|ContadordoAtraso|IC_3|ALT_INV_Qout[3]~reg0_q\,
	combout => \D|s_sinalAtraso~1_combout\);

-- Location: FF_X84_Y35_N5
\D|Converte|bcds_out_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|Converte|bcds\(14),
	clrn => \D|ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \D|Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|bcds_out_reg\(14));

-- Location: FF_X83_Y34_N10
\D|Converte|bcds[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|Selector19~1_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|bcds[12]~DUPLICATE_q\);

-- Location: FF_X84_Y35_N11
\D|Converte|bcds_out_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|Converte|bcds[12]~DUPLICATE_q\,
	clrn => \D|ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \D|Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|bcds_out_reg\(12));

-- Location: FF_X83_Y34_N37
\D|Converte|bcds[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|Converte|Selector18~0_combout\,
	clrn => \D|ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|bcds[13]~DUPLICATE_q\);

-- Location: FF_X84_Y35_N2
\D|Converte|bcds_out_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|Converte|bcds[13]~DUPLICATE_q\,
	clrn => \D|ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \D|Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|bcds_out_reg\(13));

-- Location: MLABCELL_X84_Y35_N0
\D|s_sinalAtraso~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|s_sinalAtraso~3_combout\ = ( \D|Converte|bcds_out_reg\(13) & ( \D|ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & ( (\D|Converte|bcds_out_reg\(12) & (\D|ContadordoAtraso|IC_1|Qout[1]~reg0_q\ & (!\D|Converte|bcds_out_reg\(14) $ 
-- (\D|ContadordoAtraso|IC_1|Qout[2]~reg0_q\)))) ) ) ) # ( !\D|Converte|bcds_out_reg\(13) & ( \D|ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & ( (\D|Converte|bcds_out_reg\(12) & (!\D|ContadordoAtraso|IC_1|Qout[1]~reg0_q\ & (!\D|Converte|bcds_out_reg\(14) $ 
-- (\D|ContadordoAtraso|IC_1|Qout[2]~reg0_q\)))) ) ) ) # ( \D|Converte|bcds_out_reg\(13) & ( !\D|ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & ( (!\D|Converte|bcds_out_reg\(12) & (\D|ContadordoAtraso|IC_1|Qout[1]~reg0_q\ & (!\D|Converte|bcds_out_reg\(14) $ 
-- (\D|ContadordoAtraso|IC_1|Qout[2]~reg0_q\)))) ) ) ) # ( !\D|Converte|bcds_out_reg\(13) & ( !\D|ContadordoAtraso|IC_1|Qout[0]~reg0_q\ & ( (!\D|Converte|bcds_out_reg\(12) & (!\D|ContadordoAtraso|IC_1|Qout[1]~reg0_q\ & (!\D|Converte|bcds_out_reg\(14) $ 
-- (\D|ContadordoAtraso|IC_1|Qout[2]~reg0_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000000000001000010000100001000000000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|Converte|ALT_INV_bcds_out_reg\(14),
	datab => \D|Converte|ALT_INV_bcds_out_reg\(12),
	datac => \D|ContadordoAtraso|IC_1|ALT_INV_Qout[2]~reg0_q\,
	datad => \D|ContadordoAtraso|IC_1|ALT_INV_Qout[1]~reg0_q\,
	datae => \D|Converte|ALT_INV_bcds_out_reg\(13),
	dataf => \D|ContadordoAtraso|IC_1|ALT_INV_Qout[0]~reg0_q\,
	combout => \D|s_sinalAtraso~3_combout\);

-- Location: FF_X83_Y35_N56
\D|Converte|bcds_out_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|Converte|bcds\(2),
	clrn => \D|ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \D|Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|bcds_out_reg\(2));

-- Location: FF_X83_Y35_N31
\D|Converte|bcds_out_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|Converte|bcds\(1),
	clrn => \D|ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \D|Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|bcds_out_reg\(1));

-- Location: FF_X83_Y35_N44
\D|Converte|bcds_out_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \D|Converte|bcds[0]~DUPLICATE_q\,
	clrn => \D|ALT_INV_comb~0_combout\,
	sload => VCC,
	ena => \D|Converte|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Converte|bcds_out_reg\(0));

-- Location: LABCELL_X83_Y35_N39
\D|s_sinalAtraso~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|s_sinalAtraso~0_combout\ = ( \D|ContadordoAtraso|IC_4|Qout[0]~reg0_q\ & ( \D|Converte|bcds_out_reg\(0) & ( (!\D|Converte|bcds_out_reg\(2) & (!\D|ContadordoAtraso|IC_4|Qout[2]~reg0_q\ & (!\D|ContadordoAtraso|IC_4|Qout[1]~reg0_q\ $ 
-- (\D|Converte|bcds_out_reg\(1))))) # (\D|Converte|bcds_out_reg\(2) & (\D|ContadordoAtraso|IC_4|Qout[2]~reg0_q\ & (!\D|ContadordoAtraso|IC_4|Qout[1]~reg0_q\ $ (\D|Converte|bcds_out_reg\(1))))) ) ) ) # ( !\D|ContadordoAtraso|IC_4|Qout[0]~reg0_q\ & ( 
-- !\D|Converte|bcds_out_reg\(0) & ( (!\D|Converte|bcds_out_reg\(2) & (!\D|ContadordoAtraso|IC_4|Qout[2]~reg0_q\ & (!\D|ContadordoAtraso|IC_4|Qout[1]~reg0_q\ $ (\D|Converte|bcds_out_reg\(1))))) # (\D|Converte|bcds_out_reg\(2) & 
-- (\D|ContadordoAtraso|IC_4|Qout[2]~reg0_q\ & (!\D|ContadordoAtraso|IC_4|Qout[1]~reg0_q\ $ (\D|Converte|bcds_out_reg\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000001001000000000000000000000000000000001001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|Converte|ALT_INV_bcds_out_reg\(2),
	datab => \D|ContadordoAtraso|IC_4|ALT_INV_Qout[2]~reg0_q\,
	datac => \D|ContadordoAtraso|IC_4|ALT_INV_Qout[1]~reg0_q\,
	datad => \D|Converte|ALT_INV_bcds_out_reg\(1),
	datae => \D|ContadordoAtraso|IC_4|ALT_INV_Qout[0]~reg0_q\,
	dataf => \D|Converte|ALT_INV_bcds_out_reg\(0),
	combout => \D|s_sinalAtraso~0_combout\);

-- Location: LABCELL_X83_Y35_N30
\D|s_sinalAtraso~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|s_sinalAtraso~5_combout\ = ( \D|s_sinalAtraso~3_combout\ & ( \D|s_sinalAtraso~0_combout\ & ( (!\D|C4|Equal0~0_combout\ & (\D|s_sinalAtraso~2_combout\ & (\D|s_sinalAtraso~4_combout\ & \D|s_sinalAtraso~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|C4|ALT_INV_Equal0~0_combout\,
	datab => \D|ALT_INV_s_sinalAtraso~2_combout\,
	datac => \D|ALT_INV_s_sinalAtraso~4_combout\,
	datad => \D|ALT_INV_s_sinalAtraso~1_combout\,
	datae => \D|ALT_INV_s_sinalAtraso~3_combout\,
	dataf => \D|ALT_INV_s_sinalAtraso~0_combout\,
	combout => \D|s_sinalAtraso~5_combout\);

-- Location: MLABCELL_X82_Y35_N51
\D|s_sinalAtraso~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|s_sinalAtraso~6_combout\ = ( \D|C|Eatual.Contando~q\ & ( \D|s_sinalAtraso~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D|ALT_INV_s_sinalAtraso~5_combout\,
	dataf => \D|C|ALT_INV_Eatual.Contando~q\,
	combout => \D|s_sinalAtraso~6_combout\);

-- Location: FF_X82_Y35_N53
\D|C|Eatual.Fim\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|s_sinalAtraso~6_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|C|Eatual.Fim~q\);

-- Location: MLABCELL_X82_Y35_N36
\D|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|comb~0_combout\ = ( \C|Eatual.Afobado~q\ ) # ( !\C|Eatual.Afobado~q\ & ( (((\C|Eatual.Respondeu~q\) # (\reset~input_o\)) # (\C|Eatual.Demorado~q\)) # (\D|C|Eatual.Fim~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111011111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|C|ALT_INV_Eatual.Fim~q\,
	datab => \C|ALT_INV_Eatual.Demorado~q\,
	datac => \ALT_INV_reset~input_o\,
	datad => \C|ALT_INV_Eatual.Respondeu~q\,
	dataf => \C|ALT_INV_Eatual.Afobado~q\,
	combout => \D|comb~0_combout\);

-- Location: FF_X82_Y35_N47
\D|C|Eatual.Conversao\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|C|Selector2~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|C|Eatual.Conversao~q\);

-- Location: MLABCELL_X82_Y35_N45
\D|C|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|C|Selector2~0_combout\ = ( \D|ciclagensLFSR|S~combout\ & ( ((!\D|ContadordeConversao|S~combout\ & \D|C|Eatual.Conversao~q\)) # (\D|C|Eatual.Cicla~q\) ) ) # ( !\D|ciclagensLFSR|S~combout\ & ( (!\D|ContadordeConversao|S~combout\ & 
-- \D|C|Eatual.Conversao~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000001010101111101010101010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|C|ALT_INV_Eatual.Cicla~q\,
	datac => \D|ContadordeConversao|ALT_INV_S~combout\,
	datad => \D|C|ALT_INV_Eatual.Conversao~q\,
	dataf => \D|ciclagensLFSR|ALT_INV_S~combout\,
	combout => \D|C|Selector2~0_combout\);

-- Location: FF_X82_Y35_N46
\D|C|Eatual.Conversao~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|C|Selector2~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|C|Eatual.Conversao~DUPLICATE_q\);

-- Location: LABCELL_X81_Y37_N42
\D|ContadordeConversao|Contador|IC_1|Qout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordeConversao|Contador|IC_1|Qout~1_combout\ = ( \D|ContadordeConversao|Contador|IC_1|Qout[1]~reg0_q\ & ( !\D|comb~0_combout\ & ( !\D|ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\ ) ) ) # ( !\D|ContadordeConversao|Contador|IC_1|Qout[1]~reg0_q\ 
-- & ( !\D|comb~0_combout\ & ( (!\D|ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\ & \D|ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datac => \D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datae => \D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[1]~reg0_q\,
	dataf => \D|ALT_INV_comb~0_combout\,
	combout => \D|ContadordeConversao|Contador|IC_1|Qout~1_combout\);

-- Location: LABCELL_X81_Y37_N18
\D|ContadordeConversao|Contador|IC_1|Qout[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordeConversao|Contador|IC_1|Qout[3]~2_combout\ = ( \D|ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\ & ( \D|comb~0_combout\ ) ) # ( !\D|ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\ & ( \D|comb~0_combout\ ) ) # ( 
-- \D|ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\ & ( !\D|comb~0_combout\ & ( (\D|ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\) # (\D|C|Eatual.Conversao~DUPLICATE_q\) ) ) ) # ( !\D|ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\ & ( 
-- !\D|comb~0_combout\ & ( \D|C|Eatual.Conversao~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \D|C|ALT_INV_Eatual.Conversao~DUPLICATE_q\,
	datad => \D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datae => \D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	dataf => \D|ALT_INV_comb~0_combout\,
	combout => \D|ContadordeConversao|Contador|IC_1|Qout[3]~2_combout\);

-- Location: FF_X81_Y37_N44
\D|ContadordeConversao|Contador|IC_1|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ContadordeConversao|Contador|IC_1|Qout~1_combout\,
	ena => \D|ContadordeConversao|Contador|IC_1|Qout[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ContadordeConversao|Contador|IC_1|Qout[1]~reg0_q\);

-- Location: LABCELL_X81_Y37_N57
\D|ContadordeConversao|Contador|IC_1|Qout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordeConversao|Contador|IC_1|Qout~3_combout\ = ( \D|ContadordeConversao|Contador|IC_1|Qout[2]~reg0_q\ & ( \D|ContadordeConversao|Contador|IC_1|Qout[1]~reg0_q\ & ( (!\D|ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\ & !\D|comb~0_combout\) ) ) ) 
-- # ( !\D|ContadordeConversao|Contador|IC_1|Qout[2]~reg0_q\ & ( \D|ContadordeConversao|Contador|IC_1|Qout[1]~reg0_q\ & ( (\D|ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\ & (!\D|comb~0_combout\ & !\D|ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\)) ) 
-- ) ) # ( \D|ContadordeConversao|Contador|IC_1|Qout[2]~reg0_q\ & ( !\D|ContadordeConversao|Contador|IC_1|Qout[1]~reg0_q\ & ( (!\D|comb~0_combout\ & ((!\D|ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\) # 
-- (!\D|ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010001100100001000000010000001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datab => \D|ALT_INV_comb~0_combout\,
	datac => \D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datae => \D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[2]~reg0_q\,
	dataf => \D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[1]~reg0_q\,
	combout => \D|ContadordeConversao|Contador|IC_1|Qout~3_combout\);

-- Location: FF_X81_Y37_N59
\D|ContadordeConversao|Contador|IC_1|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ContadordeConversao|Contador|IC_1|Qout~3_combout\,
	ena => \D|ContadordeConversao|Contador|IC_1|Qout[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ContadordeConversao|Contador|IC_1|Qout[2]~reg0_q\);

-- Location: LABCELL_X80_Y35_N36
\D|ContadordeConversao|Contador|IC_1|Qout[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordeConversao|Contador|IC_1|Qout[3]~4_combout\ = ( !\D|ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\ & ( \D|ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\ & ( (\D|ContadordeConversao|Contador|IC_1|Qout[1]~reg0_q\ & (!\D|comb~0_combout\ & 
-- (\D|C|Eatual.Conversao~DUPLICATE_q\ & \D|ContadordeConversao|Contador|IC_1|Qout[2]~reg0_q\))) ) ) ) # ( \D|ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\ & ( !\D|ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\ & ( !\D|comb~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[1]~reg0_q\,
	datab => \D|ALT_INV_comb~0_combout\,
	datac => \D|C|ALT_INV_Eatual.Conversao~DUPLICATE_q\,
	datad => \D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[2]~reg0_q\,
	datae => \D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	dataf => \D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	combout => \D|ContadordeConversao|Contador|IC_1|Qout[3]~4_combout\);

-- Location: FF_X80_Y35_N38
\D|ContadordeConversao|Contador|IC_1|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ContadordeConversao|Contador|IC_1|Qout[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\);

-- Location: LABCELL_X80_Y35_N24
\D|ContadordeConversao|Contador|IC_1|Qout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordeConversao|Contador|IC_1|Qout[0]~0_combout\ = ( \D|ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\ & ( (!\D|comb~0_combout\ & (\D|C|Eatual.Conversao~DUPLICATE_q\ & !\D|ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\)) ) ) # ( 
-- !\D|ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\ & ( (!\D|comb~0_combout\ & (!\D|C|Eatual.Conversao~DUPLICATE_q\ $ (!\D|ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000010101010000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ALT_INV_comb~0_combout\,
	datac => \D|C|ALT_INV_Eatual.Conversao~DUPLICATE_q\,
	datad => \D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	dataf => \D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	combout => \D|ContadordeConversao|Contador|IC_1|Qout[0]~0_combout\);

-- Location: FF_X80_Y35_N26
\D|ContadordeConversao|Contador|IC_1|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ContadordeConversao|Contador|IC_1|Qout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\);

-- Location: LABCELL_X79_Y35_N48
\D|ContadordeConversao|Contador|IC_2|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordeConversao|Contador|IC_2|process_0~0_combout\ = ( \D|ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\ & ( \D|C|Eatual.Conversao~DUPLICATE_q\ & ( \D|ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datae => \D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	dataf => \D|C|ALT_INV_Eatual.Conversao~DUPLICATE_q\,
	combout => \D|ContadordeConversao|Contador|IC_2|process_0~0_combout\);

-- Location: LABCELL_X80_Y35_N27
\D|ContadordeConversao|Contador|IC_2|Qout[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordeConversao|Contador|IC_2|Qout[0]~3_combout\ = ( \D|ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\ & ( (!\D|comb~0_combout\ & !\D|ContadordeConversao|Contador|IC_2|Qout[0]~reg0_q\) ) ) # ( 
-- !\D|ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\ & ( (!\D|comb~0_combout\ & (!\D|ContadordeConversao|Contador|IC_2|process_0~0_combout\ $ (!\D|ContadordeConversao|Contador|IC_2|Qout[0]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000000011001100000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D|ALT_INV_comb~0_combout\,
	datac => \D|ContadordeConversao|Contador|IC_2|ALT_INV_process_0~0_combout\,
	datad => \D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\,
	dataf => \D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~0_combout\,
	combout => \D|ContadordeConversao|Contador|IC_2|Qout[0]~3_combout\);

-- Location: FF_X80_Y35_N29
\D|ContadordeConversao|Contador|IC_2|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ContadordeConversao|Contador|IC_2|Qout[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ContadordeConversao|Contador|IC_2|Qout[0]~reg0_q\);

-- Location: LABCELL_X79_Y35_N54
\D|ContadordeConversao|Contador|IC_2|Qout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordeConversao|Contador|IC_2|Qout~4_combout\ = ( \D|ContadordeConversao|Contador|IC_2|Qout[2]~reg0_q\ & ( \D|ContadordeConversao|Contador|IC_2|Qout[0]~reg0_q\ & ( (!\D|comb~0_combout\ & (!\D|ContadordeConversao|Contador|IC_2|Qout[1]~reg0_q\ & 
-- !\D|ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\)) ) ) ) # ( !\D|ContadordeConversao|Contador|IC_2|Qout[2]~reg0_q\ & ( \D|ContadordeConversao|Contador|IC_2|Qout[0]~reg0_q\ & ( (!\D|comb~0_combout\ & 
-- (\D|ContadordeConversao|Contador|IC_2|Qout[1]~reg0_q\ & !\D|ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\)) ) ) ) # ( \D|ContadordeConversao|Contador|IC_2|Qout[2]~reg0_q\ & ( !\D|ContadordeConversao|Contador|IC_2|Qout[0]~reg0_q\ & ( 
-- (!\D|comb~0_combout\ & !\D|ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100000000000100010000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ALT_INV_comb~0_combout\,
	datab => \D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[1]~reg0_q\,
	datad => \D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~0_combout\,
	datae => \D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[2]~reg0_q\,
	dataf => \D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\,
	combout => \D|ContadordeConversao|Contador|IC_2|Qout~4_combout\);

-- Location: LABCELL_X79_Y35_N33
\D|ContadordeConversao|Contador|IC_2|Qout[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordeConversao|Contador|IC_2|Qout[0]~2_combout\ = ( \D|ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\ & ( \D|ContadordeConversao|Contador|IC_2|process_0~0_combout\ ) ) # ( !\D|ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\ & ( 
-- \D|ContadordeConversao|Contador|IC_2|process_0~0_combout\ ) ) # ( \D|ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\ & ( !\D|ContadordeConversao|Contador|IC_2|process_0~0_combout\ ) ) # ( !\D|ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\ & ( 
-- !\D|ContadordeConversao|Contador|IC_2|process_0~0_combout\ & ( \D|comb~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D|ALT_INV_comb~0_combout\,
	datae => \D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~0_combout\,
	dataf => \D|ContadordeConversao|Contador|IC_2|ALT_INV_process_0~0_combout\,
	combout => \D|ContadordeConversao|Contador|IC_2|Qout[0]~2_combout\);

-- Location: FF_X79_Y35_N56
\D|ContadordeConversao|Contador|IC_2|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ContadordeConversao|Contador|IC_2|Qout~4_combout\,
	ena => \D|ContadordeConversao|Contador|IC_2|Qout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ContadordeConversao|Contador|IC_2|Qout[2]~reg0_q\);

-- Location: LABCELL_X80_Y35_N15
\D|ContadordeConversao|Contador|IC_2|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordeConversao|Contador|IC_2|Add0~0_combout\ = ( \D|ContadordeConversao|Contador|IC_2|Qout[1]~reg0_q\ & ( (\D|ContadordeConversao|Contador|IC_2|Qout[0]~reg0_q\ & \D|ContadordeConversao|Contador|IC_2|Qout[2]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datac => \D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[2]~reg0_q\,
	dataf => \D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[1]~reg0_q\,
	combout => \D|ContadordeConversao|Contador|IC_2|Add0~0_combout\);

-- Location: LABCELL_X80_Y35_N51
\D|ContadordeConversao|Contador|IC_2|Qout[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordeConversao|Contador|IC_2|Qout[3]~5_combout\ = ( \D|ContadordeConversao|Contador|IC_2|Add0~0_combout\ & ( (!\D|ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\ & (!\D|comb~0_combout\ & 
-- (!\D|ContadordeConversao|Contador|IC_2|process_0~0_combout\ $ (!\D|ContadordeConversao|Contador|IC_2|Qout[3]~reg0_q\)))) ) ) # ( !\D|ContadordeConversao|Contador|IC_2|Add0~0_combout\ & ( (!\D|ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\ & 
-- (!\D|comb~0_combout\ & \D|ContadordeConversao|Contador|IC_2|Qout[3]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000001000100000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~0_combout\,
	datab => \D|ALT_INV_comb~0_combout\,
	datac => \D|ContadordeConversao|Contador|IC_2|ALT_INV_process_0~0_combout\,
	datad => \D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[3]~reg0_q\,
	dataf => \D|ContadordeConversao|Contador|IC_2|ALT_INV_Add0~0_combout\,
	combout => \D|ContadordeConversao|Contador|IC_2|Qout[3]~5_combout\);

-- Location: FF_X80_Y35_N53
\D|ContadordeConversao|Contador|IC_2|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ContadordeConversao|Contador|IC_2|Qout[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ContadordeConversao|Contador|IC_2|Qout[3]~reg0_q\);

-- Location: LABCELL_X80_Y35_N33
\D|ContadordeConversao|Contador|IC_2|Qout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\ = ( \D|ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\ & ( (\D|ContadordeConversao|Contador|IC_2|Qout[0]~reg0_q\ & (\D|ContadordeConversao|Contador|IC_2|Qout[3]~reg0_q\ & 
-- \D|ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datac => \D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[3]~reg0_q\,
	datad => \D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	dataf => \D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	combout => \D|ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\);

-- Location: LABCELL_X79_Y35_N42
\D|ContadordeConversao|Contador|IC_2|Qout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordeConversao|Contador|IC_2|Qout~1_combout\ = ( !\D|ContadordeConversao|Contador|IC_2|Qout[1]~reg0_q\ & ( \D|ContadordeConversao|Contador|IC_2|Qout[0]~reg0_q\ & ( (!\D|comb~0_combout\ & !\D|ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\) ) 
-- ) ) # ( \D|ContadordeConversao|Contador|IC_2|Qout[1]~reg0_q\ & ( !\D|ContadordeConversao|Contador|IC_2|Qout[0]~reg0_q\ & ( (!\D|comb~0_combout\ & !\D|ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100000000010101010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ALT_INV_comb~0_combout\,
	datad => \D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~0_combout\,
	datae => \D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[1]~reg0_q\,
	dataf => \D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\,
	combout => \D|ContadordeConversao|Contador|IC_2|Qout~1_combout\);

-- Location: FF_X79_Y35_N44
\D|ContadordeConversao|Contador|IC_2|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ContadordeConversao|Contador|IC_2|Qout~1_combout\,
	ena => \D|ContadordeConversao|Contador|IC_2|Qout[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ContadordeConversao|Contador|IC_2|Qout[1]~reg0_q\);

-- Location: LABCELL_X80_Y35_N12
\D|ContadordeConversao|S~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordeConversao|S~1_combout\ = ( !\D|ContadordeConversao|Contador|IC_1|Qout[2]~reg0_q\ & ( (!\D|ContadordeConversao|Contador|IC_2|Qout[0]~reg0_q\ & (!\D|ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\ & 
-- (!\D|ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\ & !\D|ContadordeConversao|Contador|IC_1|Qout[1]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datab => \D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datac => \D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datad => \D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[1]~reg0_q\,
	dataf => \D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[2]~reg0_q\,
	combout => \D|ContadordeConversao|S~1_combout\);

-- Location: LABCELL_X81_Y37_N36
\D|ContadordeConversao|Contador|IC_3|Qout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordeConversao|Contador|IC_3|Qout~2_combout\ = ( !\D|comb~0_combout\ & ( (!\D|ContadordeConversao|Contador|ClrN3~0_combout\ & (!\D|ContadordeConversao|Contador|IC_3|Qout[0]~reg0_q\ $ (!\D|ContadordeConversao|Contador|IC_3|Qout[1]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000010101010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ContadordeConversao|Contador|ALT_INV_ClrN3~0_combout\,
	datac => \D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datad => \D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[1]~reg0_q\,
	dataf => \D|ALT_INV_comb~0_combout\,
	combout => \D|ContadordeConversao|Contador|IC_3|Qout~2_combout\);

-- Location: LABCELL_X81_Y37_N9
\D|ContadordeConversao|Contador|IC_3|Qout[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordeConversao|Contador|IC_3|Qout[3]~3_combout\ = ( \D|ContadordeConversao|Contador|ClrN3~0_combout\ & ( \D|comb~0_combout\ ) ) # ( !\D|ContadordeConversao|Contador|ClrN3~0_combout\ & ( \D|comb~0_combout\ ) ) # ( 
-- \D|ContadordeConversao|Contador|ClrN3~0_combout\ & ( !\D|comb~0_combout\ ) ) # ( !\D|ContadordeConversao|Contador|ClrN3~0_combout\ & ( !\D|comb~0_combout\ & ( (\D|C|Eatual.Conversao~DUPLICATE_q\ & \D|ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|C|ALT_INV_Eatual.Conversao~DUPLICATE_q\,
	datad => \D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~0_combout\,
	datae => \D|ContadordeConversao|Contador|ALT_INV_ClrN3~0_combout\,
	dataf => \D|ALT_INV_comb~0_combout\,
	combout => \D|ContadordeConversao|Contador|IC_3|Qout[3]~3_combout\);

-- Location: FF_X81_Y37_N38
\D|ContadordeConversao|Contador|IC_3|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ContadordeConversao|Contador|IC_3|Qout~2_combout\,
	ena => \D|ContadordeConversao|Contador|IC_3|Qout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ContadordeConversao|Contador|IC_3|Qout[1]~reg0_q\);

-- Location: LABCELL_X81_Y37_N39
\D|ContadordeConversao|Contador|IC_3|Qout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordeConversao|Contador|IC_3|Qout~4_combout\ = ( \D|ContadordeConversao|Contador|IC_3|Qout[1]~reg0_q\ & ( (!\D|ContadordeConversao|Contador|ClrN3~0_combout\ & (!\D|comb~0_combout\ & (!\D|ContadordeConversao|Contador|IC_3|Qout[0]~reg0_q\ $ 
-- (!\D|ContadordeConversao|Contador|IC_3|Qout[2]~reg0_q\)))) ) ) # ( !\D|ContadordeConversao|Contador|IC_3|Qout[1]~reg0_q\ & ( (!\D|ContadordeConversao|Contador|ClrN3~0_combout\ & (!\D|comb~0_combout\ & \D|ContadordeConversao|Contador|IC_3|Qout[2]~reg0_q\)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000001000100000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ContadordeConversao|Contador|ALT_INV_ClrN3~0_combout\,
	datab => \D|ALT_INV_comb~0_combout\,
	datac => \D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datad => \D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[2]~reg0_q\,
	dataf => \D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[1]~reg0_q\,
	combout => \D|ContadordeConversao|Contador|IC_3|Qout~4_combout\);

-- Location: FF_X81_Y37_N41
\D|ContadordeConversao|Contador|IC_3|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ContadordeConversao|Contador|IC_3|Qout~4_combout\,
	ena => \D|ContadordeConversao|Contador|IC_3|Qout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ContadordeConversao|Contador|IC_3|Qout[2]~reg0_q\);

-- Location: LABCELL_X80_Y35_N21
\D|ContadordeConversao|Contador|IC_3|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordeConversao|Contador|IC_3|Add0~0_combout\ = ( \D|ContadordeConversao|Contador|IC_3|Qout[0]~reg0_q\ & ( (\D|ContadordeConversao|Contador|IC_3|Qout[1]~reg0_q\ & \D|ContadordeConversao|Contador|IC_3|Qout[2]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[1]~reg0_q\,
	datac => \D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[2]~reg0_q\,
	dataf => \D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\,
	combout => \D|ContadordeConversao|Contador|IC_3|Add0~0_combout\);

-- Location: LABCELL_X80_Y35_N6
\D|ContadordeConversao|Contador|IC_3|Qout[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordeConversao|Contador|IC_3|Qout[3]~0_combout\ = ( \D|ContadordeConversao|Contador|IC_3|Qout[3]~reg0_q\ & ( \D|ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\ & ( (!\D|comb~0_combout\ & (!\D|ContadordeConversao|Contador|IC_3|Qout[0]~reg0_q\ 
-- & ((!\D|C|Eatual.Conversao~DUPLICATE_q\) # (!\D|ContadordeConversao|Contador|IC_3|Add0~0_combout\)))) ) ) ) # ( !\D|ContadordeConversao|Contador|IC_3|Qout[3]~reg0_q\ & ( \D|ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\ & ( 
-- (\D|C|Eatual.Conversao~DUPLICATE_q\ & (!\D|comb~0_combout\ & \D|ContadordeConversao|Contador|IC_3|Add0~0_combout\)) ) ) ) # ( \D|ContadordeConversao|Contador|IC_3|Qout[3]~reg0_q\ & ( !\D|ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\ & ( 
-- !\D|comb~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000010001001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|C|ALT_INV_Eatual.Conversao~DUPLICATE_q\,
	datab => \D|ALT_INV_comb~0_combout\,
	datac => \D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datad => \D|ContadordeConversao|Contador|IC_3|ALT_INV_Add0~0_combout\,
	datae => \D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[3]~reg0_q\,
	dataf => \D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~0_combout\,
	combout => \D|ContadordeConversao|Contador|IC_3|Qout[3]~0_combout\);

-- Location: FF_X80_Y35_N8
\D|ContadordeConversao|Contador|IC_3|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ContadordeConversao|Contador|IC_3|Qout[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ContadordeConversao|Contador|IC_3|Qout[3]~reg0_q\);

-- Location: LABCELL_X80_Y35_N48
\D|ContadordeConversao|Contador|IC_3|Qout[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordeConversao|Contador|IC_3|Qout[0]~1_combout\ = ( \D|ContadordeConversao|Contador|IC_3|Qout[3]~reg0_q\ & ( (!\D|comb~0_combout\ & ((!\D|ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\ & 
-- ((\D|ContadordeConversao|Contador|IC_3|Qout[0]~reg0_q\))) # (\D|ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\ & (\D|C|Eatual.Conversao~DUPLICATE_q\ & !\D|ContadordeConversao|Contador|IC_3|Qout[0]~reg0_q\)))) ) ) # ( 
-- !\D|ContadordeConversao|Contador|IC_3|Qout[3]~reg0_q\ & ( (!\D|comb~0_combout\ & (!\D|ContadordeConversao|Contador|IC_3|Qout[0]~reg0_q\ $ (((!\D|ContadordeConversao|Contador|IC_2|Qout[0]~0_combout\) # (!\D|C|Eatual.Conversao~DUPLICATE_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011001000000001001100100000000100100010000000010010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~0_combout\,
	datab => \D|ALT_INV_comb~0_combout\,
	datac => \D|C|ALT_INV_Eatual.Conversao~DUPLICATE_q\,
	datad => \D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\,
	dataf => \D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[3]~reg0_q\,
	combout => \D|ContadordeConversao|Contador|IC_3|Qout[0]~1_combout\);

-- Location: FF_X80_Y35_N50
\D|ContadordeConversao|Contador|IC_3|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ContadordeConversao|Contador|IC_3|Qout[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ContadordeConversao|Contador|IC_3|Qout[0]~reg0_q\);

-- Location: LABCELL_X80_Y35_N0
\D|ContadordeConversao|Contador|ClrN3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordeConversao|Contador|ClrN3~0_combout\ = ( \D|ContadordeConversao|Contador|IC_1|Qout[3]~reg0_q\ & ( \D|ContadordeConversao|Contador|IC_1|Qout[0]~reg0_q\ & ( (\D|ContadordeConversao|Contador|IC_3|Qout[0]~reg0_q\ & 
-- (\D|ContadordeConversao|Contador|IC_3|Qout[3]~reg0_q\ & (\D|ContadordeConversao|Contador|IC_2|Qout[0]~reg0_q\ & \D|ContadordeConversao|Contador|IC_2|Qout[3]~reg0_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datab => \D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[3]~reg0_q\,
	datac => \D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datad => \D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[3]~reg0_q\,
	datae => \D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[3]~reg0_q\,
	dataf => \D|ContadordeConversao|Contador|IC_1|ALT_INV_Qout[0]~reg0_q\,
	combout => \D|ContadordeConversao|Contador|ClrN3~0_combout\);

-- Location: LABCELL_X80_Y35_N42
\D|ContadordeConversao|Contador|IC_4|Qout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordeConversao|Contador|IC_4|Qout~1_combout\ = ( \D|ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\ & ( (!\D|comb~0_combout\ & (!\D|ContadordeConversao|Contador|IC_4|Qout[1]~reg0_q\ & ((!\D|ContadordeConversao|Contador|ClrN3~0_combout\) # 
-- (!\D|ContadordeConversao|Contador|IC_4|Qout[3]~reg0_q\)))) ) ) # ( !\D|ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\ & ( (!\D|comb~0_combout\ & \D|ContadordeConversao|Contador|IC_4|Qout[1]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011100000000000001110000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ContadordeConversao|Contador|ALT_INV_ClrN3~0_combout\,
	datab => \D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datac => \D|ALT_INV_comb~0_combout\,
	datad => \D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[1]~reg0_q\,
	dataf => \D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\,
	combout => \D|ContadordeConversao|Contador|IC_4|Qout~1_combout\);

-- Location: LABCELL_X80_Y35_N45
\D|ContadordeConversao|Contador|IC_4|Qout[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordeConversao|Contador|IC_4|Qout[2]~2_combout\ = ( \D|C|Eatual.Conversao~DUPLICATE_q\ & ( (\D|comb~0_combout\) # (\D|ContadordeConversao|Contador|ClrN3~0_combout\) ) ) # ( !\D|C|Eatual.Conversao~DUPLICATE_q\ & ( 
-- ((\D|ContadordeConversao|Contador|ClrN3~0_combout\ & (\D|ContadordeConversao|Contador|IC_4|Qout[3]~reg0_q\ & \D|ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\))) # (\D|comb~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100011111000011110001111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ContadordeConversao|Contador|ALT_INV_ClrN3~0_combout\,
	datab => \D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datac => \D|ALT_INV_comb~0_combout\,
	datad => \D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\,
	dataf => \D|C|ALT_INV_Eatual.Conversao~DUPLICATE_q\,
	combout => \D|ContadordeConversao|Contador|IC_4|Qout[2]~2_combout\);

-- Location: FF_X80_Y35_N44
\D|ContadordeConversao|Contador|IC_4|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ContadordeConversao|Contador|IC_4|Qout~1_combout\,
	ena => \D|ContadordeConversao|Contador|IC_4|Qout[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ContadordeConversao|Contador|IC_4|Qout[1]~reg0_q\);

-- Location: LABCELL_X80_Y35_N54
\D|ContadordeConversao|Contador|IC_4|Qout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordeConversao|Contador|IC_4|Qout~3_combout\ = ( \D|ContadordeConversao|Contador|IC_4|Qout[2]~reg0_q\ & ( \D|ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\ & ( (!\D|comb~0_combout\ & (!\D|ContadordeConversao|Contador|IC_4|Qout[1]~reg0_q\ & 
-- ((!\D|ContadordeConversao|Contador|ClrN3~0_combout\) # (!\D|ContadordeConversao|Contador|IC_4|Qout[3]~reg0_q\)))) ) ) ) # ( !\D|ContadordeConversao|Contador|IC_4|Qout[2]~reg0_q\ & ( \D|ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\ & ( 
-- (!\D|comb~0_combout\ & (\D|ContadordeConversao|Contador|IC_4|Qout[1]~reg0_q\ & ((!\D|ContadordeConversao|Contador|ClrN3~0_combout\) # (!\D|ContadordeConversao|Contador|IC_4|Qout[3]~reg0_q\)))) ) ) ) # ( \D|ContadordeConversao|Contador|IC_4|Qout[2]~reg0_q\ 
-- & ( !\D|ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\ & ( !\D|comb~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000100010001000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ALT_INV_comb~0_combout\,
	datab => \D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[1]~reg0_q\,
	datac => \D|ContadordeConversao|Contador|ALT_INV_ClrN3~0_combout\,
	datad => \D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datae => \D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[2]~reg0_q\,
	dataf => \D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\,
	combout => \D|ContadordeConversao|Contador|IC_4|Qout~3_combout\);

-- Location: FF_X80_Y35_N56
\D|ContadordeConversao|Contador|IC_4|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ContadordeConversao|Contador|IC_4|Qout~3_combout\,
	ena => \D|ContadordeConversao|Contador|IC_4|Qout[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ContadordeConversao|Contador|IC_4|Qout[2]~reg0_q\);

-- Location: LABCELL_X81_Y35_N45
\D|ContadordeConversao|Contador|IC_4|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordeConversao|Contador|IC_4|Add0~0_combout\ = ( \D|ContadordeConversao|Contador|IC_4|Qout[1]~reg0_q\ & ( (\D|ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\ & \D|ContadordeConversao|Contador|IC_4|Qout[2]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\,
	datad => \D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[2]~reg0_q\,
	dataf => \D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[1]~reg0_q\,
	combout => \D|ContadordeConversao|Contador|IC_4|Add0~0_combout\);

-- Location: LABCELL_X81_Y37_N12
\D|ContadordeConversao|Contador|IC_4|Qout[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordeConversao|Contador|IC_4|Qout[3]~4_combout\ = ( \D|ContadordeConversao|Contador|IC_4|Qout[3]~reg0_q\ & ( !\D|comb~0_combout\ & ( (!\D|ContadordeConversao|Contador|ClrN3~0_combout\) # ((!\D|ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\ & 
-- ((!\D|C|Eatual.Conversao~DUPLICATE_q\) # (!\D|ContadordeConversao|Contador|IC_4|Add0~0_combout\)))) ) ) ) # ( !\D|ContadordeConversao|Contador|IC_4|Qout[3]~reg0_q\ & ( !\D|comb~0_combout\ & ( (\D|C|Eatual.Conversao~DUPLICATE_q\ & 
-- (\D|ContadordeConversao|Contador|ClrN3~0_combout\ & \D|ContadordeConversao|Contador|IC_4|Add0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101111111001111100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|C|ALT_INV_Eatual.Conversao~DUPLICATE_q\,
	datab => \D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\,
	datac => \D|ContadordeConversao|Contador|ALT_INV_ClrN3~0_combout\,
	datad => \D|ContadordeConversao|Contador|IC_4|ALT_INV_Add0~0_combout\,
	datae => \D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\,
	dataf => \D|ALT_INV_comb~0_combout\,
	combout => \D|ContadordeConversao|Contador|IC_4|Qout[3]~4_combout\);

-- Location: FF_X81_Y37_N14
\D|ContadordeConversao|Contador|IC_4|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ContadordeConversao|Contador|IC_4|Qout[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ContadordeConversao|Contador|IC_4|Qout[3]~reg0_q\);

-- Location: LABCELL_X81_Y35_N15
\D|ContadordeConversao|Contador|IC_4|Qout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordeConversao|Contador|IC_4|Qout[0]~0_combout\ = ( \D|C|Eatual.Conversao~DUPLICATE_q\ & ( (!\D|comb~0_combout\ & (!\D|ContadordeConversao|Contador|ClrN3~0_combout\ $ (!\D|ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\))) ) ) # ( 
-- !\D|C|Eatual.Conversao~DUPLICATE_q\ & ( (!\D|comb~0_combout\ & (\D|ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\ & ((!\D|ContadordeConversao|Contador|IC_4|Qout[3]~reg0_q\) # (!\D|ContadordeConversao|Contador|ClrN3~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001000000000001100100000001100110000000000110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datab => \D|ALT_INV_comb~0_combout\,
	datac => \D|ContadordeConversao|Contador|ALT_INV_ClrN3~0_combout\,
	datad => \D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\,
	dataf => \D|C|ALT_INV_Eatual.Conversao~DUPLICATE_q\,
	combout => \D|ContadordeConversao|Contador|IC_4|Qout[0]~0_combout\);

-- Location: FF_X81_Y35_N17
\D|ContadordeConversao|Contador|IC_4|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|ContadordeConversao|Contador|IC_4|Qout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\);

-- Location: LABCELL_X81_Y35_N48
\D|ContadordeConversao|S~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordeConversao|S~0_combout\ = ( !\D|ContadordeConversao|Contador|IC_4|Qout[1]~reg0_q\ & ( (!\D|ContadordeConversao|Contador|IC_4|Qout[0]~reg0_q\ & (!\D|ContadordeConversao|Contador|IC_4|Qout[3]~reg0_q\ & 
-- !\D|ContadordeConversao|Contador|IC_4|Qout[2]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[0]~reg0_q\,
	datac => \D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datad => \D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[2]~reg0_q\,
	dataf => \D|ContadordeConversao|Contador|IC_4|ALT_INV_Qout[1]~reg0_q\,
	combout => \D|ContadordeConversao|S~0_combout\);

-- Location: LABCELL_X80_Y35_N18
\D|ContadordeConversao|S~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordeConversao|S~2_combout\ = ( !\D|ContadordeConversao|Contador|IC_3|Qout[2]~reg0_q\ & ( (!\D|ContadordeConversao|Contador|IC_3|Qout[0]~reg0_q\ & (!\D|ContadordeConversao|Contador|IC_3|Qout[1]~reg0_q\ & 
-- (!\D|ContadordeConversao|Contador|IC_2|Qout[3]~reg0_q\ & !\D|ContadordeConversao|Contador|IC_2|Qout[2]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datab => \D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[1]~reg0_q\,
	datac => \D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[3]~reg0_q\,
	datad => \D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[2]~reg0_q\,
	dataf => \D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[2]~reg0_q\,
	combout => \D|ContadordeConversao|S~2_combout\);

-- Location: LABCELL_X81_Y35_N42
\D|ContadordeConversao|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|ContadordeConversao|S~combout\ = ( \D|ContadordeConversao|S~2_combout\ & ( (\D|ContadordeConversao|Contador|IC_2|Qout[1]~reg0_q\ & (\D|ContadordeConversao|S~1_combout\ & (\D|ContadordeConversao|S~0_combout\ & 
-- !\D|ContadordeConversao|Contador|IC_3|Qout[3]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \D|ContadordeConversao|Contador|IC_2|ALT_INV_Qout[1]~reg0_q\,
	datab => \D|ContadordeConversao|ALT_INV_S~1_combout\,
	datac => \D|ContadordeConversao|ALT_INV_S~0_combout\,
	datad => \D|ContadordeConversao|Contador|IC_3|ALT_INV_Qout[3]~reg0_q\,
	dataf => \D|ContadordeConversao|ALT_INV_S~2_combout\,
	combout => \D|ContadordeConversao|S~combout\);

-- Location: MLABCELL_X82_Y35_N21
\D|C|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \D|C|Selector3~0_combout\ = ( \D|C|Eatual.Conversao~q\ & ( ((!\D|s_sinalAtraso~5_combout\ & \D|C|Eatual.Contando~q\)) # (\D|ContadordeConversao|S~combout\) ) ) # ( !\D|C|Eatual.Conversao~q\ & ( (!\D|s_sinalAtraso~5_combout\ & \D|C|Eatual.Contando~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000110011111100110011001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \D|ContadordeConversao|ALT_INV_S~combout\,
	datac => \D|ALT_INV_s_sinalAtraso~5_combout\,
	datad => \D|C|ALT_INV_Eatual.Contando~q\,
	dataf => \D|C|ALT_INV_Eatual.Conversao~q\,
	combout => \D|C|Selector3~0_combout\);

-- Location: FF_X82_Y35_N22
\D|C|Eatual.Contando~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \D|C|Selector3~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|C|Eatual.Contando~DUPLICATE_q\);

-- Location: LABCELL_X83_Y35_N24
\C|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C|Selector3~0_combout\ = ( \C|Eatual.Demorado~q\ & ( \D|s_sinalAtraso~5_combout\ & ( ((!\finalizaRodada~input_o\) # (\D|C|Eatual.Contando~DUPLICATE_q\)) # (\s_demorou~combout\) ) ) ) # ( !\C|Eatual.Demorado~q\ & ( \D|s_sinalAtraso~5_combout\ & ( 
-- (\s_demorou~combout\ & (\C|Eatual.Aguarda~q\ & !\D|C|Eatual.Contando~DUPLICATE_q\)) ) ) ) # ( \C|Eatual.Demorado~q\ & ( !\D|s_sinalAtraso~5_combout\ & ( (!\finalizaRodada~input_o\) # (\s_demorou~combout\) ) ) ) # ( !\C|Eatual.Demorado~q\ & ( 
-- !\D|s_sinalAtraso~5_combout\ & ( (\s_demorou~combout\ & \C|Eatual.Aguarda~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101110111011101110100000101000000001101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s_demorou~combout\,
	datab => \ALT_INV_finalizaRodada~input_o\,
	datac => \C|ALT_INV_Eatual.Aguarda~q\,
	datad => \D|C|ALT_INV_Eatual.Contando~DUPLICATE_q\,
	datae => \C|ALT_INV_Eatual.Demorado~q\,
	dataf => \D|ALT_INV_s_sinalAtraso~5_combout\,
	combout => \C|Selector3~0_combout\);

-- Location: FF_X83_Y35_N26
\C|Eatual.Demorado\ : dffeas
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
	q => \C|Eatual.Demorado~q\);

-- Location: LABCELL_X83_Y35_N54
\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( \C|Eatual.Afobado~q\ ) # ( !\C|Eatual.Afobado~q\ & ( ((\C|Eatual.Respondeu~q\) # (\reset~input_o\)) # (\C|Eatual.Demorado~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C|ALT_INV_Eatual.Demorado~q\,
	datab => \ALT_INV_reset~input_o\,
	datac => \C|ALT_INV_Eatual.Respondeu~q\,
	dataf => \C|ALT_INV_Eatual.Afobado~q\,
	combout => \comb~0_combout\);

-- Location: LABCELL_X85_Y36_N51
\ContaDemora|IC_1|Qout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContaDemora|IC_1|Qout[0]~0_combout\ = ( !\ContaDemora|IC_1|Qout[0]~reg0_q\ & ( \C|Eatual.Aguarda~q\ & ( !\comb~0_combout\ ) ) ) # ( \ContaDemora|IC_1|Qout[0]~reg0_q\ & ( !\C|Eatual.Aguarda~q\ & ( (!\comb~0_combout\ & !\ContaDemora|IC_1|Qout[3]~reg0_q\) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000000000011001100110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_comb~0_combout\,
	datad => \ContaDemora|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datae => \ContaDemora|IC_1|ALT_INV_Qout[0]~reg0_q\,
	dataf => \C|ALT_INV_Eatual.Aguarda~q\,
	combout => \ContaDemora|IC_1|Qout[0]~0_combout\);

-- Location: FF_X85_Y36_N53
\ContaDemora|IC_1|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContaDemora|IC_1|Qout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContaDemora|IC_1|Qout[0]~reg0_q\);

-- Location: MLABCELL_X84_Y36_N33
\ContaDemora|IC_1|Qout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContaDemora|IC_1|Qout~2_combout\ = ( \ContaDemora|IC_1|Qout[0]~reg0_q\ & ( (!\ContaDemora|IC_1|Qout[3]~reg0_q\ & (!\comb~0_combout\ & !\ContaDemora|IC_1|Qout[1]~reg0_q\)) ) ) # ( !\ContaDemora|IC_1|Qout[0]~reg0_q\ & ( (!\comb~0_combout\ & 
-- \ContaDemora|IC_1|Qout[1]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContaDemora|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datac => \ALT_INV_comb~0_combout\,
	datad => \ContaDemora|IC_1|ALT_INV_Qout[1]~reg0_q\,
	dataf => \ContaDemora|IC_1|ALT_INV_Qout[0]~reg0_q\,
	combout => \ContaDemora|IC_1|Qout~2_combout\);

-- Location: MLABCELL_X84_Y36_N39
\ContaDemora|IC_1|Qout[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContaDemora|IC_1|Qout[3]~3_combout\ = ( \R|process_0~0_combout\ & ( (((\ContaDemora|IC_1|Qout[3]~reg0_q\ & \ContaDemora|IC_1|Qout[0]~reg0_q\)) # (\reset~input_o\)) # (\C|Eatual.Aguarda~q\) ) ) # ( !\R|process_0~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContaDemora|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datab => \C|ALT_INV_Eatual.Aguarda~q\,
	datac => \ALT_INV_reset~input_o\,
	datad => \ContaDemora|IC_1|ALT_INV_Qout[0]~reg0_q\,
	dataf => \R|ALT_INV_process_0~0_combout\,
	combout => \ContaDemora|IC_1|Qout[3]~3_combout\);

-- Location: FF_X84_Y36_N35
\ContaDemora|IC_1|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContaDemora|IC_1|Qout~2_combout\,
	ena => \ContaDemora|IC_1|Qout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContaDemora|IC_1|Qout[1]~reg0_q\);

-- Location: MLABCELL_X84_Y36_N21
\ContaDemora|IC_1|Qout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContaDemora|IC_1|Qout~4_combout\ = ( \ContaDemora|IC_1|Qout[3]~reg0_q\ & ( (!\ContaDemora|IC_1|Qout[0]~reg0_q\ & (!\comb~0_combout\ & \ContaDemora|IC_1|Qout[2]~reg0_q\)) ) ) # ( !\ContaDemora|IC_1|Qout[3]~reg0_q\ & ( (!\comb~0_combout\ & 
-- (!\ContaDemora|IC_1|Qout[2]~reg0_q\ $ (((!\ContaDemora|IC_1|Qout[1]~reg0_q\) # (!\ContaDemora|IC_1|Qout[0]~reg0_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011100000000100001110000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContaDemora|IC_1|ALT_INV_Qout[1]~reg0_q\,
	datab => \ContaDemora|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datac => \ALT_INV_comb~0_combout\,
	datad => \ContaDemora|IC_1|ALT_INV_Qout[2]~reg0_q\,
	dataf => \ContaDemora|IC_1|ALT_INV_Qout[3]~reg0_q\,
	combout => \ContaDemora|IC_1|Qout~4_combout\);

-- Location: FF_X84_Y36_N23
\ContaDemora|IC_1|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContaDemora|IC_1|Qout~4_combout\,
	ena => \ContaDemora|IC_1|Qout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContaDemora|IC_1|Qout[2]~reg0_q\);

-- Location: MLABCELL_X84_Y36_N3
\ContaDemora|IC_1|Qout[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContaDemora|IC_1|Qout[3]~1_combout\ = ( \ContaDemora|IC_1|Qout[3]~reg0_q\ & ( \ContaDemora|IC_1|Qout[2]~reg0_q\ & ( (!\comb~0_combout\ & !\ContaDemora|IC_1|Qout[0]~reg0_q\) ) ) ) # ( !\ContaDemora|IC_1|Qout[3]~reg0_q\ & ( 
-- \ContaDemora|IC_1|Qout[2]~reg0_q\ & ( (!\comb~0_combout\ & (\C|Eatual.Aguarda~q\ & (\ContaDemora|IC_1|Qout[0]~reg0_q\ & \ContaDemora|IC_1|Qout[1]~reg0_q\))) ) ) ) # ( \ContaDemora|IC_1|Qout[3]~reg0_q\ & ( !\ContaDemora|IC_1|Qout[2]~reg0_q\ & ( 
-- (!\comb~0_combout\ & !\ContaDemora|IC_1|Qout[0]~reg0_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000000000000000000101010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \C|ALT_INV_Eatual.Aguarda~q\,
	datac => \ContaDemora|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datad => \ContaDemora|IC_1|ALT_INV_Qout[1]~reg0_q\,
	datae => \ContaDemora|IC_1|ALT_INV_Qout[3]~reg0_q\,
	dataf => \ContaDemora|IC_1|ALT_INV_Qout[2]~reg0_q\,
	combout => \ContaDemora|IC_1|Qout[3]~1_combout\);

-- Location: FF_X84_Y36_N5
\ContaDemora|IC_1|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContaDemora|IC_1|Qout[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContaDemora|IC_1|Qout[3]~reg0_q\);

-- Location: LABCELL_X85_Y36_N45
\ContaDemora|IC_2|Qout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContaDemora|IC_2|Qout~3_combout\ = ( !\ContaDemora|ClrN2~combout\ & ( (!\comb~0_combout\ & (!\ContaDemora|IC_2|Qout[0]~reg0_q\ $ (!\ContaDemora|IC_2|Qout[1]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000000011001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_comb~0_combout\,
	datac => \ContaDemora|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datad => \ContaDemora|IC_2|ALT_INV_Qout[1]~reg0_q\,
	dataf => \ContaDemora|ALT_INV_ClrN2~combout\,
	combout => \ContaDemora|IC_2|Qout~3_combout\);

-- Location: LABCELL_X85_Y36_N21
\ContaDemora|IC_2|Qout[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContaDemora|IC_2|Qout[3]~0_combout\ = ( \C|Eatual.Aguarda~q\ & ( (\ContaDemora|IC_1|Qout[0]~reg0_q\ & \ContaDemora|IC_1|Qout[3]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ContaDemora|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datad => \ContaDemora|IC_1|ALT_INV_Qout[3]~reg0_q\,
	dataf => \C|ALT_INV_Eatual.Aguarda~q\,
	combout => \ContaDemora|IC_2|Qout[3]~0_combout\);

-- Location: LABCELL_X85_Y36_N54
\ContaDemora|IC_2|Qout[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContaDemora|IC_2|Qout[0]~4_combout\ = ( \R|process_0~0_combout\ & ( ((\ContaDemora|IC_2|Qout[3]~0_combout\) # (\reset~input_o\)) # (\ContaDemora|ClrN2~combout\) ) ) # ( !\R|process_0~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContaDemora|ALT_INV_ClrN2~combout\,
	datab => \ALT_INV_reset~input_o\,
	datac => \ContaDemora|IC_2|ALT_INV_Qout[3]~0_combout\,
	dataf => \R|ALT_INV_process_0~0_combout\,
	combout => \ContaDemora|IC_2|Qout[0]~4_combout\);

-- Location: FF_X85_Y36_N47
\ContaDemora|IC_2|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContaDemora|IC_2|Qout~3_combout\,
	ena => \ContaDemora|IC_2|Qout[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContaDemora|IC_2|Qout[1]~reg0_q\);

-- Location: LABCELL_X85_Y36_N12
\ContaDemora|IC_2|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContaDemora|IC_2|Add0~0_combout\ = ( \ContaDemora|IC_2|Qout[2]~reg0_q\ & ( (\ContaDemora|IC_2|Qout[0]~reg0_q\ & \ContaDemora|IC_2|Qout[1]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContaDemora|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datad => \ContaDemora|IC_2|ALT_INV_Qout[1]~reg0_q\,
	dataf => \ContaDemora|IC_2|ALT_INV_Qout[2]~reg0_q\,
	combout => \ContaDemora|IC_2|Add0~0_combout\);

-- Location: LABCELL_X85_Y36_N3
\ContaDemora|IC_2|Qout[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContaDemora|IC_2|Qout[3]~2_combout\ = ( !\ContaDemora|ClrN2~combout\ & ( (!\comb~0_combout\ & (!\ContaDemora|IC_2|Qout[3]~reg0_q\ $ (((!\ContaDemora|IC_2|Add0~0_combout\) # (!\ContaDemora|IC_2|Qout[3]~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001001000010001000100100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContaDemora|IC_2|ALT_INV_Qout[3]~reg0_q\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \ContaDemora|IC_2|ALT_INV_Add0~0_combout\,
	datad => \ContaDemora|IC_2|ALT_INV_Qout[3]~0_combout\,
	dataf => \ContaDemora|ALT_INV_ClrN2~combout\,
	combout => \ContaDemora|IC_2|Qout[3]~2_combout\);

-- Location: FF_X85_Y36_N5
\ContaDemora|IC_2|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContaDemora|IC_2|Qout[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContaDemora|IC_2|Qout[3]~reg0_q\);

-- Location: MLABCELL_X84_Y36_N30
\ContaDemora|ClrN2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContaDemora|ClrN2~combout\ = ( \ContaDemora|IC_2|Qout[3]~reg0_q\ & ( (\ContaDemora|IC_1|Qout[3]~reg0_q\ & (\ContaDemora|IC_2|Qout[0]~reg0_q\ & \ContaDemora|IC_1|Qout[0]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContaDemora|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datac => \ContaDemora|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datad => \ContaDemora|IC_1|ALT_INV_Qout[0]~reg0_q\,
	dataf => \ContaDemora|IC_2|ALT_INV_Qout[3]~reg0_q\,
	combout => \ContaDemora|ClrN2~combout\);

-- Location: LABCELL_X85_Y36_N30
\ContaDemora|IC_2|Qout[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContaDemora|IC_2|Qout[0]~1_combout\ = ( \ContaDemora|IC_2|Qout[3]~0_combout\ & ( (!\comb~0_combout\ & !\ContaDemora|IC_2|Qout[0]~reg0_q\) ) ) # ( !\ContaDemora|IC_2|Qout[3]~0_combout\ & ( (!\comb~0_combout\ & (!\ContaDemora|ClrN2~combout\ $ 
-- (!\ContaDemora|IC_2|Qout[0]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000010101010000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datac => \ContaDemora|ALT_INV_ClrN2~combout\,
	datad => \ContaDemora|IC_2|ALT_INV_Qout[0]~reg0_q\,
	dataf => \ContaDemora|IC_2|ALT_INV_Qout[3]~0_combout\,
	combout => \ContaDemora|IC_2|Qout[0]~1_combout\);

-- Location: FF_X85_Y36_N32
\ContaDemora|IC_2|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContaDemora|IC_2|Qout[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContaDemora|IC_2|Qout[0]~reg0_q\);

-- Location: LABCELL_X85_Y36_N15
\ContaDemora|IC_2|Qout~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContaDemora|IC_2|Qout~5_combout\ = ( !\ContaDemora|ClrN2~combout\ & ( (!\comb~0_combout\ & (!\ContaDemora|IC_2|Qout[2]~reg0_q\ $ (((!\ContaDemora|IC_2|Qout[0]~reg0_q\) # (!\ContaDemora|IC_2|Qout[1]~reg0_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011100000000100001110000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContaDemora|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datab => \ContaDemora|IC_2|ALT_INV_Qout[1]~reg0_q\,
	datac => \ALT_INV_comb~0_combout\,
	datad => \ContaDemora|IC_2|ALT_INV_Qout[2]~reg0_q\,
	dataf => \ContaDemora|ALT_INV_ClrN2~combout\,
	combout => \ContaDemora|IC_2|Qout~5_combout\);

-- Location: FF_X85_Y36_N17
\ContaDemora|IC_2|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContaDemora|IC_2|Qout~5_combout\,
	ena => \ContaDemora|IC_2|Qout[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContaDemora|IC_2|Qout[2]~reg0_q\);

-- Location: MLABCELL_X84_Y36_N51
\ContaDemora|IC_3|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContaDemora|IC_3|process_0~0_combout\ = ( \C|Eatual.Aguarda~q\ & ( \ContaDemora|IC_2|Qout[3]~reg0_q\ & ( (\ContaDemora|IC_2|Qout[0]~reg0_q\ & (\ContaDemora|IC_1|Qout[0]~reg0_q\ & \ContaDemora|IC_1|Qout[3]~reg0_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContaDemora|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datab => \ContaDemora|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datac => \ContaDemora|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datae => \C|ALT_INV_Eatual.Aguarda~q\,
	dataf => \ContaDemora|IC_2|ALT_INV_Qout[3]~reg0_q\,
	combout => \ContaDemora|IC_3|process_0~0_combout\);

-- Location: MLABCELL_X84_Y36_N45
\ContaDemora|IC_3|Qout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContaDemora|IC_3|Qout[0]~0_combout\ = ( !\ContaDemora|IC_3|Qout[0]~reg0_q\ & ( \ContaDemora|IC_3|process_0~0_combout\ & ( !\comb~0_combout\ ) ) ) # ( \ContaDemora|IC_3|Qout[0]~reg0_q\ & ( !\ContaDemora|IC_3|process_0~0_combout\ & ( (!\comb~0_combout\ & 
-- !\ContaDemora|ClrN3~0_combout\) ) ) ) # ( !\ContaDemora|IC_3|Qout[0]~reg0_q\ & ( !\ContaDemora|IC_3|process_0~0_combout\ & ( (!\comb~0_combout\ & \ContaDemora|ClrN3~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010101010100000000010101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datad => \ContaDemora|ALT_INV_ClrN3~0_combout\,
	datae => \ContaDemora|IC_3|ALT_INV_Qout[0]~reg0_q\,
	dataf => \ContaDemora|IC_3|ALT_INV_process_0~0_combout\,
	combout => \ContaDemora|IC_3|Qout[0]~0_combout\);

-- Location: FF_X84_Y36_N47
\ContaDemora|IC_3|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContaDemora|IC_3|Qout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContaDemora|IC_3|Qout[0]~reg0_q\);

-- Location: MLABCELL_X84_Y36_N9
\ContaDemora|IC_3|Qout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContaDemora|IC_3|Qout~4_combout\ = ( \ContaDemora|IC_3|Qout[0]~reg0_q\ & ( (!\ContaDemora|ClrN3~0_combout\ & (!\comb~0_combout\ & (!\ContaDemora|IC_3|Qout[1]~reg0_q\ $ (!\ContaDemora|IC_3|Qout[2]~reg0_q\)))) ) ) # ( !\ContaDemora|IC_3|Qout[0]~reg0_q\ & ( 
-- (!\ContaDemora|ClrN3~0_combout\ & (!\comb~0_combout\ & \ContaDemora|IC_3|Qout[2]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000001000100000000000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContaDemora|ALT_INV_ClrN3~0_combout\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \ContaDemora|IC_3|ALT_INV_Qout[1]~reg0_q\,
	datad => \ContaDemora|IC_3|ALT_INV_Qout[2]~reg0_q\,
	dataf => \ContaDemora|IC_3|ALT_INV_Qout[0]~reg0_q\,
	combout => \ContaDemora|IC_3|Qout~4_combout\);

-- Location: MLABCELL_X84_Y36_N57
\ContaDemora|IC_3|Qout[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContaDemora|IC_3|Qout[3]~3_combout\ = ( \ContaDemora|ClrN3~0_combout\ ) # ( !\ContaDemora|ClrN3~0_combout\ & ( ((!\R|process_0~0_combout\) # (\reset~input_o\)) # (\ContaDemora|IC_3|process_0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101110111111111110111011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContaDemora|IC_3|ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_reset~input_o\,
	datad => \R|ALT_INV_process_0~0_combout\,
	dataf => \ContaDemora|ALT_INV_ClrN3~0_combout\,
	combout => \ContaDemora|IC_3|Qout[3]~3_combout\);

-- Location: FF_X84_Y36_N11
\ContaDemora|IC_3|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContaDemora|IC_3|Qout~4_combout\,
	ena => \ContaDemora|IC_3|Qout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContaDemora|IC_3|Qout[2]~reg0_q\);

-- Location: MLABCELL_X84_Y36_N18
\ContaDemora|IC_3|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContaDemora|IC_3|Add0~0_combout\ = ( \ContaDemora|IC_3|Qout[1]~reg0_q\ & ( (\ContaDemora|IC_3|Qout[0]~reg0_q\ & \ContaDemora|IC_3|Qout[2]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ContaDemora|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datad => \ContaDemora|IC_3|ALT_INV_Qout[2]~reg0_q\,
	dataf => \ContaDemora|IC_3|ALT_INV_Qout[1]~reg0_q\,
	combout => \ContaDemora|IC_3|Add0~0_combout\);

-- Location: LABCELL_X85_Y36_N33
\ContaDemora|IC_3|Qout[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContaDemora|IC_3|Qout[3]~1_combout\ = ( !\ContaDemora|ClrN3~0_combout\ & ( (!\comb~0_combout\ & (!\ContaDemora|IC_3|Qout[3]~reg0_q\ $ (((!\ContaDemora|IC_3|process_0~0_combout\) # (!\ContaDemora|IC_3|Add0~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010101000000000101010100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \ContaDemora|IC_3|ALT_INV_process_0~0_combout\,
	datac => \ContaDemora|IC_3|ALT_INV_Add0~0_combout\,
	datad => \ContaDemora|IC_3|ALT_INV_Qout[3]~reg0_q\,
	dataf => \ContaDemora|ALT_INV_ClrN3~0_combout\,
	combout => \ContaDemora|IC_3|Qout[3]~1_combout\);

-- Location: FF_X85_Y36_N35
\ContaDemora|IC_3|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContaDemora|IC_3|Qout[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContaDemora|IC_3|Qout[3]~reg0_q\);

-- Location: LABCELL_X85_Y35_N42
\ContaDemora|ClrN3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContaDemora|ClrN3~0_combout\ = ( \ContaDemora|IC_3|Qout[3]~reg0_q\ & ( \ContaDemora|IC_1|Qout[3]~reg0_q\ & ( (\ContaDemora|IC_3|Qout[0]~reg0_q\ & (\ContaDemora|IC_1|Qout[0]~reg0_q\ & (\ContaDemora|IC_2|Qout[0]~reg0_q\ & 
-- \ContaDemora|IC_2|Qout[3]~reg0_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContaDemora|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datab => \ContaDemora|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datac => \ContaDemora|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datad => \ContaDemora|IC_2|ALT_INV_Qout[3]~reg0_q\,
	datae => \ContaDemora|IC_3|ALT_INV_Qout[3]~reg0_q\,
	dataf => \ContaDemora|IC_1|ALT_INV_Qout[3]~reg0_q\,
	combout => \ContaDemora|ClrN3~0_combout\);

-- Location: MLABCELL_X84_Y36_N6
\ContaDemora|IC_3|Qout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContaDemora|IC_3|Qout~2_combout\ = ( \ContaDemora|IC_3|Qout[0]~reg0_q\ & ( (!\ContaDemora|ClrN3~0_combout\ & (!\comb~0_combout\ & !\ContaDemora|IC_3|Qout[1]~reg0_q\)) ) ) # ( !\ContaDemora|IC_3|Qout[0]~reg0_q\ & ( (!\ContaDemora|ClrN3~0_combout\ & 
-- (!\comb~0_combout\ & \ContaDemora|IC_3|Qout[1]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContaDemora|ALT_INV_ClrN3~0_combout\,
	datac => \ALT_INV_comb~0_combout\,
	datad => \ContaDemora|IC_3|ALT_INV_Qout[1]~reg0_q\,
	dataf => \ContaDemora|IC_3|ALT_INV_Qout[0]~reg0_q\,
	combout => \ContaDemora|IC_3|Qout~2_combout\);

-- Location: FF_X84_Y36_N8
\ContaDemora|IC_3|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContaDemora|IC_3|Qout~2_combout\,
	ena => \ContaDemora|IC_3|Qout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContaDemora|IC_3|Qout[1]~reg0_q\);

-- Location: LABCELL_X85_Y35_N30
\s_demorou~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \s_demorou~1_combout\ = ( !\ContaDemora|IC_3|Qout[2]~reg0_q\ & ( !\ContaDemora|IC_1|Qout[2]~reg0_q\ & ( (!\ContaDemora|IC_2|Qout[2]~reg0_q\ & (!\ContaDemora|IC_3|Qout[1]~reg0_q\ & (!\ContaDemora|IC_1|Qout[1]~reg0_q\ & !\ContaDemora|IC_2|Qout[1]~reg0_q\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContaDemora|IC_2|ALT_INV_Qout[2]~reg0_q\,
	datab => \ContaDemora|IC_3|ALT_INV_Qout[1]~reg0_q\,
	datac => \ContaDemora|IC_1|ALT_INV_Qout[1]~reg0_q\,
	datad => \ContaDemora|IC_2|ALT_INV_Qout[1]~reg0_q\,
	datae => \ContaDemora|IC_3|ALT_INV_Qout[2]~reg0_q\,
	dataf => \ContaDemora|IC_1|ALT_INV_Qout[2]~reg0_q\,
	combout => \s_demorou~1_combout\);

-- Location: LABCELL_X85_Y36_N0
\s_demorou~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \s_demorou~3_combout\ = ( \ContaDemora|IC_3|Qout[0]~reg0_q\ & ( (\ContaDemora|IC_2|Qout[3]~reg0_q\ & (\ContaDemora|IC_3|Qout[3]~reg0_q\ & \ContaDemora|IC_2|Qout[0]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContaDemora|IC_2|ALT_INV_Qout[3]~reg0_q\,
	datac => \ContaDemora|IC_3|ALT_INV_Qout[3]~reg0_q\,
	datad => \ContaDemora|IC_2|ALT_INV_Qout[0]~reg0_q\,
	dataf => \ContaDemora|IC_3|ALT_INV_Qout[0]~reg0_q\,
	combout => \s_demorou~3_combout\);

-- Location: MLABCELL_X84_Y35_N48
\ContaDemora|IC_4|Qout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContaDemora|IC_4|Qout[0]~0_combout\ = ( \ContaDemora|IC_4|Qout[0]~reg0_q\ & ( \ContaDemora|IC_4|Qout[3]~reg0_q\ & ( (!\ContaDemora|ClrN3~0_combout\ & (!\comb~0_combout\ & ((!\ContaDemora|IC_2|Qout[3]~0_combout\) # (!\s_demorou~3_combout\)))) ) ) ) # ( 
-- !\ContaDemora|IC_4|Qout[0]~reg0_q\ & ( \ContaDemora|IC_4|Qout[3]~reg0_q\ & ( (!\comb~0_combout\ & (\ContaDemora|IC_2|Qout[3]~0_combout\ & \s_demorou~3_combout\)) ) ) ) # ( \ContaDemora|IC_4|Qout[0]~reg0_q\ & ( !\ContaDemora|IC_4|Qout[3]~reg0_q\ & ( 
-- (!\comb~0_combout\ & ((!\ContaDemora|IC_2|Qout[3]~0_combout\) # (!\s_demorou~3_combout\))) ) ) ) # ( !\ContaDemora|IC_4|Qout[0]~reg0_q\ & ( !\ContaDemora|IC_4|Qout[3]~reg0_q\ & ( (!\comb~0_combout\ & (\ContaDemora|IC_2|Qout[3]~0_combout\ & 
-- \s_demorou~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100110011001100000000000000000011001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContaDemora|ALT_INV_ClrN3~0_combout\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \ContaDemora|IC_2|ALT_INV_Qout[3]~0_combout\,
	datad => \ALT_INV_s_demorou~3_combout\,
	datae => \ContaDemora|IC_4|ALT_INV_Qout[0]~reg0_q\,
	dataf => \ContaDemora|IC_4|ALT_INV_Qout[3]~reg0_q\,
	combout => \ContaDemora|IC_4|Qout[0]~0_combout\);

-- Location: FF_X84_Y35_N50
\ContaDemora|IC_4|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContaDemora|IC_4|Qout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContaDemora|IC_4|Qout[0]~reg0_q\);

-- Location: LABCELL_X85_Y35_N48
\s_demorou~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \s_demorou~0_combout\ = ( \ContaDemora|IC_4|Qout[3]~reg0_q\ & ( \ContaDemora|IC_4|Qout[0]~reg0_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ContaDemora|IC_4|ALT_INV_Qout[3]~reg0_q\,
	dataf => \ContaDemora|IC_4|ALT_INV_Qout[0]~reg0_q\,
	combout => \s_demorou~0_combout\);

-- Location: LABCELL_X85_Y36_N18
\ContaDemora|IC_4|Qout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContaDemora|IC_4|Qout~3_combout\ = ( \ContaDemora|ClrN3~0_combout\ & ( (!\comb~0_combout\ & ((!\ContaDemora|IC_4|Qout[0]~reg0_q\ & ((\ContaDemora|IC_4|Qout[1]~reg0_q\))) # (\ContaDemora|IC_4|Qout[0]~reg0_q\ & (!\ContaDemora|IC_4|Qout[3]~reg0_q\ & 
-- !\ContaDemora|IC_4|Qout[1]~reg0_q\)))) ) ) # ( !\ContaDemora|ClrN3~0_combout\ & ( (!\comb~0_combout\ & (!\ContaDemora|IC_4|Qout[0]~reg0_q\ $ (!\ContaDemora|IC_4|Qout[1]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010001000001000101000100000100000100010000010000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \ContaDemora|IC_4|ALT_INV_Qout[0]~reg0_q\,
	datac => \ContaDemora|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datad => \ContaDemora|IC_4|ALT_INV_Qout[1]~reg0_q\,
	dataf => \ContaDemora|ALT_INV_ClrN3~0_combout\,
	combout => \ContaDemora|IC_4|Qout~3_combout\);

-- Location: LABCELL_X85_Y36_N27
\ContaDemora|IC_4|Qout[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContaDemora|IC_4|Qout[0]~4_combout\ = ( \R|process_0~0_combout\ & ( \ContaDemora|ClrN3~0_combout\ & ( (((\ContaDemora|IC_2|Qout[3]~0_combout\ & \s_demorou~3_combout\)) # (\s_demorou~0_combout\)) # (\reset~input_o\) ) ) ) # ( !\R|process_0~0_combout\ & ( 
-- \ContaDemora|ClrN3~0_combout\ ) ) # ( \R|process_0~0_combout\ & ( !\ContaDemora|ClrN3~0_combout\ & ( ((\ContaDemora|IC_2|Qout[3]~0_combout\ & \s_demorou~3_combout\)) # (\reset~input_o\) ) ) ) # ( !\R|process_0~0_combout\ & ( !\ContaDemora|ClrN3~0_combout\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001100110111011111111111111111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContaDemora|IC_2|ALT_INV_Qout[3]~0_combout\,
	datab => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_s_demorou~0_combout\,
	datad => \ALT_INV_s_demorou~3_combout\,
	datae => \R|ALT_INV_process_0~0_combout\,
	dataf => \ContaDemora|ALT_INV_ClrN3~0_combout\,
	combout => \ContaDemora|IC_4|Qout[0]~4_combout\);

-- Location: FF_X85_Y36_N20
\ContaDemora|IC_4|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContaDemora|IC_4|Qout~3_combout\,
	ena => \ContaDemora|IC_4|Qout[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContaDemora|IC_4|Qout[1]~reg0_q\);

-- Location: MLABCELL_X84_Y35_N6
\ContaDemora|IC_4|Qout[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContaDemora|IC_4|Qout[3]~1_combout\ = ( \ContaDemora|IC_4|Qout[3]~reg0_q\ & ( \ContaDemora|IC_4|Qout[0]~reg0_q\ & ( (!\ContaDemora|IC_4|Qout[2]~reg0_q\) # ((!\ContaDemora|IC_4|Qout[1]~reg0_q\) # ((!\ContaDemora|IC_2|Qout[3]~0_combout\) # 
-- (!\s_demorou~3_combout\))) ) ) ) # ( !\ContaDemora|IC_4|Qout[3]~reg0_q\ & ( \ContaDemora|IC_4|Qout[0]~reg0_q\ & ( (\ContaDemora|IC_4|Qout[2]~reg0_q\ & (\ContaDemora|IC_4|Qout[1]~reg0_q\ & (\ContaDemora|IC_2|Qout[3]~0_combout\ & \s_demorou~3_combout\))) ) 
-- ) ) # ( \ContaDemora|IC_4|Qout[3]~reg0_q\ & ( !\ContaDemora|IC_4|Qout[0]~reg0_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContaDemora|IC_4|ALT_INV_Qout[2]~reg0_q\,
	datab => \ContaDemora|IC_4|ALT_INV_Qout[1]~reg0_q\,
	datac => \ContaDemora|IC_2|ALT_INV_Qout[3]~0_combout\,
	datad => \ALT_INV_s_demorou~3_combout\,
	datae => \ContaDemora|IC_4|ALT_INV_Qout[3]~reg0_q\,
	dataf => \ContaDemora|IC_4|ALT_INV_Qout[0]~reg0_q\,
	combout => \ContaDemora|IC_4|Qout[3]~1_combout\);

-- Location: MLABCELL_X84_Y35_N45
\ContaDemora|IC_4|Qout[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContaDemora|IC_4|Qout[3]~2_combout\ = ( \ContaDemora|IC_4|Qout[3]~1_combout\ & ( (\R|process_0~0_combout\ & (!\reset~input_o\ & ((!\s_demorou~0_combout\) # (!\ContaDemora|ClrN3~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010000000100010001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R|ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_s_demorou~0_combout\,
	datad => \ContaDemora|ALT_INV_ClrN3~0_combout\,
	dataf => \ContaDemora|IC_4|ALT_INV_Qout[3]~1_combout\,
	combout => \ContaDemora|IC_4|Qout[3]~2_combout\);

-- Location: FF_X84_Y35_N47
\ContaDemora|IC_4|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContaDemora|IC_4|Qout[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContaDemora|IC_4|Qout[3]~reg0_q\);

-- Location: LABCELL_X85_Y36_N36
\ContaDemora|IC_4|Qout~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ContaDemora|IC_4|Qout~5_combout\ = ( \ContaDemora|IC_4|Qout[2]~reg0_q\ & ( \ContaDemora|IC_4|Qout[1]~reg0_q\ & ( (!\comb~0_combout\ & !\ContaDemora|IC_4|Qout[0]~reg0_q\) ) ) ) # ( !\ContaDemora|IC_4|Qout[2]~reg0_q\ & ( \ContaDemora|IC_4|Qout[1]~reg0_q\ & 
-- ( (!\comb~0_combout\ & (\ContaDemora|IC_4|Qout[0]~reg0_q\ & ((!\ContaDemora|IC_4|Qout[3]~reg0_q\) # (!\ContaDemora|ClrN3~0_combout\)))) ) ) ) # ( \ContaDemora|IC_4|Qout[2]~reg0_q\ & ( !\ContaDemora|IC_4|Qout[1]~reg0_q\ & ( (!\comb~0_combout\ & 
-- ((!\ContaDemora|IC_4|Qout[3]~reg0_q\) # ((!\ContaDemora|ClrN3~0_combout\) # (!\ContaDemora|IC_4|Qout[0]~reg0_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100100000000000110010001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContaDemora|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datab => \ALT_INV_comb~0_combout\,
	datac => \ContaDemora|ALT_INV_ClrN3~0_combout\,
	datad => \ContaDemora|IC_4|ALT_INV_Qout[0]~reg0_q\,
	datae => \ContaDemora|IC_4|ALT_INV_Qout[2]~reg0_q\,
	dataf => \ContaDemora|IC_4|ALT_INV_Qout[1]~reg0_q\,
	combout => \ContaDemora|IC_4|Qout~5_combout\);

-- Location: FF_X85_Y36_N38
\ContaDemora|IC_4|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ContaDemora|IC_4|Qout~5_combout\,
	ena => \ContaDemora|IC_4|Qout[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ContaDemora|IC_4|Qout[2]~reg0_q\);

-- Location: LABCELL_X85_Y36_N9
\s_demorou~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \s_demorou~2_combout\ = ( !\ContaDemora|IC_4|Qout[1]~reg0_q\ & ( !\ContaDemora|IC_4|Qout[2]~reg0_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ContaDemora|IC_4|ALT_INV_Qout[2]~reg0_q\,
	dataf => \ContaDemora|IC_4|ALT_INV_Qout[1]~reg0_q\,
	combout => \s_demorou~2_combout\);

-- Location: MLABCELL_X84_Y35_N15
s_demorou : cyclonev_lcell_comb
-- Equation(s):
-- \s_demorou~combout\ = ( \ContaDemora|ClrN3~0_combout\ & ( (\s_demorou~1_combout\ & (\s_demorou~2_combout\ & \s_demorou~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s_demorou~1_combout\,
	datac => \ALT_INV_s_demorou~2_combout\,
	datad => \ALT_INV_s_demorou~0_combout\,
	dataf => \ContaDemora|ALT_INV_ClrN3~0_combout\,
	combout => \s_demorou~combout\);

-- Location: LABCELL_X83_Y35_N57
\C|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C|Selector4~0_combout\ = ( \C|Eatual.Aguarda~q\ & ( \resposta~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_resposta~input_o\,
	dataf => \C|ALT_INV_Eatual.Aguarda~q\,
	combout => \C|Selector4~0_combout\);

-- Location: LABCELL_X83_Y35_N48
\C|Selector4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C|Selector4~1_combout\ = ( \C|Eatual.Respondeu~q\ & ( \D|s_sinalAtraso~5_combout\ & ( (((!\finalizaRodada~input_o\) # (\D|C|Eatual.Contando~DUPLICATE_q\)) # (\C|Selector4~0_combout\)) # (\s_demorou~combout\) ) ) ) # ( !\C|Eatual.Respondeu~q\ & ( 
-- \D|s_sinalAtraso~5_combout\ & ( (!\s_demorou~combout\ & (\C|Selector4~0_combout\ & !\D|C|Eatual.Contando~DUPLICATE_q\)) ) ) ) # ( \C|Eatual.Respondeu~q\ & ( !\D|s_sinalAtraso~5_combout\ & ( ((!\finalizaRodada~input_o\) # (\C|Selector4~0_combout\)) # 
-- (\s_demorou~combout\) ) ) ) # ( !\C|Eatual.Respondeu~q\ & ( !\D|s_sinalAtraso~5_combout\ & ( (!\s_demorou~combout\ & \C|Selector4~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010111111110111011100100000001000001111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s_demorou~combout\,
	datab => \C|ALT_INV_Selector4~0_combout\,
	datac => \D|C|ALT_INV_Eatual.Contando~DUPLICATE_q\,
	datad => \ALT_INV_finalizaRodada~input_o\,
	datae => \C|ALT_INV_Eatual.Respondeu~q\,
	dataf => \D|ALT_INV_s_sinalAtraso~5_combout\,
	combout => \C|Selector4~1_combout\);

-- Location: FF_X83_Y35_N50
\C|Eatual.Respondeu\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \C|Selector4~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|Eatual.Respondeu~q\);

-- Location: MLABCELL_X84_Y35_N27
\R|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R|process_0~0_combout\ = ( !\C|Eatual.Demorado~q\ & ( (!\C|Eatual.Respondeu~q\ & !\C|Eatual.Afobado~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C|ALT_INV_Eatual.Respondeu~q\,
	datad => \C|ALT_INV_Eatual.Afobado~q\,
	dataf => \C|ALT_INV_Eatual.Demorado~q\,
	combout => \R|process_0~0_combout\);

-- Location: LABCELL_X85_Y35_N0
\C|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C|Selector0~0_combout\ = (!\C|Eatual.Inicial~q\ & !\rodada~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \C|ALT_INV_Eatual.Inicial~q\,
	datad => \ALT_INV_rodada~input_o\,
	combout => \C|Selector0~0_combout\);

-- Location: LABCELL_X83_Y35_N0
\C|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C|Selector0~1_combout\ = ( !\C|Selector0~0_combout\ & ( \D|s_sinalAtraso~5_combout\ & ( ((!\finalizaRodada~input_o\) # ((\D|C|Eatual.Contando~DUPLICATE_q\) # (\s_demorou~combout\))) # (\R|process_0~0_combout\) ) ) ) # ( !\C|Selector0~0_combout\ & ( 
-- !\D|s_sinalAtraso~5_combout\ & ( ((!\finalizaRodada~input_o\) # (\s_demorou~combout\)) # (\R|process_0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111011111000000000000000011011111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R|ALT_INV_process_0~0_combout\,
	datab => \ALT_INV_finalizaRodada~input_o\,
	datac => \ALT_INV_s_demorou~combout\,
	datad => \D|C|ALT_INV_Eatual.Contando~DUPLICATE_q\,
	datae => \C|ALT_INV_Selector0~0_combout\,
	dataf => \D|ALT_INV_s_sinalAtraso~5_combout\,
	combout => \C|Selector0~1_combout\);

-- Location: FF_X83_Y35_N2
\C|Eatual.Inicial\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \C|Selector0~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|Eatual.Inicial~q\);

-- Location: MLABCELL_X84_Y35_N42
\C|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C|Selector1~0_combout\ = ( !\C|Eatual.Inicial~q\ & ( \rodada~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_rodada~input_o\,
	dataf => \C|ALT_INV_Eatual.Inicial~q\,
	combout => \C|Selector1~0_combout\);

-- Location: LABCELL_X83_Y35_N6
\C|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \C|Selector1~1_combout\ = ( \C|Eatual.Atraso~q\ & ( \D|C|Eatual.Contando~DUPLICATE_q\ & ( (((!\resposta~input_o\ & !\D|s_sinalAtraso~5_combout\)) # (\s_demorou~combout\)) # (\C|Selector1~0_combout\) ) ) ) # ( !\C|Eatual.Atraso~q\ & ( 
-- \D|C|Eatual.Contando~DUPLICATE_q\ & ( \C|Selector1~0_combout\ ) ) ) # ( \C|Eatual.Atraso~q\ & ( !\D|C|Eatual.Contando~DUPLICATE_q\ & ( (!\resposta~input_o\) # ((\s_demorou~combout\) # (\C|Selector1~0_combout\)) ) ) ) # ( !\C|Eatual.Atraso~q\ & ( 
-- !\D|C|Eatual.Contando~DUPLICATE_q\ & ( \C|Selector1~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011101111111011111100110011001100111011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resposta~input_o\,
	datab => \C|ALT_INV_Selector1~0_combout\,
	datac => \ALT_INV_s_demorou~combout\,
	datad => \D|ALT_INV_s_sinalAtraso~5_combout\,
	datae => \C|ALT_INV_Eatual.Atraso~q\,
	dataf => \D|C|ALT_INV_Eatual.Contando~DUPLICATE_q\,
	combout => \C|Selector1~1_combout\);

-- Location: FF_X83_Y35_N8
\C|Eatual.Atraso\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \C|Selector1~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C|Eatual.Atraso~q\);

-- Location: LABCELL_X83_Y35_N18
\C|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C|Selector2~0_combout\ = ( \C|Eatual.Aguarda~q\ & ( \D|s_sinalAtraso~5_combout\ & ( ((!\resposta~input_o\ & !\s_demorou~combout\)) # (\D|C|Eatual.Contando~DUPLICATE_q\) ) ) ) # ( !\C|Eatual.Aguarda~q\ & ( \D|s_sinalAtraso~5_combout\ & ( 
-- (!\resposta~input_o\ & (\C|Eatual.Atraso~q\ & (!\s_demorou~combout\ & \D|C|Eatual.Contando~DUPLICATE_q\))) ) ) ) # ( \C|Eatual.Aguarda~q\ & ( !\D|s_sinalAtraso~5_combout\ & ( (!\resposta~input_o\ & !\s_demorou~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000000000000001000001010000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_resposta~input_o\,
	datab => \C|ALT_INV_Eatual.Atraso~q\,
	datac => \ALT_INV_s_demorou~combout\,
	datad => \D|C|ALT_INV_Eatual.Contando~DUPLICATE_q\,
	datae => \C|ALT_INV_Eatual.Aguarda~q\,
	dataf => \D|ALT_INV_s_sinalAtraso~5_combout\,
	combout => \C|Selector2~0_combout\);

-- Location: FF_X83_Y35_N20
\C|Eatual.Aguarda\ : dffeas
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
	q => \C|Eatual.Aguarda~q\);

-- Location: MLABCELL_X84_Y35_N57
\C|WideNor2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \C|WideNor2~0_combout\ = ( !\C|Eatual.Demorado~q\ & ( !\C|Eatual.Afobado~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \C|ALT_INV_Eatual.Afobado~q\,
	dataf => \C|ALT_INV_Eatual.Demorado~q\,
	combout => \C|WideNor2~0_combout\);

-- Location: MLABCELL_X84_Y36_N24
\Medicao|M1|C1|Eprox.CONTA~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|M1|C1|Eprox.CONTA~1_combout\ = ( !\Medicao|M1|C1|Ereg.EPRONTO~DUPLICATE_q\ & ( (\C|Eatual.Aguarda~q\ & \Medicao|M1|C1|Eprox.CONTA~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C|ALT_INV_Eatual.Aguarda~q\,
	datad => \Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	dataf => \Medicao|M1|C1|ALT_INV_Ereg.EPRONTO~DUPLICATE_q\,
	combout => \Medicao|M1|C1|Eprox.CONTA~1_combout\);

-- Location: FF_X84_Y36_N25
\Medicao|M1|C1|Ereg.CONTA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|M1|C1|Eprox.CONTA~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|M1|C1|Ereg.CONTA~q\);

-- Location: MLABCELL_X84_Y36_N36
\Medicao|M1|C1|Eprox.EPRONTO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|M1|C1|Eprox.EPRONTO~0_combout\ = ( \Medicao|M1|C1|Ereg.CONTA~q\ & ( !\C|Eatual.Aguarda~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \C|ALT_INV_Eatual.Aguarda~q\,
	dataf => \Medicao|M1|C1|ALT_INV_Ereg.CONTA~q\,
	combout => \Medicao|M1|C1|Eprox.EPRONTO~0_combout\);

-- Location: FF_X84_Y36_N37
\Medicao|M1|C1|Ereg.EPRONTO~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|M1|C1|Eprox.EPRONTO~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|M1|C1|Ereg.EPRONTO~DUPLICATE_q\);

-- Location: FF_X83_Y37_N41
\Medicao|M1|C1|Ereg.LIMPA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Medicao|M1|C1|Ereg.EPRONTO~DUPLICATE_q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|M1|C1|Ereg.LIMPA~q\);

-- Location: FF_X84_Y36_N38
\Medicao|M1|C1|Ereg.EPRONTO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|M1|C1|Eprox.EPRONTO~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|M1|C1|Ereg.EPRONTO~q\);

-- Location: MLABCELL_X84_Y36_N54
\Medicao|C1|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|C1|Selector2~0_combout\ = ( \Medicao|C1|Ereg.iniciado~q\ ) # ( !\Medicao|C1|Ereg.iniciado~q\ & ( (!\Medicao|M1|C1|Ereg.EPRONTO~q\ & \Medicao|C1|Ereg.medindo~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Medicao|M1|C1|ALT_INV_Ereg.EPRONTO~q\,
	datad => \Medicao|C1|ALT_INV_Ereg.medindo~q\,
	dataf => \Medicao|C1|ALT_INV_Ereg.iniciado~q\,
	combout => \Medicao|C1|Selector2~0_combout\);

-- Location: FF_X84_Y36_N55
\Medicao|C1|Ereg.medindo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|C1|Selector2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|C1|Ereg.medindo~q\);

-- Location: MLABCELL_X84_Y36_N12
\Medicao|C1|Eprox.registra~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|C1|Eprox.registra~0_combout\ = ( \Medicao|C1|Ereg.medindo~q\ & ( \Medicao|M1|C1|Ereg.EPRONTO~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Medicao|C1|ALT_INV_Ereg.medindo~q\,
	dataf => \Medicao|M1|C1|ALT_INV_Ereg.EPRONTO~DUPLICATE_q\,
	combout => \Medicao|C1|Eprox.registra~0_combout\);

-- Location: FF_X84_Y36_N13
\Medicao|C1|Ereg.registra\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|C1|Eprox.registra~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|C1|Ereg.registra~q\);

-- Location: FF_X85_Y36_N26
\Medicao|C1|Ereg.soma\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Medicao|C1|Ereg.registra~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|C1|Ereg.soma~q\);

-- Location: FF_X85_Y36_N8
\Medicao|C1|Ereg.esperasoma\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Medicao|C1|Ereg.soma~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|C1|Ereg.esperasoma~q\);

-- Location: LABCELL_X85_Y36_N6
\Medicao|C1|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|C1|Selector3~0_combout\ = ( \Medicao|C1|Ereg.espera~q\ & ( (\Medicao|C1|Ereg.esperasoma~q\) # (\rodada~input_o\) ) ) # ( !\Medicao|C1|Ereg.espera~q\ & ( \Medicao|C1|Ereg.esperasoma~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rodada~input_o\,
	datad => \Medicao|C1|ALT_INV_Ereg.esperasoma~q\,
	dataf => \Medicao|C1|ALT_INV_Ereg.espera~q\,
	combout => \Medicao|C1|Selector3~0_combout\);

-- Location: FF_X85_Y36_N56
\Medicao|C1|Ereg.espera\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Medicao|C1|Selector3~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|C1|Ereg.espera~q\);

-- Location: LABCELL_X85_Y36_N57
\Medicao|C1|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|C1|Selector0~0_combout\ = ( \Medicao|C1|Ereg.espera~q\ & ( \rodada~input_o\ ) ) # ( !\Medicao|C1|Ereg.espera~q\ & ( (\Medicao|C1|Ereg.parado~q\) # (\rodada~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rodada~input_o\,
	datad => \Medicao|C1|ALT_INV_Ereg.parado~q\,
	dataf => \Medicao|C1|ALT_INV_Ereg.espera~q\,
	combout => \Medicao|C1|Selector0~0_combout\);

-- Location: FF_X85_Y36_N58
\Medicao|C1|Ereg.parado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|C1|Selector0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|C1|Ereg.parado~q\);

-- Location: MLABCELL_X84_Y36_N27
\Medicao|C1|Eprox.iniciado~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|C1|Eprox.iniciado~0_combout\ = ( !\Medicao|C1|Ereg.parado~q\ & ( \rodada~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rodada~input_o\,
	dataf => \Medicao|C1|ALT_INV_Ereg.parado~q\,
	combout => \Medicao|C1|Eprox.iniciado~0_combout\);

-- Location: FF_X84_Y36_N29
\Medicao|C1|Ereg.iniciado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|C1|Eprox.iniciado~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|C1|Ereg.iniciado~q\);

-- Location: LABCELL_X83_Y37_N24
\Medicao|M1|C1|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|M1|C1|Selector0~0_combout\ = ( \Medicao|C1|Ereg.medindo~q\ & ( \Medicao|M1|C1|Eprox.CONTA~0_combout\ ) ) # ( !\Medicao|C1|Ereg.medindo~q\ & ( \Medicao|M1|C1|Eprox.CONTA~0_combout\ ) ) # ( \Medicao|C1|Ereg.medindo~q\ & ( 
-- !\Medicao|M1|C1|Eprox.CONTA~0_combout\ ) ) # ( !\Medicao|C1|Ereg.medindo~q\ & ( !\Medicao|M1|C1|Eprox.CONTA~0_combout\ & ( \Medicao|C1|Ereg.iniciado~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Medicao|C1|ALT_INV_Ereg.iniciado~q\,
	datae => \Medicao|C1|ALT_INV_Ereg.medindo~q\,
	dataf => \Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	combout => \Medicao|M1|C1|Selector0~0_combout\);

-- Location: FF_X83_Y37_N26
\Medicao|M1|C1|Ereg.INICIAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|M1|C1|Selector0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|M1|C1|Ereg.INICIAL~q\);

-- Location: LABCELL_X83_Y37_N57
\Medicao|M1|C1|Eprox.CONTA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|M1|C1|Eprox.CONTA~0_combout\ = ( \Medicao|M1|C1|Ereg.INICIAL~q\ & ( !\Medicao|M1|C1|Ereg.LIMPA~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Medicao|M1|C1|ALT_INV_Ereg.LIMPA~q\,
	dataf => \Medicao|M1|C1|ALT_INV_Ereg.INICIAL~q\,
	combout => \Medicao|M1|C1|Eprox.CONTA~0_combout\);

-- Location: FF_X85_Y37_N53
\Medicao|M1|D1|IC_1|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|M1|D1|IC_1|Qout[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|M1|D1|IC_1|Qout[0]~reg0_q\);

-- Location: FF_X83_Y37_N25
\Medicao|M1|C1|Ereg.INICIAL~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|M1|C1|Selector0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|M1|C1|Ereg.INICIAL~DUPLICATE_q\);

-- Location: FF_X85_Y37_N55
\Medicao|M1|D1|IC_1|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|M1|D1|IC_1|Qout[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|M1|D1|IC_1|Qout[3]~reg0_q\);

-- Location: MLABCELL_X84_Y37_N36
\Medicao|M1|D1|IC_1|Qout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|M1|D1|IC_1|Qout~2_combout\ = ( \Medicao|M1|D1|IC_1|Qout[0]~reg0DUPLICATE_q\ & ( (\Medicao|M1|C1|Eprox.CONTA~0_combout\ & (!\Medicao|M1|D1|IC_1|Qout[3]~reg0_q\ & !\Medicao|M1|D1|IC_1|Qout[1]~reg0_q\)) ) ) # ( 
-- !\Medicao|M1|D1|IC_1|Qout[0]~reg0DUPLICATE_q\ & ( (\Medicao|M1|C1|Eprox.CONTA~0_combout\ & \Medicao|M1|D1|IC_1|Qout[1]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datac => \Medicao|M1|D1|IC_1|ALT_INV_Qout[3]~reg0_q\,
	datad => \Medicao|M1|D1|IC_1|ALT_INV_Qout[1]~reg0_q\,
	dataf => \Medicao|M1|D1|IC_1|ALT_INV_Qout[0]~reg0DUPLICATE_q\,
	combout => \Medicao|M1|D1|IC_1|Qout~2_combout\);

-- Location: FF_X84_Y37_N37
\Medicao|M1|D1|IC_1|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|M1|D1|IC_1|Qout~2_combout\,
	ena => \Medicao|M1|D1|IC_1|Qout[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|M1|D1|IC_1|Qout[1]~reg0_q\);

-- Location: MLABCELL_X84_Y37_N39
\Medicao|M1|D1|IC_1|Qout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|M1|D1|IC_1|Qout~3_combout\ = ( \Medicao|M1|D1|IC_1|Qout[1]~reg0_q\ & ( (\Medicao|M1|C1|Eprox.CONTA~0_combout\ & ((!\Medicao|M1|D1|IC_1|Qout[0]~reg0_q\ & ((\Medicao|M1|D1|IC_1|Qout[2]~reg0_q\))) # (\Medicao|M1|D1|IC_1|Qout[0]~reg0_q\ & 
-- (!\Medicao|M1|D1|IC_1|Qout[3]~reg0DUPLICATE_q\ & !\Medicao|M1|D1|IC_1|Qout[2]~reg0_q\)))) ) ) # ( !\Medicao|M1|D1|IC_1|Qout[1]~reg0_q\ & ( (\Medicao|M1|C1|Eprox.CONTA~0_combout\ & (\Medicao|M1|D1|IC_1|Qout[2]~reg0_q\ & 
-- ((!\Medicao|M1|D1|IC_1|Qout[0]~reg0_q\) # (!\Medicao|M1|D1|IC_1|Qout[3]~reg0DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110010000000000011001000010000001000100001000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Medicao|M1|D1|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datab => \Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datac => \Medicao|M1|D1|IC_1|ALT_INV_Qout[3]~reg0DUPLICATE_q\,
	datad => \Medicao|M1|D1|IC_1|ALT_INV_Qout[2]~reg0_q\,
	dataf => \Medicao|M1|D1|IC_1|ALT_INV_Qout[1]~reg0_q\,
	combout => \Medicao|M1|D1|IC_1|Qout~3_combout\);

-- Location: FF_X84_Y37_N40
\Medicao|M1|D1|IC_1|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|M1|D1|IC_1|Qout~3_combout\,
	ena => \Medicao|M1|D1|IC_1|Qout[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|M1|D1|IC_1|Qout[2]~reg0_q\);

-- Location: LABCELL_X85_Y37_N54
\Medicao|M1|D1|IC_1|Qout[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|M1|D1|IC_1|Qout[3]~4_combout\ = ( \Medicao|M1|D1|IC_1|Qout[3]~reg0_q\ & ( \Medicao|M1|D1|IC_1|Qout[1]~reg0_q\ & ( (!\Medicao|M1|D1|IC_1|Qout[0]~reg0_q\ & \Medicao|M1|C1|Eprox.CONTA~0_combout\) ) ) ) # ( !\Medicao|M1|D1|IC_1|Qout[3]~reg0_q\ & ( 
-- \Medicao|M1|D1|IC_1|Qout[1]~reg0_q\ & ( (\Medicao|M1|D1|IC_1|Qout[0]~reg0_q\ & (\Medicao|M1|C1|Eprox.CONTA~0_combout\ & (\Medicao|M1|D1|IC_1|Qout[2]~reg0_q\ & \Medicao|M1|C1|Ereg.CONTA~q\))) ) ) ) # ( \Medicao|M1|D1|IC_1|Qout[3]~reg0_q\ & ( 
-- !\Medicao|M1|D1|IC_1|Qout[1]~reg0_q\ & ( (!\Medicao|M1|D1|IC_1|Qout[0]~reg0_q\ & \Medicao|M1|C1|Eprox.CONTA~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000100010001000000000000000010010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Medicao|M1|D1|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datab => \Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datac => \Medicao|M1|D1|IC_1|ALT_INV_Qout[2]~reg0_q\,
	datad => \Medicao|M1|C1|ALT_INV_Ereg.CONTA~q\,
	datae => \Medicao|M1|D1|IC_1|ALT_INV_Qout[3]~reg0_q\,
	dataf => \Medicao|M1|D1|IC_1|ALT_INV_Qout[1]~reg0_q\,
	combout => \Medicao|M1|D1|IC_1|Qout[3]~4_combout\);

-- Location: FF_X85_Y37_N56
\Medicao|M1|D1|IC_1|Qout[3]~reg0DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|M1|D1|IC_1|Qout[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|M1|D1|IC_1|Qout[3]~reg0DUPLICATE_q\);

-- Location: FF_X84_Y36_N26
\Medicao|M1|C1|Ereg.CONTA~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|M1|C1|Eprox.CONTA~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|M1|C1|Ereg.CONTA~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y37_N0
\Medicao|M1|D1|IC_1|Qout[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|M1|D1|IC_1|Qout[2]~0_combout\ = ( \Medicao|M1|C1|Ereg.LIMPA~q\ & ( \Medicao|M1|C1|Ereg.CONTA~DUPLICATE_q\ ) ) # ( !\Medicao|M1|C1|Ereg.LIMPA~q\ & ( \Medicao|M1|C1|Ereg.CONTA~DUPLICATE_q\ ) ) # ( \Medicao|M1|C1|Ereg.LIMPA~q\ & ( 
-- !\Medicao|M1|C1|Ereg.CONTA~DUPLICATE_q\ ) ) # ( !\Medicao|M1|C1|Ereg.LIMPA~q\ & ( !\Medicao|M1|C1|Ereg.CONTA~DUPLICATE_q\ & ( (!\Medicao|M1|C1|Ereg.INICIAL~DUPLICATE_q\) # ((\Medicao|M1|D1|IC_1|Qout[0]~reg0DUPLICATE_q\ & 
-- \Medicao|M1|D1|IC_1|Qout[3]~reg0DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011011101111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Medicao|M1|D1|IC_1|ALT_INV_Qout[0]~reg0DUPLICATE_q\,
	datab => \Medicao|M1|C1|ALT_INV_Ereg.INICIAL~DUPLICATE_q\,
	datad => \Medicao|M1|D1|IC_1|ALT_INV_Qout[3]~reg0DUPLICATE_q\,
	datae => \Medicao|M1|C1|ALT_INV_Ereg.LIMPA~q\,
	dataf => \Medicao|M1|C1|ALT_INV_Ereg.CONTA~DUPLICATE_q\,
	combout => \Medicao|M1|D1|IC_1|Qout[2]~0_combout\);

-- Location: LABCELL_X85_Y37_N51
\Medicao|M1|D1|IC_1|Qout[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|M1|D1|IC_1|Qout[0]~1_combout\ = ( \Medicao|M1|D1|IC_1|Qout[2]~0_combout\ & ( (\Medicao|M1|C1|Eprox.CONTA~0_combout\ & !\Medicao|M1|D1|IC_1|Qout[0]~reg0_q\) ) ) # ( !\Medicao|M1|D1|IC_1|Qout[2]~0_combout\ & ( \Medicao|M1|D1|IC_1|Qout[0]~reg0_q\ ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datad => \Medicao|M1|D1|IC_1|ALT_INV_Qout[0]~reg0_q\,
	dataf => \Medicao|M1|D1|IC_1|ALT_INV_Qout[2]~0_combout\,
	combout => \Medicao|M1|D1|IC_1|Qout[0]~1_combout\);

-- Location: FF_X85_Y37_N52
\Medicao|M1|D1|IC_1|Qout[0]~reg0DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|M1|D1|IC_1|Qout[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|M1|D1|IC_1|Qout[0]~reg0DUPLICATE_q\);

-- Location: MLABCELL_X84_Y37_N27
\Medicao|R1|IQ[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|R1|IQ[0]~feeder_combout\ = ( \Medicao|M1|D1|IC_1|Qout[0]~reg0DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Medicao|M1|D1|IC_1|ALT_INV_Qout[0]~reg0DUPLICATE_q\,
	combout => \Medicao|R1|IQ[0]~feeder_combout\);

-- Location: LABCELL_X85_Y36_N42
\Medicao|C1|WideNor1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|C1|WideNor1~combout\ = ( \Medicao|C1|Ereg.esperasoma~q\ ) # ( !\Medicao|C1|Ereg.esperasoma~q\ & ( \Medicao|C1|Ereg.registra~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Medicao|C1|ALT_INV_Ereg.registra~q\,
	dataf => \Medicao|C1|ALT_INV_Ereg.esperasoma~q\,
	combout => \Medicao|C1|WideNor1~combout\);

-- Location: FF_X84_Y37_N29
\Medicao|R1|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|R1|IQ[0]~feeder_combout\,
	ena => \Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|R1|IQ\(0));

-- Location: FF_X84_Y37_N26
\Medicao|R1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Medicao|R1|IQ\(0),
	sload => VCC,
	ena => \Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|R1|Q\(0));

-- Location: LABCELL_X85_Y35_N9
\R|IQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \R|IQ~0_combout\ = ( \s_demorou~2_combout\ & ( \ContaDemora|ClrN3~0_combout\ & ( ((!\C|WideNor2~0_combout\) # ((\s_demorou~1_combout\ & \s_demorou~0_combout\))) # (\Medicao|R1|Q\(0)) ) ) ) # ( !\s_demorou~2_combout\ & ( \ContaDemora|ClrN3~0_combout\ & ( 
-- (!\C|WideNor2~0_combout\) # (\Medicao|R1|Q\(0)) ) ) ) # ( \s_demorou~2_combout\ & ( !\ContaDemora|ClrN3~0_combout\ & ( (!\C|WideNor2~0_combout\) # (\Medicao|R1|Q\(0)) ) ) ) # ( !\s_demorou~2_combout\ & ( !\ContaDemora|ClrN3~0_combout\ & ( 
-- (!\C|WideNor2~0_combout\) # (\Medicao|R1|Q\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111011101110111011101110111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Medicao|R1|ALT_INV_Q\(0),
	datab => \C|ALT_INV_WideNor2~0_combout\,
	datac => \ALT_INV_s_demorou~1_combout\,
	datad => \ALT_INV_s_demorou~0_combout\,
	datae => \ALT_INV_s_demorou~2_combout\,
	dataf => \ContaDemora|ALT_INV_ClrN3~0_combout\,
	combout => \R|IQ~0_combout\);

-- Location: LABCELL_X85_Y35_N36
\R|IQ[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \R|IQ[0]~1_combout\ = ( \C|WideNor2~0_combout\ & ( \ContaDemora|ClrN3~0_combout\ & ( ((\s_demorou~1_combout\ & (\s_demorou~0_combout\ & \s_demorou~2_combout\))) # (\C|Eatual.Respondeu~q\) ) ) ) # ( !\C|WideNor2~0_combout\ & ( \ContaDemora|ClrN3~0_combout\ 
-- ) ) # ( \C|WideNor2~0_combout\ & ( !\ContaDemora|ClrN3~0_combout\ & ( \C|Eatual.Respondeu~q\ ) ) ) # ( !\C|WideNor2~0_combout\ & ( !\ContaDemora|ClrN3~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010101010101010111111111111111110101010101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C|ALT_INV_Eatual.Respondeu~q\,
	datab => \ALT_INV_s_demorou~1_combout\,
	datac => \ALT_INV_s_demorou~0_combout\,
	datad => \ALT_INV_s_demorou~2_combout\,
	datae => \C|ALT_INV_WideNor2~0_combout\,
	dataf => \ContaDemora|ALT_INV_ClrN3~0_combout\,
	combout => \R|IQ[0]~1_combout\);

-- Location: FF_X85_Y35_N10
\R|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R|IQ~0_combout\,
	ena => \R|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R|IQ\(0));

-- Location: MLABCELL_X87_Y35_N3
\R|Q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R|Q[0]~feeder_combout\ = ( \R|IQ\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \R|ALT_INV_IQ\(0),
	combout => \R|Q[0]~feeder_combout\);

-- Location: LABCELL_X85_Y35_N15
\R|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \R|process_0~1_combout\ = ( \s_demorou~2_combout\ & ( \s_demorou~1_combout\ & ( (!\R|process_0~0_combout\) # ((\ContaDemora|ClrN3~0_combout\ & \s_demorou~0_combout\)) ) ) ) # ( !\s_demorou~2_combout\ & ( \s_demorou~1_combout\ & ( !\R|process_0~0_combout\ 
-- ) ) ) # ( \s_demorou~2_combout\ & ( !\s_demorou~1_combout\ & ( !\R|process_0~0_combout\ ) ) ) # ( !\s_demorou~2_combout\ & ( !\s_demorou~1_combout\ & ( !\R|process_0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \R|ALT_INV_process_0~0_combout\,
	datac => \ContaDemora|ALT_INV_ClrN3~0_combout\,
	datad => \ALT_INV_s_demorou~0_combout\,
	datae => \ALT_INV_s_demorou~2_combout\,
	dataf => \ALT_INV_s_demorou~1_combout\,
	combout => \R|process_0~1_combout\);

-- Location: FF_X87_Y35_N4
\R|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R|Q[0]~feeder_combout\,
	ena => \R|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R|Q\(0));

-- Location: FF_X84_Y37_N2
\Medicao|R1|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Medicao|M1|D1|IC_1|Qout[1]~reg0_q\,
	sload => VCC,
	ena => \Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|R1|IQ\(1));

-- Location: FF_X84_Y37_N59
\Medicao|R1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Medicao|R1|IQ\(1),
	sload => VCC,
	ena => \Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|R1|Q\(1));

-- Location: LABCELL_X85_Y35_N3
\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = ( \ContaDemora|ClrN3~0_combout\ & ( (!\C|WideNor2~0_combout\) # ((\s_demorou~0_combout\ & (\s_demorou~1_combout\ & \s_demorou~2_combout\))) ) ) # ( !\ContaDemora|ClrN3~0_combout\ & ( !\C|WideNor2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100011111000011110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_s_demorou~0_combout\,
	datab => \ALT_INV_s_demorou~1_combout\,
	datac => \C|ALT_INV_WideNor2~0_combout\,
	datad => \ALT_INV_s_demorou~2_combout\,
	dataf => \ContaDemora|ALT_INV_ClrN3~0_combout\,
	combout => \comb~1_combout\);

-- Location: FF_X85_Y35_N5
\R|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Medicao|R1|Q\(1),
	sclr => \comb~1_combout\,
	sload => VCC,
	ena => \R|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R|IQ\(1));

-- Location: FF_X85_Y35_N34
\R|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R|IQ\(1),
	sload => VCC,
	ena => \R|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R|Q\(1));

-- Location: FF_X84_Y37_N19
\Medicao|R1|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Medicao|M1|D1|IC_1|Qout[2]~reg0_q\,
	sload => VCC,
	ena => \Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|R1|IQ\(2));

-- Location: FF_X84_Y37_N4
\Medicao|R1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Medicao|R1|IQ\(2),
	sload => VCC,
	ena => \Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|R1|Q\(2));

-- Location: FF_X85_Y35_N37
\R|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Medicao|R1|Q\(2),
	sclr => \comb~1_combout\,
	sload => VCC,
	ena => \R|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R|IQ\(2));

-- Location: MLABCELL_X87_Y35_N42
\R|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R|Q[2]~feeder_combout\ = ( \R|IQ\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \R|ALT_INV_IQ\(2),
	combout => \R|Q[2]~feeder_combout\);

-- Location: FF_X87_Y35_N43
\R|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R|Q[2]~feeder_combout\,
	ena => \R|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R|Q\(2));

-- Location: FF_X84_Y37_N53
\Medicao|R1|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Medicao|M1|D1|IC_1|Qout[3]~reg0DUPLICATE_q\,
	sload => VCC,
	ena => \Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|R1|IQ\(3));

-- Location: FF_X84_Y37_N50
\Medicao|R1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Medicao|R1|IQ\(3),
	sload => VCC,
	ena => \Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|R1|Q\(3));

-- Location: MLABCELL_X84_Y35_N30
\R|IQ~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \R|IQ~2_combout\ = ( \ContaDemora|ClrN3~0_combout\ & ( \s_demorou~1_combout\ & ( ((!\C|WideNor2~0_combout\) # ((\s_demorou~0_combout\ & \s_demorou~2_combout\))) # (\Medicao|R1|Q\(3)) ) ) ) # ( !\ContaDemora|ClrN3~0_combout\ & ( \s_demorou~1_combout\ & ( 
-- (!\C|WideNor2~0_combout\) # (\Medicao|R1|Q\(3)) ) ) ) # ( \ContaDemora|ClrN3~0_combout\ & ( !\s_demorou~1_combout\ & ( (!\C|WideNor2~0_combout\) # (\Medicao|R1|Q\(3)) ) ) ) # ( !\ContaDemora|ClrN3~0_combout\ & ( !\s_demorou~1_combout\ & ( 
-- (!\C|WideNor2~0_combout\) # (\Medicao|R1|Q\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101111111110101010111111111010101011111111101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Medicao|R1|ALT_INV_Q\(3),
	datab => \ALT_INV_s_demorou~0_combout\,
	datac => \ALT_INV_s_demorou~2_combout\,
	datad => \C|ALT_INV_WideNor2~0_combout\,
	datae => \ContaDemora|ALT_INV_ClrN3~0_combout\,
	dataf => \ALT_INV_s_demorou~1_combout\,
	combout => \R|IQ~2_combout\);

-- Location: FF_X85_Y35_N43
\R|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R|IQ~2_combout\,
	sload => VCC,
	ena => \R|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R|IQ\(3));

-- Location: MLABCELL_X87_Y35_N36
\R|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R|Q[3]~feeder_combout\ = ( \R|IQ\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \R|ALT_INV_IQ\(3),
	combout => \R|Q[3]~feeder_combout\);

-- Location: FF_X87_Y35_N38
\R|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R|Q[3]~feeder_combout\,
	ena => \R|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R|Q\(3));

-- Location: MLABCELL_X84_Y37_N21
\Medicao|M1|D1|IC_2|Qout[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|M1|D1|IC_2|Qout[3]~0_combout\ = ( \Medicao|M1|D1|IC_1|Qout[3]~reg0DUPLICATE_q\ & ( \Medicao|M1|C1|Ereg.CONTA~DUPLICATE_q\ & ( \Medicao|M1|D1|IC_1|Qout[0]~reg0DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Medicao|M1|D1|IC_1|ALT_INV_Qout[0]~reg0DUPLICATE_q\,
	datae => \Medicao|M1|D1|IC_1|ALT_INV_Qout[3]~reg0DUPLICATE_q\,
	dataf => \Medicao|M1|C1|ALT_INV_Ereg.CONTA~DUPLICATE_q\,
	combout => \Medicao|M1|D1|IC_2|Qout[3]~0_combout\);

-- Location: MLABCELL_X84_Y37_N6
\Medicao|M1|D1|IC_2|Qout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|M1|D1|IC_2|Qout~2_combout\ = ( \Medicao|M1|D1|IC_2|Qout[0]~reg0_q\ & ( (!\Medicao|M1|D1|ClrN2~0_combout\ & (\Medicao|M1|C1|Eprox.CONTA~0_combout\ & !\Medicao|M1|D1|IC_2|Qout[1]~reg0_q\)) ) ) # ( !\Medicao|M1|D1|IC_2|Qout[0]~reg0_q\ & ( 
-- (!\Medicao|M1|D1|ClrN2~0_combout\ & (\Medicao|M1|C1|Eprox.CONTA~0_combout\ & \Medicao|M1|D1|IC_2|Qout[1]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000100010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Medicao|M1|D1|ALT_INV_ClrN2~0_combout\,
	datab => \Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datad => \Medicao|M1|D1|IC_2|ALT_INV_Qout[1]~reg0_q\,
	dataf => \Medicao|M1|D1|IC_2|ALT_INV_Qout[0]~reg0_q\,
	combout => \Medicao|M1|D1|IC_2|Qout~2_combout\);

-- Location: MLABCELL_X84_Y37_N54
\Medicao|M1|D1|IC_2|Qout[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|M1|D1|IC_2|Qout[3]~3_combout\ = ( \Medicao|M1|D1|IC_2|Qout[3]~0_combout\ & ( \Medicao|M1|D1|ClrN2~0_combout\ ) ) # ( !\Medicao|M1|D1|IC_2|Qout[3]~0_combout\ & ( \Medicao|M1|D1|ClrN2~0_combout\ ) ) # ( \Medicao|M1|D1|IC_2|Qout[3]~0_combout\ & ( 
-- !\Medicao|M1|D1|ClrN2~0_combout\ ) ) # ( !\Medicao|M1|D1|IC_2|Qout[3]~0_combout\ & ( !\Medicao|M1|D1|ClrN2~0_combout\ & ( !\Medicao|M1|C1|Eprox.CONTA~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datae => \Medicao|M1|D1|IC_2|ALT_INV_Qout[3]~0_combout\,
	dataf => \Medicao|M1|D1|ALT_INV_ClrN2~0_combout\,
	combout => \Medicao|M1|D1|IC_2|Qout[3]~3_combout\);

-- Location: FF_X84_Y37_N8
\Medicao|M1|D1|IC_2|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|M1|D1|IC_2|Qout~2_combout\,
	ena => \Medicao|M1|D1|IC_2|Qout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|M1|D1|IC_2|Qout[1]~reg0_q\);

-- Location: MLABCELL_X84_Y37_N9
\Medicao|M1|D1|IC_2|Qout~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|M1|D1|IC_2|Qout~4_combout\ = ( \Medicao|M1|D1|IC_2|Qout[0]~reg0_q\ & ( (!\Medicao|M1|D1|ClrN2~0_combout\ & (\Medicao|M1|C1|Eprox.CONTA~0_combout\ & (!\Medicao|M1|D1|IC_2|Qout[1]~reg0_q\ $ (!\Medicao|M1|D1|IC_2|Qout[2]~reg0_q\)))) ) ) # ( 
-- !\Medicao|M1|D1|IC_2|Qout[0]~reg0_q\ & ( (!\Medicao|M1|D1|ClrN2~0_combout\ & (\Medicao|M1|C1|Eprox.CONTA~0_combout\ & \Medicao|M1|D1|IC_2|Qout[2]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000010001000000000001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Medicao|M1|D1|ALT_INV_ClrN2~0_combout\,
	datab => \Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datac => \Medicao|M1|D1|IC_2|ALT_INV_Qout[1]~reg0_q\,
	datad => \Medicao|M1|D1|IC_2|ALT_INV_Qout[2]~reg0_q\,
	dataf => \Medicao|M1|D1|IC_2|ALT_INV_Qout[0]~reg0_q\,
	combout => \Medicao|M1|D1|IC_2|Qout~4_combout\);

-- Location: FF_X84_Y37_N11
\Medicao|M1|D1|IC_2|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|M1|D1|IC_2|Qout~4_combout\,
	ena => \Medicao|M1|D1|IC_2|Qout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|M1|D1|IC_2|Qout[2]~reg0_q\);

-- Location: MLABCELL_X84_Y37_N42
\Medicao|M1|D1|IC_2|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|M1|D1|IC_2|Add0~0_combout\ = (\Medicao|M1|D1|IC_2|Qout[2]~reg0_q\ & (\Medicao|M1|D1|IC_2|Qout[0]~reg0_q\ & \Medicao|M1|D1|IC_2|Qout[1]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Medicao|M1|D1|IC_2|ALT_INV_Qout[2]~reg0_q\,
	datac => \Medicao|M1|D1|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datad => \Medicao|M1|D1|IC_2|ALT_INV_Qout[1]~reg0_q\,
	combout => \Medicao|M1|D1|IC_2|Add0~0_combout\);

-- Location: LABCELL_X85_Y37_N48
\Medicao|M1|D1|IC_2|Qout[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|M1|D1|IC_2|Qout[3]~5_combout\ = ( !\Medicao|M1|D1|ClrN2~0_combout\ & ( (\Medicao|M1|C1|Eprox.CONTA~0_combout\ & (!\Medicao|M1|D1|IC_2|Qout[3]~reg0_q\ $ (((!\Medicao|M1|D1|IC_2|Add0~0_combout\) # (!\Medicao|M1|D1|IC_2|Qout[3]~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010100000000010101010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datab => \Medicao|M1|D1|IC_2|ALT_INV_Add0~0_combout\,
	datac => \Medicao|M1|D1|IC_2|ALT_INV_Qout[3]~0_combout\,
	datad => \Medicao|M1|D1|IC_2|ALT_INV_Qout[3]~reg0_q\,
	dataf => \Medicao|M1|D1|ALT_INV_ClrN2~0_combout\,
	combout => \Medicao|M1|D1|IC_2|Qout[3]~5_combout\);

-- Location: FF_X85_Y37_N49
\Medicao|M1|D1|IC_2|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|M1|D1|IC_2|Qout[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|M1|D1|IC_2|Qout[3]~reg0_q\);

-- Location: LABCELL_X85_Y37_N27
\Medicao|M1|D1|ClrN2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|M1|D1|ClrN2~0_combout\ = ( \Medicao|M1|D1|IC_2|Qout[0]~reg0_q\ & ( (\Medicao|M1|D1|IC_1|Qout[0]~reg0_q\ & (\Medicao|M1|D1|IC_2|Qout[3]~reg0_q\ & \Medicao|M1|D1|IC_1|Qout[3]~reg0DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Medicao|M1|D1|IC_1|ALT_INV_Qout[0]~reg0_q\,
	datac => \Medicao|M1|D1|IC_2|ALT_INV_Qout[3]~reg0_q\,
	datad => \Medicao|M1|D1|IC_1|ALT_INV_Qout[3]~reg0DUPLICATE_q\,
	dataf => \Medicao|M1|D1|IC_2|ALT_INV_Qout[0]~reg0_q\,
	combout => \Medicao|M1|D1|ClrN2~0_combout\);

-- Location: LABCELL_X85_Y37_N24
\Medicao|M1|D1|IC_2|Qout[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|M1|D1|IC_2|Qout[0]~1_combout\ = ( \Medicao|M1|D1|ClrN2~0_combout\ & ( (\Medicao|M1|C1|Eprox.CONTA~0_combout\ & !\Medicao|M1|D1|IC_2|Qout[0]~reg0_q\) ) ) # ( !\Medicao|M1|D1|ClrN2~0_combout\ & ( (\Medicao|M1|C1|Eprox.CONTA~0_combout\ & 
-- (!\Medicao|M1|D1|IC_2|Qout[3]~0_combout\ $ (!\Medicao|M1|D1|IC_2|Qout[0]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datac => \Medicao|M1|D1|IC_2|ALT_INV_Qout[3]~0_combout\,
	datad => \Medicao|M1|D1|IC_2|ALT_INV_Qout[0]~reg0_q\,
	dataf => \Medicao|M1|D1|ALT_INV_ClrN2~0_combout\,
	combout => \Medicao|M1|D1|IC_2|Qout[0]~1_combout\);

-- Location: FF_X85_Y37_N26
\Medicao|M1|D1|IC_2|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|M1|D1|IC_2|Qout[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|M1|D1|IC_2|Qout[0]~reg0_q\);

-- Location: FF_X84_Y37_N44
\Medicao|R1|IQ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Medicao|M1|D1|IC_2|Qout[0]~reg0_q\,
	sload => VCC,
	ena => \Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|R1|IQ\(4));

-- Location: FF_X84_Y37_N46
\Medicao|R1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Medicao|R1|IQ\(4),
	sload => VCC,
	ena => \Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|R1|Q\(4));

-- Location: LABCELL_X85_Y35_N21
\R|IQ~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \R|IQ~3_combout\ = ( \s_demorou~2_combout\ & ( \Medicao|R1|Q\(4) ) ) # ( !\s_demorou~2_combout\ & ( \Medicao|R1|Q\(4) ) ) # ( \s_demorou~2_combout\ & ( !\Medicao|R1|Q\(4) & ( (!\C|WideNor2~0_combout\) # ((\ContaDemora|ClrN3~0_combout\ & 
-- (\s_demorou~1_combout\ & \s_demorou~0_combout\))) ) ) ) # ( !\s_demorou~2_combout\ & ( !\Medicao|R1|Q\(4) & ( !\C|WideNor2~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContaDemora|ALT_INV_ClrN3~0_combout\,
	datab => \ALT_INV_s_demorou~1_combout\,
	datac => \C|ALT_INV_WideNor2~0_combout\,
	datad => \ALT_INV_s_demorou~0_combout\,
	datae => \ALT_INV_s_demorou~2_combout\,
	dataf => \Medicao|R1|ALT_INV_Q\(4),
	combout => \R|IQ~3_combout\);

-- Location: FF_X85_Y35_N22
\R|IQ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R|IQ~3_combout\,
	ena => \R|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R|IQ\(4));

-- Location: MLABCELL_X87_Y35_N45
\R|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R|Q[4]~feeder_combout\ = ( \R|IQ\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \R|ALT_INV_IQ\(4),
	combout => \R|Q[4]~feeder_combout\);

-- Location: FF_X87_Y35_N47
\R|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R|Q[4]~feeder_combout\,
	ena => \R|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R|Q\(4));

-- Location: MLABCELL_X84_Y37_N12
\Medicao|R1|IQ[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|R1|IQ[5]~feeder_combout\ = \Medicao|M1|D1|IC_2|Qout[1]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Medicao|M1|D1|IC_2|ALT_INV_Qout[1]~reg0_q\,
	combout => \Medicao|R1|IQ[5]~feeder_combout\);

-- Location: FF_X84_Y37_N13
\Medicao|R1|IQ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|R1|IQ[5]~feeder_combout\,
	ena => \Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|R1|IQ\(5));

-- Location: MLABCELL_X84_Y37_N15
\Medicao|R1|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|R1|Q[5]~feeder_combout\ = ( \Medicao|R1|IQ\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Medicao|R1|ALT_INV_IQ\(5),
	combout => \Medicao|R1|Q[5]~feeder_combout\);

-- Location: FF_X84_Y37_N16
\Medicao|R1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|R1|Q[5]~feeder_combout\,
	ena => \Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|R1|Q\(5));

-- Location: FF_X85_Y35_N40
\R|IQ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Medicao|R1|Q\(5),
	sclr => \comb~1_combout\,
	sload => VCC,
	ena => \R|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R|IQ\(5));

-- Location: MLABCELL_X87_Y35_N6
\R|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R|Q[5]~feeder_combout\ = ( \R|IQ\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \R|ALT_INV_IQ\(5),
	combout => \R|Q[5]~feeder_combout\);

-- Location: FF_X87_Y35_N7
\R|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R|Q[5]~feeder_combout\,
	ena => \R|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R|Q\(5));

-- Location: FF_X84_Y37_N35
\Medicao|R1|IQ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Medicao|M1|D1|IC_2|Qout[2]~reg0_q\,
	sload => VCC,
	ena => \Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|R1|IQ\(6));

-- Location: FF_X84_Y37_N31
\Medicao|R1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Medicao|R1|IQ\(6),
	sload => VCC,
	ena => \Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|R1|Q\(6));

-- Location: FF_X85_Y35_N13
\R|IQ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Medicao|R1|Q\(6),
	sclr => \comb~1_combout\,
	sload => VCC,
	ena => \R|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R|IQ\(6));

-- Location: FF_X87_Y35_N10
\R|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R|IQ\(6),
	sload => VCC,
	ena => \R|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R|Q\(6));

-- Location: MLABCELL_X87_Y37_N3
\Medicao|R1|IQ[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|R1|IQ[7]~feeder_combout\ = ( \Medicao|M1|D1|IC_2|Qout[3]~reg0_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Medicao|M1|D1|IC_2|ALT_INV_Qout[3]~reg0_q\,
	combout => \Medicao|R1|IQ[7]~feeder_combout\);

-- Location: FF_X87_Y37_N5
\Medicao|R1|IQ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|R1|IQ[7]~feeder_combout\,
	ena => \Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|R1|IQ\(7));

-- Location: FF_X87_Y37_N1
\Medicao|R1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Medicao|R1|IQ\(7),
	sload => VCC,
	ena => \Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|R1|Q\(7));

-- Location: LABCELL_X85_Y35_N57
\R|IQ~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \R|IQ~4_combout\ = ( \s_demorou~2_combout\ & ( \Medicao|R1|Q\(7) ) ) # ( !\s_demorou~2_combout\ & ( \Medicao|R1|Q\(7) ) ) # ( \s_demorou~2_combout\ & ( !\Medicao|R1|Q\(7) & ( (!\C|WideNor2~0_combout\) # ((\ContaDemora|ClrN3~0_combout\ & 
-- (\s_demorou~1_combout\ & \s_demorou~0_combout\))) ) ) ) # ( !\s_demorou~2_combout\ & ( !\Medicao|R1|Q\(7) & ( !\C|WideNor2~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContaDemora|ALT_INV_ClrN3~0_combout\,
	datab => \ALT_INV_s_demorou~1_combout\,
	datac => \C|ALT_INV_WideNor2~0_combout\,
	datad => \ALT_INV_s_demorou~0_combout\,
	datae => \ALT_INV_s_demorou~2_combout\,
	dataf => \Medicao|R1|ALT_INV_Q\(7),
	combout => \R|IQ~4_combout\);

-- Location: FF_X85_Y35_N58
\R|IQ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R|IQ~4_combout\,
	ena => \R|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R|IQ\(7));

-- Location: FF_X87_Y35_N13
\R|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R|IQ\(7),
	sload => VCC,
	ena => \R|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R|Q\(7));

-- Location: FF_X85_Y37_N7
\Medicao|M1|D1|IC_3|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|M1|D1|IC_3|Qout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|M1|D1|IC_3|Qout[0]~reg0_q\);

-- Location: FF_X85_Y37_N50
\Medicao|M1|D1|IC_2|Qout[3]~reg0DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|M1|D1|IC_2|Qout[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|M1|D1|IC_2|Qout[3]~reg0DUPLICATE_q\);

-- Location: LABCELL_X85_Y37_N30
\Medicao|M1|D1|ClrN3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|M1|D1|ClrN3~0_combout\ = ( \Medicao|M1|D1|IC_1|Qout[3]~reg0DUPLICATE_q\ & ( \Medicao|M1|D1|IC_1|Qout[0]~reg0_q\ & ( (\Medicao|M1|D1|IC_2|Qout[0]~reg0_q\ & (\Medicao|M1|D1|IC_3|Qout[3]~reg0_q\ & (\Medicao|M1|D1|IC_2|Qout[3]~reg0DUPLICATE_q\ & 
-- \Medicao|M1|D1|IC_3|Qout[0]~reg0DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Medicao|M1|D1|IC_2|ALT_INV_Qout[0]~reg0_q\,
	datab => \Medicao|M1|D1|IC_3|ALT_INV_Qout[3]~reg0_q\,
	datac => \Medicao|M1|D1|IC_2|ALT_INV_Qout[3]~reg0DUPLICATE_q\,
	datad => \Medicao|M1|D1|IC_3|ALT_INV_Qout[0]~reg0DUPLICATE_q\,
	datae => \Medicao|M1|D1|IC_1|ALT_INV_Qout[3]~reg0DUPLICATE_q\,
	dataf => \Medicao|M1|D1|IC_1|ALT_INV_Qout[0]~reg0_q\,
	combout => \Medicao|M1|D1|ClrN3~0_combout\);

-- Location: LABCELL_X85_Y37_N12
\Medicao|M1|D1|IC_3|Qout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|M1|D1|IC_3|Qout~1_combout\ = ( !\Medicao|M1|D1|ClrN3~0_combout\ & ( (\Medicao|M1|C1|Eprox.CONTA~0_combout\ & (!\Medicao|M1|D1|IC_3|Qout[0]~reg0DUPLICATE_q\ $ (!\Medicao|M1|D1|IC_3|Qout[1]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datab => \Medicao|M1|D1|IC_3|ALT_INV_Qout[0]~reg0DUPLICATE_q\,
	datad => \Medicao|M1|D1|IC_3|ALT_INV_Qout[1]~reg0_q\,
	dataf => \Medicao|M1|D1|ALT_INV_ClrN3~0_combout\,
	combout => \Medicao|M1|D1|IC_3|Qout~1_combout\);

-- Location: LABCELL_X85_Y37_N15
\Medicao|M1|D1|IC_3|Qout[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|M1|D1|IC_3|Qout[1]~2_combout\ = ( \Medicao|M1|C1|Ereg.CONTA~q\ & ( (!\Medicao|M1|C1|Eprox.CONTA~0_combout\) # ((\Medicao|M1|D1|ClrN2~0_combout\) # (\Medicao|M1|D1|ClrN3~0_combout\)) ) ) # ( !\Medicao|M1|C1|Ereg.CONTA~q\ & ( 
-- (!\Medicao|M1|C1|Eprox.CONTA~0_combout\) # (\Medicao|M1|D1|ClrN3~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111110101111111111111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datac => \Medicao|M1|D1|ALT_INV_ClrN3~0_combout\,
	datad => \Medicao|M1|D1|ALT_INV_ClrN2~0_combout\,
	dataf => \Medicao|M1|C1|ALT_INV_Ereg.CONTA~q\,
	combout => \Medicao|M1|D1|IC_3|Qout[1]~2_combout\);

-- Location: FF_X85_Y37_N14
\Medicao|M1|D1|IC_3|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|M1|D1|IC_3|Qout~1_combout\,
	ena => \Medicao|M1|D1|IC_3|Qout[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|M1|D1|IC_3|Qout[1]~reg0_q\);

-- Location: LABCELL_X85_Y37_N18
\Medicao|M1|D1|IC_3|Qout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|M1|D1|IC_3|Qout~3_combout\ = ( \Medicao|M1|D1|IC_3|Qout[1]~reg0_q\ & ( (\Medicao|M1|C1|Eprox.CONTA~0_combout\ & (!\Medicao|M1|D1|ClrN3~0_combout\ & (!\Medicao|M1|D1|IC_3|Qout[0]~reg0_q\ $ (!\Medicao|M1|D1|IC_3|Qout[2]~reg0_q\)))) ) ) # ( 
-- !\Medicao|M1|D1|IC_3|Qout[1]~reg0_q\ & ( (\Medicao|M1|C1|Eprox.CONTA~0_combout\ & (!\Medicao|M1|D1|ClrN3~0_combout\ & \Medicao|M1|D1|IC_3|Qout[2]~reg0_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000000100010000000000010001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datab => \Medicao|M1|D1|ALT_INV_ClrN3~0_combout\,
	datac => \Medicao|M1|D1|IC_3|ALT_INV_Qout[0]~reg0_q\,
	datad => \Medicao|M1|D1|IC_3|ALT_INV_Qout[2]~reg0_q\,
	dataf => \Medicao|M1|D1|IC_3|ALT_INV_Qout[1]~reg0_q\,
	combout => \Medicao|M1|D1|IC_3|Qout~3_combout\);

-- Location: FF_X85_Y37_N19
\Medicao|M1|D1|IC_3|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|M1|D1|IC_3|Qout~3_combout\,
	ena => \Medicao|M1|D1|IC_3|Qout[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|M1|D1|IC_3|Qout[2]~reg0_q\);

-- Location: LABCELL_X85_Y37_N45
\Medicao|M1|D1|IC_3|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|M1|D1|IC_3|Add0~0_combout\ = ( \Medicao|M1|D1|IC_3|Qout[1]~reg0_q\ & ( (\Medicao|M1|D1|IC_3|Qout[2]~reg0_q\ & \Medicao|M1|D1|IC_3|Qout[0]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Medicao|M1|D1|IC_3|ALT_INV_Qout[2]~reg0_q\,
	datad => \Medicao|M1|D1|IC_3|ALT_INV_Qout[0]~reg0_q\,
	dataf => \Medicao|M1|D1|IC_3|ALT_INV_Qout[1]~reg0_q\,
	combout => \Medicao|M1|D1|IC_3|Add0~0_combout\);

-- Location: LABCELL_X85_Y37_N3
\Medicao|M1|D1|IC_3|Qout[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|M1|D1|IC_3|Qout[3]~4_combout\ = ( \Medicao|M1|D1|IC_3|Qout[3]~reg0_q\ & ( \Medicao|M1|D1|IC_3|Qout[0]~reg0DUPLICATE_q\ & ( (\Medicao|M1|C1|Eprox.CONTA~0_combout\ & !\Medicao|M1|D1|ClrN2~0_combout\) ) ) ) # ( !\Medicao|M1|D1|IC_3|Qout[3]~reg0_q\ & 
-- ( \Medicao|M1|D1|IC_3|Qout[0]~reg0DUPLICATE_q\ & ( (\Medicao|M1|C1|Eprox.CONTA~0_combout\ & (\Medicao|M1|D1|IC_3|Add0~0_combout\ & (\Medicao|M1|D1|ClrN2~0_combout\ & \Medicao|M1|C1|Ereg.CONTA~q\))) ) ) ) # ( \Medicao|M1|D1|IC_3|Qout[3]~reg0_q\ & ( 
-- !\Medicao|M1|D1|IC_3|Qout[0]~reg0DUPLICATE_q\ & ( (\Medicao|M1|C1|Eprox.CONTA~0_combout\ & ((!\Medicao|M1|D1|IC_3|Add0~0_combout\) # ((!\Medicao|M1|D1|ClrN2~0_combout\) # (!\Medicao|M1|C1|Ereg.CONTA~q\)))) ) ) ) # ( !\Medicao|M1|D1|IC_3|Qout[3]~reg0_q\ & 
-- ( !\Medicao|M1|D1|IC_3|Qout[0]~reg0DUPLICATE_q\ & ( (\Medicao|M1|C1|Eprox.CONTA~0_combout\ & (\Medicao|M1|D1|IC_3|Add0~0_combout\ & (\Medicao|M1|D1|ClrN2~0_combout\ & \Medicao|M1|C1|Ereg.CONTA~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001010101010101010000000000000000010101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datab => \Medicao|M1|D1|IC_3|ALT_INV_Add0~0_combout\,
	datac => \Medicao|M1|D1|ALT_INV_ClrN2~0_combout\,
	datad => \Medicao|M1|C1|ALT_INV_Ereg.CONTA~q\,
	datae => \Medicao|M1|D1|IC_3|ALT_INV_Qout[3]~reg0_q\,
	dataf => \Medicao|M1|D1|IC_3|ALT_INV_Qout[0]~reg0DUPLICATE_q\,
	combout => \Medicao|M1|D1|IC_3|Qout[3]~4_combout\);

-- Location: FF_X85_Y37_N4
\Medicao|M1|D1|IC_3|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|M1|D1|IC_3|Qout[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|M1|D1|IC_3|Qout[3]~reg0_q\);

-- Location: LABCELL_X85_Y37_N6
\Medicao|M1|D1|IC_3|Qout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|M1|D1|IC_3|Qout[0]~0_combout\ = ( \Medicao|M1|D1|IC_3|Qout[3]~reg0_q\ & ( (\Medicao|M1|C1|Eprox.CONTA~0_combout\ & ((!\Medicao|M1|D1|ClrN2~0_combout\ & ((\Medicao|M1|D1|IC_3|Qout[0]~reg0_q\))) # (\Medicao|M1|D1|ClrN2~0_combout\ & 
-- (\Medicao|M1|C1|Ereg.CONTA~q\ & !\Medicao|M1|D1|IC_3|Qout[0]~reg0_q\)))) ) ) # ( !\Medicao|M1|D1|IC_3|Qout[3]~reg0_q\ & ( (\Medicao|M1|C1|Eprox.CONTA~0_combout\ & (!\Medicao|M1|D1|IC_3|Qout[0]~reg0_q\ $ (((!\Medicao|M1|C1|Ereg.CONTA~q\) # 
-- (!\Medicao|M1|D1|ClrN2~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110010000000010011001000000001001100000000000100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Medicao|M1|C1|ALT_INV_Ereg.CONTA~q\,
	datab => \Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datac => \Medicao|M1|D1|ALT_INV_ClrN2~0_combout\,
	datad => \Medicao|M1|D1|IC_3|ALT_INV_Qout[0]~reg0_q\,
	dataf => \Medicao|M1|D1|IC_3|ALT_INV_Qout[3]~reg0_q\,
	combout => \Medicao|M1|D1|IC_3|Qout[0]~0_combout\);

-- Location: FF_X85_Y37_N8
\Medicao|M1|D1|IC_3|Qout[0]~reg0DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|M1|D1|IC_3|Qout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|M1|D1|IC_3|Qout[0]~reg0DUPLICATE_q\);

-- Location: FF_X87_Y37_N22
\Medicao|R1|IQ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Medicao|M1|D1|IC_3|Qout[0]~reg0DUPLICATE_q\,
	sload => VCC,
	ena => \Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|R1|IQ\(8));

-- Location: MLABCELL_X87_Y37_N18
\Medicao|R1|Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|R1|Q[8]~feeder_combout\ = ( \Medicao|R1|IQ\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Medicao|R1|ALT_INV_IQ\(8),
	combout => \Medicao|R1|Q[8]~feeder_combout\);

-- Location: FF_X87_Y37_N19
\Medicao|R1|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|R1|Q[8]~feeder_combout\,
	ena => \Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|R1|Q\(8));

-- Location: LABCELL_X85_Y35_N18
\R|IQ~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \R|IQ~5_combout\ = ( \s_demorou~2_combout\ & ( \Medicao|R1|Q\(8) ) ) # ( !\s_demorou~2_combout\ & ( \Medicao|R1|Q\(8) ) ) # ( \s_demorou~2_combout\ & ( !\Medicao|R1|Q\(8) & ( (!\C|WideNor2~0_combout\) # ((\ContaDemora|ClrN3~0_combout\ & 
-- (\s_demorou~1_combout\ & \s_demorou~0_combout\))) ) ) ) # ( !\s_demorou~2_combout\ & ( !\Medicao|R1|Q\(8) & ( !\C|WideNor2~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContaDemora|ALT_INV_ClrN3~0_combout\,
	datab => \ALT_INV_s_demorou~1_combout\,
	datac => \ALT_INV_s_demorou~0_combout\,
	datad => \C|ALT_INV_WideNor2~0_combout\,
	datae => \ALT_INV_s_demorou~2_combout\,
	dataf => \Medicao|R1|ALT_INV_Q\(8),
	combout => \R|IQ~5_combout\);

-- Location: FF_X85_Y35_N19
\R|IQ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R|IQ~5_combout\,
	ena => \R|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R|IQ\(8));

-- Location: MLABCELL_X87_Y35_N39
\R|Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R|Q[8]~feeder_combout\ = ( \R|IQ\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \R|ALT_INV_IQ\(8),
	combout => \R|Q[8]~feeder_combout\);

-- Location: FF_X87_Y35_N40
\R|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R|Q[8]~feeder_combout\,
	ena => \R|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R|Q\(8));

-- Location: MLABCELL_X87_Y37_N36
\Medicao|R1|IQ[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|R1|IQ[9]~feeder_combout\ = ( \Medicao|M1|D1|IC_3|Qout[1]~reg0_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Medicao|M1|D1|IC_3|ALT_INV_Qout[1]~reg0_q\,
	combout => \Medicao|R1|IQ[9]~feeder_combout\);

-- Location: FF_X87_Y37_N38
\Medicao|R1|IQ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|R1|IQ[9]~feeder_combout\,
	ena => \Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|R1|IQ\(9));

-- Location: FF_X87_Y37_N40
\Medicao|R1|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Medicao|R1|IQ\(9),
	sload => VCC,
	ena => \Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|R1|Q\(9));

-- Location: FF_X85_Y35_N17
\R|IQ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Medicao|R1|Q\(9),
	sclr => \comb~1_combout\,
	sload => VCC,
	ena => \R|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R|IQ\(9));

-- Location: FF_X87_Y35_N17
\R|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R|IQ\(9),
	sload => VCC,
	ena => \R|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R|Q\(9));

-- Location: MLABCELL_X87_Y37_N42
\Medicao|R1|IQ[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|R1|IQ[10]~feeder_combout\ = ( \Medicao|M1|D1|IC_3|Qout[2]~reg0_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Medicao|M1|D1|IC_3|ALT_INV_Qout[2]~reg0_q\,
	combout => \Medicao|R1|IQ[10]~feeder_combout\);

-- Location: FF_X87_Y37_N44
\Medicao|R1|IQ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|R1|IQ[10]~feeder_combout\,
	ena => \Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|R1|IQ\(10));

-- Location: MLABCELL_X87_Y37_N45
\Medicao|R1|Q[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|R1|Q[10]~feeder_combout\ = \Medicao|R1|IQ\(10)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Medicao|R1|ALT_INV_IQ\(10),
	combout => \Medicao|R1|Q[10]~feeder_combout\);

-- Location: FF_X87_Y37_N46
\Medicao|R1|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|R1|Q[10]~feeder_combout\,
	ena => \Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|R1|Q\(10));

-- Location: FF_X85_Y35_N49
\R|IQ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Medicao|R1|Q\(10),
	sclr => \comb~1_combout\,
	sload => VCC,
	ena => \R|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R|IQ\(10));

-- Location: MLABCELL_X87_Y35_N21
\R|Q[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R|Q[10]~feeder_combout\ = ( \R|IQ\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \R|ALT_INV_IQ\(10),
	combout => \R|Q[10]~feeder_combout\);

-- Location: FF_X87_Y35_N22
\R|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R|Q[10]~feeder_combout\,
	ena => \R|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R|Q\(10));

-- Location: MLABCELL_X87_Y37_N15
\Medicao|R1|IQ[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|R1|IQ[11]~feeder_combout\ = ( \Medicao|M1|D1|IC_3|Qout[3]~reg0_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Medicao|M1|D1|IC_3|ALT_INV_Qout[3]~reg0_q\,
	combout => \Medicao|R1|IQ[11]~feeder_combout\);

-- Location: FF_X87_Y37_N17
\Medicao|R1|IQ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|R1|IQ[11]~feeder_combout\,
	ena => \Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|R1|IQ\(11));

-- Location: MLABCELL_X87_Y37_N12
\Medicao|R1|Q[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|R1|Q[11]~feeder_combout\ = \Medicao|R1|IQ\(11)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Medicao|R1|ALT_INV_IQ\(11),
	combout => \Medicao|R1|Q[11]~feeder_combout\);

-- Location: FF_X87_Y37_N13
\Medicao|R1|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|R1|Q[11]~feeder_combout\,
	ena => \Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|R1|Q\(11));

-- Location: LABCELL_X85_Y35_N24
\R|IQ~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \R|IQ~6_combout\ = ( \s_demorou~2_combout\ & ( \Medicao|R1|Q\(11) ) ) # ( !\s_demorou~2_combout\ & ( \Medicao|R1|Q\(11) ) ) # ( \s_demorou~2_combout\ & ( !\Medicao|R1|Q\(11) & ( (!\C|WideNor2~0_combout\) # ((\ContaDemora|ClrN3~0_combout\ & 
-- (\s_demorou~1_combout\ & \s_demorou~0_combout\))) ) ) ) # ( !\s_demorou~2_combout\ & ( !\Medicao|R1|Q\(11) & ( !\C|WideNor2~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContaDemora|ALT_INV_ClrN3~0_combout\,
	datab => \ALT_INV_s_demorou~1_combout\,
	datac => \ALT_INV_s_demorou~0_combout\,
	datad => \C|ALT_INV_WideNor2~0_combout\,
	datae => \ALT_INV_s_demorou~2_combout\,
	dataf => \Medicao|R1|ALT_INV_Q\(11),
	combout => \R|IQ~6_combout\);

-- Location: FF_X85_Y35_N25
\R|IQ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R|IQ~6_combout\,
	ena => \R|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R|IQ\(11));

-- Location: MLABCELL_X87_Y35_N48
\R|Q[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R|Q[11]~feeder_combout\ = ( \R|IQ\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \R|ALT_INV_IQ\(11),
	combout => \R|Q[11]~feeder_combout\);

-- Location: FF_X87_Y35_N49
\R|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R|Q[11]~feeder_combout\,
	ena => \R|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R|Q\(11));

-- Location: FF_X85_Y37_N11
\Medicao|M1|D1|IC_4|Qout[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|M1|D1|IC_4|Qout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|M1|D1|IC_4|Qout[0]~reg0_q\);

-- Location: LABCELL_X85_Y37_N21
\Medicao|M1|D1|IC_4|Qout[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|M1|D1|IC_4|Qout[3]~2_combout\ = ( \Medicao|M1|C1|Ereg.CONTA~q\ & ( (!\Medicao|M1|C1|Eprox.CONTA~0_combout\) # (\Medicao|M1|D1|ClrN3~0_combout\) ) ) # ( !\Medicao|M1|C1|Ereg.CONTA~q\ & ( (!\Medicao|M1|C1|Eprox.CONTA~0_combout\) # 
-- ((\Medicao|M1|D1|ClrN3~0_combout\ & (\Medicao|M1|D1|IC_4|Qout[0]~reg0DUPLICATE_q\ & \Medicao|M1|D1|IC_4|Qout[3]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101011101010101010101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datab => \Medicao|M1|D1|ALT_INV_ClrN3~0_combout\,
	datac => \Medicao|M1|D1|IC_4|ALT_INV_Qout[0]~reg0DUPLICATE_q\,
	datad => \Medicao|M1|D1|IC_4|ALT_INV_Qout[3]~reg0_q\,
	dataf => \Medicao|M1|C1|ALT_INV_Ereg.CONTA~q\,
	combout => \Medicao|M1|D1|IC_4|Qout[3]~2_combout\);

-- Location: FF_X85_Y37_N44
\Medicao|M1|D1|IC_4|Qout[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|M1|D1|IC_4|Qout~1_combout\,
	ena => \Medicao|M1|D1|IC_4|Qout[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|M1|D1|IC_4|Qout[1]~reg0_q\);

-- Location: LABCELL_X85_Y37_N42
\Medicao|M1|D1|IC_4|Qout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|M1|D1|IC_4|Qout~1_combout\ = ( \Medicao|M1|D1|ClrN3~0_combout\ & ( (\Medicao|M1|C1|Eprox.CONTA~0_combout\ & ((!\Medicao|M1|D1|IC_4|Qout[0]~reg0_q\ & ((\Medicao|M1|D1|IC_4|Qout[1]~reg0_q\))) # (\Medicao|M1|D1|IC_4|Qout[0]~reg0_q\ & 
-- (!\Medicao|M1|D1|IC_4|Qout[3]~reg0_q\ & !\Medicao|M1|D1|IC_4|Qout[1]~reg0_q\)))) ) ) # ( !\Medicao|M1|D1|ClrN3~0_combout\ & ( (\Medicao|M1|C1|Eprox.CONTA~0_combout\ & (!\Medicao|M1|D1|IC_4|Qout[0]~reg0_q\ $ (!\Medicao|M1|D1|IC_4|Qout[1]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000000010000011000000001000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Medicao|M1|D1|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datab => \Medicao|M1|D1|IC_4|ALT_INV_Qout[0]~reg0_q\,
	datac => \Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datad => \Medicao|M1|D1|IC_4|ALT_INV_Qout[1]~reg0_q\,
	dataf => \Medicao|M1|D1|ALT_INV_ClrN3~0_combout\,
	combout => \Medicao|M1|D1|IC_4|Qout~1_combout\);

-- Location: FF_X85_Y37_N43
\Medicao|M1|D1|IC_4|Qout[1]~reg0DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|M1|D1|IC_4|Qout~1_combout\,
	ena => \Medicao|M1|D1|IC_4|Qout[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|M1|D1|IC_4|Qout[1]~reg0DUPLICATE_q\);

-- Location: LABCELL_X85_Y37_N36
\Medicao|M1|D1|IC_4|Qout~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|M1|D1|IC_4|Qout~3_combout\ = ( \Medicao|M1|D1|IC_4|Qout[2]~reg0_q\ & ( \Medicao|M1|D1|IC_4|Qout[0]~reg0DUPLICATE_q\ & ( (!\Medicao|M1|D1|IC_4|Qout[1]~reg0_q\ & (\Medicao|M1|C1|Eprox.CONTA~0_combout\ & ((!\Medicao|M1|D1|ClrN3~0_combout\) # 
-- (!\Medicao|M1|D1|IC_4|Qout[3]~reg0_q\)))) ) ) ) # ( !\Medicao|M1|D1|IC_4|Qout[2]~reg0_q\ & ( \Medicao|M1|D1|IC_4|Qout[0]~reg0DUPLICATE_q\ & ( (\Medicao|M1|D1|IC_4|Qout[1]~reg0_q\ & (\Medicao|M1|C1|Eprox.CONTA~0_combout\ & 
-- ((!\Medicao|M1|D1|ClrN3~0_combout\) # (!\Medicao|M1|D1|IC_4|Qout[3]~reg0_q\)))) ) ) ) # ( \Medicao|M1|D1|IC_4|Qout[2]~reg0_q\ & ( !\Medicao|M1|D1|IC_4|Qout[0]~reg0DUPLICATE_q\ & ( \Medicao|M1|C1|Eprox.CONTA~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000011000000100000110000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Medicao|M1|D1|ALT_INV_ClrN3~0_combout\,
	datab => \Medicao|M1|D1|IC_4|ALT_INV_Qout[1]~reg0_q\,
	datac => \Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datad => \Medicao|M1|D1|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datae => \Medicao|M1|D1|IC_4|ALT_INV_Qout[2]~reg0_q\,
	dataf => \Medicao|M1|D1|IC_4|ALT_INV_Qout[0]~reg0DUPLICATE_q\,
	combout => \Medicao|M1|D1|IC_4|Qout~3_combout\);

-- Location: FF_X85_Y37_N37
\Medicao|M1|D1|IC_4|Qout[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|M1|D1|IC_4|Qout~3_combout\,
	ena => \Medicao|M1|D1|IC_4|Qout[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|M1|D1|IC_4|Qout[2]~reg0_q\);

-- Location: MLABCELL_X87_Y37_N30
\Medicao|M1|D1|IC_4|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|M1|D1|IC_4|Add0~0_combout\ = ( \Medicao|M1|D1|IC_4|Qout[2]~reg0_q\ & ( \Medicao|M1|D1|IC_4|Qout[0]~reg0DUPLICATE_q\ & ( \Medicao|M1|D1|IC_4|Qout[1]~reg0DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Medicao|M1|D1|IC_4|ALT_INV_Qout[1]~reg0DUPLICATE_q\,
	datae => \Medicao|M1|D1|IC_4|ALT_INV_Qout[2]~reg0_q\,
	dataf => \Medicao|M1|D1|IC_4|ALT_INV_Qout[0]~reg0DUPLICATE_q\,
	combout => \Medicao|M1|D1|IC_4|Add0~0_combout\);

-- Location: MLABCELL_X87_Y36_N27
\Medicao|M1|D1|IC_4|Qout[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|M1|D1|IC_4|Qout[3]~4_combout\ = ( \Medicao|M1|D1|IC_4|Qout[3]~reg0_q\ & ( \Medicao|M1|D1|IC_4|Add0~0_combout\ & ( (\Medicao|M1|C1|Eprox.CONTA~0_combout\ & ((!\Medicao|M1|D1|ClrN3~0_combout\) # ((!\Medicao|M1|D1|IC_4|Qout[0]~reg0DUPLICATE_q\ & 
-- !\Medicao|M1|C1|Ereg.CONTA~q\)))) ) ) ) # ( !\Medicao|M1|D1|IC_4|Qout[3]~reg0_q\ & ( \Medicao|M1|D1|IC_4|Add0~0_combout\ & ( (\Medicao|M1|C1|Ereg.CONTA~q\ & (\Medicao|M1|D1|ClrN3~0_combout\ & \Medicao|M1|C1|Eprox.CONTA~0_combout\)) ) ) ) # ( 
-- \Medicao|M1|D1|IC_4|Qout[3]~reg0_q\ & ( !\Medicao|M1|D1|IC_4|Add0~0_combout\ & ( (\Medicao|M1|C1|Eprox.CONTA~0_combout\ & ((!\Medicao|M1|D1|IC_4|Qout[0]~reg0DUPLICATE_q\) # (!\Medicao|M1|D1|ClrN3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111101000000000000000110000000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Medicao|M1|D1|IC_4|ALT_INV_Qout[0]~reg0DUPLICATE_q\,
	datab => \Medicao|M1|C1|ALT_INV_Ereg.CONTA~q\,
	datac => \Medicao|M1|D1|ALT_INV_ClrN3~0_combout\,
	datad => \Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datae => \Medicao|M1|D1|IC_4|ALT_INV_Qout[3]~reg0_q\,
	dataf => \Medicao|M1|D1|IC_4|ALT_INV_Add0~0_combout\,
	combout => \Medicao|M1|D1|IC_4|Qout[3]~4_combout\);

-- Location: FF_X87_Y36_N28
\Medicao|M1|D1|IC_4|Qout[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|M1|D1|IC_4|Qout[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|M1|D1|IC_4|Qout[3]~reg0_q\);

-- Location: LABCELL_X85_Y37_N9
\Medicao|M1|D1|IC_4|Qout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|M1|D1|IC_4|Qout[0]~0_combout\ = ( \Medicao|M1|D1|ClrN3~0_combout\ & ( (\Medicao|M1|C1|Eprox.CONTA~0_combout\ & ((!\Medicao|M1|C1|Ereg.CONTA~q\ & (!\Medicao|M1|D1|IC_4|Qout[3]~reg0_q\ & \Medicao|M1|D1|IC_4|Qout[0]~reg0_q\)) # 
-- (\Medicao|M1|C1|Ereg.CONTA~q\ & ((!\Medicao|M1|D1|IC_4|Qout[0]~reg0_q\))))) ) ) # ( !\Medicao|M1|D1|ClrN3~0_combout\ & ( (\Medicao|M1|C1|Eprox.CONTA~0_combout\ & \Medicao|M1|D1|IC_4|Qout[0]~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100010001001000000001000100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Medicao|M1|C1|ALT_INV_Ereg.CONTA~q\,
	datab => \Medicao|M1|C1|ALT_INV_Eprox.CONTA~0_combout\,
	datac => \Medicao|M1|D1|IC_4|ALT_INV_Qout[3]~reg0_q\,
	datad => \Medicao|M1|D1|IC_4|ALT_INV_Qout[0]~reg0_q\,
	dataf => \Medicao|M1|D1|ALT_INV_ClrN3~0_combout\,
	combout => \Medicao|M1|D1|IC_4|Qout[0]~0_combout\);

-- Location: FF_X85_Y37_N10
\Medicao|M1|D1|IC_4|Qout[0]~reg0DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|M1|D1|IC_4|Qout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|M1|D1|IC_4|Qout[0]~reg0DUPLICATE_q\);

-- Location: MLABCELL_X87_Y37_N57
\Medicao|R1|IQ[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|R1|IQ[12]~feeder_combout\ = ( \Medicao|M1|D1|IC_4|Qout[0]~reg0DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Medicao|M1|D1|IC_4|ALT_INV_Qout[0]~reg0DUPLICATE_q\,
	combout => \Medicao|R1|IQ[12]~feeder_combout\);

-- Location: FF_X87_Y37_N59
\Medicao|R1|IQ[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|R1|IQ[12]~feeder_combout\,
	ena => \Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|R1|IQ\(12));

-- Location: FF_X87_Y37_N55
\Medicao|R1|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Medicao|R1|IQ\(12),
	sload => VCC,
	ena => \Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|R1|Q\(12));

-- Location: LABCELL_X85_Y35_N27
\R|IQ~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \R|IQ~7_combout\ = ( \s_demorou~2_combout\ & ( \Medicao|R1|Q\(12) ) ) # ( !\s_demorou~2_combout\ & ( \Medicao|R1|Q\(12) ) ) # ( \s_demorou~2_combout\ & ( !\Medicao|R1|Q\(12) & ( (!\C|WideNor2~0_combout\) # ((\ContaDemora|ClrN3~0_combout\ & 
-- (\s_demorou~1_combout\ & \s_demorou~0_combout\))) ) ) ) # ( !\s_demorou~2_combout\ & ( !\Medicao|R1|Q\(12) & ( !\C|WideNor2~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContaDemora|ALT_INV_ClrN3~0_combout\,
	datab => \ALT_INV_s_demorou~1_combout\,
	datac => \C|ALT_INV_WideNor2~0_combout\,
	datad => \ALT_INV_s_demorou~0_combout\,
	datae => \ALT_INV_s_demorou~2_combout\,
	dataf => \Medicao|R1|ALT_INV_Q\(12),
	combout => \R|IQ~7_combout\);

-- Location: FF_X85_Y35_N28
\R|IQ[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R|IQ~7_combout\,
	ena => \R|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R|IQ\(12));

-- Location: FF_X87_Y35_N58
\R|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R|IQ\(12),
	sload => VCC,
	ena => \R|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R|Q\(12));

-- Location: FF_X87_Y37_N50
\Medicao|R1|IQ[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Medicao|M1|D1|IC_4|Qout[1]~reg0DUPLICATE_q\,
	sload => VCC,
	ena => \Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|R1|IQ\(13));

-- Location: FF_X87_Y37_N52
\Medicao|R1|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Medicao|R1|IQ\(13),
	sload => VCC,
	ena => \Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|R1|Q\(13));

-- Location: FF_X85_Y35_N7
\R|IQ[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Medicao|R1|Q\(13),
	sclr => \comb~1_combout\,
	sload => VCC,
	ena => \R|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R|IQ\(13));

-- Location: MLABCELL_X87_Y35_N24
\R|Q[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R|Q[13]~feeder_combout\ = ( \R|IQ\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \R|ALT_INV_IQ\(13),
	combout => \R|Q[13]~feeder_combout\);

-- Location: FF_X87_Y35_N25
\R|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R|Q[13]~feeder_combout\,
	ena => \R|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R|Q\(13));

-- Location: FF_X87_Y37_N8
\Medicao|R1|IQ[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Medicao|M1|D1|IC_4|Qout[2]~reg0_q\,
	sload => VCC,
	ena => \Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|R1|IQ\(14));

-- Location: MLABCELL_X87_Y37_N9
\Medicao|R1|Q[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|R1|Q[14]~feeder_combout\ = \Medicao|R1|IQ\(14)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Medicao|R1|ALT_INV_IQ\(14),
	combout => \Medicao|R1|Q[14]~feeder_combout\);

-- Location: FF_X87_Y37_N10
\Medicao|R1|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|R1|Q[14]~feeder_combout\,
	ena => \Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|R1|Q\(14));

-- Location: FF_X85_Y35_N53
\R|IQ[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \Medicao|R1|Q\(14),
	sclr => \comb~1_combout\,
	sload => VCC,
	ena => \R|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R|IQ\(14));

-- Location: FF_X85_Y35_N31
\R|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \R|IQ\(14),
	sload => VCC,
	ena => \R|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R|Q\(14));

-- Location: MLABCELL_X87_Y37_N27
\Medicao|R1|IQ[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|R1|IQ[15]~feeder_combout\ = ( \Medicao|M1|D1|IC_4|Qout[3]~reg0_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Medicao|M1|D1|IC_4|ALT_INV_Qout[3]~reg0_q\,
	combout => \Medicao|R1|IQ[15]~feeder_combout\);

-- Location: FF_X87_Y37_N28
\Medicao|R1|IQ[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|R1|IQ[15]~feeder_combout\,
	ena => \Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|R1|IQ\(15));

-- Location: MLABCELL_X87_Y37_N24
\Medicao|R1|Q[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Medicao|R1|Q[15]~feeder_combout\ = ( \Medicao|R1|IQ\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Medicao|R1|ALT_INV_IQ\(15),
	combout => \Medicao|R1|Q[15]~feeder_combout\);

-- Location: FF_X87_Y37_N25
\Medicao|R1|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Medicao|R1|Q[15]~feeder_combout\,
	ena => \Medicao|C1|WideNor1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Medicao|R1|Q\(15));

-- Location: LABCELL_X85_Y35_N54
\R|IQ~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \R|IQ~8_combout\ = ( \s_demorou~2_combout\ & ( \Medicao|R1|Q\(15) ) ) # ( !\s_demorou~2_combout\ & ( \Medicao|R1|Q\(15) ) ) # ( \s_demorou~2_combout\ & ( !\Medicao|R1|Q\(15) & ( (!\C|WideNor2~0_combout\) # ((\ContaDemora|ClrN3~0_combout\ & 
-- (\s_demorou~1_combout\ & \s_demorou~0_combout\))) ) ) ) # ( !\s_demorou~2_combout\ & ( !\Medicao|R1|Q\(15) & ( !\C|WideNor2~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ContaDemora|ALT_INV_ClrN3~0_combout\,
	datab => \ALT_INV_s_demorou~1_combout\,
	datac => \ALT_INV_s_demorou~0_combout\,
	datad => \C|ALT_INV_WideNor2~0_combout\,
	datae => \ALT_INV_s_demorou~2_combout\,
	dataf => \Medicao|R1|ALT_INV_Q\(15),
	combout => \R|IQ~8_combout\);

-- Location: FF_X85_Y35_N55
\R|IQ[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R|IQ~8_combout\,
	ena => \R|IQ[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R|IQ\(15));

-- Location: MLABCELL_X87_Y35_N30
\R|Q[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \R|Q[15]~feeder_combout\ = ( \R|IQ\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \R|ALT_INV_IQ\(15),
	combout => \R|Q[15]~feeder_combout\);

-- Location: FF_X87_Y35_N31
\R|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \R|Q[15]~feeder_combout\,
	ena => \R|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R|Q\(15));

-- Location: LABCELL_X53_Y71_N3
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


