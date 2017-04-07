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

-- DATE "04/07/2017 09:02:40"

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

ENTITY 	Media IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	enable : IN std_logic;
	inicio : IN std_logic;
	finalizaRodada : IN std_logic;
	fimRodada : IN std_logic;
	vacilou : IN std_logic;
	pulso : IN std_logic_vector(15 DOWNTO 0);
	\media~9630784\ : OUT std_logic_vector(15 DOWNTO 0);
	depuraMedia : OUT std_logic_vector(15 DOWNTO 0);
	rodada : OUT std_logic;
	perde : OUT std_logic;
	fimJogada : OUT std_logic;
	estadoJogada : OUT std_logic_vector(3 DOWNTO 0)
	);
END Media;

-- Design Ports Information
-- media[0]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- media[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- media[2]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- media[3]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- media[4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- media[5]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- media[6]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- media[7]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- media[8]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- media[9]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- media[10]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- media[11]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- media[12]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- media[13]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- media[14]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- media[15]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- depuraMedia[0]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- depuraMedia[1]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- depuraMedia[2]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- depuraMedia[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- depuraMedia[4]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- depuraMedia[5]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- depuraMedia[6]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- depuraMedia[7]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- depuraMedia[8]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- depuraMedia[9]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- depuraMedia[10]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- depuraMedia[11]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- depuraMedia[12]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- depuraMedia[13]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- depuraMedia[14]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- depuraMedia[15]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rodada	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- perde	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fimJogada	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estadoJogada[0]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estadoJogada[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estadoJogada[2]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estadoJogada[3]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- finalizaRodada	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inicio	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fimRodada	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vacilou	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[14]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[13]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[15]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[12]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[11]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[9]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[10]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[8]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[0]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[7]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[5]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[6]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[4]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[3]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[1]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulso[2]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Media IS
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
SIGNAL ww_enable : std_logic;
SIGNAL ww_inicio : std_logic;
SIGNAL ww_finalizaRodada : std_logic;
SIGNAL ww_fimRodada : std_logic;
SIGNAL ww_vacilou : std_logic;
SIGNAL ww_pulso : std_logic_vector(15 DOWNTO 0);
SIGNAL \ww_media~9630784\ : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_depuraMedia : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_rodada : std_logic;
SIGNAL ww_perde : std_logic;
SIGNAL ww_fimJogada : std_logic;
SIGNAL ww_estadoJogada : std_logic_vector(3 DOWNTO 0);
SIGNAL \CalculaMedia|Converte|Mult5~8_AX_bus\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \CalculaMedia|Converte|Mult5~8_AY_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \CalculaMedia|Converte|Mult5~8_CHAININ_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \CalculaMedia|Converte|Mult5~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \CalculaMedia|Converte|Mult4~mac_AX_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \CalculaMedia|Converte|Mult4~mac_AY_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \CalculaMedia|Converte|Mult4~mac_CHAININ_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \CalculaMedia|Converte|Mult3~mac_AX_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \CalculaMedia|Converte|Mult3~mac_AY_bus\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \CalculaMedia|Converte|Mult3~mac_BX_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \CalculaMedia|Converte|Mult3~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \CalculaMedia|Converte|Mult2~mac_AX_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CalculaMedia|Converte|Mult2~mac_AY_bus\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \CalculaMedia|Converte|Mult2~mac_BX_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \CalculaMedia|Converte|Mult2~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \CalculaMedia|Converte|Mult1~mac_AX_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CalculaMedia|Converte|Mult1~mac_AY_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \CalculaMedia|Converte|Mult1~mac_BX_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CalculaMedia|Converte|Mult1~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \CalculaMedia|Converte|Mult0~mac_AX_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CalculaMedia|Converte|Mult0~mac_AY_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \CalculaMedia|Converte|Mult0~mac_BX_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CalculaMedia|Converte|Mult0~mac_BY_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \CalculaMedia|Converte|Mult5~8_resulta\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~9\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~10\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~11\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~12\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~13\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~14\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~15\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~16\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~17\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~18\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~19\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~20\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~21\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~22\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~23\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~24\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~25\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~26\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~27\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~28\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~29\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~30\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~31\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~32\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~33\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~34\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~35\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~36\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~37\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~38\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~39\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~40\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~41\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~42\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~43\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~44\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~45\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~46\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~47\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~48\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~49\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~50\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~51\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~52\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~53\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~54\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~55\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~56\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult5~57\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~mac_resulta\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~317\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~318\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~319\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~320\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~321\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~322\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~323\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~324\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~325\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~326\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~327\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~328\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~329\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~330\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~331\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~332\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~333\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~334\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~335\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~336\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~337\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~338\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~339\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~8\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~9\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~10\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~11\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~12\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~13\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~14\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~15\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~16\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~17\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~18\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~19\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~20\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~21\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~22\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~23\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~24\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~25\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~26\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~27\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~28\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~29\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~30\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~31\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~32\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~33\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~34\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~35\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~36\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~37\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~38\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~39\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~40\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~41\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~42\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~43\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~44\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~45\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~46\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~47\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~mac_resulta\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~320\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~321\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~322\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~323\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~324\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~325\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~326\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~327\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~328\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~329\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~330\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~331\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~332\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~333\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~334\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~335\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~336\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~337\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~338\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~339\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~8\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~9\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~10\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~11\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~12\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~13\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~14\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~15\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~16\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~17\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~18\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~19\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~20\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~21\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~22\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~23\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~24\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~25\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~26\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~27\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~28\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~29\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~30\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~31\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~32\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~33\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~34\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~35\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~36\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~37\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~38\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~39\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~40\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~41\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~42\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~43\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~44\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~45\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~46\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~47\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~48\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~49\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~50\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~8\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~9\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~10\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~11\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~12\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~13\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~14\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~15\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~16\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~17\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~18\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~19\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~20\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~21\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~22\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~23\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~24\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~25\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~26\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~27\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~28\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~29\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~30\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~31\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~32\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~33\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~34\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~35\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~36\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~37\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~38\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~39\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~40\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~41\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~42\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~43\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~44\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~45\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~46\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~47\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~48\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~49\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~50\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~51\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~8\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~9\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~10\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~11\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~12\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~13\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~14\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~15\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~16\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~17\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~18\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~19\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~20\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~21\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~22\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~23\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~24\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~25\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~26\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~27\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~28\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~29\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~30\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~31\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~32\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~33\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~34\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~35\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~36\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~37\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~38\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~39\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~40\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~41\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~42\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~43\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~44\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~45\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~46\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~47\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~48\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~49\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~50\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~51\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~52\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~53\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~54\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~55\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~56\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~57\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~8\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~9\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~10\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~11\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~12\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~13\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~14\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~15\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~16\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~17\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~18\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~19\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~20\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~21\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~22\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~23\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~24\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~25\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~26\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~27\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~28\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~29\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~30\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~31\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~32\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~33\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~34\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~35\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~36\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~37\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~38\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~39\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~40\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~41\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~42\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~43\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~44\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~45\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~46\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~47\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~48\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~49\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~50\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~51\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~52\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~53\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~54\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~55\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~56\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~57\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~58\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~59\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~60\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|shift_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|Selector33~0_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|shift_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|Selector32~0_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|shift_counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|state.start~0_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|state.start~q\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|Selector1~1_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|state.shift~q\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|Selector34~0_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|Selector35~0_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|state_next.done~0_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|state.done~q\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|binary[2]~0_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|Selector1~0_combout\ : std_logic;
SIGNAL \pulso[15]~input_o\ : std_logic;
SIGNAL \vacilou~input_o\ : std_logic;
SIGNAL \fimRodada~input_o\ : std_logic;
SIGNAL \finalizaRodada~input_o\ : std_logic;
SIGNAL \inicio~input_o\ : std_logic;
SIGNAL \controlador|Selector4~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \controlador|Selector1~1_combout\ : std_logic;
SIGNAL \controlador|Eatual.Rodada4~q\ : std_logic;
SIGNAL \controlador|Selector6~0_combout\ : std_logic;
SIGNAL \controlador|Selector6~1_combout\ : std_logic;
SIGNAL \controlador|Eatual.Perdeu~q\ : std_logic;
SIGNAL \controlador|Selector5~0_combout\ : std_logic;
SIGNAL \controlador|Eatual.CompletouJogada~q\ : std_logic;
SIGNAL \controlador|Selector0~0_combout\ : std_logic;
SIGNAL \controlador|Eatual.Inicial~q\ : std_logic;
SIGNAL \controlador|Selector1~0_combout\ : std_logic;
SIGNAL \controlador|Eatual.Rodada1~q\ : std_logic;
SIGNAL \controlador|Selector2~0_combout\ : std_logic;
SIGNAL \controlador|Eatual.Rodada2~q\ : std_logic;
SIGNAL \controlador|Selector3~0_combout\ : std_logic;
SIGNAL \controlador|Eatual.Rodada3~q\ : std_logic;
SIGNAL \controlador|WideOr7~combout\ : std_logic;
SIGNAL \controlador|WideOr6~combout\ : std_logic;
SIGNAL \controlador|WideOr8~combout\ : std_logic;
SIGNAL \CalculaMedia|DEMUX4|Equal1~0_combout\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \CalculaMedia|REG2|Q[15]~feeder_combout\ : std_logic;
SIGNAL \CalculaMedia|DEMUX4|Equal0~0_combout\ : std_logic;
SIGNAL \pulso[14]~input_o\ : std_logic;
SIGNAL \CalculaMedia|REG2|Q[14]~feeder_combout\ : std_logic;
SIGNAL \pulso[13]~input_o\ : std_logic;
SIGNAL \CalculaMedia|REG1|Q[13]~feeder_combout\ : std_logic;
SIGNAL \CalculaMedia|REG2|Q[13]~feeder_combout\ : std_logic;
SIGNAL \pulso[12]~input_o\ : std_logic;
SIGNAL \CalculaMedia|REG2|Q[12]~feeder_combout\ : std_logic;
SIGNAL \pulso[11]~input_o\ : std_logic;
SIGNAL \pulso[10]~input_o\ : std_logic;
SIGNAL \pulso[9]~input_o\ : std_logic;
SIGNAL \CalculaMedia|REG2|IQ[9]~feeder_combout\ : std_logic;
SIGNAL \pulso[8]~input_o\ : std_logic;
SIGNAL \pulso[7]~input_o\ : std_logic;
SIGNAL \CalculaMedia|REG1|Q[7]~feeder_combout\ : std_logic;
SIGNAL \CalculaMedia|REG2|Q[7]~feeder_combout\ : std_logic;
SIGNAL \pulso[6]~input_o\ : std_logic;
SIGNAL \CalculaMedia|REG1|Q[6]~feeder_combout\ : std_logic;
SIGNAL \pulso[5]~input_o\ : std_logic;
SIGNAL \CalculaMedia|REG2|IQ[5]~feeder_combout\ : std_logic;
SIGNAL \CalculaMedia|REG2|Q[5]~feeder_combout\ : std_logic;
SIGNAL \pulso[4]~input_o\ : std_logic;
SIGNAL \pulso[3]~input_o\ : std_logic;
SIGNAL \CalculaMedia|REG2|Q[3]~feeder_combout\ : std_logic;
SIGNAL \CalculaMedia|REG1|IQ[3]~feeder_combout\ : std_logic;
SIGNAL \pulso[2]~input_o\ : std_logic;
SIGNAL \CalculaMedia|REG2|Q[2]~feeder_combout\ : std_logic;
SIGNAL \pulso[1]~input_o\ : std_logic;
SIGNAL \pulso[0]~input_o\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S1|s1|_~1\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S1|s1|_~2\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S1|s1|_~10\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S1|s1|_~11\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S1|s1|_~13\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S1|s1|_~14\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S1|d1|O~0_combout\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S1|s1|_~7\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S1|s1|_~8\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S1|s1|Cout~sumout\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S2|s1|_~13\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S2|s1|_~14\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S2|s1|_~7\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S2|s1|_~8\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S2|s1|_~10\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S2|s1|_~11\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S2|s1|_~4\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S2|s1|_~5\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S2|s1|Cout~sumout\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S2|d1|O~0_combout\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S3|s1|_~13\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S3|s1|_~14\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S3|s1|_~7\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S3|s1|_~8\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S3|s1|_~10\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S3|s1|_~11\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S3|s1|_~4\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S3|s1|_~5\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S3|s1|Cout~sumout\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S3|d1|O~0_combout\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S4|s1|_~13\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S4|s1|_~14\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S4|s1|_~4\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S4|s1|_~5\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S4|s1|_~1\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S4|s1|_~2\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S4|s1|_~7\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S4|s1|_~8\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S4|s1|Cout~sumout\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S2|S1|s2|_~0_combout\ : std_logic;
SIGNAL \CalculaMedia|DEMUX4|Equal2~0_combout\ : std_logic;
SIGNAL \controlador|WideOr6~0_combout\ : std_logic;
SIGNAL \CalculaMedia|DEMUX4|S4[15]~0_combout\ : std_logic;
SIGNAL \CalculaMedia|REG3|IQ[4]~feeder_combout\ : std_logic;
SIGNAL \CalculaMedia|REG3|Q[3]~feeder_combout\ : std_logic;
SIGNAL \CalculaMedia|REG4|Q[3]~feeder_combout\ : std_logic;
SIGNAL \CalculaMedia|REG3|Q[2]~feeder_combout\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S1|s1|_~1\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S1|s1|_~2\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S1|s1|_~10\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S1|s1|_~11\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S1|s1|_~13\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S1|s1|_~14\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S1|s1|_~7\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S1|s1|_~8\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S1|s1|Cout~sumout\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S1|d1|O~0_combout\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S2|s1|_~13\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S2|s1|_~14\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S2|s1|_~7\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S2|s1|_~8\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S2|s1|_~10\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S2|s1|_~11\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S2|s1|_~4\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S2|s1|_~5\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S2|s1|Cout~sumout\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S2|d1|O~0_combout\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S3|s1|_~13\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S3|s1|_~14\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S3|s1|_~7\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S3|s1|_~8\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S3|s1|_~10\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S3|s1|_~11\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S3|d1|O~0_combout\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S3|s1|_~4\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S3|s1|_~5\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S3|s1|Cout~sumout\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S4|s1|_~13\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S4|s1|_~14\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S4|s1|_~4\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S4|s1|_~5\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S4|s1|_~1\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S4|s1|_~2\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S4|s1|_~7\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S4|s1|_~8\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S4|s1|Cout~sumout\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S2|S1|s2|_~0_combout\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S3|s2|_~4\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S3|s2|_~5\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S3|s2|_~7\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S3|s2|_~8\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S3|s2|_~4\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S3|s2|_~5\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S3|s2|_~7\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S3|s2|_~8\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S2|s2|_~4\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S2|s2|_~5\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S2|s2|_~7\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S2|s2|_~8\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S2|s2|_~4\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S2|s2|_~5\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S2|s2|_~7\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S2|s2|_~8\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S1|s2|_~4\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S1|s2|_~5\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S1|s2|_~7\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S1|s2|_~8\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S1|s2|_~4\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S1|s2|_~5\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S1|s2|_~7\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S1|s2|_~8\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S1|s1|_~1\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S1|s1|_~2\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S1|s1|_~10\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S1|s1|_~11\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S1|s1|_~13\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S1|s1|_~14\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S1|s1|_~7\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S1|s1|_~8\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S1|s1|Cout~sumout\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S1|d1|O~0_combout\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S2|s1|_~13\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S2|s1|_~14\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S2|s1|_~7\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S2|s1|_~8\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S2|s1|_~10\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S2|s1|_~11\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S2|s1|_~4\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S2|s1|_~5\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S2|s1|Cout~sumout\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S2|d1|O~0_combout\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S3|s1|_~13\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S3|s1|_~14\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S3|s1|_~7\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S3|s1|_~8\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S3|s1|_~10\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S3|s1|_~11\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S3|s1|_~4\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S3|s1|_~5\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S3|s1|Cout~sumout\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S3|d1|O~0_combout\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S4|s1|_~13\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S4|s1|_~14\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S4|s2|_~4\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S4|s2|_~5\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S4|s2|_~4\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S4|s2|_~5\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S4|s1|_~7\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S4|s1|_~8\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S4|s2|_~7\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S4|s2|_~8\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S4|s2|_~7\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S4|s2|_~8\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S4|s1|_~10\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S4|s1|_~11\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S4|d1|O~0_combout\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S4|s1|_~4\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S4|s1|_~5\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S4|s1|Cout~sumout\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S2|S1|s1|_~13\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S2|S1|s1|_~14\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S2|S1|s1|_~4\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S2|S1|s1|_~5\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S2|S1|s1|_~1\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S2|S1|s1|_~2\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S2|S1|s1|_~7\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S2|S1|s1|_~8\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S2|S1|s1|Cout~sumout\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S2|S2|s2|_~0_combout\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S2|S1|s2|_~1\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S2|S1|s2|_~2\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S2|S1|s2|_~4\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S2|S1|s2|_~5\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S4|s2|_~1\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S4|s2|_~2\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S4|s2|_~4\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S4|s2|_~5\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S3|s2|_~1\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S3|s2|_~2\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S3|s2|_~4\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S3|s2|_~5\ : std_logic;
SIGNAL \CalculaMedia|Converte|Add0~1_sumout\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S1|s2|_~1\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S1|s2|_~2\ : std_logic;
SIGNAL \CalculaMedia|Converte|Add0~2\ : std_logic;
SIGNAL \CalculaMedia|Converte|Add0~5_sumout\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S2|s2|_~1\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S2|s2|_~2\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S1|s2|_~4\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S1|s2|_~5\ : std_logic;
SIGNAL \CalculaMedia|Converte|Add0~6\ : std_logic;
SIGNAL \CalculaMedia|Converte|Add0~9_sumout\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S2|s2|_~4\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S2|s2|_~5\ : std_logic;
SIGNAL \CalculaMedia|Converte|Add0~10\ : std_logic;
SIGNAL \CalculaMedia|Converte|Add0~13_sumout\ : std_logic;
SIGNAL \CalculaMedia|Converte|Add0~14\ : std_logic;
SIGNAL \CalculaMedia|Converte|Add0~17_sumout\ : std_logic;
SIGNAL \CalculaMedia|Converte|Add0~18\ : std_logic;
SIGNAL \CalculaMedia|Converte|Add0~21_sumout\ : std_logic;
SIGNAL \CalculaMedia|Converte|Add0~22\ : std_logic;
SIGNAL \CalculaMedia|Converte|Add0~25_sumout\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~mac_resulta\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~330\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~331\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~332\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~333\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~334\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~335\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~336\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~337\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~338\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult0~339\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~mac_resulta\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~327\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~328\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~329\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~330\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~331\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~332\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~333\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~334\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~335\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~336\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~337\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~338\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult1~339\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~mac_resulta\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~321\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~322\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~323\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~324\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~325\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~326\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~327\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~328\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~329\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~330\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~331\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~332\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~333\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~334\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~335\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~336\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~337\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~338\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult2~339\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~115\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~116\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~117\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~118\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~119\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~120\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~121\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~122\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~123\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~124\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~125\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~126\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~127\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~128\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~129\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~130\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~131\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~132\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~133\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~134\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~135\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~136\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~137\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~138\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~139\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~140\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~141\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~142\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~143\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~144\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~145\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~146\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~147\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~148\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~149\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~150\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~151\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~152\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~153\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~154\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~155\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~156\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~157\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~158\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~159\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~160\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~161\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~162\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~163\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~164\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~165\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~166\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~167\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~168\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~169\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~170\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~171\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~172\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~173\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~174\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~175\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~176\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~177\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult3~178\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~112\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~113\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~114\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~115\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~116\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~117\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~118\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~119\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~120\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~121\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~122\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~123\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~124\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~125\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~126\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~127\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~128\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~129\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~130\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~131\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~132\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~133\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~134\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~135\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~136\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~137\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~138\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~139\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~140\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~141\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~142\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~143\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~144\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~145\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~146\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~147\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~148\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~149\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~150\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~151\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~152\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~153\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~154\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~155\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~156\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~157\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~158\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~159\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~160\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~161\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~162\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~163\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~164\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~165\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~166\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~167\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~168\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~169\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~170\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~171\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~172\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~173\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~174\ : std_logic;
SIGNAL \CalculaMedia|Converte|Mult4~175\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|binary[13]~feeder_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|binary[12]~feeder_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|binary[11]~feeder_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|binary[10]~feeder_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|binary[9]~feeder_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|binary[8]~feeder_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|binary[7]~feeder_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|binary[6]~feeder_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|binary[5]~feeder_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|binary[4]~feeder_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|binary[3]~feeder_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|binary[2]~feeder_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|binary[1]~feeder_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|binary_next~0_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|Selector31~0_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|bcds[0]~DUPLICATE_q\ : std_logic;
SIGNAL \RegistraMedia|IQ~0_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|Selector28~0_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|Selector29~0_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|Selector30~0_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|bcds[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|bcds_out_reg[1]~feeder_combout\ : std_logic;
SIGNAL \RegistraMedia|Q[1]~feeder_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|bcds_out_reg[2]~feeder_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|bcds[3]~DUPLICATE_q\ : std_logic;
SIGNAL \RegistraMedia|IQ~1_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|Selector27~0_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|Selector27~1_combout\ : std_logic;
SIGNAL \RegistraMedia|IQ~2_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|Selector24~0_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|Selector25~0_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|Selector26~0_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|bcds[5]~DUPLICATE_q\ : std_logic;
SIGNAL \RegistraMedia|IQ[5]~feeder_combout\ : std_logic;
SIGNAL \RegistraMedia|Q[5]~feeder_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|bcds[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|bcds_out_reg[6]~feeder_combout\ : std_logic;
SIGNAL \RegistraMedia|Q[6]~feeder_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|bcds[7]~DUPLICATE_q\ : std_logic;
SIGNAL \RegistraMedia|IQ~3_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|Selector23~0_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|Selector23~1_combout\ : std_logic;
SIGNAL \RegistraMedia|IQ~4_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|Selector21~0_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|Selector20~0_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|Selector22~0_combout\ : std_logic;
SIGNAL \RegistraMedia|IQ[9]~feeder_combout\ : std_logic;
SIGNAL \RegistraMedia|Q[9]~feeder_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|bcds[10]~DUPLICATE_q\ : std_logic;
SIGNAL \RegistraMedia|Q[10]~feeder_combout\ : std_logic;
SIGNAL \RegistraMedia|IQ~5_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|Selector19~0_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|Selector19~1_combout\ : std_logic;
SIGNAL \RegistraMedia|IQ~6_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|Selector17~0_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|Selector16~0_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|Selector18~0_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|bcds_out_reg[13]~feeder_combout\ : std_logic;
SIGNAL \RegistraMedia|IQ[13]~feeder_combout\ : std_logic;
SIGNAL \RegistraMedia|IQ[14]~feeder_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|bcds_out_reg[15]~feeder_combout\ : std_logic;
SIGNAL \RegistraMedia|IQ~7_combout\ : std_logic;
SIGNAL \controlador|WideNor0~0_combout\ : std_logic;
SIGNAL \CalculaMedia|DEMUX4|S4\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CalculaMedia|REG2|IQ\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CalculaMedia|REG3|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CalculaMedia|REG4|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CalculaMedia|DEMUX4|S1\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CalculaMedia|ConverteBCD|shift_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CalculaMedia|SUM1|S1|S1|s2|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CalculaMedia|SUM2|S1|S1|s2|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CalculaMedia|REG1|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CalculaMedia|SUM1|S1|S2|s2|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CalculaMedia|SUM2|S1|S2|s2|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CalculaMedia|SUM2|S1|S2|s1|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CalculaMedia|SUM1|S1|S2|s1|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CalculaMedia|SUM3|S1|S2|s2|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CalculaMedia|REG4|IQ\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CalculaMedia|SUM2|S1|S4|s2|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CalculaMedia|SUM3|S1|S4|s1|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegistraMedia|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CalculaMedia|SUM3|S1|S4|s2|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CalculaMedia|SUM1|S1|S4|s1|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CalculaMedia|REG1|IQ\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CalculaMedia|SUM3|S2|S1|s2|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CalculaMedia|REG3|IQ\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CalculaMedia|SUM3|S2|S1|s1|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CalculaMedia|SUM3|S1|S1|s2|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CalculaMedia|Converte|bin_out\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \CalculaMedia|REG2|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CalculaMedia|SUM1|S1|S1|s1|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CalculaMedia|ConverteBCD|binary\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \RegistraMedia|IQ\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CalculaMedia|SUM2|S1|S4|s1|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CalculaMedia|SUM1|S1|S4|s2|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CalculaMedia|SUM3|S1|S3|s2|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CalculaMedia|ConverteBCD|bcds_out_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CalculaMedia|SUM3|S1|S3|s1|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CalculaMedia|ConverteBCD|bcds\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CalculaMedia|SUM2|S1|S3|s2|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CalculaMedia|SUM3|S1|S1|s1|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CalculaMedia|SUM1|S1|S3|s1|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CalculaMedia|DEMUX4|S3\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CalculaMedia|SUM2|S1|S3|s1|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CalculaMedia|DEMUX4|S2\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CalculaMedia|SUM1|S1|S3|s2|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CalculaMedia|SUM3|S1|S2|s1|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CalculaMedia|SUM2|S1|S1|s1|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CalculaMedia|ConverteBCD|ALT_INV_shift_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|ALT_INV_shift_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|ALT_INV_shift_counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|ALT_INV_bcds[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|ALT_INV_bcds[6]~DUPLICATE_q\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|ALT_INV_bcds[5]~DUPLICATE_q\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|ALT_INV_bcds[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|ALT_INV_bcds[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|ALT_INV_bcds[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_pulso[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_pulso[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_pulso[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_pulso[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_pulso[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_pulso[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_pulso[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_pulso[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_pulso[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_pulso[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_pulso[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_pulso[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_pulso[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_pulso[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_pulso[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_pulso[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_vacilou~input_o\ : std_logic;
SIGNAL \ALT_INV_fimRodada~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_inicio~input_o\ : std_logic;
SIGNAL \ALT_INV_finalizaRodada~input_o\ : std_logic;
SIGNAL \CalculaMedia|DEMUX4|ALT_INV_S3\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CalculaMedia|DEMUX4|ALT_INV_S4\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CalculaMedia|DEMUX4|ALT_INV_S1\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CalculaMedia|DEMUX4|ALT_INV_S2\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CalculaMedia|REG3|ALT_INV_IQ\ : std_logic_vector(3 DOWNTO 2);
SIGNAL \CalculaMedia|REG4|ALT_INV_IQ\ : std_logic_vector(3 DOWNTO 3);
SIGNAL \CalculaMedia|REG2|ALT_INV_IQ\ : std_logic_vector(15 DOWNTO 2);
SIGNAL \CalculaMedia|REG3|ALT_INV_Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CalculaMedia|REG4|ALT_INV_Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CalculaMedia|REG1|ALT_INV_Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CalculaMedia|REG2|ALT_INV_Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CalculaMedia|REG1|ALT_INV_IQ\ : std_logic_vector(13 DOWNTO 6);
SIGNAL \CalculaMedia|SUM2|S1|S1|d1|ALT_INV_O~0_combout\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S1|d1|ALT_INV_O~0_combout\ : std_logic;
SIGNAL \CalculaMedia|DEMUX4|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \CalculaMedia|DEMUX4|ALT_INV_S4[15]~0_combout\ : std_logic;
SIGNAL \CalculaMedia|DEMUX4|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \CalculaMedia|DEMUX4|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S1|d1|ALT_INV_O~0_combout\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S2|d1|ALT_INV_O~0_combout\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S2|d1|ALT_INV_O~0_combout\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S2|d1|ALT_INV_O~0_combout\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S1|S3|d1|ALT_INV_O~0_combout\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S3|d1|ALT_INV_O~0_combout\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S3|d1|ALT_INV_O~0_combout\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S4|d1|ALT_INV_O~0_combout\ : std_logic;
SIGNAL \CalculaMedia|SUM2|S2|S1|s2|ALT_INV__~0_combout\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S2|S1|s2|ALT_INV__~0_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|ALT_INV_state.start~q\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|ALT_INV_Selector19~0_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|ALT_INV_Selector23~0_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|ALT_INV_Selector27~0_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|ALT_INV_binary[2]~0_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|ALT_INV_state.shift~q\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|ALT_INV_shift_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controlador|ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|ALT_INV_bcds\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CalculaMedia|ConverteBCD|ALT_INV_state.done~q\ : std_logic;
SIGNAL \controlador|ALT_INV_WideOr6~combout\ : std_logic;
SIGNAL \controlador|ALT_INV_Eatual.Rodada4~q\ : std_logic;
SIGNAL \controlador|ALT_INV_WideOr7~combout\ : std_logic;
SIGNAL \controlador|ALT_INV_Eatual.Rodada2~q\ : std_logic;
SIGNAL \controlador|ALT_INV_WideOr8~combout\ : std_logic;
SIGNAL \controlador|ALT_INV_Eatual.Rodada3~q\ : std_logic;
SIGNAL \controlador|ALT_INV_Eatual.Rodada1~q\ : std_logic;
SIGNAL \controlador|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \controlador|ALT_INV_WideNor0~0_combout\ : std_logic;
SIGNAL \controlador|ALT_INV_Eatual.Perdeu~q\ : std_logic;
SIGNAL \controlador|ALT_INV_Eatual.CompletouJogada~q\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|ALT_INV_bcds_out_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \controlador|ALT_INV_Eatual.Inicial~q\ : std_logic;
SIGNAL \CalculaMedia|ConverteBCD|ALT_INV_binary\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \CalculaMedia|SUM1|S1|S1|s2|ALT_INV_S\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \CalculaMedia|SUM2|S1|S1|s2|ALT_INV_S\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \CalculaMedia|SUM2|S1|S1|s1|ALT_INV_S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CalculaMedia|SUM2|S1|S1|s1|ALT_INV_Cout~sumout\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S1|s1|ALT_INV_S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CalculaMedia|SUM1|S1|S1|s1|ALT_INV_Cout~sumout\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S1|s1|ALT_INV_S\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \CalculaMedia|SUM2|S1|S2|s1|ALT_INV_S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CalculaMedia|SUM3|S1|S1|s1|ALT_INV_Cout~sumout\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S2|s1|ALT_INV_S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CalculaMedia|SUM1|S1|S2|s2|ALT_INV_S\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \CalculaMedia|SUM2|S1|S2|s2|ALT_INV_S\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \CalculaMedia|SUM2|S1|S2|s1|ALT_INV_Cout~sumout\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S2|s1|ALT_INV_Cout~sumout\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S2|s2|ALT_INV_S\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \CalculaMedia|SUM3|S1|S1|s2|ALT_INV_S\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \CalculaMedia|SUM3|S1|S2|s1|ALT_INV_S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CalculaMedia|SUM2|S1|S3|s1|ALT_INV_S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CalculaMedia|SUM3|S1|S2|s1|ALT_INV_Cout~sumout\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S3|s1|ALT_INV_S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CalculaMedia|SUM1|S1|S3|s2|ALT_INV_S\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \CalculaMedia|SUM2|S1|S3|s2|ALT_INV_S\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \CalculaMedia|SUM2|S1|S3|s1|ALT_INV_Cout~sumout\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S3|s1|ALT_INV_Cout~sumout\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S3|s1|ALT_INV_S\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \CalculaMedia|SUM3|S1|S3|s1|ALT_INV_Cout~sumout\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S4|s2|ALT_INV_S\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \CalculaMedia|SUM2|S1|S4|s2|ALT_INV_S\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \CalculaMedia|SUM2|S1|S4|s1|ALT_INV_S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CalculaMedia|SUM1|S1|S4|s1|ALT_INV_S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CalculaMedia|SUM3|S1|S4|s1|ALT_INV_S\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \CalculaMedia|SUM2|S1|S4|s1|ALT_INV_Cout~sumout\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S1|S4|s1|ALT_INV_Cout~sumout\ : std_logic;
SIGNAL \CalculaMedia|SUM1|S1|S4|s1|ALT_INV_Cout~sumout\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S2|S1|s1|ALT_INV_Cout~sumout\ : std_logic;
SIGNAL \CalculaMedia|SUM3|S2|S1|s1|ALT_INV_S\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \CalculaMedia|Converte|ALT_INV_bin_out\ : std_logic_vector(15 DOWNTO 3);
SIGNAL \RegistraMedia|ALT_INV_IQ\ : std_logic_vector(10 DOWNTO 1);

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_enable <= enable;
ww_inicio <= inicio;
ww_finalizaRodada <= finalizaRodada;
ww_fimRodada <= fimRodada;
ww_vacilou <= vacilou;
ww_pulso <= pulso;
\media~9630784\ <= \ww_media~9630784\;
depuraMedia <= ww_depuraMedia;
rodada <= ww_rodada;
perde <= ww_perde;
fimJogada <= ww_fimJogada;
estadoJogada <= ww_estadoJogada;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CalculaMedia|Converte|Mult5~8_AX_bus\ <= (vcc & gnd & gnd & vcc & vcc & gnd & gnd & gnd & vcc & gnd & gnd & vcc & gnd & vcc & vcc & gnd & vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\CalculaMedia|Converte|Mult5~8_AY_bus\ <= (gnd & gnd & gnd);

\CalculaMedia|Converte|Mult5~8_CHAININ_bus\ <= (\CalculaMedia|Converte|Mult4~175\ & \CalculaMedia|Converte|Mult4~174\ & \CalculaMedia|Converte|Mult4~173\ & \CalculaMedia|Converte|Mult4~172\ & \CalculaMedia|Converte|Mult4~171\ & 
\CalculaMedia|Converte|Mult4~170\ & \CalculaMedia|Converte|Mult4~169\ & \CalculaMedia|Converte|Mult4~168\ & \CalculaMedia|Converte|Mult4~167\ & \CalculaMedia|Converte|Mult4~166\ & \CalculaMedia|Converte|Mult4~165\ & \CalculaMedia|Converte|Mult4~164\ & 
\CalculaMedia|Converte|Mult4~163\ & \CalculaMedia|Converte|Mult4~162\ & \CalculaMedia|Converte|Mult4~161\ & \CalculaMedia|Converte|Mult4~160\ & \CalculaMedia|Converte|Mult4~159\ & \CalculaMedia|Converte|Mult4~158\ & \CalculaMedia|Converte|Mult4~157\ & 
\CalculaMedia|Converte|Mult4~156\ & \CalculaMedia|Converte|Mult4~155\ & \CalculaMedia|Converte|Mult4~154\ & \CalculaMedia|Converte|Mult4~153\ & \CalculaMedia|Converte|Mult4~152\ & \CalculaMedia|Converte|Mult4~151\ & \CalculaMedia|Converte|Mult4~150\ & 
\CalculaMedia|Converte|Mult4~149\ & \CalculaMedia|Converte|Mult4~148\ & \CalculaMedia|Converte|Mult4~147\ & \CalculaMedia|Converte|Mult4~146\ & \CalculaMedia|Converte|Mult4~145\ & \CalculaMedia|Converte|Mult4~144\ & \CalculaMedia|Converte|Mult4~143\ & 
\CalculaMedia|Converte|Mult4~142\ & \CalculaMedia|Converte|Mult4~141\ & \CalculaMedia|Converte|Mult4~140\ & \CalculaMedia|Converte|Mult4~139\ & \CalculaMedia|Converte|Mult4~138\ & \CalculaMedia|Converte|Mult4~137\ & \CalculaMedia|Converte|Mult4~136\ & 
\CalculaMedia|Converte|Mult4~135\ & \CalculaMedia|Converte|Mult4~134\ & \CalculaMedia|Converte|Mult4~133\ & \CalculaMedia|Converte|Mult4~132\ & \CalculaMedia|Converte|Mult4~131\ & \CalculaMedia|Converte|Mult4~130\ & \CalculaMedia|Converte|Mult4~129\ & 
\CalculaMedia|Converte|Mult4~128\ & \CalculaMedia|Converte|Mult4~127\ & \CalculaMedia|Converte|Mult4~126\ & \CalculaMedia|Converte|Mult4~125\ & \CalculaMedia|Converte|Mult4~124\ & \CalculaMedia|Converte|Mult4~123\ & \CalculaMedia|Converte|Mult4~122\ & 
\CalculaMedia|Converte|Mult4~121\ & \CalculaMedia|Converte|Mult4~120\ & \CalculaMedia|Converte|Mult4~119\ & \CalculaMedia|Converte|Mult4~118\ & \CalculaMedia|Converte|Mult4~117\ & \CalculaMedia|Converte|Mult4~116\ & \CalculaMedia|Converte|Mult4~115\ & 
\CalculaMedia|Converte|Mult4~114\ & \CalculaMedia|Converte|Mult4~113\ & \CalculaMedia|Converte|Mult4~112\);

\CalculaMedia|Converte|Mult5~8_resulta\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(0);
\CalculaMedia|Converte|Mult5~9\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(1);
\CalculaMedia|Converte|bin_out\(2) <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(2);
\CalculaMedia|Converte|bin_out\(3) <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(3);
\CalculaMedia|Converte|bin_out\(4) <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(4);
\CalculaMedia|Converte|bin_out\(5) <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(5);
\CalculaMedia|Converte|bin_out\(6) <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(6);
\CalculaMedia|Converte|bin_out\(7) <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(7);
\CalculaMedia|Converte|bin_out\(8) <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(8);
\CalculaMedia|Converte|bin_out\(9) <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(9);
\CalculaMedia|Converte|bin_out\(10) <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(10);
\CalculaMedia|Converte|bin_out\(11) <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(11);
\CalculaMedia|Converte|bin_out\(12) <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(12);
\CalculaMedia|Converte|bin_out\(13) <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(13);
\CalculaMedia|Converte|bin_out\(14) <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(14);
\CalculaMedia|Converte|bin_out\(15) <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(15);
\CalculaMedia|Converte|Mult5~10\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(16);
\CalculaMedia|Converte|Mult5~11\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(17);
\CalculaMedia|Converte|Mult5~12\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(18);
\CalculaMedia|Converte|Mult5~13\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(19);
\CalculaMedia|Converte|Mult5~14\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(20);
\CalculaMedia|Converte|Mult5~15\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(21);
\CalculaMedia|Converte|Mult5~16\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(22);
\CalculaMedia|Converte|Mult5~17\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(23);
\CalculaMedia|Converte|Mult5~18\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(24);
\CalculaMedia|Converte|Mult5~19\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(25);
\CalculaMedia|Converte|Mult5~20\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(26);
\CalculaMedia|Converte|Mult5~21\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(27);
\CalculaMedia|Converte|Mult5~22\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(28);
\CalculaMedia|Converte|Mult5~23\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(29);
\CalculaMedia|Converte|Mult5~24\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(30);
\CalculaMedia|Converte|Mult5~25\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(31);
\CalculaMedia|Converte|Mult5~26\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(32);
\CalculaMedia|Converte|Mult5~27\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(33);
\CalculaMedia|Converte|Mult5~28\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(34);
\CalculaMedia|Converte|Mult5~29\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(35);
\CalculaMedia|Converte|Mult5~30\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(36);
\CalculaMedia|Converte|Mult5~31\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(37);
\CalculaMedia|Converte|Mult5~32\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(38);
\CalculaMedia|Converte|Mult5~33\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(39);
\CalculaMedia|Converte|Mult5~34\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(40);
\CalculaMedia|Converte|Mult5~35\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(41);
\CalculaMedia|Converte|Mult5~36\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(42);
\CalculaMedia|Converte|Mult5~37\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(43);
\CalculaMedia|Converte|Mult5~38\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(44);
\CalculaMedia|Converte|Mult5~39\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(45);
\CalculaMedia|Converte|Mult5~40\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(46);
\CalculaMedia|Converte|Mult5~41\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(47);
\CalculaMedia|Converte|Mult5~42\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(48);
\CalculaMedia|Converte|Mult5~43\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(49);
\CalculaMedia|Converte|Mult5~44\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(50);
\CalculaMedia|Converte|Mult5~45\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(51);
\CalculaMedia|Converte|Mult5~46\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(52);
\CalculaMedia|Converte|Mult5~47\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(53);
\CalculaMedia|Converte|Mult5~48\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(54);
\CalculaMedia|Converte|Mult5~49\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(55);
\CalculaMedia|Converte|Mult5~50\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(56);
\CalculaMedia|Converte|Mult5~51\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(57);
\CalculaMedia|Converte|Mult5~52\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(58);
\CalculaMedia|Converte|Mult5~53\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(59);
\CalculaMedia|Converte|Mult5~54\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(60);
\CalculaMedia|Converte|Mult5~55\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(61);
\CalculaMedia|Converte|Mult5~56\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(62);
\CalculaMedia|Converte|Mult5~57\ <= \CalculaMedia|Converte|Mult5~8_RESULTA_bus\(63);

\CalculaMedia|Converte|Mult4~mac_AX_bus\ <= (vcc & vcc & vcc & vcc & gnd & vcc & gnd & gnd & gnd & gnd & vcc & gnd & gnd & vcc & gnd & gnd & gnd & gnd & gnd & gnd);

\CalculaMedia|Converte|Mult4~mac_AY_bus\ <= (gnd & gnd & gnd);

\CalculaMedia|Converte|Mult4~mac_CHAININ_bus\ <= (\CalculaMedia|Converte|Mult3~178\ & \CalculaMedia|Converte|Mult3~177\ & \CalculaMedia|Converte|Mult3~176\ & \CalculaMedia|Converte|Mult3~175\ & \CalculaMedia|Converte|Mult3~174\ & 
\CalculaMedia|Converte|Mult3~173\ & \CalculaMedia|Converte|Mult3~172\ & \CalculaMedia|Converte|Mult3~171\ & \CalculaMedia|Converte|Mult3~170\ & \CalculaMedia|Converte|Mult3~169\ & \CalculaMedia|Converte|Mult3~168\ & \CalculaMedia|Converte|Mult3~167\ & 
\CalculaMedia|Converte|Mult3~166\ & \CalculaMedia|Converte|Mult3~165\ & \CalculaMedia|Converte|Mult3~164\ & \CalculaMedia|Converte|Mult3~163\ & \CalculaMedia|Converte|Mult3~162\ & \CalculaMedia|Converte|Mult3~161\ & \CalculaMedia|Converte|Mult3~160\ & 
\CalculaMedia|Converte|Mult3~159\ & \CalculaMedia|Converte|Mult3~158\ & \CalculaMedia|Converte|Mult3~157\ & \CalculaMedia|Converte|Mult3~156\ & \CalculaMedia|Converte|Mult3~155\ & \CalculaMedia|Converte|Mult3~154\ & \CalculaMedia|Converte|Mult3~153\ & 
\CalculaMedia|Converte|Mult3~152\ & \CalculaMedia|Converte|Mult3~151\ & \CalculaMedia|Converte|Mult3~150\ & \CalculaMedia|Converte|Mult3~149\ & \CalculaMedia|Converte|Mult3~148\ & \CalculaMedia|Converte|Mult3~147\ & \CalculaMedia|Converte|Mult3~146\ & 
\CalculaMedia|Converte|Mult3~145\ & \CalculaMedia|Converte|Mult3~144\ & \CalculaMedia|Converte|Mult3~143\ & \CalculaMedia|Converte|Mult3~142\ & \CalculaMedia|Converte|Mult3~141\ & \CalculaMedia|Converte|Mult3~140\ & \CalculaMedia|Converte|Mult3~139\ & 
\CalculaMedia|Converte|Mult3~138\ & \CalculaMedia|Converte|Mult3~137\ & \CalculaMedia|Converte|Mult3~136\ & \CalculaMedia|Converte|Mult3~135\ & \CalculaMedia|Converte|Mult3~134\ & \CalculaMedia|Converte|Mult3~133\ & \CalculaMedia|Converte|Mult3~132\ & 
\CalculaMedia|Converte|Mult3~131\ & \CalculaMedia|Converte|Mult3~130\ & \CalculaMedia|Converte|Mult3~129\ & \CalculaMedia|Converte|Mult3~128\ & \CalculaMedia|Converte|Mult3~127\ & \CalculaMedia|Converte|Mult3~126\ & \CalculaMedia|Converte|Mult3~125\ & 
\CalculaMedia|Converte|Mult3~124\ & \CalculaMedia|Converte|Mult3~123\ & \CalculaMedia|Converte|Mult3~122\ & \CalculaMedia|Converte|Mult3~121\ & \CalculaMedia|Converte|Mult3~120\ & \CalculaMedia|Converte|Mult3~119\ & \CalculaMedia|Converte|Mult3~118\ & 
\CalculaMedia|Converte|Mult3~117\ & \CalculaMedia|Converte|Mult3~116\ & \CalculaMedia|Converte|Mult3~115\);

\CalculaMedia|Converte|Mult4~mac_resulta\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(0);
\CalculaMedia|Converte|Mult4~317\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(1);
\CalculaMedia|Converte|Mult4~318\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(2);
\CalculaMedia|Converte|Mult4~319\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(3);
\CalculaMedia|Converte|Mult4~320\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(4);
\CalculaMedia|Converte|Mult4~321\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(5);
\CalculaMedia|Converte|Mult4~322\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(6);
\CalculaMedia|Converte|Mult4~323\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(7);
\CalculaMedia|Converte|Mult4~324\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(8);
\CalculaMedia|Converte|Mult4~325\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(9);
\CalculaMedia|Converte|Mult4~326\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(10);
\CalculaMedia|Converte|Mult4~327\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(11);
\CalculaMedia|Converte|Mult4~328\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(12);
\CalculaMedia|Converte|Mult4~329\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(13);
\CalculaMedia|Converte|Mult4~330\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(14);
\CalculaMedia|Converte|Mult4~331\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(15);
\CalculaMedia|Converte|Mult4~332\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(16);
\CalculaMedia|Converte|Mult4~333\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(17);
\CalculaMedia|Converte|Mult4~334\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(18);
\CalculaMedia|Converte|Mult4~335\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(19);
\CalculaMedia|Converte|Mult4~336\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(20);
\CalculaMedia|Converte|Mult4~337\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(21);
\CalculaMedia|Converte|Mult4~338\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(22);
\CalculaMedia|Converte|Mult4~339\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(23);
\CalculaMedia|Converte|Mult4~8\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(24);
\CalculaMedia|Converte|Mult4~9\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(25);
\CalculaMedia|Converte|Mult4~10\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(26);
\CalculaMedia|Converte|Mult4~11\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(27);
\CalculaMedia|Converte|Mult4~12\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(28);
\CalculaMedia|Converte|Mult4~13\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(29);
\CalculaMedia|Converte|Mult4~14\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(30);
\CalculaMedia|Converte|Mult4~15\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(31);
\CalculaMedia|Converte|Mult4~16\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(32);
\CalculaMedia|Converte|Mult4~17\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(33);
\CalculaMedia|Converte|Mult4~18\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(34);
\CalculaMedia|Converte|Mult4~19\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(35);
\CalculaMedia|Converte|Mult4~20\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(36);
\CalculaMedia|Converte|Mult4~21\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(37);
\CalculaMedia|Converte|Mult4~22\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(38);
\CalculaMedia|Converte|Mult4~23\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(39);
\CalculaMedia|Converte|Mult4~24\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(40);
\CalculaMedia|Converte|Mult4~25\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(41);
\CalculaMedia|Converte|Mult4~26\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(42);
\CalculaMedia|Converte|Mult4~27\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(43);
\CalculaMedia|Converte|Mult4~28\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(44);
\CalculaMedia|Converte|Mult4~29\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(45);
\CalculaMedia|Converte|Mult4~30\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(46);
\CalculaMedia|Converte|Mult4~31\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(47);
\CalculaMedia|Converte|Mult4~32\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(48);
\CalculaMedia|Converte|Mult4~33\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(49);
\CalculaMedia|Converte|Mult4~34\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(50);
\CalculaMedia|Converte|Mult4~35\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(51);
\CalculaMedia|Converte|Mult4~36\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(52);
\CalculaMedia|Converte|Mult4~37\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(53);
\CalculaMedia|Converte|Mult4~38\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(54);
\CalculaMedia|Converte|Mult4~39\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(55);
\CalculaMedia|Converte|Mult4~40\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(56);
\CalculaMedia|Converte|Mult4~41\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(57);
\CalculaMedia|Converte|Mult4~42\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(58);
\CalculaMedia|Converte|Mult4~43\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(59);
\CalculaMedia|Converte|Mult4~44\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(60);
\CalculaMedia|Converte|Mult4~45\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(61);
\CalculaMedia|Converte|Mult4~46\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(62);
\CalculaMedia|Converte|Mult4~47\ <= \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\(63);

\CalculaMedia|Converte|Mult4~112\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(0);
\CalculaMedia|Converte|Mult4~113\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(1);
\CalculaMedia|Converte|Mult4~114\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(2);
\CalculaMedia|Converte|Mult4~115\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(3);
\CalculaMedia|Converte|Mult4~116\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(4);
\CalculaMedia|Converte|Mult4~117\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(5);
\CalculaMedia|Converte|Mult4~118\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(6);
\CalculaMedia|Converte|Mult4~119\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(7);
\CalculaMedia|Converte|Mult4~120\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(8);
\CalculaMedia|Converte|Mult4~121\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(9);
\CalculaMedia|Converte|Mult4~122\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(10);
\CalculaMedia|Converte|Mult4~123\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(11);
\CalculaMedia|Converte|Mult4~124\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(12);
\CalculaMedia|Converte|Mult4~125\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(13);
\CalculaMedia|Converte|Mult4~126\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(14);
\CalculaMedia|Converte|Mult4~127\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(15);
\CalculaMedia|Converte|Mult4~128\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(16);
\CalculaMedia|Converte|Mult4~129\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(17);
\CalculaMedia|Converte|Mult4~130\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(18);
\CalculaMedia|Converte|Mult4~131\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(19);
\CalculaMedia|Converte|Mult4~132\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(20);
\CalculaMedia|Converte|Mult4~133\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(21);
\CalculaMedia|Converte|Mult4~134\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(22);
\CalculaMedia|Converte|Mult4~135\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(23);
\CalculaMedia|Converte|Mult4~136\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(24);
\CalculaMedia|Converte|Mult4~137\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(25);
\CalculaMedia|Converte|Mult4~138\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(26);
\CalculaMedia|Converte|Mult4~139\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(27);
\CalculaMedia|Converte|Mult4~140\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(28);
\CalculaMedia|Converte|Mult4~141\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(29);
\CalculaMedia|Converte|Mult4~142\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(30);
\CalculaMedia|Converte|Mult4~143\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(31);
\CalculaMedia|Converte|Mult4~144\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(32);
\CalculaMedia|Converte|Mult4~145\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(33);
\CalculaMedia|Converte|Mult4~146\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(34);
\CalculaMedia|Converte|Mult4~147\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(35);
\CalculaMedia|Converte|Mult4~148\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(36);
\CalculaMedia|Converte|Mult4~149\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(37);
\CalculaMedia|Converte|Mult4~150\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(38);
\CalculaMedia|Converte|Mult4~151\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(39);
\CalculaMedia|Converte|Mult4~152\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(40);
\CalculaMedia|Converte|Mult4~153\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(41);
\CalculaMedia|Converte|Mult4~154\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(42);
\CalculaMedia|Converte|Mult4~155\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(43);
\CalculaMedia|Converte|Mult4~156\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(44);
\CalculaMedia|Converte|Mult4~157\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(45);
\CalculaMedia|Converte|Mult4~158\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(46);
\CalculaMedia|Converte|Mult4~159\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(47);
\CalculaMedia|Converte|Mult4~160\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(48);
\CalculaMedia|Converte|Mult4~161\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(49);
\CalculaMedia|Converte|Mult4~162\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(50);
\CalculaMedia|Converte|Mult4~163\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(51);
\CalculaMedia|Converte|Mult4~164\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(52);
\CalculaMedia|Converte|Mult4~165\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(53);
\CalculaMedia|Converte|Mult4~166\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(54);
\CalculaMedia|Converte|Mult4~167\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(55);
\CalculaMedia|Converte|Mult4~168\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(56);
\CalculaMedia|Converte|Mult4~169\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(57);
\CalculaMedia|Converte|Mult4~170\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(58);
\CalculaMedia|Converte|Mult4~171\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(59);
\CalculaMedia|Converte|Mult4~172\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(60);
\CalculaMedia|Converte|Mult4~173\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(61);
\CalculaMedia|Converte|Mult4~174\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(62);
\CalculaMedia|Converte|Mult4~175\ <= \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\(63);

\CalculaMedia|Converte|Mult3~mac_AX_bus\ <= (gnd & gnd & \CalculaMedia|SUM3|S2|S2|s2|_~0_combout\);

\CalculaMedia|Converte|Mult3~mac_AY_bus\ <= (vcc & vcc & gnd & gnd & gnd & gnd & vcc & vcc & gnd & vcc & gnd & vcc & gnd & gnd & gnd & gnd & gnd);

\CalculaMedia|Converte|Mult3~mac_BX_bus\ <= (gnd & \CalculaMedia|Converte|Mult2~339\ & \CalculaMedia|Converte|Mult2~338\);

\CalculaMedia|Converte|Mult3~mac_BY_bus\ <= (\CalculaMedia|Converte|Mult2~337\ & \CalculaMedia|Converte|Mult2~336\ & \CalculaMedia|Converte|Mult2~335\ & \CalculaMedia|Converte|Mult2~334\ & \CalculaMedia|Converte|Mult2~333\ & 
\CalculaMedia|Converte|Mult2~332\ & \CalculaMedia|Converte|Mult2~331\ & \CalculaMedia|Converte|Mult2~330\ & \CalculaMedia|Converte|Mult2~329\ & \CalculaMedia|Converte|Mult2~328\ & \CalculaMedia|Converte|Mult2~327\ & \CalculaMedia|Converte|Mult2~326\ & 
\CalculaMedia|Converte|Mult2~325\ & \CalculaMedia|Converte|Mult2~324\ & \CalculaMedia|Converte|Mult2~323\ & \CalculaMedia|Converte|Mult2~322\ & \CalculaMedia|Converte|Mult2~321\ & \CalculaMedia|Converte|Mult2~mac_resulta\);

\CalculaMedia|Converte|Mult3~mac_resulta\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(0);
\CalculaMedia|Converte|Mult3~320\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(1);
\CalculaMedia|Converte|Mult3~321\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(2);
\CalculaMedia|Converte|Mult3~322\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(3);
\CalculaMedia|Converte|Mult3~323\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(4);
\CalculaMedia|Converte|Mult3~324\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(5);
\CalculaMedia|Converte|Mult3~325\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(6);
\CalculaMedia|Converte|Mult3~326\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(7);
\CalculaMedia|Converte|Mult3~327\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(8);
\CalculaMedia|Converte|Mult3~328\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(9);
\CalculaMedia|Converte|Mult3~329\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(10);
\CalculaMedia|Converte|Mult3~330\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(11);
\CalculaMedia|Converte|Mult3~331\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(12);
\CalculaMedia|Converte|Mult3~332\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(13);
\CalculaMedia|Converte|Mult3~333\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(14);
\CalculaMedia|Converte|Mult3~334\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(15);
\CalculaMedia|Converte|Mult3~335\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(16);
\CalculaMedia|Converte|Mult3~336\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(17);
\CalculaMedia|Converte|Mult3~337\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(18);
\CalculaMedia|Converte|Mult3~338\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(19);
\CalculaMedia|Converte|Mult3~339\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(20);
\CalculaMedia|Converte|Mult3~8\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(21);
\CalculaMedia|Converte|Mult3~9\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(22);
\CalculaMedia|Converte|Mult3~10\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(23);
\CalculaMedia|Converte|Mult3~11\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(24);
\CalculaMedia|Converte|Mult3~12\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(25);
\CalculaMedia|Converte|Mult3~13\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(26);
\CalculaMedia|Converte|Mult3~14\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(27);
\CalculaMedia|Converte|Mult3~15\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(28);
\CalculaMedia|Converte|Mult3~16\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(29);
\CalculaMedia|Converte|Mult3~17\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(30);
\CalculaMedia|Converte|Mult3~18\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(31);
\CalculaMedia|Converte|Mult3~19\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(32);
\CalculaMedia|Converte|Mult3~20\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(33);
\CalculaMedia|Converte|Mult3~21\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(34);
\CalculaMedia|Converte|Mult3~22\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(35);
\CalculaMedia|Converte|Mult3~23\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(36);
\CalculaMedia|Converte|Mult3~24\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(37);
\CalculaMedia|Converte|Mult3~25\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(38);
\CalculaMedia|Converte|Mult3~26\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(39);
\CalculaMedia|Converte|Mult3~27\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(40);
\CalculaMedia|Converte|Mult3~28\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(41);
\CalculaMedia|Converte|Mult3~29\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(42);
\CalculaMedia|Converte|Mult3~30\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(43);
\CalculaMedia|Converte|Mult3~31\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(44);
\CalculaMedia|Converte|Mult3~32\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(45);
\CalculaMedia|Converte|Mult3~33\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(46);
\CalculaMedia|Converte|Mult3~34\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(47);
\CalculaMedia|Converte|Mult3~35\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(48);
\CalculaMedia|Converte|Mult3~36\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(49);
\CalculaMedia|Converte|Mult3~37\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(50);
\CalculaMedia|Converte|Mult3~38\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(51);
\CalculaMedia|Converte|Mult3~39\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(52);
\CalculaMedia|Converte|Mult3~40\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(53);
\CalculaMedia|Converte|Mult3~41\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(54);
\CalculaMedia|Converte|Mult3~42\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(55);
\CalculaMedia|Converte|Mult3~43\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(56);
\CalculaMedia|Converte|Mult3~44\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(57);
\CalculaMedia|Converte|Mult3~45\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(58);
\CalculaMedia|Converte|Mult3~46\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(59);
\CalculaMedia|Converte|Mult3~47\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(60);
\CalculaMedia|Converte|Mult3~48\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(61);
\CalculaMedia|Converte|Mult3~49\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(62);
\CalculaMedia|Converte|Mult3~50\ <= \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\(63);

\CalculaMedia|Converte|Mult3~115\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(0);
\CalculaMedia|Converte|Mult3~116\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(1);
\CalculaMedia|Converte|Mult3~117\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(2);
\CalculaMedia|Converte|Mult3~118\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(3);
\CalculaMedia|Converte|Mult3~119\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(4);
\CalculaMedia|Converte|Mult3~120\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(5);
\CalculaMedia|Converte|Mult3~121\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(6);
\CalculaMedia|Converte|Mult3~122\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(7);
\CalculaMedia|Converte|Mult3~123\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(8);
\CalculaMedia|Converte|Mult3~124\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(9);
\CalculaMedia|Converte|Mult3~125\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(10);
\CalculaMedia|Converte|Mult3~126\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(11);
\CalculaMedia|Converte|Mult3~127\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(12);
\CalculaMedia|Converte|Mult3~128\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(13);
\CalculaMedia|Converte|Mult3~129\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(14);
\CalculaMedia|Converte|Mult3~130\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(15);
\CalculaMedia|Converte|Mult3~131\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(16);
\CalculaMedia|Converte|Mult3~132\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(17);
\CalculaMedia|Converte|Mult3~133\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(18);
\CalculaMedia|Converte|Mult3~134\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(19);
\CalculaMedia|Converte|Mult3~135\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(20);
\CalculaMedia|Converte|Mult3~136\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(21);
\CalculaMedia|Converte|Mult3~137\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(22);
\CalculaMedia|Converte|Mult3~138\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(23);
\CalculaMedia|Converte|Mult3~139\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(24);
\CalculaMedia|Converte|Mult3~140\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(25);
\CalculaMedia|Converte|Mult3~141\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(26);
\CalculaMedia|Converte|Mult3~142\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(27);
\CalculaMedia|Converte|Mult3~143\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(28);
\CalculaMedia|Converte|Mult3~144\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(29);
\CalculaMedia|Converte|Mult3~145\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(30);
\CalculaMedia|Converte|Mult3~146\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(31);
\CalculaMedia|Converte|Mult3~147\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(32);
\CalculaMedia|Converte|Mult3~148\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(33);
\CalculaMedia|Converte|Mult3~149\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(34);
\CalculaMedia|Converte|Mult3~150\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(35);
\CalculaMedia|Converte|Mult3~151\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(36);
\CalculaMedia|Converte|Mult3~152\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(37);
\CalculaMedia|Converte|Mult3~153\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(38);
\CalculaMedia|Converte|Mult3~154\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(39);
\CalculaMedia|Converte|Mult3~155\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(40);
\CalculaMedia|Converte|Mult3~156\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(41);
\CalculaMedia|Converte|Mult3~157\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(42);
\CalculaMedia|Converte|Mult3~158\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(43);
\CalculaMedia|Converte|Mult3~159\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(44);
\CalculaMedia|Converte|Mult3~160\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(45);
\CalculaMedia|Converte|Mult3~161\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(46);
\CalculaMedia|Converte|Mult3~162\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(47);
\CalculaMedia|Converte|Mult3~163\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(48);
\CalculaMedia|Converte|Mult3~164\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(49);
\CalculaMedia|Converte|Mult3~165\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(50);
\CalculaMedia|Converte|Mult3~166\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(51);
\CalculaMedia|Converte|Mult3~167\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(52);
\CalculaMedia|Converte|Mult3~168\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(53);
\CalculaMedia|Converte|Mult3~169\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(54);
\CalculaMedia|Converte|Mult3~170\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(55);
\CalculaMedia|Converte|Mult3~171\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(56);
\CalculaMedia|Converte|Mult3~172\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(57);
\CalculaMedia|Converte|Mult3~173\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(58);
\CalculaMedia|Converte|Mult3~174\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(59);
\CalculaMedia|Converte|Mult3~175\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(60);
\CalculaMedia|Converte|Mult3~176\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(61);
\CalculaMedia|Converte|Mult3~177\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(62);
\CalculaMedia|Converte|Mult3~178\ <= \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\(63);

\CalculaMedia|Converte|Mult2~mac_AX_bus\ <= (\CalculaMedia|SUM3|S2|S1|s2|S\(3) & \CalculaMedia|SUM3|S2|S1|s2|S\(2) & \CalculaMedia|SUM3|S2|S1|s2|S\(1) & \CalculaMedia|SUM3|S2|S1|s1|S\(0));

\CalculaMedia|Converte|Mult2~mac_AY_bus\ <= (vcc & gnd & gnd & vcc & vcc & vcc & gnd & gnd & gnd & vcc & gnd & gnd & gnd & gnd & gnd);

\CalculaMedia|Converte|Mult2~mac_BX_bus\ <= (gnd & gnd);

\CalculaMedia|Converte|Mult2~mac_BY_bus\ <= (gnd & gnd & gnd & gnd & \CalculaMedia|Converte|Mult1~339\ & \CalculaMedia|Converte|Mult1~338\ & \CalculaMedia|Converte|Mult1~337\ & \CalculaMedia|Converte|Mult1~336\ & \CalculaMedia|Converte|Mult1~335\ & 
\CalculaMedia|Converte|Mult1~334\ & \CalculaMedia|Converte|Mult1~333\ & \CalculaMedia|Converte|Mult1~332\ & \CalculaMedia|Converte|Mult1~331\ & \CalculaMedia|Converte|Mult1~330\ & \CalculaMedia|Converte|Mult1~329\ & \CalculaMedia|Converte|Mult1~328\ & 
\CalculaMedia|Converte|Mult1~327\ & \CalculaMedia|Converte|Mult1~mac_resulta\);

\CalculaMedia|Converte|Mult2~mac_resulta\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(0);
\CalculaMedia|Converte|Mult2~321\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(1);
\CalculaMedia|Converte|Mult2~322\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(2);
\CalculaMedia|Converte|Mult2~323\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(3);
\CalculaMedia|Converte|Mult2~324\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(4);
\CalculaMedia|Converte|Mult2~325\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(5);
\CalculaMedia|Converte|Mult2~326\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(6);
\CalculaMedia|Converte|Mult2~327\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(7);
\CalculaMedia|Converte|Mult2~328\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(8);
\CalculaMedia|Converte|Mult2~329\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(9);
\CalculaMedia|Converte|Mult2~330\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(10);
\CalculaMedia|Converte|Mult2~331\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(11);
\CalculaMedia|Converte|Mult2~332\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(12);
\CalculaMedia|Converte|Mult2~333\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(13);
\CalculaMedia|Converte|Mult2~334\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(14);
\CalculaMedia|Converte|Mult2~335\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(15);
\CalculaMedia|Converte|Mult2~336\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(16);
\CalculaMedia|Converte|Mult2~337\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(17);
\CalculaMedia|Converte|Mult2~338\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(18);
\CalculaMedia|Converte|Mult2~339\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(19);
\CalculaMedia|Converte|Mult2~8\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(20);
\CalculaMedia|Converte|Mult2~9\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(21);
\CalculaMedia|Converte|Mult2~10\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(22);
\CalculaMedia|Converte|Mult2~11\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(23);
\CalculaMedia|Converte|Mult2~12\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(24);
\CalculaMedia|Converte|Mult2~13\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(25);
\CalculaMedia|Converte|Mult2~14\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(26);
\CalculaMedia|Converte|Mult2~15\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(27);
\CalculaMedia|Converte|Mult2~16\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(28);
\CalculaMedia|Converte|Mult2~17\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(29);
\CalculaMedia|Converte|Mult2~18\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(30);
\CalculaMedia|Converte|Mult2~19\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(31);
\CalculaMedia|Converte|Mult2~20\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(32);
\CalculaMedia|Converte|Mult2~21\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(33);
\CalculaMedia|Converte|Mult2~22\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(34);
\CalculaMedia|Converte|Mult2~23\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(35);
\CalculaMedia|Converte|Mult2~24\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(36);
\CalculaMedia|Converte|Mult2~25\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(37);
\CalculaMedia|Converte|Mult2~26\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(38);
\CalculaMedia|Converte|Mult2~27\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(39);
\CalculaMedia|Converte|Mult2~28\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(40);
\CalculaMedia|Converte|Mult2~29\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(41);
\CalculaMedia|Converte|Mult2~30\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(42);
\CalculaMedia|Converte|Mult2~31\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(43);
\CalculaMedia|Converte|Mult2~32\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(44);
\CalculaMedia|Converte|Mult2~33\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(45);
\CalculaMedia|Converte|Mult2~34\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(46);
\CalculaMedia|Converte|Mult2~35\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(47);
\CalculaMedia|Converte|Mult2~36\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(48);
\CalculaMedia|Converte|Mult2~37\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(49);
\CalculaMedia|Converte|Mult2~38\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(50);
\CalculaMedia|Converte|Mult2~39\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(51);
\CalculaMedia|Converte|Mult2~40\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(52);
\CalculaMedia|Converte|Mult2~41\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(53);
\CalculaMedia|Converte|Mult2~42\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(54);
\CalculaMedia|Converte|Mult2~43\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(55);
\CalculaMedia|Converte|Mult2~44\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(56);
\CalculaMedia|Converte|Mult2~45\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(57);
\CalculaMedia|Converte|Mult2~46\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(58);
\CalculaMedia|Converte|Mult2~47\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(59);
\CalculaMedia|Converte|Mult2~48\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(60);
\CalculaMedia|Converte|Mult2~49\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(61);
\CalculaMedia|Converte|Mult2~50\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(62);
\CalculaMedia|Converte|Mult2~51\ <= \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\(63);

\CalculaMedia|Converte|Mult1~mac_AX_bus\ <= (\CalculaMedia|SUM3|S1|S4|s2|S\(3) & \CalculaMedia|SUM3|S1|S4|s2|S\(2) & \CalculaMedia|SUM3|S1|S4|s2|S\(1) & \CalculaMedia|SUM3|S1|S4|s1|S\(0));

\CalculaMedia|Converte|Mult1~mac_AY_bus\ <= (vcc & vcc & vcc & vcc & vcc & gnd & vcc & gnd & gnd & gnd);

\CalculaMedia|Converte|Mult1~mac_BX_bus\(0) <= gnd;

\CalculaMedia|Converte|Mult1~mac_BY_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & \CalculaMedia|Converte|Mult0~339\ & \CalculaMedia|Converte|Mult0~338\ & \CalculaMedia|Converte|Mult0~337\ & \CalculaMedia|Converte|Mult0~336\ & 
\CalculaMedia|Converte|Mult0~335\ & \CalculaMedia|Converte|Mult0~334\ & \CalculaMedia|Converte|Mult0~333\ & \CalculaMedia|Converte|Mult0~332\ & \CalculaMedia|Converte|Mult0~331\ & \CalculaMedia|Converte|Mult0~330\ & 
\CalculaMedia|Converte|Mult0~mac_resulta\);

\CalculaMedia|Converte|Mult1~mac_resulta\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(0);
\CalculaMedia|Converte|Mult1~327\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(1);
\CalculaMedia|Converte|Mult1~328\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(2);
\CalculaMedia|Converte|Mult1~329\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(3);
\CalculaMedia|Converte|Mult1~330\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(4);
\CalculaMedia|Converte|Mult1~331\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(5);
\CalculaMedia|Converte|Mult1~332\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(6);
\CalculaMedia|Converte|Mult1~333\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(7);
\CalculaMedia|Converte|Mult1~334\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(8);
\CalculaMedia|Converte|Mult1~335\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(9);
\CalculaMedia|Converte|Mult1~336\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(10);
\CalculaMedia|Converte|Mult1~337\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(11);
\CalculaMedia|Converte|Mult1~338\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(12);
\CalculaMedia|Converte|Mult1~339\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(13);
\CalculaMedia|Converte|Mult1~8\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(14);
\CalculaMedia|Converte|Mult1~9\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(15);
\CalculaMedia|Converte|Mult1~10\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(16);
\CalculaMedia|Converte|Mult1~11\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(17);
\CalculaMedia|Converte|Mult1~12\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(18);
\CalculaMedia|Converte|Mult1~13\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(19);
\CalculaMedia|Converte|Mult1~14\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(20);
\CalculaMedia|Converte|Mult1~15\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(21);
\CalculaMedia|Converte|Mult1~16\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(22);
\CalculaMedia|Converte|Mult1~17\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(23);
\CalculaMedia|Converte|Mult1~18\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(24);
\CalculaMedia|Converte|Mult1~19\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(25);
\CalculaMedia|Converte|Mult1~20\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(26);
\CalculaMedia|Converte|Mult1~21\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(27);
\CalculaMedia|Converte|Mult1~22\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(28);
\CalculaMedia|Converte|Mult1~23\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(29);
\CalculaMedia|Converte|Mult1~24\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(30);
\CalculaMedia|Converte|Mult1~25\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(31);
\CalculaMedia|Converte|Mult1~26\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(32);
\CalculaMedia|Converte|Mult1~27\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(33);
\CalculaMedia|Converte|Mult1~28\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(34);
\CalculaMedia|Converte|Mult1~29\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(35);
\CalculaMedia|Converte|Mult1~30\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(36);
\CalculaMedia|Converte|Mult1~31\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(37);
\CalculaMedia|Converte|Mult1~32\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(38);
\CalculaMedia|Converte|Mult1~33\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(39);
\CalculaMedia|Converte|Mult1~34\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(40);
\CalculaMedia|Converte|Mult1~35\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(41);
\CalculaMedia|Converte|Mult1~36\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(42);
\CalculaMedia|Converte|Mult1~37\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(43);
\CalculaMedia|Converte|Mult1~38\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(44);
\CalculaMedia|Converte|Mult1~39\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(45);
\CalculaMedia|Converte|Mult1~40\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(46);
\CalculaMedia|Converte|Mult1~41\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(47);
\CalculaMedia|Converte|Mult1~42\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(48);
\CalculaMedia|Converte|Mult1~43\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(49);
\CalculaMedia|Converte|Mult1~44\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(50);
\CalculaMedia|Converte|Mult1~45\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(51);
\CalculaMedia|Converte|Mult1~46\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(52);
\CalculaMedia|Converte|Mult1~47\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(53);
\CalculaMedia|Converte|Mult1~48\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(54);
\CalculaMedia|Converte|Mult1~49\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(55);
\CalculaMedia|Converte|Mult1~50\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(56);
\CalculaMedia|Converte|Mult1~51\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(57);
\CalculaMedia|Converte|Mult1~52\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(58);
\CalculaMedia|Converte|Mult1~53\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(59);
\CalculaMedia|Converte|Mult1~54\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(60);
\CalculaMedia|Converte|Mult1~55\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(61);
\CalculaMedia|Converte|Mult1~56\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(62);
\CalculaMedia|Converte|Mult1~57\ <= \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\(63);

\CalculaMedia|Converte|Mult0~mac_AX_bus\ <= (\CalculaMedia|SUM3|S1|S3|s2|S\(3) & \CalculaMedia|SUM3|S1|S3|s2|S\(2) & \CalculaMedia|SUM3|S1|S3|s2|S\(1) & \CalculaMedia|SUM3|S1|S3|s1|S\(0));

\CalculaMedia|Converte|Mult0~mac_AY_bus\ <= (vcc & vcc & gnd & gnd & vcc & gnd & gnd);

\CalculaMedia|Converte|Mult0~mac_BX_bus\(0) <= gnd;

\CalculaMedia|Converte|Mult0~mac_BY_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \CalculaMedia|Converte|Add0~25_sumout\ & \CalculaMedia|Converte|Add0~21_sumout\ & \CalculaMedia|Converte|Add0~17_sumout\ & 
\CalculaMedia|Converte|Add0~13_sumout\ & \CalculaMedia|Converte|Add0~9_sumout\ & \CalculaMedia|Converte|Add0~5_sumout\ & \CalculaMedia|Converte|Add0~1_sumout\ & \CalculaMedia|SUM3|S1|S1|s1|S\(0));

\CalculaMedia|Converte|Mult0~mac_resulta\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(0);
\CalculaMedia|Converte|Mult0~330\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(1);
\CalculaMedia|Converte|Mult0~331\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(2);
\CalculaMedia|Converte|Mult0~332\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(3);
\CalculaMedia|Converte|Mult0~333\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(4);
\CalculaMedia|Converte|Mult0~334\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(5);
\CalculaMedia|Converte|Mult0~335\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(6);
\CalculaMedia|Converte|Mult0~336\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(7);
\CalculaMedia|Converte|Mult0~337\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(8);
\CalculaMedia|Converte|Mult0~338\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(9);
\CalculaMedia|Converte|Mult0~339\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(10);
\CalculaMedia|Converte|Mult0~8\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(11);
\CalculaMedia|Converte|Mult0~9\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(12);
\CalculaMedia|Converte|Mult0~10\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(13);
\CalculaMedia|Converte|Mult0~11\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(14);
\CalculaMedia|Converte|Mult0~12\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(15);
\CalculaMedia|Converte|Mult0~13\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(16);
\CalculaMedia|Converte|Mult0~14\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(17);
\CalculaMedia|Converte|Mult0~15\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(18);
\CalculaMedia|Converte|Mult0~16\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(19);
\CalculaMedia|Converte|Mult0~17\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(20);
\CalculaMedia|Converte|Mult0~18\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(21);
\CalculaMedia|Converte|Mult0~19\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(22);
\CalculaMedia|Converte|Mult0~20\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(23);
\CalculaMedia|Converte|Mult0~21\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(24);
\CalculaMedia|Converte|Mult0~22\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(25);
\CalculaMedia|Converte|Mult0~23\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(26);
\CalculaMedia|Converte|Mult0~24\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(27);
\CalculaMedia|Converte|Mult0~25\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(28);
\CalculaMedia|Converte|Mult0~26\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(29);
\CalculaMedia|Converte|Mult0~27\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(30);
\CalculaMedia|Converte|Mult0~28\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(31);
\CalculaMedia|Converte|Mult0~29\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(32);
\CalculaMedia|Converte|Mult0~30\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(33);
\CalculaMedia|Converte|Mult0~31\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(34);
\CalculaMedia|Converte|Mult0~32\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(35);
\CalculaMedia|Converte|Mult0~33\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(36);
\CalculaMedia|Converte|Mult0~34\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(37);
\CalculaMedia|Converte|Mult0~35\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(38);
\CalculaMedia|Converte|Mult0~36\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(39);
\CalculaMedia|Converte|Mult0~37\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(40);
\CalculaMedia|Converte|Mult0~38\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(41);
\CalculaMedia|Converte|Mult0~39\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(42);
\CalculaMedia|Converte|Mult0~40\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(43);
\CalculaMedia|Converte|Mult0~41\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(44);
\CalculaMedia|Converte|Mult0~42\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(45);
\CalculaMedia|Converte|Mult0~43\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(46);
\CalculaMedia|Converte|Mult0~44\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(47);
\CalculaMedia|Converte|Mult0~45\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(48);
\CalculaMedia|Converte|Mult0~46\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(49);
\CalculaMedia|Converte|Mult0~47\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(50);
\CalculaMedia|Converte|Mult0~48\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(51);
\CalculaMedia|Converte|Mult0~49\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(52);
\CalculaMedia|Converte|Mult0~50\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(53);
\CalculaMedia|Converte|Mult0~51\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(54);
\CalculaMedia|Converte|Mult0~52\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(55);
\CalculaMedia|Converte|Mult0~53\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(56);
\CalculaMedia|Converte|Mult0~54\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(57);
\CalculaMedia|Converte|Mult0~55\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(58);
\CalculaMedia|Converte|Mult0~56\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(59);
\CalculaMedia|Converte|Mult0~57\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(60);
\CalculaMedia|Converte|Mult0~58\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(61);
\CalculaMedia|Converte|Mult0~59\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(62);
\CalculaMedia|Converte|Mult0~60\ <= \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\(63);
\CalculaMedia|ConverteBCD|ALT_INV_shift_counter[1]~DUPLICATE_q\ <= NOT \CalculaMedia|ConverteBCD|shift_counter[1]~DUPLICATE_q\;
\CalculaMedia|ConverteBCD|ALT_INV_shift_counter[2]~DUPLICATE_q\ <= NOT \CalculaMedia|ConverteBCD|shift_counter[2]~DUPLICATE_q\;
\CalculaMedia|ConverteBCD|ALT_INV_shift_counter[3]~DUPLICATE_q\ <= NOT \CalculaMedia|ConverteBCD|shift_counter[3]~DUPLICATE_q\;
\CalculaMedia|ConverteBCD|ALT_INV_bcds[7]~DUPLICATE_q\ <= NOT \CalculaMedia|ConverteBCD|bcds[7]~DUPLICATE_q\;
\CalculaMedia|ConverteBCD|ALT_INV_bcds[6]~DUPLICATE_q\ <= NOT \CalculaMedia|ConverteBCD|bcds[6]~DUPLICATE_q\;
\CalculaMedia|ConverteBCD|ALT_INV_bcds[5]~DUPLICATE_q\ <= NOT \CalculaMedia|ConverteBCD|bcds[5]~DUPLICATE_q\;
\CalculaMedia|ConverteBCD|ALT_INV_bcds[3]~DUPLICATE_q\ <= NOT \CalculaMedia|ConverteBCD|bcds[3]~DUPLICATE_q\;
\CalculaMedia|ConverteBCD|ALT_INV_bcds[1]~DUPLICATE_q\ <= NOT \CalculaMedia|ConverteBCD|bcds[1]~DUPLICATE_q\;
\CalculaMedia|ConverteBCD|ALT_INV_bcds[0]~DUPLICATE_q\ <= NOT \CalculaMedia|ConverteBCD|bcds[0]~DUPLICATE_q\;
\ALT_INV_pulso[2]~input_o\ <= NOT \pulso[2]~input_o\;
\ALT_INV_pulso[1]~input_o\ <= NOT \pulso[1]~input_o\;
\ALT_INV_pulso[3]~input_o\ <= NOT \pulso[3]~input_o\;
\ALT_INV_pulso[4]~input_o\ <= NOT \pulso[4]~input_o\;
\ALT_INV_pulso[6]~input_o\ <= NOT \pulso[6]~input_o\;
\ALT_INV_pulso[5]~input_o\ <= NOT \pulso[5]~input_o\;
\ALT_INV_pulso[7]~input_o\ <= NOT \pulso[7]~input_o\;
\ALT_INV_pulso[0]~input_o\ <= NOT \pulso[0]~input_o\;
\ALT_INV_pulso[8]~input_o\ <= NOT \pulso[8]~input_o\;
\ALT_INV_pulso[10]~input_o\ <= NOT \pulso[10]~input_o\;
\ALT_INV_pulso[9]~input_o\ <= NOT \pulso[9]~input_o\;
\ALT_INV_pulso[11]~input_o\ <= NOT \pulso[11]~input_o\;
\ALT_INV_pulso[12]~input_o\ <= NOT \pulso[12]~input_o\;
\ALT_INV_pulso[15]~input_o\ <= NOT \pulso[15]~input_o\;
\ALT_INV_pulso[13]~input_o\ <= NOT \pulso[13]~input_o\;
\ALT_INV_pulso[14]~input_o\ <= NOT \pulso[14]~input_o\;
\ALT_INV_vacilou~input_o\ <= NOT \vacilou~input_o\;
\ALT_INV_fimRodada~input_o\ <= NOT \fimRodada~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_inicio~input_o\ <= NOT \inicio~input_o\;
\ALT_INV_finalizaRodada~input_o\ <= NOT \finalizaRodada~input_o\;
\CalculaMedia|DEMUX4|ALT_INV_S3\(2) <= NOT \CalculaMedia|DEMUX4|S3\(2);
\CalculaMedia|DEMUX4|ALT_INV_S4\(2) <= NOT \CalculaMedia|DEMUX4|S4\(2);
\CalculaMedia|DEMUX4|ALT_INV_S3\(1) <= NOT \CalculaMedia|DEMUX4|S3\(1);
\CalculaMedia|DEMUX4|ALT_INV_S4\(1) <= NOT \CalculaMedia|DEMUX4|S4\(1);
\CalculaMedia|DEMUX4|ALT_INV_S3\(3) <= NOT \CalculaMedia|DEMUX4|S3\(3);
\CalculaMedia|DEMUX4|ALT_INV_S4\(3) <= NOT \CalculaMedia|DEMUX4|S4\(3);
\CalculaMedia|DEMUX4|ALT_INV_S1\(2) <= NOT \CalculaMedia|DEMUX4|S1\(2);
\CalculaMedia|DEMUX4|ALT_INV_S2\(2) <= NOT \CalculaMedia|DEMUX4|S2\(2);
\CalculaMedia|DEMUX4|ALT_INV_S1\(1) <= NOT \CalculaMedia|DEMUX4|S1\(1);
\CalculaMedia|DEMUX4|ALT_INV_S2\(1) <= NOT \CalculaMedia|DEMUX4|S2\(1);
\CalculaMedia|DEMUX4|ALT_INV_S1\(3) <= NOT \CalculaMedia|DEMUX4|S1\(3);
\CalculaMedia|DEMUX4|ALT_INV_S2\(3) <= NOT \CalculaMedia|DEMUX4|S2\(3);
\CalculaMedia|DEMUX4|ALT_INV_S4\(4) <= NOT \CalculaMedia|DEMUX4|S4\(4);
\CalculaMedia|DEMUX4|ALT_INV_S3\(4) <= NOT \CalculaMedia|DEMUX4|S3\(4);
\CalculaMedia|DEMUX4|ALT_INV_S2\(4) <= NOT \CalculaMedia|DEMUX4|S2\(4);
\CalculaMedia|DEMUX4|ALT_INV_S1\(4) <= NOT \CalculaMedia|DEMUX4|S1\(4);
\CalculaMedia|DEMUX4|ALT_INV_S3\(6) <= NOT \CalculaMedia|DEMUX4|S3\(6);
\CalculaMedia|DEMUX4|ALT_INV_S4\(6) <= NOT \CalculaMedia|DEMUX4|S4\(6);
\CalculaMedia|DEMUX4|ALT_INV_S4\(5) <= NOT \CalculaMedia|DEMUX4|S4\(5);
\CalculaMedia|DEMUX4|ALT_INV_S3\(5) <= NOT \CalculaMedia|DEMUX4|S3\(5);
\CalculaMedia|DEMUX4|ALT_INV_S3\(7) <= NOT \CalculaMedia|DEMUX4|S3\(7);
\CalculaMedia|DEMUX4|ALT_INV_S4\(7) <= NOT \CalculaMedia|DEMUX4|S4\(7);
\CalculaMedia|DEMUX4|ALT_INV_S1\(6) <= NOT \CalculaMedia|DEMUX4|S1\(6);
\CalculaMedia|DEMUX4|ALT_INV_S2\(6) <= NOT \CalculaMedia|DEMUX4|S2\(6);
\CalculaMedia|DEMUX4|ALT_INV_S2\(5) <= NOT \CalculaMedia|DEMUX4|S2\(5);
\CalculaMedia|DEMUX4|ALT_INV_S1\(5) <= NOT \CalculaMedia|DEMUX4|S1\(5);
\CalculaMedia|DEMUX4|ALT_INV_S1\(7) <= NOT \CalculaMedia|DEMUX4|S1\(7);
\CalculaMedia|DEMUX4|ALT_INV_S2\(7) <= NOT \CalculaMedia|DEMUX4|S2\(7);
\CalculaMedia|DEMUX4|ALT_INV_S1\(0) <= NOT \CalculaMedia|DEMUX4|S1\(0);
\CalculaMedia|DEMUX4|ALT_INV_S2\(0) <= NOT \CalculaMedia|DEMUX4|S2\(0);
\CalculaMedia|DEMUX4|ALT_INV_S3\(0) <= NOT \CalculaMedia|DEMUX4|S3\(0);
\CalculaMedia|DEMUX4|ALT_INV_S4\(0) <= NOT \CalculaMedia|DEMUX4|S4\(0);
\CalculaMedia|DEMUX4|ALT_INV_S4\(8) <= NOT \CalculaMedia|DEMUX4|S4\(8);
\CalculaMedia|DEMUX4|ALT_INV_S3\(8) <= NOT \CalculaMedia|DEMUX4|S3\(8);
\CalculaMedia|DEMUX4|ALT_INV_S2\(8) <= NOT \CalculaMedia|DEMUX4|S2\(8);
\CalculaMedia|DEMUX4|ALT_INV_S1\(8) <= NOT \CalculaMedia|DEMUX4|S1\(8);
\CalculaMedia|DEMUX4|ALT_INV_S3\(10) <= NOT \CalculaMedia|DEMUX4|S3\(10);
\CalculaMedia|DEMUX4|ALT_INV_S4\(10) <= NOT \CalculaMedia|DEMUX4|S4\(10);
\CalculaMedia|DEMUX4|ALT_INV_S4\(9) <= NOT \CalculaMedia|DEMUX4|S4\(9);
\CalculaMedia|DEMUX4|ALT_INV_S3\(9) <= NOT \CalculaMedia|DEMUX4|S3\(9);
\CalculaMedia|DEMUX4|ALT_INV_S3\(11) <= NOT \CalculaMedia|DEMUX4|S3\(11);
\CalculaMedia|DEMUX4|ALT_INV_S4\(11) <= NOT \CalculaMedia|DEMUX4|S4\(11);
\CalculaMedia|DEMUX4|ALT_INV_S1\(10) <= NOT \CalculaMedia|DEMUX4|S1\(10);
\CalculaMedia|DEMUX4|ALT_INV_S2\(10) <= NOT \CalculaMedia|DEMUX4|S2\(10);
\CalculaMedia|DEMUX4|ALT_INV_S2\(9) <= NOT \CalculaMedia|DEMUX4|S2\(9);
\CalculaMedia|DEMUX4|ALT_INV_S1\(9) <= NOT \CalculaMedia|DEMUX4|S1\(9);
\CalculaMedia|DEMUX4|ALT_INV_S1\(11) <= NOT \CalculaMedia|DEMUX4|S1\(11);
\CalculaMedia|DEMUX4|ALT_INV_S2\(11) <= NOT \CalculaMedia|DEMUX4|S2\(11);
\CalculaMedia|DEMUX4|ALT_INV_S4\(12) <= NOT \CalculaMedia|DEMUX4|S4\(12);
\CalculaMedia|DEMUX4|ALT_INV_S3\(12) <= NOT \CalculaMedia|DEMUX4|S3\(12);
\CalculaMedia|DEMUX4|ALT_INV_S2\(12) <= NOT \CalculaMedia|DEMUX4|S2\(12);
\CalculaMedia|DEMUX4|ALT_INV_S1\(12) <= NOT \CalculaMedia|DEMUX4|S1\(12);
\CalculaMedia|DEMUX4|ALT_INV_S3\(15) <= NOT \CalculaMedia|DEMUX4|S3\(15);
\CalculaMedia|DEMUX4|ALT_INV_S4\(15) <= NOT \CalculaMedia|DEMUX4|S4\(15);
\CalculaMedia|DEMUX4|ALT_INV_S4\(13) <= NOT \CalculaMedia|DEMUX4|S4\(13);
\CalculaMedia|DEMUX4|ALT_INV_S3\(13) <= NOT \CalculaMedia|DEMUX4|S3\(13);
\CalculaMedia|DEMUX4|ALT_INV_S3\(14) <= NOT \CalculaMedia|DEMUX4|S3\(14);
\CalculaMedia|DEMUX4|ALT_INV_S4\(14) <= NOT \CalculaMedia|DEMUX4|S4\(14);
\CalculaMedia|DEMUX4|ALT_INV_S1\(15) <= NOT \CalculaMedia|DEMUX4|S1\(15);
\CalculaMedia|DEMUX4|ALT_INV_S2\(15) <= NOT \CalculaMedia|DEMUX4|S2\(15);
\CalculaMedia|DEMUX4|ALT_INV_S2\(13) <= NOT \CalculaMedia|DEMUX4|S2\(13);
\CalculaMedia|DEMUX4|ALT_INV_S1\(13) <= NOT \CalculaMedia|DEMUX4|S1\(13);
\CalculaMedia|DEMUX4|ALT_INV_S1\(14) <= NOT \CalculaMedia|DEMUX4|S1\(14);
\CalculaMedia|DEMUX4|ALT_INV_S2\(14) <= NOT \CalculaMedia|DEMUX4|S2\(14);
\CalculaMedia|REG3|ALT_INV_IQ\(2) <= NOT \CalculaMedia|REG3|IQ\(2);
\CalculaMedia|REG3|ALT_INV_IQ\(3) <= NOT \CalculaMedia|REG3|IQ\(3);
\CalculaMedia|REG4|ALT_INV_IQ\(3) <= NOT \CalculaMedia|REG4|IQ\(3);
\CalculaMedia|REG2|ALT_INV_IQ\(2) <= NOT \CalculaMedia|REG2|IQ\(2);
\CalculaMedia|REG2|ALT_INV_IQ\(3) <= NOT \CalculaMedia|REG2|IQ\(3);
\CalculaMedia|REG3|ALT_INV_Q\(2) <= NOT \CalculaMedia|REG3|Q\(2);
\CalculaMedia|REG4|ALT_INV_Q\(2) <= NOT \CalculaMedia|REG4|Q\(2);
\CalculaMedia|REG3|ALT_INV_Q\(1) <= NOT \CalculaMedia|REG3|Q\(1);
\CalculaMedia|REG4|ALT_INV_Q\(1) <= NOT \CalculaMedia|REG4|Q\(1);
\CalculaMedia|REG3|ALT_INV_Q\(3) <= NOT \CalculaMedia|REG3|Q\(3);
\CalculaMedia|REG4|ALT_INV_Q\(3) <= NOT \CalculaMedia|REG4|Q\(3);
\CalculaMedia|REG1|ALT_INV_Q\(2) <= NOT \CalculaMedia|REG1|Q\(2);
\CalculaMedia|REG2|ALT_INV_Q\(2) <= NOT \CalculaMedia|REG2|Q\(2);
\CalculaMedia|REG1|ALT_INV_Q\(1) <= NOT \CalculaMedia|REG1|Q\(1);
\CalculaMedia|REG2|ALT_INV_Q\(1) <= NOT \CalculaMedia|REG2|Q\(1);
\CalculaMedia|REG1|ALT_INV_Q\(3) <= NOT \CalculaMedia|REG1|Q\(3);
\CalculaMedia|REG2|ALT_INV_Q\(3) <= NOT \CalculaMedia|REG2|Q\(3);
\CalculaMedia|REG1|ALT_INV_IQ\(6) <= NOT \CalculaMedia|REG1|IQ\(6);
\CalculaMedia|REG2|ALT_INV_IQ\(5) <= NOT \CalculaMedia|REG2|IQ\(5);
\CalculaMedia|REG1|ALT_INV_IQ\(7) <= NOT \CalculaMedia|REG1|IQ\(7);
\CalculaMedia|REG2|ALT_INV_IQ\(7) <= NOT \CalculaMedia|REG2|IQ\(7);
\CalculaMedia|SUM2|S1|S1|d1|ALT_INV_O~0_combout\ <= NOT \CalculaMedia|SUM2|S1|S1|d1|O~0_combout\;
\CalculaMedia|REG4|ALT_INV_Q\(4) <= NOT \CalculaMedia|REG4|Q\(4);
\CalculaMedia|REG3|ALT_INV_Q\(4) <= NOT \CalculaMedia|REG3|Q\(4);
\CalculaMedia|SUM1|S1|S1|d1|ALT_INV_O~0_combout\ <= NOT \CalculaMedia|SUM1|S1|S1|d1|O~0_combout\;
\CalculaMedia|REG2|ALT_INV_Q\(4) <= NOT \CalculaMedia|REG2|Q\(4);
\CalculaMedia|REG1|ALT_INV_Q\(4) <= NOT \CalculaMedia|REG1|Q\(4);
\CalculaMedia|REG3|ALT_INV_Q\(6) <= NOT \CalculaMedia|REG3|Q\(6);
\CalculaMedia|REG4|ALT_INV_Q\(6) <= NOT \CalculaMedia|REG4|Q\(6);
\CalculaMedia|REG4|ALT_INV_Q\(5) <= NOT \CalculaMedia|REG4|Q\(5);
\CalculaMedia|REG3|ALT_INV_Q\(5) <= NOT \CalculaMedia|REG3|Q\(5);
\CalculaMedia|REG3|ALT_INV_Q\(7) <= NOT \CalculaMedia|REG3|Q\(7);
\CalculaMedia|REG4|ALT_INV_Q\(7) <= NOT \CalculaMedia|REG4|Q\(7);
\CalculaMedia|REG1|ALT_INV_Q\(6) <= NOT \CalculaMedia|REG1|Q\(6);
\CalculaMedia|REG2|ALT_INV_Q\(6) <= NOT \CalculaMedia|REG2|Q\(6);
\CalculaMedia|REG2|ALT_INV_Q\(5) <= NOT \CalculaMedia|REG2|Q\(5);
\CalculaMedia|REG1|ALT_INV_Q\(5) <= NOT \CalculaMedia|REG1|Q\(5);
\CalculaMedia|REG1|ALT_INV_Q\(7) <= NOT \CalculaMedia|REG1|Q\(7);
\CalculaMedia|REG2|ALT_INV_Q\(7) <= NOT \CalculaMedia|REG2|Q\(7);
\CalculaMedia|DEMUX4|ALT_INV_Equal2~0_combout\ <= NOT \CalculaMedia|DEMUX4|Equal2~0_combout\;
\CalculaMedia|DEMUX4|ALT_INV_S4[15]~0_combout\ <= NOT \CalculaMedia|DEMUX4|S4[15]~0_combout\;
\CalculaMedia|DEMUX4|ALT_INV_Equal0~0_combout\ <= NOT \CalculaMedia|DEMUX4|Equal0~0_combout\;
\CalculaMedia|DEMUX4|ALT_INV_Equal1~0_combout\ <= NOT \CalculaMedia|DEMUX4|Equal1~0_combout\;
\CalculaMedia|SUM3|S1|S1|d1|ALT_INV_O~0_combout\ <= NOT \CalculaMedia|SUM3|S1|S1|d1|O~0_combout\;
\CalculaMedia|REG1|ALT_INV_Q\(0) <= NOT \CalculaMedia|REG1|Q\(0);
\CalculaMedia|REG2|ALT_INV_Q\(0) <= NOT \CalculaMedia|REG2|Q\(0);
\CalculaMedia|REG3|ALT_INV_Q\(0) <= NOT \CalculaMedia|REG3|Q\(0);
\CalculaMedia|REG4|ALT_INV_Q\(0) <= NOT \CalculaMedia|REG4|Q\(0);
\CalculaMedia|SUM2|S1|S2|d1|ALT_INV_O~0_combout\ <= NOT \CalculaMedia|SUM2|S1|S2|d1|O~0_combout\;
\CalculaMedia|REG4|ALT_INV_Q\(8) <= NOT \CalculaMedia|REG4|Q\(8);
\CalculaMedia|REG3|ALT_INV_Q\(8) <= NOT \CalculaMedia|REG3|Q\(8);
\CalculaMedia|SUM1|S1|S2|d1|ALT_INV_O~0_combout\ <= NOT \CalculaMedia|SUM1|S1|S2|d1|O~0_combout\;
\CalculaMedia|REG2|ALT_INV_Q\(8) <= NOT \CalculaMedia|REG2|Q\(8);
\CalculaMedia|REG1|ALT_INV_Q\(8) <= NOT \CalculaMedia|REG1|Q\(8);
\CalculaMedia|REG3|ALT_INV_Q\(10) <= NOT \CalculaMedia|REG3|Q\(10);
\CalculaMedia|REG4|ALT_INV_Q\(10) <= NOT \CalculaMedia|REG4|Q\(10);
\CalculaMedia|REG4|ALT_INV_Q\(9) <= NOT \CalculaMedia|REG4|Q\(9);
\CalculaMedia|REG3|ALT_INV_Q\(9) <= NOT \CalculaMedia|REG3|Q\(9);
\CalculaMedia|REG3|ALT_INV_Q\(11) <= NOT \CalculaMedia|REG3|Q\(11);
\CalculaMedia|REG4|ALT_INV_Q\(11) <= NOT \CalculaMedia|REG4|Q\(11);
\CalculaMedia|REG1|ALT_INV_Q\(10) <= NOT \CalculaMedia|REG1|Q\(10);
\CalculaMedia|REG2|ALT_INV_Q\(10) <= NOT \CalculaMedia|REG2|Q\(10);
\CalculaMedia|REG2|ALT_INV_Q\(9) <= NOT \CalculaMedia|REG2|Q\(9);
\CalculaMedia|REG1|ALT_INV_Q\(9) <= NOT \CalculaMedia|REG1|Q\(9);
\CalculaMedia|REG1|ALT_INV_Q\(11) <= NOT \CalculaMedia|REG1|Q\(11);
\CalculaMedia|REG2|ALT_INV_Q\(11) <= NOT \CalculaMedia|REG2|Q\(11);
\CalculaMedia|REG2|ALT_INV_IQ\(12) <= NOT \CalculaMedia|REG2|IQ\(12);
\CalculaMedia|SUM3|S1|S2|d1|ALT_INV_O~0_combout\ <= NOT \CalculaMedia|SUM3|S1|S2|d1|O~0_combout\;
\CalculaMedia|SUM2|S1|S3|d1|ALT_INV_O~0_combout\ <= NOT \CalculaMedia|SUM2|S1|S3|d1|O~0_combout\;
\CalculaMedia|REG4|ALT_INV_Q\(12) <= NOT \CalculaMedia|REG4|Q\(12);
\CalculaMedia|REG3|ALT_INV_Q\(12) <= NOT \CalculaMedia|REG3|Q\(12);
\CalculaMedia|REG2|ALT_INV_IQ\(15) <= NOT \CalculaMedia|REG2|IQ\(15);
\CalculaMedia|SUM1|S1|S3|d1|ALT_INV_O~0_combout\ <= NOT \CalculaMedia|SUM1|S1|S3|d1|O~0_combout\;
\CalculaMedia|REG2|ALT_INV_Q\(12) <= NOT \CalculaMedia|REG2|Q\(12);
\CalculaMedia|REG1|ALT_INV_Q\(12) <= NOT \CalculaMedia|REG1|Q\(12);
\CalculaMedia|REG2|ALT_INV_IQ\(13) <= NOT \CalculaMedia|REG2|IQ\(13);
\CalculaMedia|REG1|ALT_INV_IQ\(13) <= NOT \CalculaMedia|REG1|IQ\(13);
\CalculaMedia|REG2|ALT_INV_IQ\(14) <= NOT \CalculaMedia|REG2|IQ\(14);
\CalculaMedia|SUM3|S1|S3|d1|ALT_INV_O~0_combout\ <= NOT \CalculaMedia|SUM3|S1|S3|d1|O~0_combout\;
\CalculaMedia|REG3|ALT_INV_Q\(15) <= NOT \CalculaMedia|REG3|Q\(15);
\CalculaMedia|REG4|ALT_INV_Q\(15) <= NOT \CalculaMedia|REG4|Q\(15);
\CalculaMedia|REG4|ALT_INV_Q\(13) <= NOT \CalculaMedia|REG4|Q\(13);
\CalculaMedia|REG3|ALT_INV_Q\(13) <= NOT \CalculaMedia|REG3|Q\(13);
\CalculaMedia|REG3|ALT_INV_Q\(14) <= NOT \CalculaMedia|REG3|Q\(14);
\CalculaMedia|REG4|ALT_INV_Q\(14) <= NOT \CalculaMedia|REG4|Q\(14);
\CalculaMedia|REG1|ALT_INV_Q\(15) <= NOT \CalculaMedia|REG1|Q\(15);
\CalculaMedia|REG2|ALT_INV_Q\(15) <= NOT \CalculaMedia|REG2|Q\(15);
\CalculaMedia|REG2|ALT_INV_Q\(13) <= NOT \CalculaMedia|REG2|Q\(13);
\CalculaMedia|REG1|ALT_INV_Q\(13) <= NOT \CalculaMedia|REG1|Q\(13);
\CalculaMedia|REG1|ALT_INV_Q\(14) <= NOT \CalculaMedia|REG1|Q\(14);
\CalculaMedia|REG2|ALT_INV_Q\(14) <= NOT \CalculaMedia|REG2|Q\(14);
\CalculaMedia|SUM3|S1|S4|d1|ALT_INV_O~0_combout\ <= NOT \CalculaMedia|SUM3|S1|S4|d1|O~0_combout\;
\CalculaMedia|SUM2|S2|S1|s2|ALT_INV__~0_combout\ <= NOT \CalculaMedia|SUM2|S2|S1|s2|_~0_combout\;
\CalculaMedia|SUM1|S2|S1|s2|ALT_INV__~0_combout\ <= NOT \CalculaMedia|SUM1|S2|S1|s2|_~0_combout\;
\CalculaMedia|ConverteBCD|ALT_INV_state.start~q\ <= NOT \CalculaMedia|ConverteBCD|state.start~q\;
\CalculaMedia|ConverteBCD|ALT_INV_Selector19~0_combout\ <= NOT \CalculaMedia|ConverteBCD|Selector19~0_combout\;
\CalculaMedia|ConverteBCD|ALT_INV_Selector23~0_combout\ <= NOT \CalculaMedia|ConverteBCD|Selector23~0_combout\;
\CalculaMedia|ConverteBCD|ALT_INV_Selector27~0_combout\ <= NOT \CalculaMedia|ConverteBCD|Selector27~0_combout\;
\CalculaMedia|ConverteBCD|ALT_INV_binary[2]~0_combout\ <= NOT \CalculaMedia|ConverteBCD|binary[2]~0_combout\;
\CalculaMedia|ConverteBCD|ALT_INV_Selector1~0_combout\ <= NOT \CalculaMedia|ConverteBCD|Selector1~0_combout\;
\CalculaMedia|ConverteBCD|ALT_INV_state.shift~q\ <= NOT \CalculaMedia|ConverteBCD|state.shift~q\;
\CalculaMedia|ConverteBCD|ALT_INV_shift_counter\(0) <= NOT \CalculaMedia|ConverteBCD|shift_counter\(0);
\CalculaMedia|ConverteBCD|ALT_INV_shift_counter\(1) <= NOT \CalculaMedia|ConverteBCD|shift_counter\(1);
\CalculaMedia|ConverteBCD|ALT_INV_shift_counter\(2) <= NOT \CalculaMedia|ConverteBCD|shift_counter\(2);
\CalculaMedia|ConverteBCD|ALT_INV_shift_counter\(3) <= NOT \CalculaMedia|ConverteBCD|shift_counter\(3);
\controlador|ALT_INV_Selector6~0_combout\ <= NOT \controlador|Selector6~0_combout\;
\CalculaMedia|ConverteBCD|ALT_INV_bcds\(15) <= NOT \CalculaMedia|ConverteBCD|bcds\(15);
\CalculaMedia|ConverteBCD|ALT_INV_bcds\(14) <= NOT \CalculaMedia|ConverteBCD|bcds\(14);
\CalculaMedia|ConverteBCD|ALT_INV_bcds\(13) <= NOT \CalculaMedia|ConverteBCD|bcds\(13);
\CalculaMedia|ConverteBCD|ALT_INV_bcds\(12) <= NOT \CalculaMedia|ConverteBCD|bcds\(12);
\CalculaMedia|ConverteBCD|ALT_INV_bcds\(11) <= NOT \CalculaMedia|ConverteBCD|bcds\(11);
\CalculaMedia|ConverteBCD|ALT_INV_bcds\(10) <= NOT \CalculaMedia|ConverteBCD|bcds\(10);
\CalculaMedia|ConverteBCD|ALT_INV_bcds\(9) <= NOT \CalculaMedia|ConverteBCD|bcds\(9);
\CalculaMedia|ConverteBCD|ALT_INV_bcds\(8) <= NOT \CalculaMedia|ConverteBCD|bcds\(8);
\CalculaMedia|ConverteBCD|ALT_INV_bcds\(7) <= NOT \CalculaMedia|ConverteBCD|bcds\(7);
\CalculaMedia|ConverteBCD|ALT_INV_bcds\(6) <= NOT \CalculaMedia|ConverteBCD|bcds\(6);
\CalculaMedia|ConverteBCD|ALT_INV_bcds\(5) <= NOT \CalculaMedia|ConverteBCD|bcds\(5);
\CalculaMedia|ConverteBCD|ALT_INV_bcds\(4) <= NOT \CalculaMedia|ConverteBCD|bcds\(4);
\CalculaMedia|ConverteBCD|ALT_INV_bcds\(3) <= NOT \CalculaMedia|ConverteBCD|bcds\(3);
\CalculaMedia|ConverteBCD|ALT_INV_bcds\(2) <= NOT \CalculaMedia|ConverteBCD|bcds\(2);
\CalculaMedia|ConverteBCD|ALT_INV_bcds\(1) <= NOT \CalculaMedia|ConverteBCD|bcds\(1);
\CalculaMedia|ConverteBCD|ALT_INV_state.done~q\ <= NOT \CalculaMedia|ConverteBCD|state.done~q\;
\CalculaMedia|ConverteBCD|ALT_INV_bcds\(0) <= NOT \CalculaMedia|ConverteBCD|bcds\(0);
\controlador|ALT_INV_WideOr6~combout\ <= NOT \controlador|WideOr6~combout\;
\controlador|ALT_INV_Eatual.Rodada4~q\ <= NOT \controlador|Eatual.Rodada4~q\;
\controlador|ALT_INV_WideOr7~combout\ <= NOT \controlador|WideOr7~combout\;
\controlador|ALT_INV_Eatual.Rodada2~q\ <= NOT \controlador|Eatual.Rodada2~q\;
\controlador|ALT_INV_WideOr8~combout\ <= NOT \controlador|WideOr8~combout\;
\controlador|ALT_INV_Eatual.Rodada3~q\ <= NOT \controlador|Eatual.Rodada3~q\;
\controlador|ALT_INV_Eatual.Rodada1~q\ <= NOT \controlador|Eatual.Rodada1~q\;
\controlador|ALT_INV_WideOr6~0_combout\ <= NOT \controlador|WideOr6~0_combout\;
\controlador|ALT_INV_WideNor0~0_combout\ <= NOT \controlador|WideNor0~0_combout\;
\controlador|ALT_INV_Eatual.Perdeu~q\ <= NOT \controlador|Eatual.Perdeu~q\;
\controlador|ALT_INV_Eatual.CompletouJogada~q\ <= NOT \controlador|Eatual.CompletouJogada~q\;
\CalculaMedia|ConverteBCD|ALT_INV_bcds_out_reg\(15) <= NOT \CalculaMedia|ConverteBCD|bcds_out_reg\(15);
\CalculaMedia|ConverteBCD|ALT_INV_bcds_out_reg\(14) <= NOT \CalculaMedia|ConverteBCD|bcds_out_reg\(14);
\CalculaMedia|ConverteBCD|ALT_INV_bcds_out_reg\(13) <= NOT \CalculaMedia|ConverteBCD|bcds_out_reg\(13);
\CalculaMedia|ConverteBCD|ALT_INV_bcds_out_reg\(12) <= NOT \CalculaMedia|ConverteBCD|bcds_out_reg\(12);
\CalculaMedia|ConverteBCD|ALT_INV_bcds_out_reg\(11) <= NOT \CalculaMedia|ConverteBCD|bcds_out_reg\(11);
\CalculaMedia|ConverteBCD|ALT_INV_bcds_out_reg\(9) <= NOT \CalculaMedia|ConverteBCD|bcds_out_reg\(9);
\CalculaMedia|ConverteBCD|ALT_INV_bcds_out_reg\(8) <= NOT \CalculaMedia|ConverteBCD|bcds_out_reg\(8);
\CalculaMedia|ConverteBCD|ALT_INV_bcds_out_reg\(7) <= NOT \CalculaMedia|ConverteBCD|bcds_out_reg\(7);
\CalculaMedia|ConverteBCD|ALT_INV_bcds_out_reg\(5) <= NOT \CalculaMedia|ConverteBCD|bcds_out_reg\(5);
\CalculaMedia|ConverteBCD|ALT_INV_bcds_out_reg\(4) <= NOT \CalculaMedia|ConverteBCD|bcds_out_reg\(4);
\CalculaMedia|ConverteBCD|ALT_INV_bcds_out_reg\(3) <= NOT \CalculaMedia|ConverteBCD|bcds_out_reg\(3);
\controlador|ALT_INV_Eatual.Inicial~q\ <= NOT \controlador|Eatual.Inicial~q\;
\CalculaMedia|ConverteBCD|ALT_INV_bcds_out_reg\(0) <= NOT \CalculaMedia|ConverteBCD|bcds_out_reg\(0);
\CalculaMedia|ConverteBCD|ALT_INV_binary\(0) <= NOT \CalculaMedia|ConverteBCD|binary\(0);
\CalculaMedia|SUM1|S1|S1|s2|ALT_INV_S\(2) <= NOT \CalculaMedia|SUM1|S1|S1|s2|S\(2);
\CalculaMedia|SUM2|S1|S1|s2|ALT_INV_S\(2) <= NOT \CalculaMedia|SUM2|S1|S1|s2|S\(2);
\CalculaMedia|SUM1|S1|S1|s2|ALT_INV_S\(1) <= NOT \CalculaMedia|SUM1|S1|S1|s2|S\(1);
\CalculaMedia|SUM2|S1|S1|s2|ALT_INV_S\(1) <= NOT \CalculaMedia|SUM2|S1|S1|s2|S\(1);
\CalculaMedia|SUM1|S1|S1|s2|ALT_INV_S\(3) <= NOT \CalculaMedia|SUM1|S1|S1|s2|S\(3);
\CalculaMedia|SUM2|S1|S1|s2|ALT_INV_S\(3) <= NOT \CalculaMedia|SUM2|S1|S1|s2|S\(3);
\CalculaMedia|SUM2|S1|S1|s1|ALT_INV_S\(2) <= NOT \CalculaMedia|SUM2|S1|S1|s1|S\(2);
\CalculaMedia|SUM2|S1|S1|s1|ALT_INV_S\(1) <= NOT \CalculaMedia|SUM2|S1|S1|s1|S\(1);
\CalculaMedia|SUM2|S1|S1|s1|ALT_INV_S\(3) <= NOT \CalculaMedia|SUM2|S1|S1|s1|S\(3);
\CalculaMedia|SUM2|S1|S1|s1|ALT_INV_Cout~sumout\ <= NOT \CalculaMedia|SUM2|S1|S1|s1|Cout~sumout\;
\CalculaMedia|SUM1|S1|S1|s1|ALT_INV_S\(2) <= NOT \CalculaMedia|SUM1|S1|S1|s1|S\(2);
\CalculaMedia|SUM1|S1|S1|s1|ALT_INV_S\(1) <= NOT \CalculaMedia|SUM1|S1|S1|s1|S\(1);
\CalculaMedia|SUM1|S1|S1|s1|ALT_INV_S\(3) <= NOT \CalculaMedia|SUM1|S1|S1|s1|S\(3);
\CalculaMedia|SUM1|S1|S1|s1|ALT_INV_Cout~sumout\ <= NOT \CalculaMedia|SUM1|S1|S1|s1|Cout~sumout\;
\CalculaMedia|SUM3|S1|S1|s1|ALT_INV_S\(2) <= NOT \CalculaMedia|SUM3|S1|S1|s1|S\(2);
\CalculaMedia|SUM3|S1|S1|s1|ALT_INV_S\(1) <= NOT \CalculaMedia|SUM3|S1|S1|s1|S\(1);
\CalculaMedia|SUM3|S1|S1|s1|ALT_INV_S\(3) <= NOT \CalculaMedia|SUM3|S1|S1|s1|S\(3);
\CalculaMedia|SUM2|S1|S2|s1|ALT_INV_S\(0) <= NOT \CalculaMedia|SUM2|S1|S2|s1|S\(0);
\CalculaMedia|SUM3|S1|S1|s1|ALT_INV_Cout~sumout\ <= NOT \CalculaMedia|SUM3|S1|S1|s1|Cout~sumout\;
\CalculaMedia|SUM1|S1|S2|s1|ALT_INV_S\(0) <= NOT \CalculaMedia|SUM1|S1|S2|s1|S\(0);
\CalculaMedia|SUM1|S1|S2|s2|ALT_INV_S\(2) <= NOT \CalculaMedia|SUM1|S1|S2|s2|S\(2);
\CalculaMedia|SUM2|S1|S2|s2|ALT_INV_S\(2) <= NOT \CalculaMedia|SUM2|S1|S2|s2|S\(2);
\CalculaMedia|SUM2|S1|S2|s2|ALT_INV_S\(1) <= NOT \CalculaMedia|SUM2|S1|S2|s2|S\(1);
\CalculaMedia|SUM1|S1|S2|s2|ALT_INV_S\(1) <= NOT \CalculaMedia|SUM1|S1|S2|s2|S\(1);
\CalculaMedia|SUM1|S1|S2|s2|ALT_INV_S\(3) <= NOT \CalculaMedia|SUM1|S1|S2|s2|S\(3);
\CalculaMedia|SUM2|S1|S2|s2|ALT_INV_S\(3) <= NOT \CalculaMedia|SUM2|S1|S2|s2|S\(3);
\CalculaMedia|SUM2|S1|S2|s1|ALT_INV_S\(2) <= NOT \CalculaMedia|SUM2|S1|S2|s1|S\(2);
\CalculaMedia|SUM2|S1|S2|s1|ALT_INV_S\(1) <= NOT \CalculaMedia|SUM2|S1|S2|s1|S\(1);
\CalculaMedia|SUM2|S1|S2|s1|ALT_INV_S\(3) <= NOT \CalculaMedia|SUM2|S1|S2|s1|S\(3);
\CalculaMedia|SUM2|S1|S2|s1|ALT_INV_Cout~sumout\ <= NOT \CalculaMedia|SUM2|S1|S2|s1|Cout~sumout\;
\CalculaMedia|SUM1|S1|S2|s1|ALT_INV_S\(2) <= NOT \CalculaMedia|SUM1|S1|S2|s1|S\(2);
\CalculaMedia|SUM1|S1|S2|s1|ALT_INV_S\(1) <= NOT \CalculaMedia|SUM1|S1|S2|s1|S\(1);
\CalculaMedia|SUM1|S1|S2|s1|ALT_INV_S\(3) <= NOT \CalculaMedia|SUM1|S1|S2|s1|S\(3);
\CalculaMedia|SUM1|S1|S2|s1|ALT_INV_Cout~sumout\ <= NOT \CalculaMedia|SUM1|S1|S2|s1|Cout~sumout\;
\CalculaMedia|SUM3|S1|S2|s2|ALT_INV_S\(3) <= NOT \CalculaMedia|SUM3|S1|S2|s2|S\(3);
\CalculaMedia|SUM3|S1|S2|s2|ALT_INV_S\(2) <= NOT \CalculaMedia|SUM3|S1|S2|s2|S\(2);
\CalculaMedia|SUM3|S1|S1|s2|ALT_INV_S\(3) <= NOT \CalculaMedia|SUM3|S1|S1|s2|S\(3);
\CalculaMedia|SUM3|S1|S1|s2|ALT_INV_S\(2) <= NOT \CalculaMedia|SUM3|S1|S1|s2|S\(2);
\CalculaMedia|SUM3|S1|S2|s2|ALT_INV_S\(1) <= NOT \CalculaMedia|SUM3|S1|S2|s2|S\(1);
\CalculaMedia|SUM3|S1|S1|s2|ALT_INV_S\(1) <= NOT \CalculaMedia|SUM3|S1|S1|s2|S\(1);
\CalculaMedia|SUM3|S1|S2|s1|ALT_INV_S\(0) <= NOT \CalculaMedia|SUM3|S1|S2|s1|S\(0);
\CalculaMedia|SUM1|S1|S1|s1|ALT_INV_S\(0) <= NOT \CalculaMedia|SUM1|S1|S1|s1|S\(0);
\CalculaMedia|SUM2|S1|S1|s1|ALT_INV_S\(0) <= NOT \CalculaMedia|SUM2|S1|S1|s1|S\(0);
\CalculaMedia|SUM3|S1|S2|s1|ALT_INV_S\(2) <= NOT \CalculaMedia|SUM3|S1|S2|s1|S\(2);
\CalculaMedia|SUM3|S1|S2|s1|ALT_INV_S\(1) <= NOT \CalculaMedia|SUM3|S1|S2|s1|S\(1);
\CalculaMedia|SUM3|S1|S2|s1|ALT_INV_S\(3) <= NOT \CalculaMedia|SUM3|S1|S2|s1|S\(3);
\CalculaMedia|SUM2|S1|S3|s1|ALT_INV_S\(0) <= NOT \CalculaMedia|SUM2|S1|S3|s1|S\(0);
\CalculaMedia|SUM3|S1|S2|s1|ALT_INV_Cout~sumout\ <= NOT \CalculaMedia|SUM3|S1|S2|s1|Cout~sumout\;
\CalculaMedia|SUM1|S1|S3|s1|ALT_INV_S\(0) <= NOT \CalculaMedia|SUM1|S1|S3|s1|S\(0);
\CalculaMedia|SUM1|S1|S3|s2|ALT_INV_S\(2) <= NOT \CalculaMedia|SUM1|S1|S3|s2|S\(2);
\CalculaMedia|SUM2|S1|S3|s2|ALT_INV_S\(2) <= NOT \CalculaMedia|SUM2|S1|S3|s2|S\(2);
\CalculaMedia|SUM2|S1|S3|s2|ALT_INV_S\(1) <= NOT \CalculaMedia|SUM2|S1|S3|s2|S\(1);
\CalculaMedia|SUM1|S1|S3|s2|ALT_INV_S\(1) <= NOT \CalculaMedia|SUM1|S1|S3|s2|S\(1);
\CalculaMedia|SUM1|S1|S3|s2|ALT_INV_S\(3) <= NOT \CalculaMedia|SUM1|S1|S3|s2|S\(3);
\CalculaMedia|SUM2|S1|S3|s2|ALT_INV_S\(3) <= NOT \CalculaMedia|SUM2|S1|S3|s2|S\(3);
\CalculaMedia|SUM2|S1|S3|s1|ALT_INV_S\(2) <= NOT \CalculaMedia|SUM2|S1|S3|s1|S\(2);
\CalculaMedia|SUM2|S1|S3|s1|ALT_INV_S\(1) <= NOT \CalculaMedia|SUM2|S1|S3|s1|S\(1);
\CalculaMedia|SUM2|S1|S3|s1|ALT_INV_S\(3) <= NOT \CalculaMedia|SUM2|S1|S3|s1|S\(3);
\CalculaMedia|SUM2|S1|S3|s1|ALT_INV_Cout~sumout\ <= NOT \CalculaMedia|SUM2|S1|S3|s1|Cout~sumout\;
\CalculaMedia|SUM1|S1|S3|s1|ALT_INV_S\(2) <= NOT \CalculaMedia|SUM1|S1|S3|s1|S\(2);
\CalculaMedia|SUM1|S1|S3|s1|ALT_INV_S\(1) <= NOT \CalculaMedia|SUM1|S1|S3|s1|S\(1);
\CalculaMedia|SUM1|S1|S3|s1|ALT_INV_S\(3) <= NOT \CalculaMedia|SUM1|S1|S3|s1|S\(3);
\CalculaMedia|SUM1|S1|S3|s1|ALT_INV_Cout~sumout\ <= NOT \CalculaMedia|SUM1|S1|S3|s1|Cout~sumout\;
\CalculaMedia|SUM3|S1|S3|s1|ALT_INV_S\(2) <= NOT \CalculaMedia|SUM3|S1|S3|s1|S\(2);
\CalculaMedia|SUM3|S1|S3|s1|ALT_INV_S\(1) <= NOT \CalculaMedia|SUM3|S1|S3|s1|S\(1);
\CalculaMedia|SUM3|S1|S3|s1|ALT_INV_S\(3) <= NOT \CalculaMedia|SUM3|S1|S3|s1|S\(3);
\CalculaMedia|SUM3|S1|S3|s1|ALT_INV_Cout~sumout\ <= NOT \CalculaMedia|SUM3|S1|S3|s1|Cout~sumout\;
\CalculaMedia|SUM1|S1|S4|s2|ALT_INV_S\(2) <= NOT \CalculaMedia|SUM1|S1|S4|s2|S\(2);
\CalculaMedia|SUM2|S1|S4|s2|ALT_INV_S\(2) <= NOT \CalculaMedia|SUM2|S1|S4|s2|S\(2);
\CalculaMedia|SUM2|S1|S4|s2|ALT_INV_S\(1) <= NOT \CalculaMedia|SUM2|S1|S4|s2|S\(1);
\CalculaMedia|SUM1|S1|S4|s2|ALT_INV_S\(1) <= NOT \CalculaMedia|SUM1|S1|S4|s2|S\(1);
\CalculaMedia|SUM1|S1|S4|s2|ALT_INV_S\(3) <= NOT \CalculaMedia|SUM1|S1|S4|s2|S\(3);
\CalculaMedia|SUM2|S1|S4|s2|ALT_INV_S\(3) <= NOT \CalculaMedia|SUM2|S1|S4|s2|S\(3);
\CalculaMedia|SUM2|S1|S4|s1|ALT_INV_S\(0) <= NOT \CalculaMedia|SUM2|S1|S4|s1|S\(0);
\CalculaMedia|SUM1|S1|S4|s1|ALT_INV_S\(0) <= NOT \CalculaMedia|SUM1|S1|S4|s1|S\(0);
\CalculaMedia|SUM3|S1|S4|s1|ALT_INV_S\(2) <= NOT \CalculaMedia|SUM3|S1|S4|s1|S\(2);
\CalculaMedia|SUM3|S1|S4|s1|ALT_INV_S\(1) <= NOT \CalculaMedia|SUM3|S1|S4|s1|S\(1);
\CalculaMedia|SUM3|S1|S4|s1|ALT_INV_S\(3) <= NOT \CalculaMedia|SUM3|S1|S4|s1|S\(3);
\CalculaMedia|SUM2|S1|S4|s1|ALT_INV_Cout~sumout\ <= NOT \CalculaMedia|SUM2|S1|S4|s1|Cout~sumout\;
\CalculaMedia|SUM2|S1|S4|s1|ALT_INV_S\(3) <= NOT \CalculaMedia|SUM2|S1|S4|s1|S\(3);
\CalculaMedia|SUM2|S1|S4|s1|ALT_INV_S\(1) <= NOT \CalculaMedia|SUM2|S1|S4|s1|S\(1);
\CalculaMedia|SUM2|S1|S4|s1|ALT_INV_S\(2) <= NOT \CalculaMedia|SUM2|S1|S4|s1|S\(2);
\CalculaMedia|SUM3|S1|S4|s1|ALT_INV_Cout~sumout\ <= NOT \CalculaMedia|SUM3|S1|S4|s1|Cout~sumout\;
\CalculaMedia|SUM1|S1|S4|s1|ALT_INV_Cout~sumout\ <= NOT \CalculaMedia|SUM1|S1|S4|s1|Cout~sumout\;
\CalculaMedia|SUM1|S1|S4|s1|ALT_INV_S\(3) <= NOT \CalculaMedia|SUM1|S1|S4|s1|S\(3);
\CalculaMedia|SUM1|S1|S4|s1|ALT_INV_S\(1) <= NOT \CalculaMedia|SUM1|S1|S4|s1|S\(1);
\CalculaMedia|SUM1|S1|S4|s1|ALT_INV_S\(2) <= NOT \CalculaMedia|SUM1|S1|S4|s1|S\(2);
\CalculaMedia|SUM3|S2|S1|s1|ALT_INV_Cout~sumout\ <= NOT \CalculaMedia|SUM3|S2|S1|s1|Cout~sumout\;
\CalculaMedia|SUM3|S2|S1|s1|ALT_INV_S\(3) <= NOT \CalculaMedia|SUM3|S2|S1|s1|S\(3);
\CalculaMedia|SUM3|S2|S1|s1|ALT_INV_S\(1) <= NOT \CalculaMedia|SUM3|S2|S1|s1|S\(1);
\CalculaMedia|SUM3|S2|S1|s1|ALT_INV_S\(2) <= NOT \CalculaMedia|SUM3|S2|S1|s1|S\(2);
\CalculaMedia|Converte|ALT_INV_bin_out\(15) <= NOT \CalculaMedia|Converte|bin_out\(15);
\CalculaMedia|Converte|ALT_INV_bin_out\(14) <= NOT \CalculaMedia|Converte|bin_out\(14);
\CalculaMedia|Converte|ALT_INV_bin_out\(13) <= NOT \CalculaMedia|Converte|bin_out\(13);
\CalculaMedia|Converte|ALT_INV_bin_out\(12) <= NOT \CalculaMedia|Converte|bin_out\(12);
\CalculaMedia|Converte|ALT_INV_bin_out\(11) <= NOT \CalculaMedia|Converte|bin_out\(11);
\CalculaMedia|Converte|ALT_INV_bin_out\(10) <= NOT \CalculaMedia|Converte|bin_out\(10);
\CalculaMedia|Converte|ALT_INV_bin_out\(9) <= NOT \CalculaMedia|Converte|bin_out\(9);
\CalculaMedia|Converte|ALT_INV_bin_out\(8) <= NOT \CalculaMedia|Converte|bin_out\(8);
\CalculaMedia|Converte|ALT_INV_bin_out\(7) <= NOT \CalculaMedia|Converte|bin_out\(7);
\CalculaMedia|Converte|ALT_INV_bin_out\(6) <= NOT \CalculaMedia|Converte|bin_out\(6);
\CalculaMedia|Converte|ALT_INV_bin_out\(5) <= NOT \CalculaMedia|Converte|bin_out\(5);
\CalculaMedia|Converte|ALT_INV_bin_out\(4) <= NOT \CalculaMedia|Converte|bin_out\(4);
\CalculaMedia|Converte|ALT_INV_bin_out\(3) <= NOT \CalculaMedia|Converte|bin_out\(3);
\CalculaMedia|ConverteBCD|ALT_INV_binary\(13) <= NOT \CalculaMedia|ConverteBCD|binary\(13);
\RegistraMedia|ALT_INV_IQ\(10) <= NOT \RegistraMedia|IQ\(10);
\RegistraMedia|ALT_INV_IQ\(9) <= NOT \RegistraMedia|IQ\(9);
\RegistraMedia|ALT_INV_IQ\(6) <= NOT \RegistraMedia|IQ\(6);
\RegistraMedia|ALT_INV_IQ\(5) <= NOT \RegistraMedia|IQ\(5);
\RegistraMedia|ALT_INV_IQ\(1) <= NOT \RegistraMedia|IQ\(1);

-- Location: IOOBUF_X68_Y0_N19
\media[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegistraMedia|Q\(0),
	devoe => ww_devoe,
	o => \ww_media~9630784\(0));

-- Location: IOOBUF_X56_Y81_N19
\media[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegistraMedia|Q\(1),
	devoe => ww_devoe,
	o => \ww_media~9630784\(1));

-- Location: IOOBUF_X70_Y0_N19
\media[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegistraMedia|Q\(2),
	devoe => ww_devoe,
	o => \ww_media~9630784\(2));

-- Location: IOOBUF_X62_Y0_N19
\media[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegistraMedia|Q\(3),
	devoe => ww_devoe,
	o => \ww_media~9630784\(3));

-- Location: IOOBUF_X56_Y0_N36
\media[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegistraMedia|Q\(4),
	devoe => ww_devoe,
	o => \ww_media~9630784\(4));

-- Location: IOOBUF_X68_Y0_N36
\media[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegistraMedia|Q\(5),
	devoe => ww_devoe,
	o => \ww_media~9630784\(5));

-- Location: IOOBUF_X62_Y0_N53
\media[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegistraMedia|Q\(6),
	devoe => ww_devoe,
	o => \ww_media~9630784\(6));

-- Location: IOOBUF_X68_Y0_N53
\media[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegistraMedia|Q\(7),
	devoe => ww_devoe,
	o => \ww_media~9630784\(7));

-- Location: IOOBUF_X68_Y0_N2
\media[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegistraMedia|Q\(8),
	devoe => ww_devoe,
	o => \ww_media~9630784\(8));

-- Location: IOOBUF_X89_Y6_N56
\media[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegistraMedia|Q\(9),
	devoe => ww_devoe,
	o => \ww_media~9630784\(9));

-- Location: IOOBUF_X66_Y0_N93
\media[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegistraMedia|Q\(10),
	devoe => ww_devoe,
	o => \ww_media~9630784\(10));

-- Location: IOOBUF_X64_Y0_N2
\media[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegistraMedia|Q\(11),
	devoe => ww_devoe,
	o => \ww_media~9630784\(11));

-- Location: IOOBUF_X54_Y0_N53
\media[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegistraMedia|Q\(12),
	devoe => ww_devoe,
	o => \ww_media~9630784\(12));

-- Location: IOOBUF_X56_Y0_N19
\media[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegistraMedia|Q\(13),
	devoe => ww_devoe,
	o => \ww_media~9630784\(13));

-- Location: IOOBUF_X56_Y0_N53
\media[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegistraMedia|Q\(14),
	devoe => ww_devoe,
	o => \ww_media~9630784\(14));

-- Location: IOOBUF_X66_Y0_N42
\media[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegistraMedia|Q\(15),
	devoe => ww_devoe,
	o => \ww_media~9630784\(15));

-- Location: IOOBUF_X64_Y0_N53
\depuraMedia[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CalculaMedia|ConverteBCD|bcds_out_reg\(0),
	devoe => ww_devoe,
	o => ww_depuraMedia(0));

-- Location: IOOBUF_X60_Y0_N53
\depuraMedia[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CalculaMedia|ConverteBCD|bcds_out_reg\(1),
	devoe => ww_devoe,
	o => ww_depuraMedia(1));

-- Location: IOOBUF_X60_Y0_N2
\depuraMedia[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CalculaMedia|ConverteBCD|bcds_out_reg\(2),
	devoe => ww_devoe,
	o => ww_depuraMedia(2));

-- Location: IOOBUF_X60_Y0_N36
\depuraMedia[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CalculaMedia|ConverteBCD|bcds_out_reg\(3),
	devoe => ww_devoe,
	o => ww_depuraMedia(3));

-- Location: IOOBUF_X64_Y0_N19
\depuraMedia[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CalculaMedia|ConverteBCD|bcds_out_reg\(4),
	devoe => ww_devoe,
	o => ww_depuraMedia(4));

-- Location: IOOBUF_X66_Y0_N59
\depuraMedia[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CalculaMedia|ConverteBCD|bcds_out_reg\(5),
	devoe => ww_devoe,
	o => ww_depuraMedia(5));

-- Location: IOOBUF_X60_Y0_N19
\depuraMedia[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CalculaMedia|ConverteBCD|bcds_out_reg\(6),
	devoe => ww_devoe,
	o => ww_depuraMedia(6));

-- Location: IOOBUF_X54_Y0_N19
\depuraMedia[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CalculaMedia|ConverteBCD|bcds_out_reg\(7),
	devoe => ww_devoe,
	o => ww_depuraMedia(7));

-- Location: IOOBUF_X58_Y0_N42
\depuraMedia[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CalculaMedia|ConverteBCD|bcds_out_reg\(8),
	devoe => ww_devoe,
	o => ww_depuraMedia(8));

-- Location: IOOBUF_X64_Y0_N36
\depuraMedia[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CalculaMedia|ConverteBCD|bcds_out_reg\(9),
	devoe => ww_devoe,
	o => ww_depuraMedia(9));

-- Location: IOOBUF_X58_Y0_N93
\depuraMedia[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CalculaMedia|ConverteBCD|bcds_out_reg\(10),
	devoe => ww_devoe,
	o => ww_depuraMedia(10));

-- Location: IOOBUF_X66_Y0_N76
\depuraMedia[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CalculaMedia|ConverteBCD|bcds_out_reg\(11),
	devoe => ww_devoe,
	o => ww_depuraMedia(11));

-- Location: IOOBUF_X62_Y0_N2
\depuraMedia[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CalculaMedia|ConverteBCD|bcds_out_reg\(12),
	devoe => ww_devoe,
	o => ww_depuraMedia(12));

-- Location: IOOBUF_X62_Y0_N36
\depuraMedia[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CalculaMedia|ConverteBCD|bcds_out_reg\(13),
	devoe => ww_devoe,
	o => ww_depuraMedia(13));

-- Location: IOOBUF_X56_Y0_N2
\depuraMedia[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CalculaMedia|ConverteBCD|bcds_out_reg\(14),
	devoe => ww_devoe,
	o => ww_depuraMedia(14));

-- Location: IOOBUF_X58_Y0_N59
\depuraMedia[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CalculaMedia|ConverteBCD|bcds_out_reg\(15),
	devoe => ww_devoe,
	o => ww_depuraMedia(15));

-- Location: IOOBUF_X34_Y0_N76
\rodada~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador|ALT_INV_WideNor0~0_combout\,
	devoe => ww_devoe,
	o => ww_rodada);

-- Location: IOOBUF_X54_Y0_N36
\perde~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador|Eatual.Perdeu~q\,
	devoe => ww_devoe,
	o => ww_perde);

-- Location: IOOBUF_X58_Y0_N76
\fimJogada~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => ww_fimJogada);

-- Location: IOOBUF_X34_Y0_N42
\estadoJogada[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador|WideOr8~combout\,
	devoe => ww_devoe,
	o => ww_estadoJogada(0));

-- Location: IOOBUF_X50_Y0_N59
\estadoJogada[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador|WideOr7~combout\,
	devoe => ww_devoe,
	o => ww_estadoJogada(1));

-- Location: IOOBUF_X40_Y0_N53
\estadoJogada[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador|WideOr6~combout\,
	devoe => ww_devoe,
	o => ww_estadoJogada(2));

-- Location: IOOBUF_X74_Y81_N93
\estadoJogada[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_estadoJogada(3));

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

-- Location: FF_X52_Y10_N59
\CalculaMedia|ConverteBCD|shift_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|Selector33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|shift_counter\(2));

-- Location: FF_X52_Y10_N16
\CalculaMedia|ConverteBCD|shift_counter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|Selector34~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|shift_counter[1]~DUPLICATE_q\);

-- Location: MLABCELL_X52_Y10_N57
\CalculaMedia|ConverteBCD|Selector33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|Selector33~0_combout\ = ( \CalculaMedia|ConverteBCD|shift_counter\(2) & ( \CalculaMedia|ConverteBCD|shift_counter[1]~DUPLICATE_q\ & ( ((\CalculaMedia|ConverteBCD|state.shift~q\ & !\CalculaMedia|ConverteBCD|shift_counter\(0))) # 
-- (\CalculaMedia|ConverteBCD|state.done~q\) ) ) ) # ( !\CalculaMedia|ConverteBCD|shift_counter\(2) & ( \CalculaMedia|ConverteBCD|shift_counter[1]~DUPLICATE_q\ & ( (\CalculaMedia|ConverteBCD|state.shift~q\ & \CalculaMedia|ConverteBCD|shift_counter\(0)) ) ) ) 
-- # ( \CalculaMedia|ConverteBCD|shift_counter\(2) & ( !\CalculaMedia|ConverteBCD|shift_counter[1]~DUPLICATE_q\ & ( (\CalculaMedia|ConverteBCD|state.done~q\) # (\CalculaMedia|ConverteBCD|state.shift~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111110011111100000000001100110011111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CalculaMedia|ConverteBCD|ALT_INV_state.shift~q\,
	datac => \CalculaMedia|ConverteBCD|ALT_INV_state.done~q\,
	datad => \CalculaMedia|ConverteBCD|ALT_INV_shift_counter\(0),
	datae => \CalculaMedia|ConverteBCD|ALT_INV_shift_counter\(2),
	dataf => \CalculaMedia|ConverteBCD|ALT_INV_shift_counter[1]~DUPLICATE_q\,
	combout => \CalculaMedia|ConverteBCD|Selector33~0_combout\);

-- Location: FF_X52_Y10_N58
\CalculaMedia|ConverteBCD|shift_counter[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|Selector33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|shift_counter[2]~DUPLICATE_q\);

-- Location: FF_X52_Y10_N29
\CalculaMedia|ConverteBCD|shift_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|shift_counter\(3));

-- Location: MLABCELL_X52_Y10_N27
\CalculaMedia|ConverteBCD|Selector32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|Selector32~0_combout\ = ( \CalculaMedia|ConverteBCD|shift_counter\(3) & ( \CalculaMedia|ConverteBCD|shift_counter[2]~DUPLICATE_q\ & ( ((\CalculaMedia|ConverteBCD|state.shift~q\ & ((!\CalculaMedia|ConverteBCD|shift_counter\(0)) # 
-- (!\CalculaMedia|ConverteBCD|shift_counter\(1))))) # (\CalculaMedia|ConverteBCD|state.done~q\) ) ) ) # ( !\CalculaMedia|ConverteBCD|shift_counter\(3) & ( \CalculaMedia|ConverteBCD|shift_counter[2]~DUPLICATE_q\ & ( 
-- (\CalculaMedia|ConverteBCD|shift_counter\(0) & (\CalculaMedia|ConverteBCD|shift_counter\(1) & \CalculaMedia|ConverteBCD|state.shift~q\)) ) ) ) # ( \CalculaMedia|ConverteBCD|shift_counter\(3) & ( !\CalculaMedia|ConverteBCD|shift_counter[2]~DUPLICATE_q\ & ( 
-- (\CalculaMedia|ConverteBCD|state.shift~q\) # (\CalculaMedia|ConverteBCD|state.done~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111111100000000000100010000111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|ConverteBCD|ALT_INV_shift_counter\(0),
	datab => \CalculaMedia|ConverteBCD|ALT_INV_shift_counter\(1),
	datac => \CalculaMedia|ConverteBCD|ALT_INV_state.done~q\,
	datad => \CalculaMedia|ConverteBCD|ALT_INV_state.shift~q\,
	datae => \CalculaMedia|ConverteBCD|ALT_INV_shift_counter\(3),
	dataf => \CalculaMedia|ConverteBCD|ALT_INV_shift_counter[2]~DUPLICATE_q\,
	combout => \CalculaMedia|ConverteBCD|Selector32~0_combout\);

-- Location: FF_X52_Y10_N28
\CalculaMedia|ConverteBCD|shift_counter[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|shift_counter[3]~DUPLICATE_q\);

-- Location: LABCELL_X53_Y4_N27
\CalculaMedia|ConverteBCD|state.start~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|state.start~0_combout\ = ( !\CalculaMedia|ConverteBCD|state.done~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CalculaMedia|ConverteBCD|ALT_INV_state.done~q\,
	combout => \CalculaMedia|ConverteBCD|state.start~0_combout\);

-- Location: FF_X53_Y4_N28
\CalculaMedia|ConverteBCD|state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|state.start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|state.start~q\);

-- Location: LABCELL_X53_Y4_N45
\CalculaMedia|ConverteBCD|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|Selector1~1_combout\ = ( \CalculaMedia|ConverteBCD|state.shift~q\ & ( \CalculaMedia|ConverteBCD|state.start~q\ & ( (!\CalculaMedia|ConverteBCD|shift_counter\(1)) # ((!\CalculaMedia|ConverteBCD|shift_counter[2]~DUPLICATE_q\) # 
-- ((!\CalculaMedia|ConverteBCD|shift_counter[3]~DUPLICATE_q\) # (\CalculaMedia|ConverteBCD|shift_counter\(0)))) ) ) ) # ( \CalculaMedia|ConverteBCD|state.shift~q\ & ( !\CalculaMedia|ConverteBCD|state.start~q\ ) ) # ( 
-- !\CalculaMedia|ConverteBCD|state.shift~q\ & ( !\CalculaMedia|ConverteBCD|state.start~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000001111111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|ConverteBCD|ALT_INV_shift_counter\(1),
	datab => \CalculaMedia|ConverteBCD|ALT_INV_shift_counter[2]~DUPLICATE_q\,
	datac => \CalculaMedia|ConverteBCD|ALT_INV_shift_counter\(0),
	datad => \CalculaMedia|ConverteBCD|ALT_INV_shift_counter[3]~DUPLICATE_q\,
	datae => \CalculaMedia|ConverteBCD|ALT_INV_state.shift~q\,
	dataf => \CalculaMedia|ConverteBCD|ALT_INV_state.start~q\,
	combout => \CalculaMedia|ConverteBCD|Selector1~1_combout\);

-- Location: FF_X53_Y4_N47
\CalculaMedia|ConverteBCD|state.shift\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|state.shift~q\);

-- Location: MLABCELL_X52_Y10_N15
\CalculaMedia|ConverteBCD|Selector34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|Selector34~0_combout\ = ( \CalculaMedia|ConverteBCD|shift_counter\(1) & ( ((\CalculaMedia|ConverteBCD|state.shift~q\ & !\CalculaMedia|ConverteBCD|shift_counter\(0))) # (\CalculaMedia|ConverteBCD|state.done~q\) ) ) # ( 
-- !\CalculaMedia|ConverteBCD|shift_counter\(1) & ( (\CalculaMedia|ConverteBCD|state.shift~q\ & \CalculaMedia|ConverteBCD|shift_counter\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001111110011001100000000000011110011111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CalculaMedia|ConverteBCD|ALT_INV_state.done~q\,
	datac => \CalculaMedia|ConverteBCD|ALT_INV_state.shift~q\,
	datad => \CalculaMedia|ConverteBCD|ALT_INV_shift_counter\(0),
	datae => \CalculaMedia|ConverteBCD|ALT_INV_shift_counter\(1),
	combout => \CalculaMedia|ConverteBCD|Selector34~0_combout\);

-- Location: FF_X52_Y10_N17
\CalculaMedia|ConverteBCD|shift_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|Selector34~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|shift_counter\(1));

-- Location: MLABCELL_X52_Y2_N33
\CalculaMedia|ConverteBCD|Selector35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|Selector35~0_combout\ = ( \CalculaMedia|ConverteBCD|shift_counter\(0) & ( \CalculaMedia|ConverteBCD|state.shift~q\ & ( \CalculaMedia|ConverteBCD|state.done~q\ ) ) ) # ( !\CalculaMedia|ConverteBCD|shift_counter\(0) & ( 
-- \CalculaMedia|ConverteBCD|state.shift~q\ & ( (!\CalculaMedia|ConverteBCD|shift_counter\(1)) # ((!\CalculaMedia|ConverteBCD|shift_counter[2]~DUPLICATE_q\) # (!\CalculaMedia|ConverteBCD|shift_counter[3]~DUPLICATE_q\)) ) ) ) # ( 
-- \CalculaMedia|ConverteBCD|shift_counter\(0) & ( !\CalculaMedia|ConverteBCD|state.shift~q\ & ( \CalculaMedia|ConverteBCD|state.done~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111110100011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|ConverteBCD|ALT_INV_shift_counter\(1),
	datab => \CalculaMedia|ConverteBCD|ALT_INV_state.done~q\,
	datac => \CalculaMedia|ConverteBCD|ALT_INV_shift_counter[2]~DUPLICATE_q\,
	datad => \CalculaMedia|ConverteBCD|ALT_INV_shift_counter[3]~DUPLICATE_q\,
	datae => \CalculaMedia|ConverteBCD|ALT_INV_shift_counter\(0),
	dataf => \CalculaMedia|ConverteBCD|ALT_INV_state.shift~q\,
	combout => \CalculaMedia|ConverteBCD|Selector35~0_combout\);

-- Location: FF_X52_Y2_N34
\CalculaMedia|ConverteBCD|shift_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|shift_counter\(0));

-- Location: MLABCELL_X52_Y10_N45
\CalculaMedia|ConverteBCD|state_next.done~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|state_next.done~0_combout\ = ( \CalculaMedia|ConverteBCD|shift_counter[1]~DUPLICATE_q\ & ( (!\CalculaMedia|ConverteBCD|shift_counter\(0) & (\CalculaMedia|ConverteBCD|state.shift~q\ & (\CalculaMedia|ConverteBCD|shift_counter\(2) & 
-- \CalculaMedia|ConverteBCD|shift_counter\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|ConverteBCD|ALT_INV_shift_counter\(0),
	datab => \CalculaMedia|ConverteBCD|ALT_INV_state.shift~q\,
	datac => \CalculaMedia|ConverteBCD|ALT_INV_shift_counter\(2),
	datad => \CalculaMedia|ConverteBCD|ALT_INV_shift_counter\(3),
	dataf => \CalculaMedia|ConverteBCD|ALT_INV_shift_counter[1]~DUPLICATE_q\,
	combout => \CalculaMedia|ConverteBCD|state_next.done~0_combout\);

-- Location: FF_X52_Y10_N47
\CalculaMedia|ConverteBCD|state.done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|state_next.done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|state.done~q\);

-- Location: LABCELL_X53_Y4_N21
\CalculaMedia|ConverteBCD|binary[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|binary[2]~0_combout\ = ( \CalculaMedia|ConverteBCD|shift_counter[2]~DUPLICATE_q\ & ( \CalculaMedia|ConverteBCD|shift_counter\(1) & ( (!\CalculaMedia|ConverteBCD|state.done~q\ & ((!\CalculaMedia|ConverteBCD|state.shift~q\) # 
-- ((!\CalculaMedia|ConverteBCD|shift_counter[3]~DUPLICATE_q\) # (\CalculaMedia|ConverteBCD|shift_counter\(0))))) ) ) ) # ( !\CalculaMedia|ConverteBCD|shift_counter[2]~DUPLICATE_q\ & ( \CalculaMedia|ConverteBCD|shift_counter\(1) & ( 
-- !\CalculaMedia|ConverteBCD|state.done~q\ ) ) ) # ( \CalculaMedia|ConverteBCD|shift_counter[2]~DUPLICATE_q\ & ( !\CalculaMedia|ConverteBCD|shift_counter\(1) & ( !\CalculaMedia|ConverteBCD|state.done~q\ ) ) ) # ( 
-- !\CalculaMedia|ConverteBCD|shift_counter[2]~DUPLICATE_q\ & ( !\CalculaMedia|ConverteBCD|shift_counter\(1) & ( !\CalculaMedia|ConverteBCD|state.done~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|ConverteBCD|ALT_INV_state.done~q\,
	datab => \CalculaMedia|ConverteBCD|ALT_INV_state.shift~q\,
	datac => \CalculaMedia|ConverteBCD|ALT_INV_shift_counter\(0),
	datad => \CalculaMedia|ConverteBCD|ALT_INV_shift_counter[3]~DUPLICATE_q\,
	datae => \CalculaMedia|ConverteBCD|ALT_INV_shift_counter[2]~DUPLICATE_q\,
	dataf => \CalculaMedia|ConverteBCD|ALT_INV_shift_counter\(1),
	combout => \CalculaMedia|ConverteBCD|binary[2]~0_combout\);

-- Location: MLABCELL_X52_Y2_N39
\CalculaMedia|ConverteBCD|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|Selector1~0_combout\ = ( \CalculaMedia|ConverteBCD|shift_counter[2]~DUPLICATE_q\ & ( \CalculaMedia|ConverteBCD|state.shift~q\ & ( (!\CalculaMedia|ConverteBCD|shift_counter\(1)) # 
-- ((!\CalculaMedia|ConverteBCD|shift_counter[3]~DUPLICATE_q\) # (\CalculaMedia|ConverteBCD|shift_counter\(0))) ) ) ) # ( !\CalculaMedia|ConverteBCD|shift_counter[2]~DUPLICATE_q\ & ( \CalculaMedia|ConverteBCD|state.shift~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|ConverteBCD|ALT_INV_shift_counter\(1),
	datac => \CalculaMedia|ConverteBCD|ALT_INV_shift_counter\(0),
	datad => \CalculaMedia|ConverteBCD|ALT_INV_shift_counter[3]~DUPLICATE_q\,
	datae => \CalculaMedia|ConverteBCD|ALT_INV_shift_counter[2]~DUPLICATE_q\,
	dataf => \CalculaMedia|ConverteBCD|ALT_INV_state.shift~q\,
	combout => \CalculaMedia|ConverteBCD|Selector1~0_combout\);

-- Location: FF_X56_Y2_N11
\CalculaMedia|ConverteBCD|bcds[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|Selector31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|bcds\(0));

-- Location: IOIBUF_X52_Y81_N52
\pulso[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pulso(15),
	o => \pulso[15]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\vacilou~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vacilou,
	o => \vacilou~input_o\);

-- Location: IOIBUF_X38_Y0_N52
\fimRodada~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fimRodada,
	o => \fimRodada~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\finalizaRodada~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_finalizaRodada,
	o => \finalizaRodada~input_o\);

-- Location: IOIBUF_X38_Y0_N18
\inicio~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inicio,
	o => \inicio~input_o\);

-- Location: LABCELL_X50_Y4_N15
\controlador|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controlador|Selector4~0_combout\ = ( \controlador|Eatual.Rodada3~q\ & ( (!\vacilou~input_o\ & (\fimRodada~input_o\ & \finalizaRodada~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_vacilou~input_o\,
	datab => \ALT_INV_fimRodada~input_o\,
	datac => \ALT_INV_finalizaRodada~input_o\,
	dataf => \controlador|ALT_INV_Eatual.Rodada3~q\,
	combout => \controlador|Selector4~0_combout\);

-- Location: IOIBUF_X38_Y0_N35
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LABCELL_X50_Y4_N36
\controlador|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \controlador|Selector1~1_combout\ = ( \finalizaRodada~input_o\ & ( (\fimRodada~input_o\) # (\vacilou~input_o\) ) ) # ( !\finalizaRodada~input_o\ & ( \vacilou~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_vacilou~input_o\,
	datad => \ALT_INV_fimRodada~input_o\,
	dataf => \ALT_INV_finalizaRodada~input_o\,
	combout => \controlador|Selector1~1_combout\);

-- Location: FF_X50_Y4_N17
\controlador|Eatual.Rodada4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \controlador|Selector4~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \controlador|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|Eatual.Rodada4~q\);

-- Location: LABCELL_X50_Y4_N39
\controlador|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controlador|Selector6~0_combout\ = ( !\controlador|Eatual.Rodada3~q\ & ( (!\controlador|Eatual.Rodada1~q\ & (!\controlador|Eatual.Rodada2~q\ & !\controlador|Eatual.Rodada4~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|ALT_INV_Eatual.Rodada1~q\,
	datab => \controlador|ALT_INV_Eatual.Rodada2~q\,
	datac => \controlador|ALT_INV_Eatual.Rodada4~q\,
	dataf => \controlador|ALT_INV_Eatual.Rodada3~q\,
	combout => \controlador|Selector6~0_combout\);

-- Location: LABCELL_X50_Y4_N27
\controlador|Selector6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \controlador|Selector6~1_combout\ = ( \vacilou~input_o\ & ( (!\controlador|Selector6~0_combout\) # ((!\finalizaRodada~input_o\ & \controlador|Eatual.Perdeu~q\)) ) ) # ( !\vacilou~input_o\ & ( (!\finalizaRodada~input_o\ & \controlador|Eatual.Perdeu~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001011110010111100101111001011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_finalizaRodada~input_o\,
	datab => \controlador|ALT_INV_Eatual.Perdeu~q\,
	datac => \controlador|ALT_INV_Selector6~0_combout\,
	dataf => \ALT_INV_vacilou~input_o\,
	combout => \controlador|Selector6~1_combout\);

-- Location: FF_X50_Y4_N41
\controlador|Eatual.Perdeu\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \controlador|Selector6~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|Eatual.Perdeu~q\);

-- Location: LABCELL_X50_Y4_N48
\controlador|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controlador|Selector5~0_combout\ = ( \controlador|Eatual.CompletouJogada~q\ & ( (!\finalizaRodada~input_o\) # ((!\vacilou~input_o\ & (\controlador|Eatual.Rodada4~q\ & \fimRodada~input_o\))) ) ) # ( !\controlador|Eatual.CompletouJogada~q\ & ( 
-- (!\vacilou~input_o\ & (\controlador|Eatual.Rodada4~q\ & (\finalizaRodada~input_o\ & \fimRodada~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001011110000111100101111000011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_vacilou~input_o\,
	datab => \controlador|ALT_INV_Eatual.Rodada4~q\,
	datac => \ALT_INV_finalizaRodada~input_o\,
	datad => \ALT_INV_fimRodada~input_o\,
	dataf => \controlador|ALT_INV_Eatual.CompletouJogada~q\,
	combout => \controlador|Selector5~0_combout\);

-- Location: FF_X50_Y4_N29
\controlador|Eatual.CompletouJogada\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \controlador|Selector5~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|Eatual.CompletouJogada~q\);

-- Location: LABCELL_X50_Y4_N24
\controlador|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controlador|Selector0~0_combout\ = ( \controlador|Eatual.CompletouJogada~q\ & ( (!\finalizaRodada~input_o\ & ((\controlador|Eatual.Inicial~q\) # (\inicio~input_o\))) ) ) # ( !\controlador|Eatual.CompletouJogada~q\ & ( (!\finalizaRodada~input_o\ & 
-- (((\controlador|Eatual.Inicial~q\) # (\inicio~input_o\)))) # (\finalizaRodada~input_o\ & (!\controlador|Eatual.Perdeu~q\ & ((\controlador|Eatual.Inicial~q\) # (\inicio~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111011101110000011101110111000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_finalizaRodada~input_o\,
	datab => \controlador|ALT_INV_Eatual.Perdeu~q\,
	datac => \ALT_INV_inicio~input_o\,
	datad => \controlador|ALT_INV_Eatual.Inicial~q\,
	dataf => \controlador|ALT_INV_Eatual.CompletouJogada~q\,
	combout => \controlador|Selector0~0_combout\);

-- Location: FF_X50_Y4_N26
\controlador|Eatual.Inicial\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \controlador|Selector0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|Eatual.Inicial~q\);

-- Location: LABCELL_X50_Y4_N42
\controlador|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controlador|Selector1~0_combout\ = ( \controlador|Eatual.Rodada1~q\ & ( \vacilou~input_o\ & ( (\inicio~input_o\ & !\controlador|Eatual.Inicial~q\) ) ) ) # ( !\controlador|Eatual.Rodada1~q\ & ( \vacilou~input_o\ & ( (\inicio~input_o\ & 
-- !\controlador|Eatual.Inicial~q\) ) ) ) # ( \controlador|Eatual.Rodada1~q\ & ( !\vacilou~input_o\ & ( (!\finalizaRodada~input_o\) # ((!\fimRodada~input_o\) # ((\inicio~input_o\ & !\controlador|Eatual.Inicial~q\))) ) ) ) # ( !\controlador|Eatual.Rodada1~q\ 
-- & ( !\vacilou~input_o\ & ( (\inicio~input_o\ & !\controlador|Eatual.Inicial~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000111111111101110001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inicio~input_o\,
	datab => \ALT_INV_finalizaRodada~input_o\,
	datac => \controlador|ALT_INV_Eatual.Inicial~q\,
	datad => \ALT_INV_fimRodada~input_o\,
	datae => \controlador|ALT_INV_Eatual.Rodada1~q\,
	dataf => \ALT_INV_vacilou~input_o\,
	combout => \controlador|Selector1~0_combout\);

-- Location: FF_X50_Y4_N44
\controlador|Eatual.Rodada1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \controlador|Selector1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|Eatual.Rodada1~q\);

-- Location: LABCELL_X50_Y4_N3
\controlador|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controlador|Selector2~0_combout\ = ( \controlador|Eatual.Rodada1~q\ & ( (!\vacilou~input_o\ & (\finalizaRodada~input_o\ & \fimRodada~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_vacilou~input_o\,
	datab => \ALT_INV_finalizaRodada~input_o\,
	datac => \ALT_INV_fimRodada~input_o\,
	dataf => \controlador|ALT_INV_Eatual.Rodada1~q\,
	combout => \controlador|Selector2~0_combout\);

-- Location: FF_X50_Y4_N5
\controlador|Eatual.Rodada2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \controlador|Selector2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \controlador|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|Eatual.Rodada2~q\);

-- Location: LABCELL_X50_Y4_N12
\controlador|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controlador|Selector3~0_combout\ = ( \controlador|Eatual.Rodada2~q\ & ( (!\vacilou~input_o\ & (\fimRodada~input_o\ & \finalizaRodada~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_vacilou~input_o\,
	datab => \ALT_INV_fimRodada~input_o\,
	datac => \ALT_INV_finalizaRodada~input_o\,
	dataf => \controlador|ALT_INV_Eatual.Rodada2~q\,
	combout => \controlador|Selector3~0_combout\);

-- Location: FF_X50_Y4_N14
\controlador|Eatual.Rodada3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \controlador|Selector3~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \controlador|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador|Eatual.Rodada3~q\);

-- Location: LABCELL_X50_Y4_N21
\controlador|WideOr7\ : cyclonev_lcell_comb
-- Equation(s):
-- \controlador|WideOr7~combout\ = ( \controlador|Eatual.Perdeu~q\ ) # ( !\controlador|Eatual.Perdeu~q\ & ( (\controlador|Eatual.Rodada2~q\) # (\controlador|Eatual.Rodada3~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \controlador|ALT_INV_Eatual.Rodada3~q\,
	datad => \controlador|ALT_INV_Eatual.Rodada2~q\,
	dataf => \controlador|ALT_INV_Eatual.Perdeu~q\,
	combout => \controlador|WideOr7~combout\);

-- Location: LABCELL_X50_Y4_N51
\controlador|WideOr6\ : cyclonev_lcell_comb
-- Equation(s):
-- \controlador|WideOr6~combout\ = ( \controlador|Eatual.Perdeu~q\ ) # ( !\controlador|Eatual.Perdeu~q\ & ( (\controlador|Eatual.CompletouJogada~q\) # (\controlador|Eatual.Rodada4~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \controlador|ALT_INV_Eatual.Rodada4~q\,
	datad => \controlador|ALT_INV_Eatual.CompletouJogada~q\,
	dataf => \controlador|ALT_INV_Eatual.Perdeu~q\,
	combout => \controlador|WideOr6~combout\);

-- Location: LABCELL_X50_Y4_N30
\controlador|WideOr8\ : cyclonev_lcell_comb
-- Equation(s):
-- \controlador|WideOr8~combout\ = ( \controlador|Eatual.Rodada1~q\ ) # ( !\controlador|Eatual.Rodada1~q\ & ( (\controlador|Eatual.CompletouJogada~q\) # (\controlador|Eatual.Rodada3~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \controlador|ALT_INV_Eatual.Rodada3~q\,
	datad => \controlador|ALT_INV_Eatual.CompletouJogada~q\,
	dataf => \controlador|ALT_INV_Eatual.Rodada1~q\,
	combout => \controlador|WideOr8~combout\);

-- Location: LABCELL_X50_Y2_N27
\CalculaMedia|DEMUX4|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|Equal1~0_combout\ = ( !\controlador|WideOr8~combout\ & ( (\controlador|WideOr7~combout\ & !\controlador|WideOr6~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \controlador|ALT_INV_WideOr7~combout\,
	datac => \controlador|ALT_INV_WideOr6~combout\,
	dataf => \controlador|ALT_INV_WideOr8~combout\,
	combout => \CalculaMedia|DEMUX4|Equal1~0_combout\);

-- Location: LABCELL_X51_Y6_N51
\CalculaMedia|DEMUX4|S2[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S2\(15) = ( \CalculaMedia|DEMUX4|Equal1~0_combout\ & ( \pulso[15]~input_o\ ) ) # ( !\CalculaMedia|DEMUX4|Equal1~0_combout\ & ( \CalculaMedia|DEMUX4|S2\(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pulso[15]~input_o\,
	datad => \CalculaMedia|DEMUX4|ALT_INV_S2\(15),
	dataf => \CalculaMedia|DEMUX4|ALT_INV_Equal1~0_combout\,
	combout => \CalculaMedia|DEMUX4|S2\(15));

-- Location: IOIBUF_X50_Y0_N92
\enable~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: FF_X51_Y6_N47
\CalculaMedia|REG2|IQ[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|DEMUX4|S2\(15),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG2|IQ\(15));

-- Location: MLABCELL_X52_Y6_N45
\CalculaMedia|REG2|Q[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|REG2|Q[15]~feeder_combout\ = ( \CalculaMedia|REG2|IQ\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CalculaMedia|REG2|ALT_INV_IQ\(15),
	combout => \CalculaMedia|REG2|Q[15]~feeder_combout\);

-- Location: FF_X52_Y6_N47
\CalculaMedia|REG2|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|REG2|Q[15]~feeder_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG2|Q\(15));

-- Location: LABCELL_X51_Y4_N18
\CalculaMedia|DEMUX4|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|Equal0~0_combout\ = ( !\controlador|WideOr6~combout\ & ( (!\controlador|WideOr7~combout\ & \controlador|WideOr8~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|ALT_INV_WideOr7~combout\,
	datac => \controlador|ALT_INV_WideOr8~combout\,
	dataf => \controlador|ALT_INV_WideOr6~combout\,
	combout => \CalculaMedia|DEMUX4|Equal0~0_combout\);

-- Location: LABCELL_X51_Y6_N12
\CalculaMedia|DEMUX4|S1[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S1\(15) = ( \CalculaMedia|DEMUX4|Equal0~0_combout\ & ( \pulso[15]~input_o\ ) ) # ( !\CalculaMedia|DEMUX4|Equal0~0_combout\ & ( \CalculaMedia|DEMUX4|S1\(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pulso[15]~input_o\,
	datab => \CalculaMedia|DEMUX4|ALT_INV_S1\(15),
	dataf => \CalculaMedia|DEMUX4|ALT_INV_Equal0~0_combout\,
	combout => \CalculaMedia|DEMUX4|S1\(15));

-- Location: FF_X51_Y6_N38
\CalculaMedia|REG1|IQ[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|DEMUX4|S1\(15),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG1|IQ\(15));

-- Location: FF_X52_Y6_N52
\CalculaMedia|REG1|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG1|IQ\(15),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG1|Q\(15));

-- Location: IOIBUF_X40_Y0_N18
\pulso[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pulso(14),
	o => \pulso[14]~input_o\);

-- Location: LABCELL_X51_Y4_N54
\CalculaMedia|DEMUX4|S1[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S1\(14) = ( \CalculaMedia|DEMUX4|Equal0~0_combout\ & ( \pulso[14]~input_o\ ) ) # ( !\CalculaMedia|DEMUX4|Equal0~0_combout\ & ( \CalculaMedia|DEMUX4|S1\(14) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CalculaMedia|DEMUX4|ALT_INV_S1\(14),
	datac => \ALT_INV_pulso[14]~input_o\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_Equal0~0_combout\,
	combout => \CalculaMedia|DEMUX4|S1\(14));

-- Location: FF_X51_Y4_N8
\CalculaMedia|REG1|IQ[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|DEMUX4|S1\(14),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG1|IQ\(14));

-- Location: FF_X52_Y6_N20
\CalculaMedia|REG1|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG1|IQ\(14),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG1|Q\(14));

-- Location: LABCELL_X50_Y2_N12
\CalculaMedia|DEMUX4|S2[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S2\(14) = ( \CalculaMedia|DEMUX4|S2\(14) & ( (!\CalculaMedia|DEMUX4|Equal1~0_combout\) # (\pulso[14]~input_o\) ) ) # ( !\CalculaMedia|DEMUX4|S2\(14) & ( (\pulso[14]~input_o\ & \CalculaMedia|DEMUX4|Equal1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pulso[14]~input_o\,
	datad => \CalculaMedia|DEMUX4|ALT_INV_Equal1~0_combout\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S2\(14),
	combout => \CalculaMedia|DEMUX4|S2\(14));

-- Location: FF_X50_Y2_N13
\CalculaMedia|REG2|IQ[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|DEMUX4|S2\(14),
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG2|IQ\(14));

-- Location: MLABCELL_X52_Y6_N54
\CalculaMedia|REG2|Q[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|REG2|Q[14]~feeder_combout\ = ( \CalculaMedia|REG2|IQ\(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CalculaMedia|REG2|ALT_INV_IQ\(14),
	combout => \CalculaMedia|REG2|Q[14]~feeder_combout\);

-- Location: FF_X52_Y6_N56
\CalculaMedia|REG2|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|REG2|Q[14]~feeder_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG2|Q\(14));

-- Location: IOIBUF_X52_Y0_N35
\pulso[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pulso(13),
	o => \pulso[13]~input_o\);

-- Location: MLABCELL_X52_Y4_N24
\CalculaMedia|DEMUX4|S1[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S1\(13) = ( \CalculaMedia|DEMUX4|S1\(13) & ( (!\CalculaMedia|DEMUX4|Equal0~0_combout\) # (\pulso[13]~input_o\) ) ) # ( !\CalculaMedia|DEMUX4|S1\(13) & ( (\CalculaMedia|DEMUX4|Equal0~0_combout\ & \pulso[13]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CalculaMedia|DEMUX4|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_pulso[13]~input_o\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S1\(13),
	combout => \CalculaMedia|DEMUX4|S1\(13));

-- Location: FF_X52_Y4_N28
\CalculaMedia|REG1|IQ[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|DEMUX4|S1\(13),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG1|IQ\(13));

-- Location: MLABCELL_X52_Y6_N24
\CalculaMedia|REG1|Q[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|REG1|Q[13]~feeder_combout\ = ( \CalculaMedia|REG1|IQ\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CalculaMedia|REG1|ALT_INV_IQ\(13),
	combout => \CalculaMedia|REG1|Q[13]~feeder_combout\);

-- Location: FF_X52_Y6_N25
\CalculaMedia|REG1|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|REG1|Q[13]~feeder_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG1|Q\(13));

-- Location: LABCELL_X50_Y2_N30
\CalculaMedia|DEMUX4|S2[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S2\(13) = ( \CalculaMedia|DEMUX4|S2\(13) & ( (!\CalculaMedia|DEMUX4|Equal1~0_combout\) # (\pulso[13]~input_o\) ) ) # ( !\CalculaMedia|DEMUX4|S2\(13) & ( (\CalculaMedia|DEMUX4|Equal1~0_combout\ & \pulso[13]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|DEMUX4|ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_pulso[13]~input_o\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S2\(13),
	combout => \CalculaMedia|DEMUX4|S2\(13));

-- Location: FF_X50_Y2_N32
\CalculaMedia|REG2|IQ[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|DEMUX4|S2\(13),
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG2|IQ\(13));

-- Location: MLABCELL_X52_Y6_N42
\CalculaMedia|REG2|Q[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|REG2|Q[13]~feeder_combout\ = ( \CalculaMedia|REG2|IQ\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CalculaMedia|REG2|ALT_INV_IQ\(13),
	combout => \CalculaMedia|REG2|Q[13]~feeder_combout\);

-- Location: FF_X52_Y6_N43
\CalculaMedia|REG2|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|REG2|Q[13]~feeder_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG2|Q\(13));

-- Location: IOIBUF_X50_Y81_N41
\pulso[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pulso(12),
	o => \pulso[12]~input_o\);

-- Location: LABCELL_X50_Y6_N3
\CalculaMedia|DEMUX4|S1[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S1\(12) = ( \CalculaMedia|DEMUX4|S1\(12) & ( \CalculaMedia|DEMUX4|Equal0~0_combout\ & ( \pulso[12]~input_o\ ) ) ) # ( !\CalculaMedia|DEMUX4|S1\(12) & ( \CalculaMedia|DEMUX4|Equal0~0_combout\ & ( \pulso[12]~input_o\ ) ) ) # ( 
-- \CalculaMedia|DEMUX4|S1\(12) & ( !\CalculaMedia|DEMUX4|Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pulso[12]~input_o\,
	datae => \CalculaMedia|DEMUX4|ALT_INV_S1\(12),
	dataf => \CalculaMedia|DEMUX4|ALT_INV_Equal0~0_combout\,
	combout => \CalculaMedia|DEMUX4|S1\(12));

-- Location: FF_X50_Y6_N4
\CalculaMedia|REG1|IQ[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|DEMUX4|S1\(12),
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG1|IQ\(12));

-- Location: FF_X52_Y6_N29
\CalculaMedia|REG1|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG1|IQ\(12),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG1|Q\(12));

-- Location: LABCELL_X50_Y6_N45
\CalculaMedia|DEMUX4|S2[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S2\(12) = ( \CalculaMedia|DEMUX4|S2\(12) & ( \CalculaMedia|DEMUX4|Equal1~0_combout\ & ( \pulso[12]~input_o\ ) ) ) # ( !\CalculaMedia|DEMUX4|S2\(12) & ( \CalculaMedia|DEMUX4|Equal1~0_combout\ & ( \pulso[12]~input_o\ ) ) ) # ( 
-- \CalculaMedia|DEMUX4|S2\(12) & ( !\CalculaMedia|DEMUX4|Equal1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pulso[12]~input_o\,
	datae => \CalculaMedia|DEMUX4|ALT_INV_S2\(12),
	dataf => \CalculaMedia|DEMUX4|ALT_INV_Equal1~0_combout\,
	combout => \CalculaMedia|DEMUX4|S2\(12));

-- Location: FF_X50_Y6_N46
\CalculaMedia|REG2|IQ[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|DEMUX4|S2\(12),
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG2|IQ\(12));

-- Location: MLABCELL_X52_Y6_N57
\CalculaMedia|REG2|Q[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|REG2|Q[12]~feeder_combout\ = ( \CalculaMedia|REG2|IQ\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CalculaMedia|REG2|ALT_INV_IQ\(12),
	combout => \CalculaMedia|REG2|Q[12]~feeder_combout\);

-- Location: FF_X52_Y6_N59
\CalculaMedia|REG2|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|REG2|Q[12]~feeder_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG2|Q\(12));

-- Location: IOIBUF_X52_Y0_N1
\pulso[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pulso(11),
	o => \pulso[11]~input_o\);

-- Location: LABCELL_X50_Y2_N48
\CalculaMedia|DEMUX4|S2[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S2\(11) = ( \CalculaMedia|DEMUX4|S2\(11) & ( (!\CalculaMedia|DEMUX4|Equal1~0_combout\) # (\pulso[11]~input_o\) ) ) # ( !\CalculaMedia|DEMUX4|S2\(11) & ( (\CalculaMedia|DEMUX4|Equal1~0_combout\ & \pulso[11]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|DEMUX4|ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_pulso[11]~input_o\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S2\(11),
	combout => \CalculaMedia|DEMUX4|S2\(11));

-- Location: FF_X50_Y2_N50
\CalculaMedia|REG2|IQ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|DEMUX4|S2\(11),
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG2|IQ\(11));

-- Location: FF_X51_Y4_N59
\CalculaMedia|REG2|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG2|IQ\(11),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG2|Q\(11));

-- Location: LABCELL_X51_Y4_N15
\CalculaMedia|DEMUX4|S1[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S1\(11) = ( \CalculaMedia|DEMUX4|S1\(11) & ( (!\CalculaMedia|DEMUX4|Equal0~0_combout\) # (\pulso[11]~input_o\) ) ) # ( !\CalculaMedia|DEMUX4|S1\(11) & ( (\pulso[11]~input_o\ & \CalculaMedia|DEMUX4|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pulso[11]~input_o\,
	datac => \CalculaMedia|DEMUX4|ALT_INV_Equal0~0_combout\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S1\(11),
	combout => \CalculaMedia|DEMUX4|S1\(11));

-- Location: FF_X51_Y4_N44
\CalculaMedia|REG1|IQ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|DEMUX4|S1\(11),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG1|IQ\(11));

-- Location: FF_X51_Y4_N23
\CalculaMedia|REG1|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG1|IQ\(11),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG1|Q\(11));

-- Location: IOIBUF_X52_Y0_N52
\pulso[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pulso(10),
	o => \pulso[10]~input_o\);

-- Location: LABCELL_X51_Y4_N12
\CalculaMedia|DEMUX4|S1[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S1\(10) = ( \CalculaMedia|DEMUX4|S1\(10) & ( (!\CalculaMedia|DEMUX4|Equal0~0_combout\) # (\pulso[10]~input_o\) ) ) # ( !\CalculaMedia|DEMUX4|S1\(10) & ( (\CalculaMedia|DEMUX4|Equal0~0_combout\ & \pulso[10]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CalculaMedia|DEMUX4|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_pulso[10]~input_o\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S1\(10),
	combout => \CalculaMedia|DEMUX4|S1\(10));

-- Location: FF_X51_Y4_N47
\CalculaMedia|REG1|IQ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|DEMUX4|S1\(10),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG1|IQ\(10));

-- Location: FF_X51_Y4_N20
\CalculaMedia|REG1|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG1|IQ\(10),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG1|Q\(10));

-- Location: LABCELL_X50_Y2_N33
\CalculaMedia|DEMUX4|S2[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S2\(10) = ( \CalculaMedia|DEMUX4|S2\(10) & ( (!\CalculaMedia|DEMUX4|Equal1~0_combout\) # (\pulso[10]~input_o\) ) ) # ( !\CalculaMedia|DEMUX4|S2\(10) & ( (\CalculaMedia|DEMUX4|Equal1~0_combout\ & \pulso[10]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|DEMUX4|ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_pulso[10]~input_o\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S2\(10),
	combout => \CalculaMedia|DEMUX4|S2\(10));

-- Location: FF_X50_Y2_N34
\CalculaMedia|REG2|IQ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|DEMUX4|S2\(10),
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG2|IQ\(10));

-- Location: FF_X51_Y4_N56
\CalculaMedia|REG2|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG2|IQ\(10),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG2|Q\(10));

-- Location: IOIBUF_X54_Y0_N1
\pulso[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pulso(9),
	o => \pulso[9]~input_o\);

-- Location: LABCELL_X50_Y2_N54
\CalculaMedia|DEMUX4|S2[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S2\(9) = ( \CalculaMedia|DEMUX4|S2\(9) & ( \CalculaMedia|DEMUX4|Equal1~0_combout\ & ( \pulso[9]~input_o\ ) ) ) # ( !\CalculaMedia|DEMUX4|S2\(9) & ( \CalculaMedia|DEMUX4|Equal1~0_combout\ & ( \pulso[9]~input_o\ ) ) ) # ( 
-- \CalculaMedia|DEMUX4|S2\(9) & ( !\CalculaMedia|DEMUX4|Equal1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pulso[9]~input_o\,
	datae => \CalculaMedia|DEMUX4|ALT_INV_S2\(9),
	dataf => \CalculaMedia|DEMUX4|ALT_INV_Equal1~0_combout\,
	combout => \CalculaMedia|DEMUX4|S2\(9));

-- Location: LABCELL_X50_Y2_N45
\CalculaMedia|REG2|IQ[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|REG2|IQ[9]~feeder_combout\ = ( \CalculaMedia|DEMUX4|S2\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S2\(9),
	combout => \CalculaMedia|REG2|IQ[9]~feeder_combout\);

-- Location: FF_X50_Y2_N47
\CalculaMedia|REG2|IQ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|REG2|IQ[9]~feeder_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG2|IQ\(9));

-- Location: FF_X51_Y4_N17
\CalculaMedia|REG2|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG2|IQ\(9),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG2|Q\(9));

-- Location: LABCELL_X51_Y4_N57
\CalculaMedia|DEMUX4|S1[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S1\(9) = ( \CalculaMedia|DEMUX4|S1\(9) & ( (!\CalculaMedia|DEMUX4|Equal0~0_combout\) # (\pulso[9]~input_o\) ) ) # ( !\CalculaMedia|DEMUX4|S1\(9) & ( (\pulso[9]~input_o\ & \CalculaMedia|DEMUX4|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pulso[9]~input_o\,
	datac => \CalculaMedia|DEMUX4|ALT_INV_Equal0~0_combout\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S1\(9),
	combout => \CalculaMedia|DEMUX4|S1\(9));

-- Location: FF_X51_Y4_N10
\CalculaMedia|REG1|IQ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|DEMUX4|S1\(9),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG1|IQ\(9));

-- Location: FF_X51_Y4_N26
\CalculaMedia|REG1|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG1|IQ\(9),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG1|Q\(9));

-- Location: IOIBUF_X36_Y0_N35
\pulso[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pulso(8),
	o => \pulso[8]~input_o\);

-- Location: LABCELL_X50_Y2_N36
\CalculaMedia|DEMUX4|S2[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S2\(8) = ( \CalculaMedia|DEMUX4|Equal1~0_combout\ & ( \pulso[8]~input_o\ ) ) # ( !\CalculaMedia|DEMUX4|Equal1~0_combout\ & ( \CalculaMedia|DEMUX4|S2\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pulso[8]~input_o\,
	datad => \CalculaMedia|DEMUX4|ALT_INV_S2\(8),
	dataf => \CalculaMedia|DEMUX4|ALT_INV_Equal1~0_combout\,
	combout => \CalculaMedia|DEMUX4|S2\(8));

-- Location: FF_X50_Y2_N23
\CalculaMedia|REG2|IQ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|DEMUX4|S2\(8),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG2|IQ\(8));

-- Location: FF_X51_Y4_N29
\CalculaMedia|REG2|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG2|IQ\(8),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG2|Q\(8));

-- Location: LABCELL_X51_Y4_N24
\CalculaMedia|DEMUX4|S1[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S1\(8) = ( \CalculaMedia|DEMUX4|Equal0~0_combout\ & ( \pulso[8]~input_o\ ) ) # ( !\CalculaMedia|DEMUX4|Equal0~0_combout\ & ( \CalculaMedia|DEMUX4|S1\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_pulso[8]~input_o\,
	datac => \CalculaMedia|DEMUX4|ALT_INV_S1\(8),
	dataf => \CalculaMedia|DEMUX4|ALT_INV_Equal0~0_combout\,
	combout => \CalculaMedia|DEMUX4|S1\(8));

-- Location: FF_X51_Y4_N37
\CalculaMedia|REG1|IQ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|DEMUX4|S1\(8),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG1|IQ\(8));

-- Location: FF_X51_Y4_N14
\CalculaMedia|REG1|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG1|IQ\(8),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG1|Q\(8));

-- Location: IOIBUF_X40_Y0_N1
\pulso[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pulso(7),
	o => \pulso[7]~input_o\);

-- Location: LABCELL_X51_Y2_N24
\CalculaMedia|DEMUX4|S1[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S1\(7) = ( \CalculaMedia|DEMUX4|S1\(7) & ( (!\CalculaMedia|DEMUX4|Equal0~0_combout\) # (\pulso[7]~input_o\) ) ) # ( !\CalculaMedia|DEMUX4|S1\(7) & ( (\CalculaMedia|DEMUX4|Equal0~0_combout\ & \pulso[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CalculaMedia|DEMUX4|ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_pulso[7]~input_o\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S1\(7),
	combout => \CalculaMedia|DEMUX4|S1\(7));

-- Location: FF_X51_Y2_N34
\CalculaMedia|REG1|IQ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|DEMUX4|S1\(7),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG1|IQ\(7));

-- Location: LABCELL_X51_Y2_N12
\CalculaMedia|REG1|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|REG1|Q[7]~feeder_combout\ = ( \CalculaMedia|REG1|IQ\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CalculaMedia|REG1|ALT_INV_IQ\(7),
	combout => \CalculaMedia|REG1|Q[7]~feeder_combout\);

-- Location: FF_X51_Y2_N14
\CalculaMedia|REG1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|REG1|Q[7]~feeder_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG1|Q\(7));

-- Location: LABCELL_X50_Y2_N18
\CalculaMedia|DEMUX4|S2[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S2\(7) = ( \CalculaMedia|DEMUX4|S2\(7) & ( (!\CalculaMedia|DEMUX4|Equal1~0_combout\) # (\pulso[7]~input_o\) ) ) # ( !\CalculaMedia|DEMUX4|S2\(7) & ( (\pulso[7]~input_o\ & \CalculaMedia|DEMUX4|Equal1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pulso[7]~input_o\,
	datad => \CalculaMedia|DEMUX4|ALT_INV_Equal1~0_combout\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S2\(7),
	combout => \CalculaMedia|DEMUX4|S2\(7));

-- Location: FF_X50_Y2_N19
\CalculaMedia|REG2|IQ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|DEMUX4|S2\(7),
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG2|IQ\(7));

-- Location: LABCELL_X51_Y2_N54
\CalculaMedia|REG2|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|REG2|Q[7]~feeder_combout\ = ( \CalculaMedia|REG2|IQ\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CalculaMedia|REG2|ALT_INV_IQ\(7),
	combout => \CalculaMedia|REG2|Q[7]~feeder_combout\);

-- Location: FF_X51_Y2_N56
\CalculaMedia|REG2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|REG2|Q[7]~feeder_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG2|Q\(7));

-- Location: IOIBUF_X50_Y0_N41
\pulso[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pulso(6),
	o => \pulso[6]~input_o\);

-- Location: LABCELL_X50_Y2_N21
\CalculaMedia|DEMUX4|S2[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S2\(6) = ( \CalculaMedia|DEMUX4|S2\(6) & ( (!\CalculaMedia|DEMUX4|Equal1~0_combout\) # (\pulso[6]~input_o\) ) ) # ( !\CalculaMedia|DEMUX4|S2\(6) & ( (\CalculaMedia|DEMUX4|Equal1~0_combout\ & \pulso[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|DEMUX4|ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_pulso[6]~input_o\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S2\(6),
	combout => \CalculaMedia|DEMUX4|S2\(6));

-- Location: FF_X50_Y2_N59
\CalculaMedia|REG2|IQ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|DEMUX4|S2\(6),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG2|IQ\(6));

-- Location: FF_X51_Y2_N26
\CalculaMedia|REG2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG2|IQ\(6),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG2|Q\(6));

-- Location: LABCELL_X51_Y2_N21
\CalculaMedia|DEMUX4|S1[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S1\(6) = ( \CalculaMedia|DEMUX4|S1\(6) & ( \CalculaMedia|DEMUX4|Equal0~0_combout\ & ( \pulso[6]~input_o\ ) ) ) # ( !\CalculaMedia|DEMUX4|S1\(6) & ( \CalculaMedia|DEMUX4|Equal0~0_combout\ & ( \pulso[6]~input_o\ ) ) ) # ( 
-- \CalculaMedia|DEMUX4|S1\(6) & ( !\CalculaMedia|DEMUX4|Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pulso[6]~input_o\,
	datae => \CalculaMedia|DEMUX4|ALT_INV_S1\(6),
	dataf => \CalculaMedia|DEMUX4|ALT_INV_Equal0~0_combout\,
	combout => \CalculaMedia|DEMUX4|S1\(6));

-- Location: FF_X51_Y2_N22
\CalculaMedia|REG1|IQ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|DEMUX4|S1\(6),
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG1|IQ\(6));

-- Location: LABCELL_X51_Y2_N57
\CalculaMedia|REG1|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|REG1|Q[6]~feeder_combout\ = ( \CalculaMedia|REG1|IQ\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CalculaMedia|REG1|ALT_INV_IQ\(6),
	combout => \CalculaMedia|REG1|Q[6]~feeder_combout\);

-- Location: FF_X51_Y2_N59
\CalculaMedia|REG1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|REG1|Q[6]~feeder_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG1|Q\(6));

-- Location: IOIBUF_X34_Y0_N58
\pulso[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pulso(5),
	o => \pulso[5]~input_o\);

-- Location: LABCELL_X50_Y2_N51
\CalculaMedia|DEMUX4|S2[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S2\(5) = ( \CalculaMedia|DEMUX4|S2\(5) & ( (!\CalculaMedia|DEMUX4|Equal1~0_combout\) # (\pulso[5]~input_o\) ) ) # ( !\CalculaMedia|DEMUX4|S2\(5) & ( (\pulso[5]~input_o\ & \CalculaMedia|DEMUX4|Equal1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pulso[5]~input_o\,
	datad => \CalculaMedia|DEMUX4|ALT_INV_Equal1~0_combout\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S2\(5),
	combout => \CalculaMedia|DEMUX4|S2\(5));

-- Location: LABCELL_X50_Y2_N42
\CalculaMedia|REG2|IQ[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|REG2|IQ[5]~feeder_combout\ = ( \CalculaMedia|DEMUX4|S2\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S2\(5),
	combout => \CalculaMedia|REG2|IQ[5]~feeder_combout\);

-- Location: FF_X50_Y2_N43
\CalculaMedia|REG2|IQ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|REG2|IQ[5]~feeder_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG2|IQ\(5));

-- Location: LABCELL_X51_Y2_N15
\CalculaMedia|REG2|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|REG2|Q[5]~feeder_combout\ = ( \CalculaMedia|REG2|IQ\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CalculaMedia|REG2|ALT_INV_IQ\(5),
	combout => \CalculaMedia|REG2|Q[5]~feeder_combout\);

-- Location: FF_X51_Y2_N17
\CalculaMedia|REG2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|REG2|Q[5]~feeder_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG2|Q\(5));

-- Location: LABCELL_X50_Y2_N3
\CalculaMedia|DEMUX4|S1[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S1\(5) = ( \CalculaMedia|DEMUX4|S1\(5) & ( \CalculaMedia|DEMUX4|Equal0~0_combout\ & ( \pulso[5]~input_o\ ) ) ) # ( !\CalculaMedia|DEMUX4|S1\(5) & ( \CalculaMedia|DEMUX4|Equal0~0_combout\ & ( \pulso[5]~input_o\ ) ) ) # ( 
-- \CalculaMedia|DEMUX4|S1\(5) & ( !\CalculaMedia|DEMUX4|Equal0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pulso[5]~input_o\,
	datae => \CalculaMedia|DEMUX4|ALT_INV_S1\(5),
	dataf => \CalculaMedia|DEMUX4|ALT_INV_Equal0~0_combout\,
	combout => \CalculaMedia|DEMUX4|S1\(5));

-- Location: FF_X50_Y2_N5
\CalculaMedia|REG1|IQ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|DEMUX4|S1\(5),
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG1|IQ\(5));

-- Location: FF_X51_Y2_N20
\CalculaMedia|REG1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG1|IQ\(5),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG1|Q\(5));

-- Location: IOIBUF_X50_Y0_N75
\pulso[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pulso(4),
	o => \pulso[4]~input_o\);

-- Location: LABCELL_X50_Y2_N39
\CalculaMedia|DEMUX4|S2[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S2\(4) = ( \CalculaMedia|DEMUX4|S2\(4) & ( (!\CalculaMedia|DEMUX4|Equal1~0_combout\) # (\pulso[4]~input_o\) ) ) # ( !\CalculaMedia|DEMUX4|S2\(4) & ( (\CalculaMedia|DEMUX4|Equal1~0_combout\ & \pulso[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|DEMUX4|ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_pulso[4]~input_o\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S2\(4),
	combout => \CalculaMedia|DEMUX4|S2\(4));

-- Location: FF_X50_Y2_N41
\CalculaMedia|REG2|IQ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|DEMUX4|S2\(4),
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG2|IQ\(4));

-- Location: FF_X51_Y2_N29
\CalculaMedia|REG2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG2|IQ\(4),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG2|Q\(4));

-- Location: LABCELL_X51_Y2_N27
\CalculaMedia|DEMUX4|S1[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S1\(4) = ( \CalculaMedia|DEMUX4|S1\(4) & ( (!\CalculaMedia|DEMUX4|Equal0~0_combout\) # (\pulso[4]~input_o\) ) ) # ( !\CalculaMedia|DEMUX4|S1\(4) & ( (\pulso[4]~input_o\ & \CalculaMedia|DEMUX4|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pulso[4]~input_o\,
	datac => \CalculaMedia|DEMUX4|ALT_INV_Equal0~0_combout\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S1\(4),
	combout => \CalculaMedia|DEMUX4|S1\(4));

-- Location: FF_X51_Y2_N32
\CalculaMedia|REG1|IQ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|DEMUX4|S1\(4),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG1|IQ\(4));

-- Location: FF_X51_Y2_N49
\CalculaMedia|REG1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG1|IQ\(4),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG1|Q\(4));

-- Location: IOIBUF_X36_Y0_N18
\pulso[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pulso(3),
	o => \pulso[3]~input_o\);

-- Location: LABCELL_X50_Y2_N15
\CalculaMedia|DEMUX4|S2[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S2\(3) = ( \CalculaMedia|DEMUX4|S2\(3) & ( (!\CalculaMedia|DEMUX4|Equal1~0_combout\) # (\pulso[3]~input_o\) ) ) # ( !\CalculaMedia|DEMUX4|S2\(3) & ( (\CalculaMedia|DEMUX4|Equal1~0_combout\ & \pulso[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|DEMUX4|ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_pulso[3]~input_o\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S2\(3),
	combout => \CalculaMedia|DEMUX4|S2\(3));

-- Location: FF_X50_Y2_N16
\CalculaMedia|REG2|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|DEMUX4|S2\(3),
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG2|IQ\(3));

-- Location: LABCELL_X51_Y1_N18
\CalculaMedia|REG2|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|REG2|Q[3]~feeder_combout\ = ( \CalculaMedia|REG2|IQ\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CalculaMedia|REG2|ALT_INV_IQ\(3),
	combout => \CalculaMedia|REG2|Q[3]~feeder_combout\);

-- Location: FF_X51_Y1_N19
\CalculaMedia|REG2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|REG2|Q[3]~feeder_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG2|Q\(3));

-- Location: LABCELL_X50_Y3_N51
\CalculaMedia|DEMUX4|S1[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S1\(3) = ( \CalculaMedia|DEMUX4|Equal0~0_combout\ & ( \CalculaMedia|DEMUX4|S1\(3) & ( \pulso[3]~input_o\ ) ) ) # ( !\CalculaMedia|DEMUX4|Equal0~0_combout\ & ( \CalculaMedia|DEMUX4|S1\(3) ) ) # ( \CalculaMedia|DEMUX4|Equal0~0_combout\ 
-- & ( !\CalculaMedia|DEMUX4|S1\(3) & ( \pulso[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pulso[3]~input_o\,
	datae => \CalculaMedia|DEMUX4|ALT_INV_Equal0~0_combout\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S1\(3),
	combout => \CalculaMedia|DEMUX4|S1\(3));

-- Location: LABCELL_X50_Y3_N27
\CalculaMedia|REG1|IQ[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|REG1|IQ[3]~feeder_combout\ = ( \CalculaMedia|DEMUX4|S1\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S1\(3),
	combout => \CalculaMedia|REG1|IQ[3]~feeder_combout\);

-- Location: FF_X50_Y3_N28
\CalculaMedia|REG1|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|REG1|IQ[3]~feeder_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG1|IQ\(3));

-- Location: FF_X51_Y1_N56
\CalculaMedia|REG1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG1|IQ\(3),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG1|Q\(3));

-- Location: IOIBUF_X36_Y0_N52
\pulso[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pulso(2),
	o => \pulso[2]~input_o\);

-- Location: MLABCELL_X52_Y4_N48
\CalculaMedia|DEMUX4|S1[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S1\(2) = ( \CalculaMedia|DEMUX4|Equal0~0_combout\ & ( \pulso[2]~input_o\ ) ) # ( !\CalculaMedia|DEMUX4|Equal0~0_combout\ & ( \CalculaMedia|DEMUX4|S1\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_pulso[2]~input_o\,
	datac => \CalculaMedia|DEMUX4|ALT_INV_S1\(2),
	dataf => \CalculaMedia|DEMUX4|ALT_INV_Equal0~0_combout\,
	combout => \CalculaMedia|DEMUX4|S1\(2));

-- Location: FF_X52_Y4_N10
\CalculaMedia|REG1|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|DEMUX4|S1\(2),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG1|IQ\(2));

-- Location: FF_X51_Y1_N26
\CalculaMedia|REG1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG1|IQ\(2),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG1|Q\(2));

-- Location: LABCELL_X50_Y2_N9
\CalculaMedia|DEMUX4|S2[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S2\(2) = ( \CalculaMedia|DEMUX4|S2\(2) & ( (!\CalculaMedia|DEMUX4|Equal1~0_combout\) # (\pulso[2]~input_o\) ) ) # ( !\CalculaMedia|DEMUX4|S2\(2) & ( (\pulso[2]~input_o\ & \CalculaMedia|DEMUX4|Equal1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pulso[2]~input_o\,
	datad => \CalculaMedia|DEMUX4|ALT_INV_Equal1~0_combout\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S2\(2),
	combout => \CalculaMedia|DEMUX4|S2\(2));

-- Location: FF_X50_Y2_N10
\CalculaMedia|REG2|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|DEMUX4|S2\(2),
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG2|IQ\(2));

-- Location: LABCELL_X51_Y1_N27
\CalculaMedia|REG2|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|REG2|Q[2]~feeder_combout\ = ( \CalculaMedia|REG2|IQ\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CalculaMedia|REG2|ALT_INV_IQ\(2),
	combout => \CalculaMedia|REG2|Q[2]~feeder_combout\);

-- Location: FF_X51_Y1_N29
\CalculaMedia|REG2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|REG2|Q[2]~feeder_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG2|Q\(2));

-- Location: IOIBUF_X40_Y0_N35
\pulso[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pulso(1),
	o => \pulso[1]~input_o\);

-- Location: LABCELL_X50_Y3_N42
\CalculaMedia|DEMUX4|S1[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S1\(1) = ( \CalculaMedia|DEMUX4|Equal0~0_combout\ & ( \CalculaMedia|DEMUX4|S1\(1) & ( \pulso[1]~input_o\ ) ) ) # ( !\CalculaMedia|DEMUX4|Equal0~0_combout\ & ( \CalculaMedia|DEMUX4|S1\(1) ) ) # ( \CalculaMedia|DEMUX4|Equal0~0_combout\ 
-- & ( !\CalculaMedia|DEMUX4|S1\(1) & ( \pulso[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_pulso[1]~input_o\,
	datae => \CalculaMedia|DEMUX4|ALT_INV_Equal0~0_combout\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S1\(1),
	combout => \CalculaMedia|DEMUX4|S1\(1));

-- Location: FF_X50_Y3_N43
\CalculaMedia|REG1|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|DEMUX4|S1\(1),
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG1|IQ\(1));

-- Location: FF_X51_Y1_N44
\CalculaMedia|REG1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG1|IQ\(1),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG1|Q\(1));

-- Location: LABCELL_X50_Y2_N24
\CalculaMedia|DEMUX4|S2[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S2\(1) = ( \CalculaMedia|DEMUX4|S2\(1) & ( (!\CalculaMedia|DEMUX4|Equal1~0_combout\) # (\pulso[1]~input_o\) ) ) # ( !\CalculaMedia|DEMUX4|S2\(1) & ( (\CalculaMedia|DEMUX4|Equal1~0_combout\ & \pulso[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|DEMUX4|ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_pulso[1]~input_o\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S2\(1),
	combout => \CalculaMedia|DEMUX4|S2\(1));

-- Location: FF_X50_Y2_N25
\CalculaMedia|REG2|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|DEMUX4|S2\(1),
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG2|IQ\(1));

-- Location: FF_X51_Y1_N47
\CalculaMedia|REG2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG2|IQ\(1),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG2|Q\(1));

-- Location: IOIBUF_X52_Y0_N18
\pulso[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pulso(0),
	o => \pulso[0]~input_o\);

-- Location: MLABCELL_X52_Y4_N18
\CalculaMedia|DEMUX4|S1[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S1\(0) = ( \CalculaMedia|DEMUX4|Equal0~0_combout\ & ( \pulso[0]~input_o\ ) ) # ( !\CalculaMedia|DEMUX4|Equal0~0_combout\ & ( \CalculaMedia|DEMUX4|S1\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pulso[0]~input_o\,
	datac => \CalculaMedia|DEMUX4|ALT_INV_S1\(0),
	dataf => \CalculaMedia|DEMUX4|ALT_INV_Equal0~0_combout\,
	combout => \CalculaMedia|DEMUX4|S1\(0));

-- Location: FF_X52_Y4_N41
\CalculaMedia|REG1|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|DEMUX4|S1\(0),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG1|IQ\(0));

-- Location: FF_X51_Y1_N50
\CalculaMedia|REG1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG1|IQ\(0),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG1|Q\(0));

-- Location: LABCELL_X50_Y2_N6
\CalculaMedia|DEMUX4|S2[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S2\(0) = ( \CalculaMedia|DEMUX4|S2\(0) & ( (!\CalculaMedia|DEMUX4|Equal1~0_combout\) # (\pulso[0]~input_o\) ) ) # ( !\CalculaMedia|DEMUX4|S2\(0) & ( (\pulso[0]~input_o\ & \CalculaMedia|DEMUX4|Equal1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pulso[0]~input_o\,
	datad => \CalculaMedia|DEMUX4|ALT_INV_Equal1~0_combout\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S2\(0),
	combout => \CalculaMedia|DEMUX4|S2\(0));

-- Location: FF_X50_Y2_N29
\CalculaMedia|REG2|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|DEMUX4|S2\(0),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG2|IQ\(0));

-- Location: FF_X51_Y1_N23
\CalculaMedia|REG2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG2|IQ\(0),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG2|Q\(0));

-- Location: LABCELL_X51_Y1_N0
\CalculaMedia|SUM1|S1|S1|s1|S[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM1|S1|S1|s1|S\(0) = SUM(( !\CalculaMedia|REG1|Q\(0) $ (!\CalculaMedia|REG2|Q\(0)) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM1|S1|S1|s1|_~1\ = CARRY(( !\CalculaMedia|REG1|Q\(0) $ (!\CalculaMedia|REG2|Q\(0)) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM1|S1|S1|s1|_~2\ = SHARE((\CalculaMedia|REG1|Q\(0) & \CalculaMedia|REG2|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|REG1|ALT_INV_Q\(0),
	datad => \CalculaMedia|REG2|ALT_INV_Q\(0),
	cin => GND,
	sharein => GND,
	sumout => \CalculaMedia|SUM1|S1|S1|s1|S\(0),
	cout => \CalculaMedia|SUM1|S1|S1|s1|_~1\,
	shareout => \CalculaMedia|SUM1|S1|S1|s1|_~2\);

-- Location: LABCELL_X51_Y1_N3
\CalculaMedia|SUM1|S1|S1|s1|S[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM1|S1|S1|s1|S\(1) = SUM(( !\CalculaMedia|REG1|Q\(1) $ (!\CalculaMedia|REG2|Q\(1)) ) + ( \CalculaMedia|SUM1|S1|S1|s1|_~2\ ) + ( \CalculaMedia|SUM1|S1|S1|s1|_~1\ ))
-- \CalculaMedia|SUM1|S1|S1|s1|_~10\ = CARRY(( !\CalculaMedia|REG1|Q\(1) $ (!\CalculaMedia|REG2|Q\(1)) ) + ( \CalculaMedia|SUM1|S1|S1|s1|_~2\ ) + ( \CalculaMedia|SUM1|S1|S1|s1|_~1\ ))
-- \CalculaMedia|SUM1|S1|S1|s1|_~11\ = SHARE((\CalculaMedia|REG1|Q\(1) & \CalculaMedia|REG2|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|REG1|ALT_INV_Q\(1),
	datad => \CalculaMedia|REG2|ALT_INV_Q\(1),
	cin => \CalculaMedia|SUM1|S1|S1|s1|_~1\,
	sharein => \CalculaMedia|SUM1|S1|S1|s1|_~2\,
	sumout => \CalculaMedia|SUM1|S1|S1|s1|S\(1),
	cout => \CalculaMedia|SUM1|S1|S1|s1|_~10\,
	shareout => \CalculaMedia|SUM1|S1|S1|s1|_~11\);

-- Location: LABCELL_X51_Y1_N6
\CalculaMedia|SUM1|S1|S1|s1|S[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM1|S1|S1|s1|S\(2) = SUM(( !\CalculaMedia|REG1|Q\(2) $ (!\CalculaMedia|REG2|Q\(2)) ) + ( \CalculaMedia|SUM1|S1|S1|s1|_~11\ ) + ( \CalculaMedia|SUM1|S1|S1|s1|_~10\ ))
-- \CalculaMedia|SUM1|S1|S1|s1|_~13\ = CARRY(( !\CalculaMedia|REG1|Q\(2) $ (!\CalculaMedia|REG2|Q\(2)) ) + ( \CalculaMedia|SUM1|S1|S1|s1|_~11\ ) + ( \CalculaMedia|SUM1|S1|S1|s1|_~10\ ))
-- \CalculaMedia|SUM1|S1|S1|s1|_~14\ = SHARE((\CalculaMedia|REG1|Q\(2) & \CalculaMedia|REG2|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|REG1|ALT_INV_Q\(2),
	datad => \CalculaMedia|REG2|ALT_INV_Q\(2),
	cin => \CalculaMedia|SUM1|S1|S1|s1|_~10\,
	sharein => \CalculaMedia|SUM1|S1|S1|s1|_~11\,
	sumout => \CalculaMedia|SUM1|S1|S1|s1|S\(2),
	cout => \CalculaMedia|SUM1|S1|S1|s1|_~13\,
	shareout => \CalculaMedia|SUM1|S1|S1|s1|_~14\);

-- Location: LABCELL_X51_Y1_N9
\CalculaMedia|SUM1|S1|S1|s1|S[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM1|S1|S1|s1|S\(3) = SUM(( !\CalculaMedia|REG2|Q\(3) $ (!\CalculaMedia|REG1|Q\(3)) ) + ( \CalculaMedia|SUM1|S1|S1|s1|_~14\ ) + ( \CalculaMedia|SUM1|S1|S1|s1|_~13\ ))
-- \CalculaMedia|SUM1|S1|S1|s1|_~7\ = CARRY(( !\CalculaMedia|REG2|Q\(3) $ (!\CalculaMedia|REG1|Q\(3)) ) + ( \CalculaMedia|SUM1|S1|S1|s1|_~14\ ) + ( \CalculaMedia|SUM1|S1|S1|s1|_~13\ ))
-- \CalculaMedia|SUM1|S1|S1|s1|_~8\ = SHARE((\CalculaMedia|REG2|Q\(3) & \CalculaMedia|REG1|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|REG2|ALT_INV_Q\(3),
	datad => \CalculaMedia|REG1|ALT_INV_Q\(3),
	cin => \CalculaMedia|SUM1|S1|S1|s1|_~13\,
	sharein => \CalculaMedia|SUM1|S1|S1|s1|_~14\,
	sumout => \CalculaMedia|SUM1|S1|S1|s1|S\(3),
	cout => \CalculaMedia|SUM1|S1|S1|s1|_~7\,
	shareout => \CalculaMedia|SUM1|S1|S1|s1|_~8\);

-- Location: LABCELL_X51_Y1_N51
\CalculaMedia|SUM1|S1|S1|d1|O~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM1|S1|S1|d1|O~0_combout\ = ( \CalculaMedia|SUM1|S1|S1|s1|S\(1) & ( \CalculaMedia|SUM1|S1|S1|s1|S\(2) & ( \CalculaMedia|SUM1|S1|S1|s1|S\(3) ) ) ) # ( !\CalculaMedia|SUM1|S1|S1|s1|S\(1) & ( \CalculaMedia|SUM1|S1|S1|s1|S\(2) & ( 
-- \CalculaMedia|SUM1|S1|S1|s1|S\(3) ) ) ) # ( \CalculaMedia|SUM1|S1|S1|s1|S\(1) & ( !\CalculaMedia|SUM1|S1|S1|s1|S\(2) & ( \CalculaMedia|SUM1|S1|S1|s1|S\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|SUM1|S1|S1|s1|ALT_INV_S\(3),
	datae => \CalculaMedia|SUM1|S1|S1|s1|ALT_INV_S\(1),
	dataf => \CalculaMedia|SUM1|S1|S1|s1|ALT_INV_S\(2),
	combout => \CalculaMedia|SUM1|S1|S1|d1|O~0_combout\);

-- Location: LABCELL_X51_Y1_N12
\CalculaMedia|SUM1|S1|S1|s1|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM1|S1|S1|s1|Cout~sumout\ = SUM(( GND ) + ( \CalculaMedia|SUM1|S1|S1|s1|_~8\ ) + ( \CalculaMedia|SUM1|S1|S1|s1|_~7\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \CalculaMedia|SUM1|S1|S1|s1|_~7\,
	sharein => \CalculaMedia|SUM1|S1|S1|s1|_~8\,
	sumout => \CalculaMedia|SUM1|S1|S1|s1|Cout~sumout\);

-- Location: LABCELL_X51_Y2_N30
\CalculaMedia|SUM1|S1|S2|s1|S[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM1|S1|S2|s1|S\(0) = SUM(( !\CalculaMedia|REG2|Q\(4) $ (!\CalculaMedia|REG1|Q\(4) $ (((\CalculaMedia|SUM1|S1|S1|s1|Cout~sumout\) # (\CalculaMedia|SUM1|S1|S1|d1|O~0_combout\)))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM1|S1|S2|s1|_~13\ = CARRY(( !\CalculaMedia|REG2|Q\(4) $ (!\CalculaMedia|REG1|Q\(4) $ (((\CalculaMedia|SUM1|S1|S1|s1|Cout~sumout\) # (\CalculaMedia|SUM1|S1|S1|d1|O~0_combout\)))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM1|S1|S2|s1|_~14\ = SHARE((!\CalculaMedia|REG2|Q\(4) & (\CalculaMedia|REG1|Q\(4) & ((\CalculaMedia|SUM1|S1|S1|s1|Cout~sumout\) # (\CalculaMedia|SUM1|S1|S1|d1|O~0_combout\)))) # (\CalculaMedia|REG2|Q\(4) & 
-- (((\CalculaMedia|SUM1|S1|S1|s1|Cout~sumout\) # (\CalculaMedia|SUM1|S1|S1|d1|O~0_combout\)) # (\CalculaMedia|REG1|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101110111011100000000000000000110100110011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|REG2|ALT_INV_Q\(4),
	datab => \CalculaMedia|REG1|ALT_INV_Q\(4),
	datac => \CalculaMedia|SUM1|S1|S1|d1|ALT_INV_O~0_combout\,
	datad => \CalculaMedia|SUM1|S1|S1|s1|ALT_INV_Cout~sumout\,
	cin => GND,
	sharein => GND,
	sumout => \CalculaMedia|SUM1|S1|S2|s1|S\(0),
	cout => \CalculaMedia|SUM1|S1|S2|s1|_~13\,
	shareout => \CalculaMedia|SUM1|S1|S2|s1|_~14\);

-- Location: LABCELL_X51_Y2_N33
\CalculaMedia|SUM1|S1|S2|s1|S[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM1|S1|S2|s1|S\(1) = SUM(( !\CalculaMedia|REG2|Q\(5) $ (!\CalculaMedia|REG1|Q\(5)) ) + ( \CalculaMedia|SUM1|S1|S2|s1|_~14\ ) + ( \CalculaMedia|SUM1|S1|S2|s1|_~13\ ))
-- \CalculaMedia|SUM1|S1|S2|s1|_~7\ = CARRY(( !\CalculaMedia|REG2|Q\(5) $ (!\CalculaMedia|REG1|Q\(5)) ) + ( \CalculaMedia|SUM1|S1|S2|s1|_~14\ ) + ( \CalculaMedia|SUM1|S1|S2|s1|_~13\ ))
-- \CalculaMedia|SUM1|S1|S2|s1|_~8\ = SHARE((\CalculaMedia|REG2|Q\(5) & \CalculaMedia|REG1|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|REG2|ALT_INV_Q\(5),
	datad => \CalculaMedia|REG1|ALT_INV_Q\(5),
	cin => \CalculaMedia|SUM1|S1|S2|s1|_~13\,
	sharein => \CalculaMedia|SUM1|S1|S2|s1|_~14\,
	sumout => \CalculaMedia|SUM1|S1|S2|s1|S\(1),
	cout => \CalculaMedia|SUM1|S1|S2|s1|_~7\,
	shareout => \CalculaMedia|SUM1|S1|S2|s1|_~8\);

-- Location: LABCELL_X51_Y2_N36
\CalculaMedia|SUM1|S1|S2|s1|S[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM1|S1|S2|s1|S\(2) = SUM(( !\CalculaMedia|REG2|Q\(6) $ (!\CalculaMedia|REG1|Q\(6)) ) + ( \CalculaMedia|SUM1|S1|S2|s1|_~8\ ) + ( \CalculaMedia|SUM1|S1|S2|s1|_~7\ ))
-- \CalculaMedia|SUM1|S1|S2|s1|_~10\ = CARRY(( !\CalculaMedia|REG2|Q\(6) $ (!\CalculaMedia|REG1|Q\(6)) ) + ( \CalculaMedia|SUM1|S1|S2|s1|_~8\ ) + ( \CalculaMedia|SUM1|S1|S2|s1|_~7\ ))
-- \CalculaMedia|SUM1|S1|S2|s1|_~11\ = SHARE((\CalculaMedia|REG2|Q\(6) & \CalculaMedia|REG1|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|REG2|ALT_INV_Q\(6),
	datad => \CalculaMedia|REG1|ALT_INV_Q\(6),
	cin => \CalculaMedia|SUM1|S1|S2|s1|_~7\,
	sharein => \CalculaMedia|SUM1|S1|S2|s1|_~8\,
	sumout => \CalculaMedia|SUM1|S1|S2|s1|S\(2),
	cout => \CalculaMedia|SUM1|S1|S2|s1|_~10\,
	shareout => \CalculaMedia|SUM1|S1|S2|s1|_~11\);

-- Location: LABCELL_X51_Y2_N39
\CalculaMedia|SUM1|S1|S2|s1|S[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM1|S1|S2|s1|S\(3) = SUM(( !\CalculaMedia|REG1|Q\(7) $ (!\CalculaMedia|REG2|Q\(7)) ) + ( \CalculaMedia|SUM1|S1|S2|s1|_~11\ ) + ( \CalculaMedia|SUM1|S1|S2|s1|_~10\ ))
-- \CalculaMedia|SUM1|S1|S2|s1|_~4\ = CARRY(( !\CalculaMedia|REG1|Q\(7) $ (!\CalculaMedia|REG2|Q\(7)) ) + ( \CalculaMedia|SUM1|S1|S2|s1|_~11\ ) + ( \CalculaMedia|SUM1|S1|S2|s1|_~10\ ))
-- \CalculaMedia|SUM1|S1|S2|s1|_~5\ = SHARE((\CalculaMedia|REG1|Q\(7) & \CalculaMedia|REG2|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|REG1|ALT_INV_Q\(7),
	datad => \CalculaMedia|REG2|ALT_INV_Q\(7),
	cin => \CalculaMedia|SUM1|S1|S2|s1|_~10\,
	sharein => \CalculaMedia|SUM1|S1|S2|s1|_~11\,
	sumout => \CalculaMedia|SUM1|S1|S2|s1|S\(3),
	cout => \CalculaMedia|SUM1|S1|S2|s1|_~4\,
	shareout => \CalculaMedia|SUM1|S1|S2|s1|_~5\);

-- Location: LABCELL_X51_Y2_N42
\CalculaMedia|SUM1|S1|S2|s1|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM1|S1|S2|s1|Cout~sumout\ = SUM(( GND ) + ( \CalculaMedia|SUM1|S1|S2|s1|_~5\ ) + ( \CalculaMedia|SUM1|S1|S2|s1|_~4\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \CalculaMedia|SUM1|S1|S2|s1|_~4\,
	sharein => \CalculaMedia|SUM1|S1|S2|s1|_~5\,
	sumout => \CalculaMedia|SUM1|S1|S2|s1|Cout~sumout\);

-- Location: LABCELL_X51_Y2_N51
\CalculaMedia|SUM1|S1|S2|d1|O~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM1|S1|S2|d1|O~0_combout\ = ( \CalculaMedia|SUM1|S1|S2|s1|S\(2) & ( \CalculaMedia|SUM1|S1|S2|s1|S\(3) ) ) # ( !\CalculaMedia|SUM1|S1|S2|s1|S\(2) & ( \CalculaMedia|SUM1|S1|S2|s1|S\(3) & ( \CalculaMedia|SUM1|S1|S2|s1|S\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CalculaMedia|SUM1|S1|S2|s1|ALT_INV_S\(1),
	datae => \CalculaMedia|SUM1|S1|S2|s1|ALT_INV_S\(2),
	dataf => \CalculaMedia|SUM1|S1|S2|s1|ALT_INV_S\(3),
	combout => \CalculaMedia|SUM1|S1|S2|d1|O~0_combout\);

-- Location: LABCELL_X51_Y4_N30
\CalculaMedia|SUM1|S1|S3|s1|S[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM1|S1|S3|s1|S\(0) = SUM(( !\CalculaMedia|REG2|Q\(8) $ (!\CalculaMedia|REG1|Q\(8) $ (((\CalculaMedia|SUM1|S1|S2|d1|O~0_combout\) # (\CalculaMedia|SUM1|S1|S2|s1|Cout~sumout\)))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM1|S1|S3|s1|_~13\ = CARRY(( !\CalculaMedia|REG2|Q\(8) $ (!\CalculaMedia|REG1|Q\(8) $ (((\CalculaMedia|SUM1|S1|S2|d1|O~0_combout\) # (\CalculaMedia|SUM1|S1|S2|s1|Cout~sumout\)))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM1|S1|S3|s1|_~14\ = SHARE((!\CalculaMedia|REG2|Q\(8) & (\CalculaMedia|REG1|Q\(8) & ((\CalculaMedia|SUM1|S1|S2|d1|O~0_combout\) # (\CalculaMedia|SUM1|S1|S2|s1|Cout~sumout\)))) # (\CalculaMedia|REG2|Q\(8) & 
-- (((\CalculaMedia|SUM1|S1|S2|d1|O~0_combout\) # (\CalculaMedia|SUM1|S1|S2|s1|Cout~sumout\)) # (\CalculaMedia|REG1|Q\(8)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101110111011100000000000000000110100110011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|REG2|ALT_INV_Q\(8),
	datab => \CalculaMedia|REG1|ALT_INV_Q\(8),
	datac => \CalculaMedia|SUM1|S1|S2|s1|ALT_INV_Cout~sumout\,
	datad => \CalculaMedia|SUM1|S1|S2|d1|ALT_INV_O~0_combout\,
	cin => GND,
	sharein => GND,
	sumout => \CalculaMedia|SUM1|S1|S3|s1|S\(0),
	cout => \CalculaMedia|SUM1|S1|S3|s1|_~13\,
	shareout => \CalculaMedia|SUM1|S1|S3|s1|_~14\);

-- Location: LABCELL_X51_Y4_N33
\CalculaMedia|SUM1|S1|S3|s1|S[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM1|S1|S3|s1|S\(1) = SUM(( !\CalculaMedia|REG2|Q\(9) $ (!\CalculaMedia|REG1|Q\(9)) ) + ( \CalculaMedia|SUM1|S1|S3|s1|_~14\ ) + ( \CalculaMedia|SUM1|S1|S3|s1|_~13\ ))
-- \CalculaMedia|SUM1|S1|S3|s1|_~7\ = CARRY(( !\CalculaMedia|REG2|Q\(9) $ (!\CalculaMedia|REG1|Q\(9)) ) + ( \CalculaMedia|SUM1|S1|S3|s1|_~14\ ) + ( \CalculaMedia|SUM1|S1|S3|s1|_~13\ ))
-- \CalculaMedia|SUM1|S1|S3|s1|_~8\ = SHARE((\CalculaMedia|REG2|Q\(9) & \CalculaMedia|REG1|Q\(9)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|REG2|ALT_INV_Q\(9),
	datad => \CalculaMedia|REG1|ALT_INV_Q\(9),
	cin => \CalculaMedia|SUM1|S1|S3|s1|_~13\,
	sharein => \CalculaMedia|SUM1|S1|S3|s1|_~14\,
	sumout => \CalculaMedia|SUM1|S1|S3|s1|S\(1),
	cout => \CalculaMedia|SUM1|S1|S3|s1|_~7\,
	shareout => \CalculaMedia|SUM1|S1|S3|s1|_~8\);

-- Location: LABCELL_X51_Y4_N36
\CalculaMedia|SUM1|S1|S3|s1|S[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM1|S1|S3|s1|S\(2) = SUM(( !\CalculaMedia|REG1|Q\(10) $ (!\CalculaMedia|REG2|Q\(10)) ) + ( \CalculaMedia|SUM1|S1|S3|s1|_~8\ ) + ( \CalculaMedia|SUM1|S1|S3|s1|_~7\ ))
-- \CalculaMedia|SUM1|S1|S3|s1|_~10\ = CARRY(( !\CalculaMedia|REG1|Q\(10) $ (!\CalculaMedia|REG2|Q\(10)) ) + ( \CalculaMedia|SUM1|S1|S3|s1|_~8\ ) + ( \CalculaMedia|SUM1|S1|S3|s1|_~7\ ))
-- \CalculaMedia|SUM1|S1|S3|s1|_~11\ = SHARE((\CalculaMedia|REG1|Q\(10) & \CalculaMedia|REG2|Q\(10)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000101101001011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|REG1|ALT_INV_Q\(10),
	datac => \CalculaMedia|REG2|ALT_INV_Q\(10),
	cin => \CalculaMedia|SUM1|S1|S3|s1|_~7\,
	sharein => \CalculaMedia|SUM1|S1|S3|s1|_~8\,
	sumout => \CalculaMedia|SUM1|S1|S3|s1|S\(2),
	cout => \CalculaMedia|SUM1|S1|S3|s1|_~10\,
	shareout => \CalculaMedia|SUM1|S1|S3|s1|_~11\);

-- Location: LABCELL_X51_Y4_N39
\CalculaMedia|SUM1|S1|S3|s1|S[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM1|S1|S3|s1|S\(3) = SUM(( !\CalculaMedia|REG2|Q\(11) $ (!\CalculaMedia|REG1|Q\(11)) ) + ( \CalculaMedia|SUM1|S1|S3|s1|_~11\ ) + ( \CalculaMedia|SUM1|S1|S3|s1|_~10\ ))
-- \CalculaMedia|SUM1|S1|S3|s1|_~4\ = CARRY(( !\CalculaMedia|REG2|Q\(11) $ (!\CalculaMedia|REG1|Q\(11)) ) + ( \CalculaMedia|SUM1|S1|S3|s1|_~11\ ) + ( \CalculaMedia|SUM1|S1|S3|s1|_~10\ ))
-- \CalculaMedia|SUM1|S1|S3|s1|_~5\ = SHARE((\CalculaMedia|REG2|Q\(11) & \CalculaMedia|REG1|Q\(11)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|REG2|ALT_INV_Q\(11),
	datad => \CalculaMedia|REG1|ALT_INV_Q\(11),
	cin => \CalculaMedia|SUM1|S1|S3|s1|_~10\,
	sharein => \CalculaMedia|SUM1|S1|S3|s1|_~11\,
	sumout => \CalculaMedia|SUM1|S1|S3|s1|S\(3),
	cout => \CalculaMedia|SUM1|S1|S3|s1|_~4\,
	shareout => \CalculaMedia|SUM1|S1|S3|s1|_~5\);

-- Location: LABCELL_X51_Y4_N42
\CalculaMedia|SUM1|S1|S3|s1|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM1|S1|S3|s1|Cout~sumout\ = SUM(( GND ) + ( \CalculaMedia|SUM1|S1|S3|s1|_~5\ ) + ( \CalculaMedia|SUM1|S1|S3|s1|_~4\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \CalculaMedia|SUM1|S1|S3|s1|_~4\,
	sharein => \CalculaMedia|SUM1|S1|S3|s1|_~5\,
	sumout => \CalculaMedia|SUM1|S1|S3|s1|Cout~sumout\);

-- Location: LABCELL_X51_Y4_N51
\CalculaMedia|SUM1|S1|S3|d1|O~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM1|S1|S3|d1|O~0_combout\ = ( \CalculaMedia|SUM1|S1|S3|s1|S\(1) & ( \CalculaMedia|SUM1|S1|S3|s1|S\(3) ) ) # ( !\CalculaMedia|SUM1|S1|S3|s1|S\(1) & ( (\CalculaMedia|SUM1|S1|S3|s1|S\(3) & \CalculaMedia|SUM1|S1|S3|s1|S\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|SUM1|S1|S3|s1|ALT_INV_S\(3),
	datad => \CalculaMedia|SUM1|S1|S3|s1|ALT_INV_S\(2),
	dataf => \CalculaMedia|SUM1|S1|S3|s1|ALT_INV_S\(1),
	combout => \CalculaMedia|SUM1|S1|S3|d1|O~0_combout\);

-- Location: MLABCELL_X52_Y6_N0
\CalculaMedia|SUM1|S1|S4|s1|S[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM1|S1|S4|s1|S\(0) = SUM(( !\CalculaMedia|REG1|Q\(12) $ (!\CalculaMedia|REG2|Q\(12) $ (((\CalculaMedia|SUM1|S1|S3|d1|O~0_combout\) # (\CalculaMedia|SUM1|S1|S3|s1|Cout~sumout\)))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM1|S1|S4|s1|_~13\ = CARRY(( !\CalculaMedia|REG1|Q\(12) $ (!\CalculaMedia|REG2|Q\(12) $ (((\CalculaMedia|SUM1|S1|S3|d1|O~0_combout\) # (\CalculaMedia|SUM1|S1|S3|s1|Cout~sumout\)))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM1|S1|S4|s1|_~14\ = SHARE((!\CalculaMedia|REG1|Q\(12) & (\CalculaMedia|REG2|Q\(12) & ((\CalculaMedia|SUM1|S1|S3|d1|O~0_combout\) # (\CalculaMedia|SUM1|S1|S3|s1|Cout~sumout\)))) # (\CalculaMedia|REG1|Q\(12) & 
-- (((\CalculaMedia|SUM1|S1|S3|d1|O~0_combout\) # (\CalculaMedia|SUM1|S1|S3|s1|Cout~sumout\)) # (\CalculaMedia|REG2|Q\(12)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101110111011100000000000000000110100110011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|REG1|ALT_INV_Q\(12),
	datab => \CalculaMedia|REG2|ALT_INV_Q\(12),
	datac => \CalculaMedia|SUM1|S1|S3|s1|ALT_INV_Cout~sumout\,
	datad => \CalculaMedia|SUM1|S1|S3|d1|ALT_INV_O~0_combout\,
	cin => GND,
	sharein => GND,
	sumout => \CalculaMedia|SUM1|S1|S4|s1|S\(0),
	cout => \CalculaMedia|SUM1|S1|S4|s1|_~13\,
	shareout => \CalculaMedia|SUM1|S1|S4|s1|_~14\);

-- Location: MLABCELL_X52_Y6_N3
\CalculaMedia|SUM1|S1|S4|s1|S[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM1|S1|S4|s1|S\(1) = SUM(( !\CalculaMedia|REG1|Q\(13) $ (!\CalculaMedia|REG2|Q\(13)) ) + ( \CalculaMedia|SUM1|S1|S4|s1|_~14\ ) + ( \CalculaMedia|SUM1|S1|S4|s1|_~13\ ))
-- \CalculaMedia|SUM1|S1|S4|s1|_~4\ = CARRY(( !\CalculaMedia|REG1|Q\(13) $ (!\CalculaMedia|REG2|Q\(13)) ) + ( \CalculaMedia|SUM1|S1|S4|s1|_~14\ ) + ( \CalculaMedia|SUM1|S1|S4|s1|_~13\ ))
-- \CalculaMedia|SUM1|S1|S4|s1|_~5\ = SHARE((\CalculaMedia|REG1|Q\(13) & \CalculaMedia|REG2|Q\(13)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|REG1|ALT_INV_Q\(13),
	datad => \CalculaMedia|REG2|ALT_INV_Q\(13),
	cin => \CalculaMedia|SUM1|S1|S4|s1|_~13\,
	sharein => \CalculaMedia|SUM1|S1|S4|s1|_~14\,
	sumout => \CalculaMedia|SUM1|S1|S4|s1|S\(1),
	cout => \CalculaMedia|SUM1|S1|S4|s1|_~4\,
	shareout => \CalculaMedia|SUM1|S1|S4|s1|_~5\);

-- Location: MLABCELL_X52_Y6_N6
\CalculaMedia|SUM1|S1|S4|s1|S[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM1|S1|S4|s1|S\(2) = SUM(( !\CalculaMedia|REG1|Q\(14) $ (!\CalculaMedia|REG2|Q\(14)) ) + ( \CalculaMedia|SUM1|S1|S4|s1|_~5\ ) + ( \CalculaMedia|SUM1|S1|S4|s1|_~4\ ))
-- \CalculaMedia|SUM1|S1|S4|s1|_~1\ = CARRY(( !\CalculaMedia|REG1|Q\(14) $ (!\CalculaMedia|REG2|Q\(14)) ) + ( \CalculaMedia|SUM1|S1|S4|s1|_~5\ ) + ( \CalculaMedia|SUM1|S1|S4|s1|_~4\ ))
-- \CalculaMedia|SUM1|S1|S4|s1|_~2\ = SHARE((\CalculaMedia|REG1|Q\(14) & \CalculaMedia|REG2|Q\(14)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|REG1|ALT_INV_Q\(14),
	datad => \CalculaMedia|REG2|ALT_INV_Q\(14),
	cin => \CalculaMedia|SUM1|S1|S4|s1|_~4\,
	sharein => \CalculaMedia|SUM1|S1|S4|s1|_~5\,
	sumout => \CalculaMedia|SUM1|S1|S4|s1|S\(2),
	cout => \CalculaMedia|SUM1|S1|S4|s1|_~1\,
	shareout => \CalculaMedia|SUM1|S1|S4|s1|_~2\);

-- Location: MLABCELL_X52_Y6_N9
\CalculaMedia|SUM1|S1|S4|s1|S[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM1|S1|S4|s1|S\(3) = SUM(( !\CalculaMedia|REG2|Q\(15) $ (!\CalculaMedia|REG1|Q\(15)) ) + ( \CalculaMedia|SUM1|S1|S4|s1|_~2\ ) + ( \CalculaMedia|SUM1|S1|S4|s1|_~1\ ))
-- \CalculaMedia|SUM1|S1|S4|s1|_~7\ = CARRY(( !\CalculaMedia|REG2|Q\(15) $ (!\CalculaMedia|REG1|Q\(15)) ) + ( \CalculaMedia|SUM1|S1|S4|s1|_~2\ ) + ( \CalculaMedia|SUM1|S1|S4|s1|_~1\ ))
-- \CalculaMedia|SUM1|S1|S4|s1|_~8\ = SHARE((\CalculaMedia|REG2|Q\(15) & \CalculaMedia|REG1|Q\(15)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|REG2|ALT_INV_Q\(15),
	datad => \CalculaMedia|REG1|ALT_INV_Q\(15),
	cin => \CalculaMedia|SUM1|S1|S4|s1|_~1\,
	sharein => \CalculaMedia|SUM1|S1|S4|s1|_~2\,
	sumout => \CalculaMedia|SUM1|S1|S4|s1|S\(3),
	cout => \CalculaMedia|SUM1|S1|S4|s1|_~7\,
	shareout => \CalculaMedia|SUM1|S1|S4|s1|_~8\);

-- Location: MLABCELL_X52_Y6_N12
\CalculaMedia|SUM1|S1|S4|s1|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM1|S1|S4|s1|Cout~sumout\ = SUM(( GND ) + ( \CalculaMedia|SUM1|S1|S4|s1|_~8\ ) + ( \CalculaMedia|SUM1|S1|S4|s1|_~7\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \CalculaMedia|SUM1|S1|S4|s1|_~7\,
	sharein => \CalculaMedia|SUM1|S1|S4|s1|_~8\,
	sumout => \CalculaMedia|SUM1|S1|S4|s1|Cout~sumout\);

-- Location: MLABCELL_X52_Y6_N21
\CalculaMedia|SUM1|S2|S1|s2|_~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM1|S2|S1|s2|_~0_combout\ = ( \CalculaMedia|SUM1|S1|S4|s1|S\(1) & ( \CalculaMedia|SUM1|S1|S4|s1|S\(2) & ( (\CalculaMedia|SUM1|S1|S4|s1|S\(3)) # (\CalculaMedia|SUM1|S1|S4|s1|Cout~sumout\) ) ) ) # ( !\CalculaMedia|SUM1|S1|S4|s1|S\(1) & ( 
-- \CalculaMedia|SUM1|S1|S4|s1|S\(2) & ( (\CalculaMedia|SUM1|S1|S4|s1|S\(3)) # (\CalculaMedia|SUM1|S1|S4|s1|Cout~sumout\) ) ) ) # ( \CalculaMedia|SUM1|S1|S4|s1|S\(1) & ( !\CalculaMedia|SUM1|S1|S4|s1|S\(2) & ( (\CalculaMedia|SUM1|S1|S4|s1|S\(3)) # 
-- (\CalculaMedia|SUM1|S1|S4|s1|Cout~sumout\) ) ) ) # ( !\CalculaMedia|SUM1|S1|S4|s1|S\(1) & ( !\CalculaMedia|SUM1|S1|S4|s1|S\(2) & ( \CalculaMedia|SUM1|S1|S4|s1|Cout~sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001111110011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CalculaMedia|SUM1|S1|S4|s1|ALT_INV_Cout~sumout\,
	datac => \CalculaMedia|SUM1|S1|S4|s1|ALT_INV_S\(3),
	datae => \CalculaMedia|SUM1|S1|S4|s1|ALT_INV_S\(1),
	dataf => \CalculaMedia|SUM1|S1|S4|s1|ALT_INV_S\(2),
	combout => \CalculaMedia|SUM1|S2|S1|s2|_~0_combout\);

-- Location: LABCELL_X51_Y4_N48
\CalculaMedia|DEMUX4|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|Equal2~0_combout\ = ( !\controlador|WideOr6~combout\ & ( (\controlador|WideOr8~combout\ & \controlador|WideOr7~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \controlador|ALT_INV_WideOr8~combout\,
	datad => \controlador|ALT_INV_WideOr7~combout\,
	dataf => \controlador|ALT_INV_WideOr6~combout\,
	combout => \CalculaMedia|DEMUX4|Equal2~0_combout\);

-- Location: LABCELL_X51_Y6_N21
\CalculaMedia|DEMUX4|S3[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S3\(14) = ( \CalculaMedia|DEMUX4|S3\(14) & ( (!\CalculaMedia|DEMUX4|Equal2~0_combout\) # (\pulso[14]~input_o\) ) ) # ( !\CalculaMedia|DEMUX4|S3\(14) & ( (\CalculaMedia|DEMUX4|Equal2~0_combout\ & \pulso[14]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CalculaMedia|DEMUX4|ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_pulso[14]~input_o\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S3\(14),
	combout => \CalculaMedia|DEMUX4|S3\(14));

-- Location: FF_X51_Y6_N31
\CalculaMedia|REG3|IQ[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|DEMUX4|S3\(14),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG3|IQ\(14));

-- Location: FF_X51_Y6_N59
\CalculaMedia|REG3|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG3|IQ\(14),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG3|Q\(14));

-- Location: LABCELL_X50_Y4_N57
\controlador|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controlador|WideOr6~0_combout\ = ( \controlador|Eatual.Perdeu~q\ ) # ( !\controlador|Eatual.Perdeu~q\ & ( \controlador|Eatual.CompletouJogada~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \controlador|ALT_INV_Eatual.CompletouJogada~q\,
	dataf => \controlador|ALT_INV_Eatual.Perdeu~q\,
	combout => \controlador|WideOr6~0_combout\);

-- Location: LABCELL_X50_Y4_N9
\CalculaMedia|DEMUX4|S4[15]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S4[15]~0_combout\ = ( \controlador|Eatual.Inicial~q\ & ( \controlador|Eatual.Rodada4~q\ ) ) # ( !\controlador|Eatual.Inicial~q\ & ( (\controlador|WideOr6~0_combout\) # (\controlador|Eatual.Rodada4~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \controlador|ALT_INV_Eatual.Rodada4~q\,
	datad => \controlador|ALT_INV_WideOr6~0_combout\,
	dataf => \controlador|ALT_INV_Eatual.Inicial~q\,
	combout => \CalculaMedia|DEMUX4|S4[15]~0_combout\);

-- Location: LABCELL_X51_Y6_N24
\CalculaMedia|DEMUX4|S4[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S4\(14) = ( \CalculaMedia|DEMUX4|S4[15]~0_combout\ & ( \CalculaMedia|DEMUX4|S4\(14) & ( \pulso[14]~input_o\ ) ) ) # ( !\CalculaMedia|DEMUX4|S4[15]~0_combout\ & ( \CalculaMedia|DEMUX4|S4\(14) ) ) # ( 
-- \CalculaMedia|DEMUX4|S4[15]~0_combout\ & ( !\CalculaMedia|DEMUX4|S4\(14) & ( \pulso[14]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_pulso[14]~input_o\,
	datae => \CalculaMedia|DEMUX4|ALT_INV_S4[15]~0_combout\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S4\(14),
	combout => \CalculaMedia|DEMUX4|S4\(14));

-- Location: FF_X51_Y6_N4
\CalculaMedia|REG4|IQ[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|DEMUX4|S4\(14),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG4|IQ\(14));

-- Location: FF_X51_Y6_N26
\CalculaMedia|REG4|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG4|IQ\(14),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG4|Q\(14));

-- Location: LABCELL_X51_Y6_N18
\CalculaMedia|DEMUX4|S3[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S3\(13) = ( \CalculaMedia|DEMUX4|S3\(13) & ( (!\CalculaMedia|DEMUX4|Equal2~0_combout\) # (\pulso[13]~input_o\) ) ) # ( !\CalculaMedia|DEMUX4|S3\(13) & ( (\CalculaMedia|DEMUX4|Equal2~0_combout\ & \pulso[13]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CalculaMedia|DEMUX4|ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_pulso[13]~input_o\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S3\(13),
	combout => \CalculaMedia|DEMUX4|S3\(13));

-- Location: FF_X51_Y6_N41
\CalculaMedia|REG3|IQ[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|DEMUX4|S3\(13),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG3|IQ\(13));

-- Location: FF_X51_Y6_N14
\CalculaMedia|REG3|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG3|IQ\(13),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG3|Q\(13));

-- Location: LABCELL_X51_Y6_N54
\CalculaMedia|DEMUX4|S4[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S4\(13) = ( \CalculaMedia|DEMUX4|S4\(13) & ( (!\CalculaMedia|DEMUX4|S4[15]~0_combout\) # (\pulso[13]~input_o\) ) ) # ( !\CalculaMedia|DEMUX4|S4\(13) & ( (\pulso[13]~input_o\ & \CalculaMedia|DEMUX4|S4[15]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pulso[13]~input_o\,
	datad => \CalculaMedia|DEMUX4|ALT_INV_S4[15]~0_combout\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S4\(13),
	combout => \CalculaMedia|DEMUX4|S4\(13));

-- Location: FF_X51_Y6_N56
\CalculaMedia|REG4|IQ[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|DEMUX4|S4\(13),
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG4|IQ\(13));

-- Location: FF_X51_Y6_N49
\CalculaMedia|REG4|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG4|IQ\(13),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG4|Q\(13));

-- Location: LABCELL_X50_Y6_N30
\CalculaMedia|DEMUX4|S4[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S4\(12) = ( \CalculaMedia|DEMUX4|S4[15]~0_combout\ & ( \CalculaMedia|DEMUX4|S4\(12) & ( \pulso[12]~input_o\ ) ) ) # ( !\CalculaMedia|DEMUX4|S4[15]~0_combout\ & ( \CalculaMedia|DEMUX4|S4\(12) ) ) # ( 
-- \CalculaMedia|DEMUX4|S4[15]~0_combout\ & ( !\CalculaMedia|DEMUX4|S4\(12) & ( \pulso[12]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pulso[12]~input_o\,
	datae => \CalculaMedia|DEMUX4|ALT_INV_S4[15]~0_combout\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S4\(12),
	combout => \CalculaMedia|DEMUX4|S4\(12));

-- Location: FF_X50_Y6_N31
\CalculaMedia|REG4|IQ[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|DEMUX4|S4\(12),
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG4|IQ\(12));

-- Location: FF_X51_Y6_N53
\CalculaMedia|REG4|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG4|IQ\(12),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG4|Q\(12));

-- Location: LABCELL_X50_Y6_N51
\CalculaMedia|DEMUX4|S3[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S3\(12) = ( \CalculaMedia|DEMUX4|Equal2~0_combout\ & ( \CalculaMedia|DEMUX4|S3\(12) & ( \pulso[12]~input_o\ ) ) ) # ( !\CalculaMedia|DEMUX4|Equal2~0_combout\ & ( \CalculaMedia|DEMUX4|S3\(12) ) ) # ( 
-- \CalculaMedia|DEMUX4|Equal2~0_combout\ & ( !\CalculaMedia|DEMUX4|S3\(12) & ( \pulso[12]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pulso[12]~input_o\,
	datae => \CalculaMedia|DEMUX4|ALT_INV_Equal2~0_combout\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S3\(12),
	combout => \CalculaMedia|DEMUX4|S3\(12));

-- Location: FF_X50_Y6_N52
\CalculaMedia|REG3|IQ[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|DEMUX4|S3\(12),
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG3|IQ\(12));

-- Location: FF_X51_Y6_N23
\CalculaMedia|REG3|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG3|IQ\(12),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG3|Q\(12));

-- Location: LABCELL_X50_Y4_N6
\CalculaMedia|DEMUX4|S4[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S4\(10) = ( \CalculaMedia|DEMUX4|S4\(10) & ( (!\CalculaMedia|DEMUX4|S4[15]~0_combout\) # (\pulso[10]~input_o\) ) ) # ( !\CalculaMedia|DEMUX4|S4\(10) & ( (\pulso[10]~input_o\ & \CalculaMedia|DEMUX4|S4[15]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pulso[10]~input_o\,
	datab => \CalculaMedia|DEMUX4|ALT_INV_S4[15]~0_combout\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S4\(10),
	combout => \CalculaMedia|DEMUX4|S4\(10));

-- Location: FF_X50_Y4_N7
\CalculaMedia|REG4|IQ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|DEMUX4|S4\(10),
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG4|IQ\(10));

-- Location: FF_X52_Y4_N50
\CalculaMedia|REG4|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG4|IQ\(10),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG4|Q\(10));

-- Location: MLABCELL_X52_Y4_N54
\CalculaMedia|DEMUX4|S3[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S3\(10) = ( \CalculaMedia|DEMUX4|Equal2~0_combout\ & ( \CalculaMedia|DEMUX4|S3\(10) & ( \pulso[10]~input_o\ ) ) ) # ( !\CalculaMedia|DEMUX4|Equal2~0_combout\ & ( \CalculaMedia|DEMUX4|S3\(10) ) ) # ( 
-- \CalculaMedia|DEMUX4|Equal2~0_combout\ & ( !\CalculaMedia|DEMUX4|S3\(10) & ( \pulso[10]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pulso[10]~input_o\,
	datae => \CalculaMedia|DEMUX4|ALT_INV_Equal2~0_combout\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S3\(10),
	combout => \CalculaMedia|DEMUX4|S3\(10));

-- Location: FF_X52_Y4_N46
\CalculaMedia|REG3|IQ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|DEMUX4|S3\(10),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG3|IQ\(10));

-- Location: FF_X52_Y4_N23
\CalculaMedia|REG3|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG3|IQ\(10),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG3|Q\(10));

-- Location: LABCELL_X51_Y4_N27
\CalculaMedia|DEMUX4|S3[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S3\(9) = ( \CalculaMedia|DEMUX4|Equal2~0_combout\ & ( \pulso[9]~input_o\ ) ) # ( !\CalculaMedia|DEMUX4|Equal2~0_combout\ & ( \CalculaMedia|DEMUX4|S3\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pulso[9]~input_o\,
	datac => \CalculaMedia|DEMUX4|ALT_INV_S3\(9),
	dataf => \CalculaMedia|DEMUX4|ALT_INV_Equal2~0_combout\,
	combout => \CalculaMedia|DEMUX4|S3\(9));

-- Location: FF_X51_Y4_N41
\CalculaMedia|REG3|IQ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|DEMUX4|S3\(9),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG3|IQ\(9));

-- Location: FF_X52_Y4_N14
\CalculaMedia|REG3|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG3|IQ\(9),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG3|Q\(9));

-- Location: LABCELL_X50_Y4_N18
\CalculaMedia|DEMUX4|S4[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S4\(9) = ( \CalculaMedia|DEMUX4|S4\(9) & ( (!\CalculaMedia|DEMUX4|S4[15]~0_combout\) # (\pulso[9]~input_o\) ) ) # ( !\CalculaMedia|DEMUX4|S4\(9) & ( (\CalculaMedia|DEMUX4|S4[15]~0_combout\ & \pulso[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CalculaMedia|DEMUX4|ALT_INV_S4[15]~0_combout\,
	datac => \ALT_INV_pulso[9]~input_o\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S4\(9),
	combout => \CalculaMedia|DEMUX4|S4\(9));

-- Location: FF_X50_Y4_N19
\CalculaMedia|REG4|IQ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|DEMUX4|S4\(9),
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG4|IQ\(9));

-- Location: FF_X52_Y4_N59
\CalculaMedia|REG4|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG4|IQ\(9),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG4|Q\(9));

-- Location: MLABCELL_X52_Y4_N15
\CalculaMedia|DEMUX4|S3[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S3\(8) = ( \CalculaMedia|DEMUX4|Equal2~0_combout\ & ( \CalculaMedia|DEMUX4|S3\(8) & ( \pulso[8]~input_o\ ) ) ) # ( !\CalculaMedia|DEMUX4|Equal2~0_combout\ & ( \CalculaMedia|DEMUX4|S3\(8) ) ) # ( \CalculaMedia|DEMUX4|Equal2~0_combout\ 
-- & ( !\CalculaMedia|DEMUX4|S3\(8) & ( \pulso[8]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pulso[8]~input_o\,
	datae => \CalculaMedia|DEMUX4|ALT_INV_Equal2~0_combout\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S3\(8),
	combout => \CalculaMedia|DEMUX4|S3\(8));

-- Location: FF_X52_Y4_N16
\CalculaMedia|REG3|IQ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|DEMUX4|S3\(8),
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG3|IQ\(8));

-- Location: FF_X52_Y4_N56
\CalculaMedia|REG3|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG3|IQ\(8),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG3|Q\(8));

-- Location: LABCELL_X51_Y4_N21
\CalculaMedia|DEMUX4|S4[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S4\(8) = ( \CalculaMedia|DEMUX4|S4\(8) & ( (!\CalculaMedia|DEMUX4|S4[15]~0_combout\) # (\pulso[8]~input_o\) ) ) # ( !\CalculaMedia|DEMUX4|S4\(8) & ( (\pulso[8]~input_o\ & \CalculaMedia|DEMUX4|S4[15]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_pulso[8]~input_o\,
	datac => \CalculaMedia|DEMUX4|ALT_INV_S4[15]~0_combout\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S4\(8),
	combout => \CalculaMedia|DEMUX4|S4\(8));

-- Location: FF_X51_Y4_N34
\CalculaMedia|REG4|IQ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|DEMUX4|S4\(8),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG4|IQ\(8));

-- Location: FF_X52_Y4_N20
\CalculaMedia|REG4|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG4|IQ\(8),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG4|Q\(8));

-- Location: LABCELL_X51_Y3_N27
\CalculaMedia|DEMUX4|S4[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S4\(7) = ( \CalculaMedia|DEMUX4|S4\(7) & ( (!\CalculaMedia|DEMUX4|S4[15]~0_combout\) # (\pulso[7]~input_o\) ) ) # ( !\CalculaMedia|DEMUX4|S4\(7) & ( (\pulso[7]~input_o\ & \CalculaMedia|DEMUX4|S4[15]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pulso[7]~input_o\,
	datac => \CalculaMedia|DEMUX4|ALT_INV_S4[15]~0_combout\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S4\(7),
	combout => \CalculaMedia|DEMUX4|S4\(7));

-- Location: FF_X51_Y3_N11
\CalculaMedia|REG4|IQ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|DEMUX4|S4\(7),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG4|IQ\(7));

-- Location: FF_X51_Y3_N53
\CalculaMedia|REG4|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG4|IQ\(7),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG4|Q\(7));

-- Location: LABCELL_X51_Y3_N42
\CalculaMedia|DEMUX4|S3[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S3\(7) = ( \CalculaMedia|DEMUX4|Equal2~0_combout\ & ( \pulso[7]~input_o\ ) ) # ( !\CalculaMedia|DEMUX4|Equal2~0_combout\ & ( \CalculaMedia|DEMUX4|S3\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pulso[7]~input_o\,
	datac => \CalculaMedia|DEMUX4|ALT_INV_S3\(7),
	dataf => \CalculaMedia|DEMUX4|ALT_INV_Equal2~0_combout\,
	combout => \CalculaMedia|DEMUX4|S3\(7));

-- Location: FF_X51_Y3_N8
\CalculaMedia|REG3|IQ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|DEMUX4|S3\(7),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG3|IQ\(7));

-- Location: FF_X51_Y3_N59
\CalculaMedia|REG3|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG3|IQ\(7),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG3|Q\(7));

-- Location: LABCELL_X50_Y3_N12
\CalculaMedia|DEMUX4|S3[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S3\(6) = ( \CalculaMedia|DEMUX4|Equal2~0_combout\ & ( \CalculaMedia|DEMUX4|S3\(6) & ( \pulso[6]~input_o\ ) ) ) # ( !\CalculaMedia|DEMUX4|Equal2~0_combout\ & ( \CalculaMedia|DEMUX4|S3\(6) ) ) # ( \CalculaMedia|DEMUX4|Equal2~0_combout\ 
-- & ( !\CalculaMedia|DEMUX4|S3\(6) & ( \pulso[6]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_pulso[6]~input_o\,
	datae => \CalculaMedia|DEMUX4|ALT_INV_Equal2~0_combout\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S3\(6),
	combout => \CalculaMedia|DEMUX4|S3\(6));

-- Location: FF_X50_Y3_N13
\CalculaMedia|REG3|IQ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|DEMUX4|S3\(6),
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG3|IQ\(6));

-- Location: FF_X51_Y3_N20
\CalculaMedia|REG3|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG3|IQ\(6),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG3|Q\(6));

-- Location: LABCELL_X51_Y3_N24
\CalculaMedia|DEMUX4|S4[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S4\(6) = ( \CalculaMedia|DEMUX4|S4\(6) & ( (!\CalculaMedia|DEMUX4|S4[15]~0_combout\) # (\pulso[6]~input_o\) ) ) # ( !\CalculaMedia|DEMUX4|S4\(6) & ( (\pulso[6]~input_o\ & \CalculaMedia|DEMUX4|S4[15]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_pulso[6]~input_o\,
	datac => \CalculaMedia|DEMUX4|ALT_INV_S4[15]~0_combout\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S4\(6),
	combout => \CalculaMedia|DEMUX4|S4\(6));

-- Location: FF_X51_Y3_N40
\CalculaMedia|REG4|IQ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|DEMUX4|S4\(6),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG4|IQ\(6));

-- Location: FF_X51_Y3_N29
\CalculaMedia|REG4|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG4|IQ\(6),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG4|Q\(6));

-- Location: LABCELL_X51_Y3_N48
\CalculaMedia|DEMUX4|S4[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S4\(5) = ( \CalculaMedia|DEMUX4|S4\(5) & ( (!\CalculaMedia|DEMUX4|S4[15]~0_combout\) # (\pulso[5]~input_o\) ) ) # ( !\CalculaMedia|DEMUX4|S4\(5) & ( (\pulso[5]~input_o\ & \CalculaMedia|DEMUX4|S4[15]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pulso[5]~input_o\,
	datad => \CalculaMedia|DEMUX4|ALT_INV_S4[15]~0_combout\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S4\(5),
	combout => \CalculaMedia|DEMUX4|S4\(5));

-- Location: FF_X51_Y3_N49
\CalculaMedia|REG4|IQ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|DEMUX4|S4\(5),
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG4|IQ\(5));

-- Location: FF_X51_Y3_N44
\CalculaMedia|REG4|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG4|IQ\(5),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG4|Q\(5));

-- Location: LABCELL_X51_Y3_N51
\CalculaMedia|DEMUX4|S3[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S3\(5) = ( \CalculaMedia|DEMUX4|Equal2~0_combout\ & ( \pulso[5]~input_o\ ) ) # ( !\CalculaMedia|DEMUX4|Equal2~0_combout\ & ( \CalculaMedia|DEMUX4|S3\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pulso[5]~input_o\,
	datac => \CalculaMedia|DEMUX4|ALT_INV_S3\(5),
	dataf => \CalculaMedia|DEMUX4|ALT_INV_Equal2~0_combout\,
	combout => \CalculaMedia|DEMUX4|S3\(5));

-- Location: FF_X51_Y3_N13
\CalculaMedia|REG3|IQ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|DEMUX4|S3\(5),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG3|IQ\(5));

-- Location: FF_X51_Y3_N56
\CalculaMedia|REG3|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG3|IQ\(5),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG3|Q\(5));

-- Location: LABCELL_X50_Y3_N57
\CalculaMedia|DEMUX4|S3[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S3\(4) = ( \CalculaMedia|DEMUX4|S3\(4) & ( \CalculaMedia|DEMUX4|Equal2~0_combout\ & ( \pulso[4]~input_o\ ) ) ) # ( !\CalculaMedia|DEMUX4|S3\(4) & ( \CalculaMedia|DEMUX4|Equal2~0_combout\ & ( \pulso[4]~input_o\ ) ) ) # ( 
-- \CalculaMedia|DEMUX4|S3\(4) & ( !\CalculaMedia|DEMUX4|Equal2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pulso[4]~input_o\,
	datae => \CalculaMedia|DEMUX4|ALT_INV_S3\(4),
	dataf => \CalculaMedia|DEMUX4|ALT_INV_Equal2~0_combout\,
	combout => \CalculaMedia|DEMUX4|S3\(4));

-- Location: LABCELL_X50_Y3_N33
\CalculaMedia|REG3|IQ[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|REG3|IQ[4]~feeder_combout\ = ( \CalculaMedia|DEMUX4|S3\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S3\(4),
	combout => \CalculaMedia|REG3|IQ[4]~feeder_combout\);

-- Location: FF_X50_Y3_N34
\CalculaMedia|REG3|IQ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|REG3|IQ[4]~feeder_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG3|IQ\(4));

-- Location: FF_X51_Y3_N26
\CalculaMedia|REG3|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG3|IQ\(4),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG3|Q\(4));

-- Location: LABCELL_X51_Y3_N57
\CalculaMedia|DEMUX4|S4[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S4\(4) = ( \CalculaMedia|DEMUX4|S4[15]~0_combout\ & ( \pulso[4]~input_o\ ) ) # ( !\CalculaMedia|DEMUX4|S4[15]~0_combout\ & ( \CalculaMedia|DEMUX4|S4\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pulso[4]~input_o\,
	datac => \CalculaMedia|DEMUX4|ALT_INV_S4\(4),
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S4[15]~0_combout\,
	combout => \CalculaMedia|DEMUX4|S4\(4));

-- Location: FF_X51_Y3_N16
\CalculaMedia|REG4|IQ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|DEMUX4|S4\(4),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG4|IQ\(4));

-- Location: FF_X51_Y3_N47
\CalculaMedia|REG4|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG4|IQ\(4),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG4|Q\(4));

-- Location: LABCELL_X50_Y3_N18
\CalculaMedia|DEMUX4|S3[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S3\(3) = ( \CalculaMedia|DEMUX4|Equal2~0_combout\ & ( \CalculaMedia|DEMUX4|S3\(3) & ( \pulso[3]~input_o\ ) ) ) # ( !\CalculaMedia|DEMUX4|Equal2~0_combout\ & ( \CalculaMedia|DEMUX4|S3\(3) ) ) # ( \CalculaMedia|DEMUX4|Equal2~0_combout\ 
-- & ( !\CalculaMedia|DEMUX4|S3\(3) & ( \pulso[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pulso[3]~input_o\,
	datae => \CalculaMedia|DEMUX4|ALT_INV_Equal2~0_combout\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S3\(3),
	combout => \CalculaMedia|DEMUX4|S3\(3));

-- Location: FF_X50_Y3_N19
\CalculaMedia|REG3|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|DEMUX4|S3\(3),
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG3|IQ\(3));

-- Location: MLABCELL_X52_Y3_N42
\CalculaMedia|REG3|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|REG3|Q[3]~feeder_combout\ = ( \CalculaMedia|REG3|IQ\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CalculaMedia|REG3|ALT_INV_IQ\(3),
	combout => \CalculaMedia|REG3|Q[3]~feeder_combout\);

-- Location: FF_X52_Y3_N44
\CalculaMedia|REG3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|REG3|Q[3]~feeder_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG3|Q\(3));

-- Location: LABCELL_X50_Y3_N39
\CalculaMedia|DEMUX4|S4[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S4\(3) = ( \CalculaMedia|DEMUX4|S4[15]~0_combout\ & ( \CalculaMedia|DEMUX4|S4\(3) & ( \pulso[3]~input_o\ ) ) ) # ( !\CalculaMedia|DEMUX4|S4[15]~0_combout\ & ( \CalculaMedia|DEMUX4|S4\(3) ) ) # ( \CalculaMedia|DEMUX4|S4[15]~0_combout\ 
-- & ( !\CalculaMedia|DEMUX4|S4\(3) & ( \pulso[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pulso[3]~input_o\,
	datae => \CalculaMedia|DEMUX4|ALT_INV_S4[15]~0_combout\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S4\(3),
	combout => \CalculaMedia|DEMUX4|S4\(3));

-- Location: FF_X50_Y3_N40
\CalculaMedia|REG4|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|DEMUX4|S4\(3),
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG4|IQ\(3));

-- Location: MLABCELL_X52_Y3_N48
\CalculaMedia|REG4|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|REG4|Q[3]~feeder_combout\ = ( \CalculaMedia|REG4|IQ\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CalculaMedia|REG4|ALT_INV_IQ\(3),
	combout => \CalculaMedia|REG4|Q[3]~feeder_combout\);

-- Location: FF_X52_Y3_N49
\CalculaMedia|REG4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|REG4|Q[3]~feeder_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG4|Q\(3));

-- Location: LABCELL_X51_Y3_N45
\CalculaMedia|DEMUX4|S4[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S4\(2) = ( \CalculaMedia|DEMUX4|S4[15]~0_combout\ & ( \pulso[2]~input_o\ ) ) # ( !\CalculaMedia|DEMUX4|S4[15]~0_combout\ & ( \CalculaMedia|DEMUX4|S4\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_pulso[2]~input_o\,
	datac => \CalculaMedia|DEMUX4|ALT_INV_S4\(2),
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S4[15]~0_combout\,
	combout => \CalculaMedia|DEMUX4|S4\(2));

-- Location: FF_X51_Y3_N23
\CalculaMedia|REG4|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|DEMUX4|S4\(2),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG4|IQ\(2));

-- Location: FF_X52_Y3_N26
\CalculaMedia|REG4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG4|IQ\(2),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG4|Q\(2));

-- Location: LABCELL_X51_Y3_N54
\CalculaMedia|DEMUX4|S3[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S3\(2) = ( \CalculaMedia|DEMUX4|Equal2~0_combout\ & ( \pulso[2]~input_o\ ) ) # ( !\CalculaMedia|DEMUX4|Equal2~0_combout\ & ( \CalculaMedia|DEMUX4|S3\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CalculaMedia|DEMUX4|ALT_INV_S3\(2),
	datac => \ALT_INV_pulso[2]~input_o\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_Equal2~0_combout\,
	combout => \CalculaMedia|DEMUX4|S3\(2));

-- Location: FF_X51_Y3_N4
\CalculaMedia|REG3|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|DEMUX4|S3\(2),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG3|IQ\(2));

-- Location: MLABCELL_X52_Y3_N27
\CalculaMedia|REG3|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|REG3|Q[2]~feeder_combout\ = ( \CalculaMedia|REG3|IQ\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CalculaMedia|REG3|ALT_INV_IQ\(2),
	combout => \CalculaMedia|REG3|Q[2]~feeder_combout\);

-- Location: FF_X52_Y3_N29
\CalculaMedia|REG3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|REG3|Q[2]~feeder_combout\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG3|Q\(2));

-- Location: LABCELL_X50_Y3_N0
\CalculaMedia|DEMUX4|S3[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S3\(1) = ( \CalculaMedia|DEMUX4|S3\(1) & ( \CalculaMedia|DEMUX4|Equal2~0_combout\ & ( \pulso[1]~input_o\ ) ) ) # ( !\CalculaMedia|DEMUX4|S3\(1) & ( \CalculaMedia|DEMUX4|Equal2~0_combout\ & ( \pulso[1]~input_o\ ) ) ) # ( 
-- \CalculaMedia|DEMUX4|S3\(1) & ( !\CalculaMedia|DEMUX4|Equal2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_pulso[1]~input_o\,
	datae => \CalculaMedia|DEMUX4|ALT_INV_S3\(1),
	dataf => \CalculaMedia|DEMUX4|ALT_INV_Equal2~0_combout\,
	combout => \CalculaMedia|DEMUX4|S3\(1));

-- Location: FF_X50_Y3_N1
\CalculaMedia|REG3|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|DEMUX4|S3\(1),
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG3|IQ\(1));

-- Location: FF_X52_Y3_N53
\CalculaMedia|REG3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG3|IQ\(1),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG3|Q\(1));

-- Location: LABCELL_X50_Y4_N33
\CalculaMedia|DEMUX4|S4[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S4\(1) = ( \CalculaMedia|DEMUX4|S4\(1) & ( (!\CalculaMedia|DEMUX4|S4[15]~0_combout\) # (\pulso[1]~input_o\) ) ) # ( !\CalculaMedia|DEMUX4|S4\(1) & ( (\CalculaMedia|DEMUX4|S4[15]~0_combout\ & \pulso[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|DEMUX4|ALT_INV_S4[15]~0_combout\,
	datad => \ALT_INV_pulso[1]~input_o\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S4\(1),
	combout => \CalculaMedia|DEMUX4|S4\(1));

-- Location: FF_X50_Y4_N34
\CalculaMedia|REG4|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|DEMUX4|S4\(1),
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG4|IQ\(1));

-- Location: FF_X52_Y3_N56
\CalculaMedia|REG4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG4|IQ\(1),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG4|Q\(1));

-- Location: MLABCELL_X52_Y4_N21
\CalculaMedia|DEMUX4|S3[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S3\(0) = ( \CalculaMedia|DEMUX4|S3\(0) & ( (!\CalculaMedia|DEMUX4|Equal2~0_combout\) # (\pulso[0]~input_o\) ) ) # ( !\CalculaMedia|DEMUX4|S3\(0) & ( (\pulso[0]~input_o\ & \CalculaMedia|DEMUX4|Equal2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pulso[0]~input_o\,
	datac => \CalculaMedia|DEMUX4|ALT_INV_Equal2~0_combout\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S3\(0),
	combout => \CalculaMedia|DEMUX4|S3\(0));

-- Location: FF_X52_Y4_N38
\CalculaMedia|REG3|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|DEMUX4|S3\(0),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG3|IQ\(0));

-- Location: FF_X52_Y3_N20
\CalculaMedia|REG3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG3|IQ\(0),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG3|Q\(0));

-- Location: LABCELL_X51_Y3_N18
\CalculaMedia|DEMUX4|S4[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S4\(0) = ( \CalculaMedia|DEMUX4|S4[15]~0_combout\ & ( \pulso[0]~input_o\ ) ) # ( !\CalculaMedia|DEMUX4|S4[15]~0_combout\ & ( \CalculaMedia|DEMUX4|S4\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CalculaMedia|DEMUX4|ALT_INV_S4\(0),
	datac => \ALT_INV_pulso[0]~input_o\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S4[15]~0_combout\,
	combout => \CalculaMedia|DEMUX4|S4\(0));

-- Location: FF_X51_Y3_N2
\CalculaMedia|REG4|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|DEMUX4|S4\(0),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG4|IQ\(0));

-- Location: FF_X52_Y3_N47
\CalculaMedia|REG4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG4|IQ\(0),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG4|Q\(0));

-- Location: MLABCELL_X52_Y3_N0
\CalculaMedia|SUM2|S1|S1|s1|S[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM2|S1|S1|s1|S\(0) = SUM(( !\CalculaMedia|REG3|Q\(0) $ (!\CalculaMedia|REG4|Q\(0)) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM2|S1|S1|s1|_~1\ = CARRY(( !\CalculaMedia|REG3|Q\(0) $ (!\CalculaMedia|REG4|Q\(0)) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM2|S1|S1|s1|_~2\ = SHARE((\CalculaMedia|REG3|Q\(0) & \CalculaMedia|REG4|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|REG3|ALT_INV_Q\(0),
	datad => \CalculaMedia|REG4|ALT_INV_Q\(0),
	cin => GND,
	sharein => GND,
	sumout => \CalculaMedia|SUM2|S1|S1|s1|S\(0),
	cout => \CalculaMedia|SUM2|S1|S1|s1|_~1\,
	shareout => \CalculaMedia|SUM2|S1|S1|s1|_~2\);

-- Location: MLABCELL_X52_Y3_N3
\CalculaMedia|SUM2|S1|S1|s1|S[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM2|S1|S1|s1|S\(1) = SUM(( !\CalculaMedia|REG3|Q\(1) $ (!\CalculaMedia|REG4|Q\(1)) ) + ( \CalculaMedia|SUM2|S1|S1|s1|_~2\ ) + ( \CalculaMedia|SUM2|S1|S1|s1|_~1\ ))
-- \CalculaMedia|SUM2|S1|S1|s1|_~10\ = CARRY(( !\CalculaMedia|REG3|Q\(1) $ (!\CalculaMedia|REG4|Q\(1)) ) + ( \CalculaMedia|SUM2|S1|S1|s1|_~2\ ) + ( \CalculaMedia|SUM2|S1|S1|s1|_~1\ ))
-- \CalculaMedia|SUM2|S1|S1|s1|_~11\ = SHARE((\CalculaMedia|REG3|Q\(1) & \CalculaMedia|REG4|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|REG3|ALT_INV_Q\(1),
	datad => \CalculaMedia|REG4|ALT_INV_Q\(1),
	cin => \CalculaMedia|SUM2|S1|S1|s1|_~1\,
	sharein => \CalculaMedia|SUM2|S1|S1|s1|_~2\,
	sumout => \CalculaMedia|SUM2|S1|S1|s1|S\(1),
	cout => \CalculaMedia|SUM2|S1|S1|s1|_~10\,
	shareout => \CalculaMedia|SUM2|S1|S1|s1|_~11\);

-- Location: MLABCELL_X52_Y3_N6
\CalculaMedia|SUM2|S1|S1|s1|S[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM2|S1|S1|s1|S\(2) = SUM(( !\CalculaMedia|REG4|Q\(2) $ (!\CalculaMedia|REG3|Q\(2)) ) + ( \CalculaMedia|SUM2|S1|S1|s1|_~11\ ) + ( \CalculaMedia|SUM2|S1|S1|s1|_~10\ ))
-- \CalculaMedia|SUM2|S1|S1|s1|_~13\ = CARRY(( !\CalculaMedia|REG4|Q\(2) $ (!\CalculaMedia|REG3|Q\(2)) ) + ( \CalculaMedia|SUM2|S1|S1|s1|_~11\ ) + ( \CalculaMedia|SUM2|S1|S1|s1|_~10\ ))
-- \CalculaMedia|SUM2|S1|S1|s1|_~14\ = SHARE((\CalculaMedia|REG4|Q\(2) & \CalculaMedia|REG3|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|REG4|ALT_INV_Q\(2),
	datad => \CalculaMedia|REG3|ALT_INV_Q\(2),
	cin => \CalculaMedia|SUM2|S1|S1|s1|_~10\,
	sharein => \CalculaMedia|SUM2|S1|S1|s1|_~11\,
	sumout => \CalculaMedia|SUM2|S1|S1|s1|S\(2),
	cout => \CalculaMedia|SUM2|S1|S1|s1|_~13\,
	shareout => \CalculaMedia|SUM2|S1|S1|s1|_~14\);

-- Location: MLABCELL_X52_Y3_N9
\CalculaMedia|SUM2|S1|S1|s1|S[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM2|S1|S1|s1|S\(3) = SUM(( !\CalculaMedia|REG3|Q\(3) $ (!\CalculaMedia|REG4|Q\(3)) ) + ( \CalculaMedia|SUM2|S1|S1|s1|_~14\ ) + ( \CalculaMedia|SUM2|S1|S1|s1|_~13\ ))
-- \CalculaMedia|SUM2|S1|S1|s1|_~7\ = CARRY(( !\CalculaMedia|REG3|Q\(3) $ (!\CalculaMedia|REG4|Q\(3)) ) + ( \CalculaMedia|SUM2|S1|S1|s1|_~14\ ) + ( \CalculaMedia|SUM2|S1|S1|s1|_~13\ ))
-- \CalculaMedia|SUM2|S1|S1|s1|_~8\ = SHARE((\CalculaMedia|REG3|Q\(3) & \CalculaMedia|REG4|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|REG3|ALT_INV_Q\(3),
	datad => \CalculaMedia|REG4|ALT_INV_Q\(3),
	cin => \CalculaMedia|SUM2|S1|S1|s1|_~13\,
	sharein => \CalculaMedia|SUM2|S1|S1|s1|_~14\,
	sumout => \CalculaMedia|SUM2|S1|S1|s1|S\(3),
	cout => \CalculaMedia|SUM2|S1|S1|s1|_~7\,
	shareout => \CalculaMedia|SUM2|S1|S1|s1|_~8\);

-- Location: MLABCELL_X52_Y3_N12
\CalculaMedia|SUM2|S1|S1|s1|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM2|S1|S1|s1|Cout~sumout\ = SUM(( GND ) + ( \CalculaMedia|SUM2|S1|S1|s1|_~8\ ) + ( \CalculaMedia|SUM2|S1|S1|s1|_~7\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \CalculaMedia|SUM2|S1|S1|s1|_~7\,
	sharein => \CalculaMedia|SUM2|S1|S1|s1|_~8\,
	sumout => \CalculaMedia|SUM2|S1|S1|s1|Cout~sumout\);

-- Location: MLABCELL_X52_Y3_N21
\CalculaMedia|SUM2|S1|S1|d1|O~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM2|S1|S1|d1|O~0_combout\ = ( \CalculaMedia|SUM2|S1|S1|s1|S\(1) & ( \CalculaMedia|SUM2|S1|S1|s1|S\(3) ) ) # ( !\CalculaMedia|SUM2|S1|S1|s1|S\(1) & ( \CalculaMedia|SUM2|S1|S1|s1|S\(3) & ( \CalculaMedia|SUM2|S1|S1|s1|S\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|SUM2|S1|S1|s1|ALT_INV_S\(2),
	datae => \CalculaMedia|SUM2|S1|S1|s1|ALT_INV_S\(1),
	dataf => \CalculaMedia|SUM2|S1|S1|s1|ALT_INV_S\(3),
	combout => \CalculaMedia|SUM2|S1|S1|d1|O~0_combout\);

-- Location: LABCELL_X51_Y3_N0
\CalculaMedia|SUM2|S1|S2|s1|S[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM2|S1|S2|s1|S\(0) = SUM(( !\CalculaMedia|REG3|Q\(4) $ (!\CalculaMedia|REG4|Q\(4) $ (((\CalculaMedia|SUM2|S1|S1|d1|O~0_combout\) # (\CalculaMedia|SUM2|S1|S1|s1|Cout~sumout\)))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM2|S1|S2|s1|_~13\ = CARRY(( !\CalculaMedia|REG3|Q\(4) $ (!\CalculaMedia|REG4|Q\(4) $ (((\CalculaMedia|SUM2|S1|S1|d1|O~0_combout\) # (\CalculaMedia|SUM2|S1|S1|s1|Cout~sumout\)))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM2|S1|S2|s1|_~14\ = SHARE((!\CalculaMedia|REG3|Q\(4) & (\CalculaMedia|REG4|Q\(4) & ((\CalculaMedia|SUM2|S1|S1|d1|O~0_combout\) # (\CalculaMedia|SUM2|S1|S1|s1|Cout~sumout\)))) # (\CalculaMedia|REG3|Q\(4) & 
-- (((\CalculaMedia|SUM2|S1|S1|d1|O~0_combout\) # (\CalculaMedia|SUM2|S1|S1|s1|Cout~sumout\)) # (\CalculaMedia|REG4|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101110111011100000000000000000110100110011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|REG3|ALT_INV_Q\(4),
	datab => \CalculaMedia|REG4|ALT_INV_Q\(4),
	datac => \CalculaMedia|SUM2|S1|S1|s1|ALT_INV_Cout~sumout\,
	datad => \CalculaMedia|SUM2|S1|S1|d1|ALT_INV_O~0_combout\,
	cin => GND,
	sharein => GND,
	sumout => \CalculaMedia|SUM2|S1|S2|s1|S\(0),
	cout => \CalculaMedia|SUM2|S1|S2|s1|_~13\,
	shareout => \CalculaMedia|SUM2|S1|S2|s1|_~14\);

-- Location: LABCELL_X51_Y3_N3
\CalculaMedia|SUM2|S1|S2|s1|S[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM2|S1|S2|s1|S\(1) = SUM(( !\CalculaMedia|REG4|Q\(5) $ (!\CalculaMedia|REG3|Q\(5)) ) + ( \CalculaMedia|SUM2|S1|S2|s1|_~14\ ) + ( \CalculaMedia|SUM2|S1|S2|s1|_~13\ ))
-- \CalculaMedia|SUM2|S1|S2|s1|_~7\ = CARRY(( !\CalculaMedia|REG4|Q\(5) $ (!\CalculaMedia|REG3|Q\(5)) ) + ( \CalculaMedia|SUM2|S1|S2|s1|_~14\ ) + ( \CalculaMedia|SUM2|S1|S2|s1|_~13\ ))
-- \CalculaMedia|SUM2|S1|S2|s1|_~8\ = SHARE((\CalculaMedia|REG4|Q\(5) & \CalculaMedia|REG3|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|REG4|ALT_INV_Q\(5),
	datad => \CalculaMedia|REG3|ALT_INV_Q\(5),
	cin => \CalculaMedia|SUM2|S1|S2|s1|_~13\,
	sharein => \CalculaMedia|SUM2|S1|S2|s1|_~14\,
	sumout => \CalculaMedia|SUM2|S1|S2|s1|S\(1),
	cout => \CalculaMedia|SUM2|S1|S2|s1|_~7\,
	shareout => \CalculaMedia|SUM2|S1|S2|s1|_~8\);

-- Location: LABCELL_X51_Y3_N6
\CalculaMedia|SUM2|S1|S2|s1|S[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM2|S1|S2|s1|S\(2) = SUM(( !\CalculaMedia|REG3|Q\(6) $ (!\CalculaMedia|REG4|Q\(6)) ) + ( \CalculaMedia|SUM2|S1|S2|s1|_~8\ ) + ( \CalculaMedia|SUM2|S1|S2|s1|_~7\ ))
-- \CalculaMedia|SUM2|S1|S2|s1|_~10\ = CARRY(( !\CalculaMedia|REG3|Q\(6) $ (!\CalculaMedia|REG4|Q\(6)) ) + ( \CalculaMedia|SUM2|S1|S2|s1|_~8\ ) + ( \CalculaMedia|SUM2|S1|S2|s1|_~7\ ))
-- \CalculaMedia|SUM2|S1|S2|s1|_~11\ = SHARE((\CalculaMedia|REG3|Q\(6) & \CalculaMedia|REG4|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|REG3|ALT_INV_Q\(6),
	datad => \CalculaMedia|REG4|ALT_INV_Q\(6),
	cin => \CalculaMedia|SUM2|S1|S2|s1|_~7\,
	sharein => \CalculaMedia|SUM2|S1|S2|s1|_~8\,
	sumout => \CalculaMedia|SUM2|S1|S2|s1|S\(2),
	cout => \CalculaMedia|SUM2|S1|S2|s1|_~10\,
	shareout => \CalculaMedia|SUM2|S1|S2|s1|_~11\);

-- Location: LABCELL_X51_Y3_N9
\CalculaMedia|SUM2|S1|S2|s1|S[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM2|S1|S2|s1|S\(3) = SUM(( !\CalculaMedia|REG4|Q\(7) $ (!\CalculaMedia|REG3|Q\(7)) ) + ( \CalculaMedia|SUM2|S1|S2|s1|_~11\ ) + ( \CalculaMedia|SUM2|S1|S2|s1|_~10\ ))
-- \CalculaMedia|SUM2|S1|S2|s1|_~4\ = CARRY(( !\CalculaMedia|REG4|Q\(7) $ (!\CalculaMedia|REG3|Q\(7)) ) + ( \CalculaMedia|SUM2|S1|S2|s1|_~11\ ) + ( \CalculaMedia|SUM2|S1|S2|s1|_~10\ ))
-- \CalculaMedia|SUM2|S1|S2|s1|_~5\ = SHARE((\CalculaMedia|REG4|Q\(7) & \CalculaMedia|REG3|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|REG4|ALT_INV_Q\(7),
	datad => \CalculaMedia|REG3|ALT_INV_Q\(7),
	cin => \CalculaMedia|SUM2|S1|S2|s1|_~10\,
	sharein => \CalculaMedia|SUM2|S1|S2|s1|_~11\,
	sumout => \CalculaMedia|SUM2|S1|S2|s1|S\(3),
	cout => \CalculaMedia|SUM2|S1|S2|s1|_~4\,
	shareout => \CalculaMedia|SUM2|S1|S2|s1|_~5\);

-- Location: LABCELL_X51_Y3_N12
\CalculaMedia|SUM2|S1|S2|s1|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM2|S1|S2|s1|Cout~sumout\ = SUM(( GND ) + ( \CalculaMedia|SUM2|S1|S2|s1|_~5\ ) + ( \CalculaMedia|SUM2|S1|S2|s1|_~4\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \CalculaMedia|SUM2|S1|S2|s1|_~4\,
	sharein => \CalculaMedia|SUM2|S1|S2|s1|_~5\,
	sumout => \CalculaMedia|SUM2|S1|S2|s1|Cout~sumout\);

-- Location: LABCELL_X51_Y3_N21
\CalculaMedia|SUM2|S1|S2|d1|O~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM2|S1|S2|d1|O~0_combout\ = ( \CalculaMedia|SUM2|S1|S2|s1|S\(3) & ( (\CalculaMedia|SUM2|S1|S2|s1|S\(2)) # (\CalculaMedia|SUM2|S1|S2|s1|S\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|SUM2|S1|S2|s1|ALT_INV_S\(1),
	datac => \CalculaMedia|SUM2|S1|S2|s1|ALT_INV_S\(2),
	dataf => \CalculaMedia|SUM2|S1|S2|s1|ALT_INV_S\(3),
	combout => \CalculaMedia|SUM2|S1|S2|d1|O~0_combout\);

-- Location: MLABCELL_X52_Y4_N30
\CalculaMedia|SUM2|S1|S3|s1|S[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM2|S1|S3|s1|S\(0) = SUM(( !\CalculaMedia|REG3|Q\(8) $ (!\CalculaMedia|REG4|Q\(8) $ (((\CalculaMedia|SUM2|S1|S2|d1|O~0_combout\) # (\CalculaMedia|SUM2|S1|S2|s1|Cout~sumout\)))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM2|S1|S3|s1|_~13\ = CARRY(( !\CalculaMedia|REG3|Q\(8) $ (!\CalculaMedia|REG4|Q\(8) $ (((\CalculaMedia|SUM2|S1|S2|d1|O~0_combout\) # (\CalculaMedia|SUM2|S1|S2|s1|Cout~sumout\)))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM2|S1|S3|s1|_~14\ = SHARE((!\CalculaMedia|REG3|Q\(8) & (\CalculaMedia|REG4|Q\(8) & ((\CalculaMedia|SUM2|S1|S2|d1|O~0_combout\) # (\CalculaMedia|SUM2|S1|S2|s1|Cout~sumout\)))) # (\CalculaMedia|REG3|Q\(8) & 
-- (((\CalculaMedia|SUM2|S1|S2|d1|O~0_combout\) # (\CalculaMedia|SUM2|S1|S2|s1|Cout~sumout\)) # (\CalculaMedia|REG4|Q\(8)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101110111011100000000000000000110100110011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|REG3|ALT_INV_Q\(8),
	datab => \CalculaMedia|REG4|ALT_INV_Q\(8),
	datac => \CalculaMedia|SUM2|S1|S2|s1|ALT_INV_Cout~sumout\,
	datad => \CalculaMedia|SUM2|S1|S2|d1|ALT_INV_O~0_combout\,
	cin => GND,
	sharein => GND,
	sumout => \CalculaMedia|SUM2|S1|S3|s1|S\(0),
	cout => \CalculaMedia|SUM2|S1|S3|s1|_~13\,
	shareout => \CalculaMedia|SUM2|S1|S3|s1|_~14\);

-- Location: MLABCELL_X52_Y4_N33
\CalculaMedia|SUM2|S1|S3|s1|S[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM2|S1|S3|s1|S\(1) = SUM(( !\CalculaMedia|REG3|Q\(9) $ (!\CalculaMedia|REG4|Q\(9)) ) + ( \CalculaMedia|SUM2|S1|S3|s1|_~14\ ) + ( \CalculaMedia|SUM2|S1|S3|s1|_~13\ ))
-- \CalculaMedia|SUM2|S1|S3|s1|_~7\ = CARRY(( !\CalculaMedia|REG3|Q\(9) $ (!\CalculaMedia|REG4|Q\(9)) ) + ( \CalculaMedia|SUM2|S1|S3|s1|_~14\ ) + ( \CalculaMedia|SUM2|S1|S3|s1|_~13\ ))
-- \CalculaMedia|SUM2|S1|S3|s1|_~8\ = SHARE((\CalculaMedia|REG3|Q\(9) & \CalculaMedia|REG4|Q\(9)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|REG3|ALT_INV_Q\(9),
	datad => \CalculaMedia|REG4|ALT_INV_Q\(9),
	cin => \CalculaMedia|SUM2|S1|S3|s1|_~13\,
	sharein => \CalculaMedia|SUM2|S1|S3|s1|_~14\,
	sumout => \CalculaMedia|SUM2|S1|S3|s1|S\(1),
	cout => \CalculaMedia|SUM2|S1|S3|s1|_~7\,
	shareout => \CalculaMedia|SUM2|S1|S3|s1|_~8\);

-- Location: MLABCELL_X52_Y4_N36
\CalculaMedia|SUM2|S1|S3|s1|S[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM2|S1|S3|s1|S\(2) = SUM(( !\CalculaMedia|REG4|Q\(10) $ (!\CalculaMedia|REG3|Q\(10)) ) + ( \CalculaMedia|SUM2|S1|S3|s1|_~8\ ) + ( \CalculaMedia|SUM2|S1|S3|s1|_~7\ ))
-- \CalculaMedia|SUM2|S1|S3|s1|_~10\ = CARRY(( !\CalculaMedia|REG4|Q\(10) $ (!\CalculaMedia|REG3|Q\(10)) ) + ( \CalculaMedia|SUM2|S1|S3|s1|_~8\ ) + ( \CalculaMedia|SUM2|S1|S3|s1|_~7\ ))
-- \CalculaMedia|SUM2|S1|S3|s1|_~11\ = SHARE((\CalculaMedia|REG4|Q\(10) & \CalculaMedia|REG3|Q\(10)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|REG4|ALT_INV_Q\(10),
	datad => \CalculaMedia|REG3|ALT_INV_Q\(10),
	cin => \CalculaMedia|SUM2|S1|S3|s1|_~7\,
	sharein => \CalculaMedia|SUM2|S1|S3|s1|_~8\,
	sumout => \CalculaMedia|SUM2|S1|S3|s1|S\(2),
	cout => \CalculaMedia|SUM2|S1|S3|s1|_~10\,
	shareout => \CalculaMedia|SUM2|S1|S3|s1|_~11\);

-- Location: LABCELL_X50_Y4_N54
\CalculaMedia|DEMUX4|S4[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S4\(11) = (!\CalculaMedia|DEMUX4|S4[15]~0_combout\ & ((\CalculaMedia|DEMUX4|S4\(11)))) # (\CalculaMedia|DEMUX4|S4[15]~0_combout\ & (\pulso[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CalculaMedia|DEMUX4|ALT_INV_S4[15]~0_combout\,
	datac => \ALT_INV_pulso[11]~input_o\,
	datad => \CalculaMedia|DEMUX4|ALT_INV_S4\(11),
	combout => \CalculaMedia|DEMUX4|S4\(11));

-- Location: FF_X50_Y4_N55
\CalculaMedia|REG4|IQ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|DEMUX4|S4\(11),
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG4|IQ\(11));

-- Location: FF_X52_Y4_N26
\CalculaMedia|REG4|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG4|IQ\(11),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG4|Q\(11));

-- Location: MLABCELL_X52_Y4_N51
\CalculaMedia|DEMUX4|S3[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S3\(11) = ( \CalculaMedia|DEMUX4|S3\(11) & ( (!\CalculaMedia|DEMUX4|Equal2~0_combout\) # (\pulso[11]~input_o\) ) ) # ( !\CalculaMedia|DEMUX4|S3\(11) & ( (\pulso[11]~input_o\ & \CalculaMedia|DEMUX4|Equal2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_pulso[11]~input_o\,
	datac => \CalculaMedia|DEMUX4|ALT_INV_Equal2~0_combout\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S3\(11),
	combout => \CalculaMedia|DEMUX4|S3\(11));

-- Location: FF_X52_Y4_N34
\CalculaMedia|REG3|IQ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|DEMUX4|S3\(11),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG3|IQ\(11));

-- Location: FF_X52_Y4_N53
\CalculaMedia|REG3|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG3|IQ\(11),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG3|Q\(11));

-- Location: MLABCELL_X52_Y4_N39
\CalculaMedia|SUM2|S1|S3|s1|S[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM2|S1|S3|s1|S\(3) = SUM(( !\CalculaMedia|REG4|Q\(11) $ (!\CalculaMedia|REG3|Q\(11)) ) + ( \CalculaMedia|SUM2|S1|S3|s1|_~11\ ) + ( \CalculaMedia|SUM2|S1|S3|s1|_~10\ ))
-- \CalculaMedia|SUM2|S1|S3|s1|_~4\ = CARRY(( !\CalculaMedia|REG4|Q\(11) $ (!\CalculaMedia|REG3|Q\(11)) ) + ( \CalculaMedia|SUM2|S1|S3|s1|_~11\ ) + ( \CalculaMedia|SUM2|S1|S3|s1|_~10\ ))
-- \CalculaMedia|SUM2|S1|S3|s1|_~5\ = SHARE((\CalculaMedia|REG4|Q\(11) & \CalculaMedia|REG3|Q\(11)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|REG4|ALT_INV_Q\(11),
	datad => \CalculaMedia|REG3|ALT_INV_Q\(11),
	cin => \CalculaMedia|SUM2|S1|S3|s1|_~10\,
	sharein => \CalculaMedia|SUM2|S1|S3|s1|_~11\,
	sumout => \CalculaMedia|SUM2|S1|S3|s1|S\(3),
	cout => \CalculaMedia|SUM2|S1|S3|s1|_~4\,
	shareout => \CalculaMedia|SUM2|S1|S3|s1|_~5\);

-- Location: MLABCELL_X52_Y4_N27
\CalculaMedia|SUM2|S1|S3|d1|O~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM2|S1|S3|d1|O~0_combout\ = ( \CalculaMedia|SUM2|S1|S3|s1|S\(1) & ( \CalculaMedia|SUM2|S1|S3|s1|S\(3) ) ) # ( !\CalculaMedia|SUM2|S1|S3|s1|S\(1) & ( (\CalculaMedia|SUM2|S1|S3|s1|S\(2) & \CalculaMedia|SUM2|S1|S3|s1|S\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|SUM2|S1|S3|s1|ALT_INV_S\(2),
	datac => \CalculaMedia|SUM2|S1|S3|s1|ALT_INV_S\(3),
	dataf => \CalculaMedia|SUM2|S1|S3|s1|ALT_INV_S\(1),
	combout => \CalculaMedia|SUM2|S1|S3|d1|O~0_combout\);

-- Location: MLABCELL_X52_Y4_N42
\CalculaMedia|SUM2|S1|S3|s1|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM2|S1|S3|s1|Cout~sumout\ = SUM(( GND ) + ( \CalculaMedia|SUM2|S1|S3|s1|_~5\ ) + ( \CalculaMedia|SUM2|S1|S3|s1|_~4\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \CalculaMedia|SUM2|S1|S3|s1|_~4\,
	sharein => \CalculaMedia|SUM2|S1|S3|s1|_~5\,
	sumout => \CalculaMedia|SUM2|S1|S3|s1|Cout~sumout\);

-- Location: LABCELL_X51_Y6_N30
\CalculaMedia|SUM2|S1|S4|s1|S[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM2|S1|S4|s1|S\(0) = SUM(( !\CalculaMedia|REG4|Q\(12) $ (!\CalculaMedia|REG3|Q\(12) $ (((\CalculaMedia|SUM2|S1|S3|s1|Cout~sumout\) # (\CalculaMedia|SUM2|S1|S3|d1|O~0_combout\)))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM2|S1|S4|s1|_~13\ = CARRY(( !\CalculaMedia|REG4|Q\(12) $ (!\CalculaMedia|REG3|Q\(12) $ (((\CalculaMedia|SUM2|S1|S3|s1|Cout~sumout\) # (\CalculaMedia|SUM2|S1|S3|d1|O~0_combout\)))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM2|S1|S4|s1|_~14\ = SHARE((!\CalculaMedia|REG4|Q\(12) & (\CalculaMedia|REG3|Q\(12) & ((\CalculaMedia|SUM2|S1|S3|s1|Cout~sumout\) # (\CalculaMedia|SUM2|S1|S3|d1|O~0_combout\)))) # (\CalculaMedia|REG4|Q\(12) & 
-- (((\CalculaMedia|SUM2|S1|S3|s1|Cout~sumout\) # (\CalculaMedia|SUM2|S1|S3|d1|O~0_combout\)) # (\CalculaMedia|REG3|Q\(12)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101110111011100000000000000000110100110011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|REG4|ALT_INV_Q\(12),
	datab => \CalculaMedia|REG3|ALT_INV_Q\(12),
	datac => \CalculaMedia|SUM2|S1|S3|d1|ALT_INV_O~0_combout\,
	datad => \CalculaMedia|SUM2|S1|S3|s1|ALT_INV_Cout~sumout\,
	cin => GND,
	sharein => GND,
	sumout => \CalculaMedia|SUM2|S1|S4|s1|S\(0),
	cout => \CalculaMedia|SUM2|S1|S4|s1|_~13\,
	shareout => \CalculaMedia|SUM2|S1|S4|s1|_~14\);

-- Location: LABCELL_X51_Y6_N33
\CalculaMedia|SUM2|S1|S4|s1|S[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM2|S1|S4|s1|S\(1) = SUM(( !\CalculaMedia|REG3|Q\(13) $ (!\CalculaMedia|REG4|Q\(13)) ) + ( \CalculaMedia|SUM2|S1|S4|s1|_~14\ ) + ( \CalculaMedia|SUM2|S1|S4|s1|_~13\ ))
-- \CalculaMedia|SUM2|S1|S4|s1|_~4\ = CARRY(( !\CalculaMedia|REG3|Q\(13) $ (!\CalculaMedia|REG4|Q\(13)) ) + ( \CalculaMedia|SUM2|S1|S4|s1|_~14\ ) + ( \CalculaMedia|SUM2|S1|S4|s1|_~13\ ))
-- \CalculaMedia|SUM2|S1|S4|s1|_~5\ = SHARE((\CalculaMedia|REG3|Q\(13) & \CalculaMedia|REG4|Q\(13)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|REG3|ALT_INV_Q\(13),
	datad => \CalculaMedia|REG4|ALT_INV_Q\(13),
	cin => \CalculaMedia|SUM2|S1|S4|s1|_~13\,
	sharein => \CalculaMedia|SUM2|S1|S4|s1|_~14\,
	sumout => \CalculaMedia|SUM2|S1|S4|s1|S\(1),
	cout => \CalculaMedia|SUM2|S1|S4|s1|_~4\,
	shareout => \CalculaMedia|SUM2|S1|S4|s1|_~5\);

-- Location: LABCELL_X51_Y6_N36
\CalculaMedia|SUM2|S1|S4|s1|S[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM2|S1|S4|s1|S\(2) = SUM(( !\CalculaMedia|REG3|Q\(14) $ (!\CalculaMedia|REG4|Q\(14)) ) + ( \CalculaMedia|SUM2|S1|S4|s1|_~5\ ) + ( \CalculaMedia|SUM2|S1|S4|s1|_~4\ ))
-- \CalculaMedia|SUM2|S1|S4|s1|_~1\ = CARRY(( !\CalculaMedia|REG3|Q\(14) $ (!\CalculaMedia|REG4|Q\(14)) ) + ( \CalculaMedia|SUM2|S1|S4|s1|_~5\ ) + ( \CalculaMedia|SUM2|S1|S4|s1|_~4\ ))
-- \CalculaMedia|SUM2|S1|S4|s1|_~2\ = SHARE((\CalculaMedia|REG3|Q\(14) & \CalculaMedia|REG4|Q\(14)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \CalculaMedia|REG3|ALT_INV_Q\(14),
	datac => \CalculaMedia|REG4|ALT_INV_Q\(14),
	cin => \CalculaMedia|SUM2|S1|S4|s1|_~4\,
	sharein => \CalculaMedia|SUM2|S1|S4|s1|_~5\,
	sumout => \CalculaMedia|SUM2|S1|S4|s1|S\(2),
	cout => \CalculaMedia|SUM2|S1|S4|s1|_~1\,
	shareout => \CalculaMedia|SUM2|S1|S4|s1|_~2\);

-- Location: LABCELL_X51_Y6_N57
\CalculaMedia|DEMUX4|S4[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S4\(15) = ( \CalculaMedia|DEMUX4|S4\(15) & ( (!\CalculaMedia|DEMUX4|S4[15]~0_combout\) # (\pulso[15]~input_o\) ) ) # ( !\CalculaMedia|DEMUX4|S4\(15) & ( (\CalculaMedia|DEMUX4|S4[15]~0_combout\ & \pulso[15]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|DEMUX4|ALT_INV_S4[15]~0_combout\,
	datab => \ALT_INV_pulso[15]~input_o\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S4\(15),
	combout => \CalculaMedia|DEMUX4|S4\(15));

-- Location: FF_X51_Y6_N35
\CalculaMedia|REG4|IQ[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|DEMUX4|S4\(15),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG4|IQ\(15));

-- Location: FF_X51_Y6_N20
\CalculaMedia|REG4|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG4|IQ\(15),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG4|Q\(15));

-- Location: LABCELL_X51_Y6_N15
\CalculaMedia|DEMUX4|S3[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|DEMUX4|S3\(15) = ( \CalculaMedia|DEMUX4|S3\(15) & ( (!\CalculaMedia|DEMUX4|Equal2~0_combout\) # (\pulso[15]~input_o\) ) ) # ( !\CalculaMedia|DEMUX4|S3\(15) & ( (\pulso[15]~input_o\ & \CalculaMedia|DEMUX4|Equal2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_pulso[15]~input_o\,
	datad => \CalculaMedia|DEMUX4|ALT_INV_Equal2~0_combout\,
	dataf => \CalculaMedia|DEMUX4|ALT_INV_S3\(15),
	combout => \CalculaMedia|DEMUX4|S3\(15));

-- Location: FF_X51_Y6_N16
\CalculaMedia|REG3|IQ[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|DEMUX4|S3\(15),
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG3|IQ\(15));

-- Location: FF_X51_Y6_N29
\CalculaMedia|REG3|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|REG3|IQ\(15),
	sload => VCC,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|REG3|Q\(15));

-- Location: LABCELL_X51_Y6_N39
\CalculaMedia|SUM2|S1|S4|s1|S[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM2|S1|S4|s1|S\(3) = SUM(( !\CalculaMedia|REG4|Q\(15) $ (!\CalculaMedia|REG3|Q\(15)) ) + ( \CalculaMedia|SUM2|S1|S4|s1|_~2\ ) + ( \CalculaMedia|SUM2|S1|S4|s1|_~1\ ))
-- \CalculaMedia|SUM2|S1|S4|s1|_~7\ = CARRY(( !\CalculaMedia|REG4|Q\(15) $ (!\CalculaMedia|REG3|Q\(15)) ) + ( \CalculaMedia|SUM2|S1|S4|s1|_~2\ ) + ( \CalculaMedia|SUM2|S1|S4|s1|_~1\ ))
-- \CalculaMedia|SUM2|S1|S4|s1|_~8\ = SHARE((\CalculaMedia|REG4|Q\(15) & \CalculaMedia|REG3|Q\(15)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|REG4|ALT_INV_Q\(15),
	datad => \CalculaMedia|REG3|ALT_INV_Q\(15),
	cin => \CalculaMedia|SUM2|S1|S4|s1|_~1\,
	sharein => \CalculaMedia|SUM2|S1|S4|s1|_~2\,
	sumout => \CalculaMedia|SUM2|S1|S4|s1|S\(3),
	cout => \CalculaMedia|SUM2|S1|S4|s1|_~7\,
	shareout => \CalculaMedia|SUM2|S1|S4|s1|_~8\);

-- Location: LABCELL_X51_Y6_N42
\CalculaMedia|SUM2|S1|S4|s1|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM2|S1|S4|s1|Cout~sumout\ = SUM(( GND ) + ( \CalculaMedia|SUM2|S1|S4|s1|_~8\ ) + ( \CalculaMedia|SUM2|S1|S4|s1|_~7\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \CalculaMedia|SUM2|S1|S4|s1|_~7\,
	sharein => \CalculaMedia|SUM2|S1|S4|s1|_~8\,
	sumout => \CalculaMedia|SUM2|S1|S4|s1|Cout~sumout\);

-- Location: MLABCELL_X52_Y6_N48
\CalculaMedia|SUM2|S2|S1|s2|_~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM2|S2|S1|s2|_~0_combout\ = ( \CalculaMedia|SUM2|S1|S4|s1|S\(1) & ( \CalculaMedia|SUM2|S1|S4|s1|S\(3) ) ) # ( !\CalculaMedia|SUM2|S1|S4|s1|S\(1) & ( \CalculaMedia|SUM2|S1|S4|s1|S\(3) & ( (\CalculaMedia|SUM2|S1|S4|s1|Cout~sumout\) # 
-- (\CalculaMedia|SUM2|S1|S4|s1|S\(2)) ) ) ) # ( \CalculaMedia|SUM2|S1|S4|s1|S\(1) & ( !\CalculaMedia|SUM2|S1|S4|s1|S\(3) & ( \CalculaMedia|SUM2|S1|S4|s1|Cout~sumout\ ) ) ) # ( !\CalculaMedia|SUM2|S1|S4|s1|S\(1) & ( !\CalculaMedia|SUM2|S1|S4|s1|S\(3) & ( 
-- \CalculaMedia|SUM2|S1|S4|s1|Cout~sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|SUM2|S1|S4|s1|ALT_INV_S\(2),
	datad => \CalculaMedia|SUM2|S1|S4|s1|ALT_INV_Cout~sumout\,
	datae => \CalculaMedia|SUM2|S1|S4|s1|ALT_INV_S\(1),
	dataf => \CalculaMedia|SUM2|S1|S4|s1|ALT_INV_S\(3),
	combout => \CalculaMedia|SUM2|S2|S1|s2|_~0_combout\);

-- Location: MLABCELL_X52_Y6_N30
\CalculaMedia|SUM1|S1|S4|s2|S[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM1|S1|S4|s2|S\(1) = SUM(( (!\CalculaMedia|SUM1|S1|S4|s1|S\(1) & (((\CalculaMedia|SUM1|S1|S4|s1|S\(2) & \CalculaMedia|SUM1|S1|S4|s1|S\(3))) # (\CalculaMedia|SUM1|S1|S4|s1|Cout~sumout\))) # (\CalculaMedia|SUM1|S1|S4|s1|S\(1) & 
-- (!\CalculaMedia|SUM1|S1|S4|s1|Cout~sumout\ & ((!\CalculaMedia|SUM1|S1|S4|s1|S\(3))))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM1|S1|S4|s2|_~4\ = CARRY(( (!\CalculaMedia|SUM1|S1|S4|s1|S\(1) & (((\CalculaMedia|SUM1|S1|S4|s1|S\(2) & \CalculaMedia|SUM1|S1|S4|s1|S\(3))) # (\CalculaMedia|SUM1|S1|S4|s1|Cout~sumout\))) # (\CalculaMedia|SUM1|S1|S4|s1|S\(1) & 
-- (!\CalculaMedia|SUM1|S1|S4|s1|Cout~sumout\ & ((!\CalculaMedia|SUM1|S1|S4|s1|S\(3))))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM1|S1|S4|s2|_~5\ = SHARE((\CalculaMedia|SUM1|S1|S4|s1|S\(1) & ((\CalculaMedia|SUM1|S1|S4|s1|S\(3)) # (\CalculaMedia|SUM1|S1|S4|s1|Cout~sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010101010100000000000000000110011000101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|SUM1|S1|S4|s1|ALT_INV_S\(1),
	datab => \CalculaMedia|SUM1|S1|S4|s1|ALT_INV_Cout~sumout\,
	datac => \CalculaMedia|SUM1|S1|S4|s1|ALT_INV_S\(2),
	datad => \CalculaMedia|SUM1|S1|S4|s1|ALT_INV_S\(3),
	cin => GND,
	sharein => GND,
	sumout => \CalculaMedia|SUM1|S1|S4|s2|S\(1),
	cout => \CalculaMedia|SUM1|S1|S4|s2|_~4\,
	shareout => \CalculaMedia|SUM1|S1|S4|s2|_~5\);

-- Location: LABCELL_X51_Y6_N0
\CalculaMedia|SUM2|S1|S4|s2|S[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM2|S1|S4|s2|S\(1) = SUM(( (!\CalculaMedia|SUM2|S1|S4|s1|S\(1) & (((\CalculaMedia|SUM2|S1|S4|s1|S\(2) & \CalculaMedia|SUM2|S1|S4|s1|S\(3))) # (\CalculaMedia|SUM2|S1|S4|s1|Cout~sumout\))) # (\CalculaMedia|SUM2|S1|S4|s1|S\(1) & 
-- (!\CalculaMedia|SUM2|S1|S4|s1|Cout~sumout\ & ((!\CalculaMedia|SUM2|S1|S4|s1|S\(3))))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM2|S1|S4|s2|_~4\ = CARRY(( (!\CalculaMedia|SUM2|S1|S4|s1|S\(1) & (((\CalculaMedia|SUM2|S1|S4|s1|S\(2) & \CalculaMedia|SUM2|S1|S4|s1|S\(3))) # (\CalculaMedia|SUM2|S1|S4|s1|Cout~sumout\))) # (\CalculaMedia|SUM2|S1|S4|s1|S\(1) & 
-- (!\CalculaMedia|SUM2|S1|S4|s1|Cout~sumout\ & ((!\CalculaMedia|SUM2|S1|S4|s1|S\(3))))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM2|S1|S4|s2|_~5\ = SHARE((\CalculaMedia|SUM2|S1|S4|s1|S\(1) & ((\CalculaMedia|SUM2|S1|S4|s1|S\(3)) # (\CalculaMedia|SUM2|S1|S4|s1|Cout~sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010101010100000000000000000110011000101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|SUM2|S1|S4|s1|ALT_INV_S\(1),
	datab => \CalculaMedia|SUM2|S1|S4|s1|ALT_INV_Cout~sumout\,
	datac => \CalculaMedia|SUM2|S1|S4|s1|ALT_INV_S\(2),
	datad => \CalculaMedia|SUM2|S1|S4|s1|ALT_INV_S\(3),
	cin => GND,
	sharein => GND,
	sumout => \CalculaMedia|SUM2|S1|S4|s2|S\(1),
	cout => \CalculaMedia|SUM2|S1|S4|s2|_~4\,
	shareout => \CalculaMedia|SUM2|S1|S4|s2|_~5\);

-- Location: MLABCELL_X52_Y4_N0
\CalculaMedia|SUM2|S1|S3|s2|S[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM2|S1|S3|s2|S\(1) = SUM(( (!\CalculaMedia|SUM2|S1|S3|s1|S\(1) & (((\CalculaMedia|SUM2|S1|S3|s1|S\(2) & \CalculaMedia|SUM2|S1|S3|s1|S\(3))) # (\CalculaMedia|SUM2|S1|S3|s1|Cout~sumout\))) # (\CalculaMedia|SUM2|S1|S3|s1|S\(1) & 
-- (!\CalculaMedia|SUM2|S1|S3|s1|Cout~sumout\ & ((!\CalculaMedia|SUM2|S1|S3|s1|S\(3))))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM2|S1|S3|s2|_~4\ = CARRY(( (!\CalculaMedia|SUM2|S1|S3|s1|S\(1) & (((\CalculaMedia|SUM2|S1|S3|s1|S\(2) & \CalculaMedia|SUM2|S1|S3|s1|S\(3))) # (\CalculaMedia|SUM2|S1|S3|s1|Cout~sumout\))) # (\CalculaMedia|SUM2|S1|S3|s1|S\(1) & 
-- (!\CalculaMedia|SUM2|S1|S3|s1|Cout~sumout\ & ((!\CalculaMedia|SUM2|S1|S3|s1|S\(3))))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM2|S1|S3|s2|_~5\ = SHARE((\CalculaMedia|SUM2|S1|S3|s1|S\(1) & ((\CalculaMedia|SUM2|S1|S3|s1|S\(3)) # (\CalculaMedia|SUM2|S1|S3|s1|Cout~sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010101010100000000000000000110011000101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|SUM2|S1|S3|s1|ALT_INV_S\(1),
	datab => \CalculaMedia|SUM2|S1|S3|s1|ALT_INV_Cout~sumout\,
	datac => \CalculaMedia|SUM2|S1|S3|s1|ALT_INV_S\(2),
	datad => \CalculaMedia|SUM2|S1|S3|s1|ALT_INV_S\(3),
	cin => GND,
	sharein => GND,
	sumout => \CalculaMedia|SUM2|S1|S3|s2|S\(1),
	cout => \CalculaMedia|SUM2|S1|S3|s2|_~4\,
	shareout => \CalculaMedia|SUM2|S1|S3|s2|_~5\);

-- Location: MLABCELL_X52_Y4_N3
\CalculaMedia|SUM2|S1|S3|s2|S[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM2|S1|S3|s2|S\(2) = SUM(( (!\CalculaMedia|SUM2|S1|S3|s1|Cout~sumout\ & ((!\CalculaMedia|SUM2|S1|S3|s1|S\(3) & ((\CalculaMedia|SUM2|S1|S3|s1|S\(2)))) # (\CalculaMedia|SUM2|S1|S3|s1|S\(3) & (\CalculaMedia|SUM2|S1|S3|s1|S\(1) & 
-- !\CalculaMedia|SUM2|S1|S3|s1|S\(2))))) # (\CalculaMedia|SUM2|S1|S3|s1|Cout~sumout\ & (((!\CalculaMedia|SUM2|S1|S3|s1|S\(2))))) ) + ( \CalculaMedia|SUM2|S1|S3|s2|_~5\ ) + ( \CalculaMedia|SUM2|S1|S3|s2|_~4\ ))
-- \CalculaMedia|SUM2|S1|S3|s2|_~7\ = CARRY(( (!\CalculaMedia|SUM2|S1|S3|s1|Cout~sumout\ & ((!\CalculaMedia|SUM2|S1|S3|s1|S\(3) & ((\CalculaMedia|SUM2|S1|S3|s1|S\(2)))) # (\CalculaMedia|SUM2|S1|S3|s1|S\(3) & (\CalculaMedia|SUM2|S1|S3|s1|S\(1) & 
-- !\CalculaMedia|SUM2|S1|S3|s1|S\(2))))) # (\CalculaMedia|SUM2|S1|S3|s1|Cout~sumout\ & (((!\CalculaMedia|SUM2|S1|S3|s1|S\(2))))) ) + ( \CalculaMedia|SUM2|S1|S3|s2|_~5\ ) + ( \CalculaMedia|SUM2|S1|S3|s2|_~4\ ))
-- \CalculaMedia|SUM2|S1|S3|s2|_~8\ = SHARE((\CalculaMedia|SUM2|S1|S3|s1|S\(2) & ((\CalculaMedia|SUM2|S1|S3|s1|S\(3)) # (\CalculaMedia|SUM2|S1|S3|s1|Cout~sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011111100000000000000000011011111000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|SUM2|S1|S3|s1|ALT_INV_S\(1),
	datab => \CalculaMedia|SUM2|S1|S3|s1|ALT_INV_Cout~sumout\,
	datac => \CalculaMedia|SUM2|S1|S3|s1|ALT_INV_S\(3),
	datad => \CalculaMedia|SUM2|S1|S3|s1|ALT_INV_S\(2),
	cin => \CalculaMedia|SUM2|S1|S3|s2|_~4\,
	sharein => \CalculaMedia|SUM2|S1|S3|s2|_~5\,
	sumout => \CalculaMedia|SUM2|S1|S3|s2|S\(2),
	cout => \CalculaMedia|SUM2|S1|S3|s2|_~7\,
	shareout => \CalculaMedia|SUM2|S1|S3|s2|_~8\);

-- Location: MLABCELL_X52_Y4_N6
\CalculaMedia|SUM2|S1|S3|s2|S[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM2|S1|S3|s2|S\(3) = SUM(( \CalculaMedia|SUM2|S1|S3|s1|S\(3) ) + ( \CalculaMedia|SUM2|S1|S3|s2|_~8\ ) + ( \CalculaMedia|SUM2|S1|S3|s2|_~7\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \CalculaMedia|SUM2|S1|S3|s1|ALT_INV_S\(3),
	cin => \CalculaMedia|SUM2|S1|S3|s2|_~7\,
	sharein => \CalculaMedia|SUM2|S1|S3|s2|_~8\,
	sumout => \CalculaMedia|SUM2|S1|S3|s2|S\(3));

-- Location: LABCELL_X51_Y4_N0
\CalculaMedia|SUM1|S1|S3|s2|S[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM1|S1|S3|s2|S\(1) = SUM(( (!\CalculaMedia|SUM1|S1|S3|s1|S\(1) & (((\CalculaMedia|SUM1|S1|S3|s1|S\(2) & \CalculaMedia|SUM1|S1|S3|s1|S\(3))) # (\CalculaMedia|SUM1|S1|S3|s1|Cout~sumout\))) # (\CalculaMedia|SUM1|S1|S3|s1|S\(1) & 
-- (!\CalculaMedia|SUM1|S1|S3|s1|Cout~sumout\ & ((!\CalculaMedia|SUM1|S1|S3|s1|S\(3))))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM1|S1|S3|s2|_~4\ = CARRY(( (!\CalculaMedia|SUM1|S1|S3|s1|S\(1) & (((\CalculaMedia|SUM1|S1|S3|s1|S\(2) & \CalculaMedia|SUM1|S1|S3|s1|S\(3))) # (\CalculaMedia|SUM1|S1|S3|s1|Cout~sumout\))) # (\CalculaMedia|SUM1|S1|S3|s1|S\(1) & 
-- (!\CalculaMedia|SUM1|S1|S3|s1|Cout~sumout\ & ((!\CalculaMedia|SUM1|S1|S3|s1|S\(3))))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM1|S1|S3|s2|_~5\ = SHARE((\CalculaMedia|SUM1|S1|S3|s1|S\(1) & ((\CalculaMedia|SUM1|S1|S3|s1|S\(3)) # (\CalculaMedia|SUM1|S1|S3|s1|Cout~sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010101010100000000000000000110011000101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|SUM1|S1|S3|s1|ALT_INV_S\(1),
	datab => \CalculaMedia|SUM1|S1|S3|s1|ALT_INV_Cout~sumout\,
	datac => \CalculaMedia|SUM1|S1|S3|s1|ALT_INV_S\(2),
	datad => \CalculaMedia|SUM1|S1|S3|s1|ALT_INV_S\(3),
	cin => GND,
	sharein => GND,
	sumout => \CalculaMedia|SUM1|S1|S3|s2|S\(1),
	cout => \CalculaMedia|SUM1|S1|S3|s2|_~4\,
	shareout => \CalculaMedia|SUM1|S1|S3|s2|_~5\);

-- Location: LABCELL_X51_Y4_N3
\CalculaMedia|SUM1|S1|S3|s2|S[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM1|S1|S3|s2|S\(2) = SUM(( (!\CalculaMedia|SUM1|S1|S3|s1|Cout~sumout\ & ((!\CalculaMedia|SUM1|S1|S3|s1|S\(3) & ((\CalculaMedia|SUM1|S1|S3|s1|S\(2)))) # (\CalculaMedia|SUM1|S1|S3|s1|S\(3) & (\CalculaMedia|SUM1|S1|S3|s1|S\(1) & 
-- !\CalculaMedia|SUM1|S1|S3|s1|S\(2))))) # (\CalculaMedia|SUM1|S1|S3|s1|Cout~sumout\ & (((!\CalculaMedia|SUM1|S1|S3|s1|S\(2))))) ) + ( \CalculaMedia|SUM1|S1|S3|s2|_~5\ ) + ( \CalculaMedia|SUM1|S1|S3|s2|_~4\ ))
-- \CalculaMedia|SUM1|S1|S3|s2|_~7\ = CARRY(( (!\CalculaMedia|SUM1|S1|S3|s1|Cout~sumout\ & ((!\CalculaMedia|SUM1|S1|S3|s1|S\(3) & ((\CalculaMedia|SUM1|S1|S3|s1|S\(2)))) # (\CalculaMedia|SUM1|S1|S3|s1|S\(3) & (\CalculaMedia|SUM1|S1|S3|s1|S\(1) & 
-- !\CalculaMedia|SUM1|S1|S3|s1|S\(2))))) # (\CalculaMedia|SUM1|S1|S3|s1|Cout~sumout\ & (((!\CalculaMedia|SUM1|S1|S3|s1|S\(2))))) ) + ( \CalculaMedia|SUM1|S1|S3|s2|_~5\ ) + ( \CalculaMedia|SUM1|S1|S3|s2|_~4\ ))
-- \CalculaMedia|SUM1|S1|S3|s2|_~8\ = SHARE((\CalculaMedia|SUM1|S1|S3|s1|S\(2) & ((\CalculaMedia|SUM1|S1|S3|s1|S\(3)) # (\CalculaMedia|SUM1|S1|S3|s1|Cout~sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011111100000000000000000011011111000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|SUM1|S1|S3|s1|ALT_INV_S\(1),
	datab => \CalculaMedia|SUM1|S1|S3|s1|ALT_INV_Cout~sumout\,
	datac => \CalculaMedia|SUM1|S1|S3|s1|ALT_INV_S\(3),
	datad => \CalculaMedia|SUM1|S1|S3|s1|ALT_INV_S\(2),
	cin => \CalculaMedia|SUM1|S1|S3|s2|_~4\,
	sharein => \CalculaMedia|SUM1|S1|S3|s2|_~5\,
	sumout => \CalculaMedia|SUM1|S1|S3|s2|S\(2),
	cout => \CalculaMedia|SUM1|S1|S3|s2|_~7\,
	shareout => \CalculaMedia|SUM1|S1|S3|s2|_~8\);

-- Location: LABCELL_X51_Y4_N6
\CalculaMedia|SUM1|S1|S3|s2|S[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM1|S1|S3|s2|S\(3) = SUM(( \CalculaMedia|SUM1|S1|S3|s1|S\(3) ) + ( \CalculaMedia|SUM1|S1|S3|s2|_~8\ ) + ( \CalculaMedia|SUM1|S1|S3|s2|_~7\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \CalculaMedia|SUM1|S1|S3|s1|ALT_INV_S\(3),
	cin => \CalculaMedia|SUM1|S1|S3|s2|_~7\,
	sharein => \CalculaMedia|SUM1|S1|S3|s2|_~8\,
	sumout => \CalculaMedia|SUM1|S1|S3|s2|S\(3));

-- Location: LABCELL_X51_Y3_N30
\CalculaMedia|SUM2|S1|S2|s2|S[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM2|S1|S2|s2|S\(1) = SUM(( (!\CalculaMedia|SUM2|S1|S2|s1|S\(1) & (((\CalculaMedia|SUM2|S1|S2|s1|S\(2) & \CalculaMedia|SUM2|S1|S2|s1|S\(3))) # (\CalculaMedia|SUM2|S1|S2|s1|Cout~sumout\))) # (\CalculaMedia|SUM2|S1|S2|s1|S\(1) & 
-- (!\CalculaMedia|SUM2|S1|S2|s1|Cout~sumout\ & ((!\CalculaMedia|SUM2|S1|S2|s1|S\(3))))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM2|S1|S2|s2|_~4\ = CARRY(( (!\CalculaMedia|SUM2|S1|S2|s1|S\(1) & (((\CalculaMedia|SUM2|S1|S2|s1|S\(2) & \CalculaMedia|SUM2|S1|S2|s1|S\(3))) # (\CalculaMedia|SUM2|S1|S2|s1|Cout~sumout\))) # (\CalculaMedia|SUM2|S1|S2|s1|S\(1) & 
-- (!\CalculaMedia|SUM2|S1|S2|s1|Cout~sumout\ & ((!\CalculaMedia|SUM2|S1|S2|s1|S\(3))))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM2|S1|S2|s2|_~5\ = SHARE((\CalculaMedia|SUM2|S1|S2|s1|S\(1) & ((\CalculaMedia|SUM2|S1|S2|s1|S\(3)) # (\CalculaMedia|SUM2|S1|S2|s1|Cout~sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010101010100000000000000000110011000101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|SUM2|S1|S2|s1|ALT_INV_S\(1),
	datab => \CalculaMedia|SUM2|S1|S2|s1|ALT_INV_Cout~sumout\,
	datac => \CalculaMedia|SUM2|S1|S2|s1|ALT_INV_S\(2),
	datad => \CalculaMedia|SUM2|S1|S2|s1|ALT_INV_S\(3),
	cin => GND,
	sharein => GND,
	sumout => \CalculaMedia|SUM2|S1|S2|s2|S\(1),
	cout => \CalculaMedia|SUM2|S1|S2|s2|_~4\,
	shareout => \CalculaMedia|SUM2|S1|S2|s2|_~5\);

-- Location: LABCELL_X51_Y3_N33
\CalculaMedia|SUM2|S1|S2|s2|S[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM2|S1|S2|s2|S\(2) = SUM(( (!\CalculaMedia|SUM2|S1|S2|s1|Cout~sumout\ & ((!\CalculaMedia|SUM2|S1|S2|s1|S\(3) & ((\CalculaMedia|SUM2|S1|S2|s1|S\(2)))) # (\CalculaMedia|SUM2|S1|S2|s1|S\(3) & (\CalculaMedia|SUM2|S1|S2|s1|S\(1) & 
-- !\CalculaMedia|SUM2|S1|S2|s1|S\(2))))) # (\CalculaMedia|SUM2|S1|S2|s1|Cout~sumout\ & (((!\CalculaMedia|SUM2|S1|S2|s1|S\(2))))) ) + ( \CalculaMedia|SUM2|S1|S2|s2|_~5\ ) + ( \CalculaMedia|SUM2|S1|S2|s2|_~4\ ))
-- \CalculaMedia|SUM2|S1|S2|s2|_~7\ = CARRY(( (!\CalculaMedia|SUM2|S1|S2|s1|Cout~sumout\ & ((!\CalculaMedia|SUM2|S1|S2|s1|S\(3) & ((\CalculaMedia|SUM2|S1|S2|s1|S\(2)))) # (\CalculaMedia|SUM2|S1|S2|s1|S\(3) & (\CalculaMedia|SUM2|S1|S2|s1|S\(1) & 
-- !\CalculaMedia|SUM2|S1|S2|s1|S\(2))))) # (\CalculaMedia|SUM2|S1|S2|s1|Cout~sumout\ & (((!\CalculaMedia|SUM2|S1|S2|s1|S\(2))))) ) + ( \CalculaMedia|SUM2|S1|S2|s2|_~5\ ) + ( \CalculaMedia|SUM2|S1|S2|s2|_~4\ ))
-- \CalculaMedia|SUM2|S1|S2|s2|_~8\ = SHARE((\CalculaMedia|SUM2|S1|S2|s1|S\(2) & ((\CalculaMedia|SUM2|S1|S2|s1|S\(3)) # (\CalculaMedia|SUM2|S1|S2|s1|Cout~sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011111100000000000000000011011111000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|SUM2|S1|S2|s1|ALT_INV_S\(1),
	datab => \CalculaMedia|SUM2|S1|S2|s1|ALT_INV_Cout~sumout\,
	datac => \CalculaMedia|SUM2|S1|S2|s1|ALT_INV_S\(3),
	datad => \CalculaMedia|SUM2|S1|S2|s1|ALT_INV_S\(2),
	cin => \CalculaMedia|SUM2|S1|S2|s2|_~4\,
	sharein => \CalculaMedia|SUM2|S1|S2|s2|_~5\,
	sumout => \CalculaMedia|SUM2|S1|S2|s2|S\(2),
	cout => \CalculaMedia|SUM2|S1|S2|s2|_~7\,
	shareout => \CalculaMedia|SUM2|S1|S2|s2|_~8\);

-- Location: LABCELL_X51_Y3_N36
\CalculaMedia|SUM2|S1|S2|s2|S[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM2|S1|S2|s2|S\(3) = SUM(( \CalculaMedia|SUM2|S1|S2|s1|S\(3) ) + ( \CalculaMedia|SUM2|S1|S2|s2|_~8\ ) + ( \CalculaMedia|SUM2|S1|S2|s2|_~7\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \CalculaMedia|SUM2|S1|S2|s1|ALT_INV_S\(3),
	cin => \CalculaMedia|SUM2|S1|S2|s2|_~7\,
	sharein => \CalculaMedia|SUM2|S1|S2|s2|_~8\,
	sumout => \CalculaMedia|SUM2|S1|S2|s2|S\(3));

-- Location: LABCELL_X51_Y2_N0
\CalculaMedia|SUM1|S1|S2|s2|S[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM1|S1|S2|s2|S\(1) = SUM(( (!\CalculaMedia|SUM1|S1|S2|s1|S\(1) & (((\CalculaMedia|SUM1|S1|S2|s1|S\(3) & \CalculaMedia|SUM1|S1|S2|s1|S\(2))) # (\CalculaMedia|SUM1|S1|S2|s1|Cout~sumout\))) # (\CalculaMedia|SUM1|S1|S2|s1|S\(1) & 
-- (!\CalculaMedia|SUM1|S1|S2|s1|S\(3) & ((!\CalculaMedia|SUM1|S1|S2|s1|Cout~sumout\)))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM1|S1|S2|s2|_~4\ = CARRY(( (!\CalculaMedia|SUM1|S1|S2|s1|S\(1) & (((\CalculaMedia|SUM1|S1|S2|s1|S\(3) & \CalculaMedia|SUM1|S1|S2|s1|S\(2))) # (\CalculaMedia|SUM1|S1|S2|s1|Cout~sumout\))) # (\CalculaMedia|SUM1|S1|S2|s1|S\(1) & 
-- (!\CalculaMedia|SUM1|S1|S2|s1|S\(3) & ((!\CalculaMedia|SUM1|S1|S2|s1|Cout~sumout\)))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM1|S1|S2|s2|_~5\ = SHARE((\CalculaMedia|SUM1|S1|S2|s1|S\(1) & ((\CalculaMedia|SUM1|S1|S2|s1|Cout~sumout\) # (\CalculaMedia|SUM1|S1|S2|s1|S\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010101010100000000000000000100011010101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|SUM1|S1|S2|s1|ALT_INV_S\(1),
	datab => \CalculaMedia|SUM1|S1|S2|s1|ALT_INV_S\(3),
	datac => \CalculaMedia|SUM1|S1|S2|s1|ALT_INV_S\(2),
	datad => \CalculaMedia|SUM1|S1|S2|s1|ALT_INV_Cout~sumout\,
	cin => GND,
	sharein => GND,
	sumout => \CalculaMedia|SUM1|S1|S2|s2|S\(1),
	cout => \CalculaMedia|SUM1|S1|S2|s2|_~4\,
	shareout => \CalculaMedia|SUM1|S1|S2|s2|_~5\);

-- Location: LABCELL_X51_Y2_N3
\CalculaMedia|SUM1|S1|S2|s2|S[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM1|S1|S2|s2|S\(2) = SUM(( (!\CalculaMedia|SUM1|S1|S2|s1|S\(3) & ((!\CalculaMedia|SUM1|S1|S2|s1|Cout~sumout\ $ (!\CalculaMedia|SUM1|S1|S2|s1|S\(2))))) # (\CalculaMedia|SUM1|S1|S2|s1|S\(3) & (!\CalculaMedia|SUM1|S1|S2|s1|S\(2) & 
-- ((\CalculaMedia|SUM1|S1|S2|s1|Cout~sumout\) # (\CalculaMedia|SUM1|S1|S2|s1|S\(1))))) ) + ( \CalculaMedia|SUM1|S1|S2|s2|_~5\ ) + ( \CalculaMedia|SUM1|S1|S2|s2|_~4\ ))
-- \CalculaMedia|SUM1|S1|S2|s2|_~7\ = CARRY(( (!\CalculaMedia|SUM1|S1|S2|s1|S\(3) & ((!\CalculaMedia|SUM1|S1|S2|s1|Cout~sumout\ $ (!\CalculaMedia|SUM1|S1|S2|s1|S\(2))))) # (\CalculaMedia|SUM1|S1|S2|s1|S\(3) & (!\CalculaMedia|SUM1|S1|S2|s1|S\(2) & 
-- ((\CalculaMedia|SUM1|S1|S2|s1|Cout~sumout\) # (\CalculaMedia|SUM1|S1|S2|s1|S\(1))))) ) + ( \CalculaMedia|SUM1|S1|S2|s2|_~5\ ) + ( \CalculaMedia|SUM1|S1|S2|s2|_~4\ ))
-- \CalculaMedia|SUM1|S1|S2|s2|_~8\ = SHARE((\CalculaMedia|SUM1|S1|S2|s1|S\(2) & ((\CalculaMedia|SUM1|S1|S2|s1|Cout~sumout\) # (\CalculaMedia|SUM1|S1|S2|s1|S\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011111100000000000000000001111111000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|SUM1|S1|S2|s1|ALT_INV_S\(1),
	datab => \CalculaMedia|SUM1|S1|S2|s1|ALT_INV_S\(3),
	datac => \CalculaMedia|SUM1|S1|S2|s1|ALT_INV_Cout~sumout\,
	datad => \CalculaMedia|SUM1|S1|S2|s1|ALT_INV_S\(2),
	cin => \CalculaMedia|SUM1|S1|S2|s2|_~4\,
	sharein => \CalculaMedia|SUM1|S1|S2|s2|_~5\,
	sumout => \CalculaMedia|SUM1|S1|S2|s2|S\(2),
	cout => \CalculaMedia|SUM1|S1|S2|s2|_~7\,
	shareout => \CalculaMedia|SUM1|S1|S2|s2|_~8\);

-- Location: LABCELL_X51_Y2_N6
\CalculaMedia|SUM1|S1|S2|s2|S[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM1|S1|S2|s2|S\(3) = SUM(( \CalculaMedia|SUM1|S1|S2|s1|S\(3) ) + ( \CalculaMedia|SUM1|S1|S2|s2|_~8\ ) + ( \CalculaMedia|SUM1|S1|S2|s2|_~7\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \CalculaMedia|SUM1|S1|S2|s1|ALT_INV_S\(3),
	cin => \CalculaMedia|SUM1|S1|S2|s2|_~7\,
	sharein => \CalculaMedia|SUM1|S1|S2|s2|_~8\,
	sumout => \CalculaMedia|SUM1|S1|S2|s2|S\(3));

-- Location: MLABCELL_X52_Y3_N30
\CalculaMedia|SUM2|S1|S1|s2|S[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM2|S1|S1|s2|S\(1) = SUM(( (!\CalculaMedia|SUM2|S1|S1|s1|S\(1) & (((\CalculaMedia|SUM2|S1|S1|s1|S\(2) & \CalculaMedia|SUM2|S1|S1|s1|S\(3))) # (\CalculaMedia|SUM2|S1|S1|s1|Cout~sumout\))) # (\CalculaMedia|SUM2|S1|S1|s1|S\(1) & 
-- (((!\CalculaMedia|SUM2|S1|S1|s1|S\(3) & !\CalculaMedia|SUM2|S1|S1|s1|Cout~sumout\)))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM2|S1|S1|s2|_~4\ = CARRY(( (!\CalculaMedia|SUM2|S1|S1|s1|S\(1) & (((\CalculaMedia|SUM2|S1|S1|s1|S\(2) & \CalculaMedia|SUM2|S1|S1|s1|S\(3))) # (\CalculaMedia|SUM2|S1|S1|s1|Cout~sumout\))) # (\CalculaMedia|SUM2|S1|S1|s1|S\(1) & 
-- (((!\CalculaMedia|SUM2|S1|S1|s1|S\(3) & !\CalculaMedia|SUM2|S1|S1|s1|Cout~sumout\)))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM2|S1|S1|s2|_~5\ = SHARE((\CalculaMedia|SUM2|S1|S1|s1|S\(1) & ((\CalculaMedia|SUM2|S1|S1|s1|Cout~sumout\) # (\CalculaMedia|SUM2|S1|S1|s1|S\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101010100000000000000000101001010101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|SUM2|S1|S1|s1|ALT_INV_S\(1),
	datab => \CalculaMedia|SUM2|S1|S1|s1|ALT_INV_S\(2),
	datac => \CalculaMedia|SUM2|S1|S1|s1|ALT_INV_S\(3),
	datad => \CalculaMedia|SUM2|S1|S1|s1|ALT_INV_Cout~sumout\,
	cin => GND,
	sharein => GND,
	sumout => \CalculaMedia|SUM2|S1|S1|s2|S\(1),
	cout => \CalculaMedia|SUM2|S1|S1|s2|_~4\,
	shareout => \CalculaMedia|SUM2|S1|S1|s2|_~5\);

-- Location: MLABCELL_X52_Y3_N33
\CalculaMedia|SUM2|S1|S1|s2|S[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM2|S1|S1|s2|S\(2) = SUM(( (!\CalculaMedia|SUM2|S1|S1|s1|S\(2) & (((\CalculaMedia|SUM2|S1|S1|s1|S\(1) & \CalculaMedia|SUM2|S1|S1|s1|S\(3))) # (\CalculaMedia|SUM2|S1|S1|s1|Cout~sumout\))) # (\CalculaMedia|SUM2|S1|S1|s1|S\(2) & 
-- (((!\CalculaMedia|SUM2|S1|S1|s1|Cout~sumout\ & !\CalculaMedia|SUM2|S1|S1|s1|S\(3))))) ) + ( \CalculaMedia|SUM2|S1|S1|s2|_~5\ ) + ( \CalculaMedia|SUM2|S1|S1|s2|_~4\ ))
-- \CalculaMedia|SUM2|S1|S1|s2|_~7\ = CARRY(( (!\CalculaMedia|SUM2|S1|S1|s1|S\(2) & (((\CalculaMedia|SUM2|S1|S1|s1|S\(1) & \CalculaMedia|SUM2|S1|S1|s1|S\(3))) # (\CalculaMedia|SUM2|S1|S1|s1|Cout~sumout\))) # (\CalculaMedia|SUM2|S1|S1|s1|S\(2) & 
-- (((!\CalculaMedia|SUM2|S1|S1|s1|Cout~sumout\ & !\CalculaMedia|SUM2|S1|S1|s1|S\(3))))) ) + ( \CalculaMedia|SUM2|S1|S1|s2|_~5\ ) + ( \CalculaMedia|SUM2|S1|S1|s2|_~4\ ))
-- \CalculaMedia|SUM2|S1|S1|s2|_~8\ = SHARE((\CalculaMedia|SUM2|S1|S1|s1|S\(2) & ((\CalculaMedia|SUM2|S1|S1|s1|S\(3)) # (\CalculaMedia|SUM2|S1|S1|s1|Cout~sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011001100000000000000000011110001001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|SUM2|S1|S1|s1|ALT_INV_S\(1),
	datab => \CalculaMedia|SUM2|S1|S1|s1|ALT_INV_S\(2),
	datac => \CalculaMedia|SUM2|S1|S1|s1|ALT_INV_Cout~sumout\,
	datad => \CalculaMedia|SUM2|S1|S1|s1|ALT_INV_S\(3),
	cin => \CalculaMedia|SUM2|S1|S1|s2|_~4\,
	sharein => \CalculaMedia|SUM2|S1|S1|s2|_~5\,
	sumout => \CalculaMedia|SUM2|S1|S1|s2|S\(2),
	cout => \CalculaMedia|SUM2|S1|S1|s2|_~7\,
	shareout => \CalculaMedia|SUM2|S1|S1|s2|_~8\);

-- Location: MLABCELL_X52_Y3_N36
\CalculaMedia|SUM2|S1|S1|s2|S[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM2|S1|S1|s2|S\(3) = SUM(( \CalculaMedia|SUM2|S1|S1|s1|S\(3) ) + ( \CalculaMedia|SUM2|S1|S1|s2|_~8\ ) + ( \CalculaMedia|SUM2|S1|S1|s2|_~7\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \CalculaMedia|SUM2|S1|S1|s1|ALT_INV_S\(3),
	cin => \CalculaMedia|SUM2|S1|S1|s2|_~7\,
	sharein => \CalculaMedia|SUM2|S1|S1|s2|_~8\,
	sumout => \CalculaMedia|SUM2|S1|S1|s2|S\(3));

-- Location: LABCELL_X51_Y1_N30
\CalculaMedia|SUM1|S1|S1|s2|S[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM1|S1|S1|s2|S\(1) = SUM(( (!\CalculaMedia|SUM1|S1|S1|s1|S\(1) & (((\CalculaMedia|SUM1|S1|S1|s1|S\(2) & \CalculaMedia|SUM1|S1|S1|s1|S\(3))) # (\CalculaMedia|SUM1|S1|S1|s1|Cout~sumout\))) # (\CalculaMedia|SUM1|S1|S1|s1|S\(1) & 
-- (((!\CalculaMedia|SUM1|S1|S1|s1|S\(3) & !\CalculaMedia|SUM1|S1|S1|s1|Cout~sumout\)))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM1|S1|S1|s2|_~4\ = CARRY(( (!\CalculaMedia|SUM1|S1|S1|s1|S\(1) & (((\CalculaMedia|SUM1|S1|S1|s1|S\(2) & \CalculaMedia|SUM1|S1|S1|s1|S\(3))) # (\CalculaMedia|SUM1|S1|S1|s1|Cout~sumout\))) # (\CalculaMedia|SUM1|S1|S1|s1|S\(1) & 
-- (((!\CalculaMedia|SUM1|S1|S1|s1|S\(3) & !\CalculaMedia|SUM1|S1|S1|s1|Cout~sumout\)))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM1|S1|S1|s2|_~5\ = SHARE((\CalculaMedia|SUM1|S1|S1|s1|S\(1) & ((\CalculaMedia|SUM1|S1|S1|s1|Cout~sumout\) # (\CalculaMedia|SUM1|S1|S1|s1|S\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101010100000000000000000101001010101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|SUM1|S1|S1|s1|ALT_INV_S\(1),
	datab => \CalculaMedia|SUM1|S1|S1|s1|ALT_INV_S\(2),
	datac => \CalculaMedia|SUM1|S1|S1|s1|ALT_INV_S\(3),
	datad => \CalculaMedia|SUM1|S1|S1|s1|ALT_INV_Cout~sumout\,
	cin => GND,
	sharein => GND,
	sumout => \CalculaMedia|SUM1|S1|S1|s2|S\(1),
	cout => \CalculaMedia|SUM1|S1|S1|s2|_~4\,
	shareout => \CalculaMedia|SUM1|S1|S1|s2|_~5\);

-- Location: LABCELL_X51_Y1_N33
\CalculaMedia|SUM1|S1|S1|s2|S[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM1|S1|S1|s2|S\(2) = SUM(( (!\CalculaMedia|SUM1|S1|S1|s1|S\(2) & (((\CalculaMedia|SUM1|S1|S1|s1|S\(1) & \CalculaMedia|SUM1|S1|S1|s1|S\(3))) # (\CalculaMedia|SUM1|S1|S1|s1|Cout~sumout\))) # (\CalculaMedia|SUM1|S1|S1|s1|S\(2) & 
-- (((!\CalculaMedia|SUM1|S1|S1|s1|Cout~sumout\ & !\CalculaMedia|SUM1|S1|S1|s1|S\(3))))) ) + ( \CalculaMedia|SUM1|S1|S1|s2|_~5\ ) + ( \CalculaMedia|SUM1|S1|S1|s2|_~4\ ))
-- \CalculaMedia|SUM1|S1|S1|s2|_~7\ = CARRY(( (!\CalculaMedia|SUM1|S1|S1|s1|S\(2) & (((\CalculaMedia|SUM1|S1|S1|s1|S\(1) & \CalculaMedia|SUM1|S1|S1|s1|S\(3))) # (\CalculaMedia|SUM1|S1|S1|s1|Cout~sumout\))) # (\CalculaMedia|SUM1|S1|S1|s1|S\(2) & 
-- (((!\CalculaMedia|SUM1|S1|S1|s1|Cout~sumout\ & !\CalculaMedia|SUM1|S1|S1|s1|S\(3))))) ) + ( \CalculaMedia|SUM1|S1|S1|s2|_~5\ ) + ( \CalculaMedia|SUM1|S1|S1|s2|_~4\ ))
-- \CalculaMedia|SUM1|S1|S1|s2|_~8\ = SHARE((\CalculaMedia|SUM1|S1|S1|s1|S\(2) & ((\CalculaMedia|SUM1|S1|S1|s1|S\(3)) # (\CalculaMedia|SUM1|S1|S1|s1|Cout~sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011001100000000000000000011110001001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|SUM1|S1|S1|s1|ALT_INV_S\(1),
	datab => \CalculaMedia|SUM1|S1|S1|s1|ALT_INV_S\(2),
	datac => \CalculaMedia|SUM1|S1|S1|s1|ALT_INV_Cout~sumout\,
	datad => \CalculaMedia|SUM1|S1|S1|s1|ALT_INV_S\(3),
	cin => \CalculaMedia|SUM1|S1|S1|s2|_~4\,
	sharein => \CalculaMedia|SUM1|S1|S1|s2|_~5\,
	sumout => \CalculaMedia|SUM1|S1|S1|s2|S\(2),
	cout => \CalculaMedia|SUM1|S1|S1|s2|_~7\,
	shareout => \CalculaMedia|SUM1|S1|S1|s2|_~8\);

-- Location: LABCELL_X51_Y1_N36
\CalculaMedia|SUM1|S1|S1|s2|S[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM1|S1|S1|s2|S\(3) = SUM(( \CalculaMedia|SUM1|S1|S1|s1|S\(3) ) + ( \CalculaMedia|SUM1|S1|S1|s2|_~8\ ) + ( \CalculaMedia|SUM1|S1|S1|s2|_~7\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \CalculaMedia|SUM1|S1|S1|s1|ALT_INV_S\(3),
	cin => \CalculaMedia|SUM1|S1|S1|s2|_~7\,
	sharein => \CalculaMedia|SUM1|S1|S1|s2|_~8\,
	sumout => \CalculaMedia|SUM1|S1|S1|s2|S\(3));

-- Location: MLABCELL_X52_Y1_N0
\CalculaMedia|SUM3|S1|S1|s1|S[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S1|S1|s1|S\(0) = SUM(( !\CalculaMedia|SUM1|S1|S1|s1|S\(0) $ (!\CalculaMedia|SUM2|S1|S1|s1|S\(0)) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM3|S1|S1|s1|_~1\ = CARRY(( !\CalculaMedia|SUM1|S1|S1|s1|S\(0) $ (!\CalculaMedia|SUM2|S1|S1|s1|S\(0)) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM3|S1|S1|s1|_~2\ = SHARE((\CalculaMedia|SUM1|S1|S1|s1|S\(0) & \CalculaMedia|SUM2|S1|S1|s1|S\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \CalculaMedia|SUM1|S1|S1|s1|ALT_INV_S\(0),
	datad => \CalculaMedia|SUM2|S1|S1|s1|ALT_INV_S\(0),
	cin => GND,
	sharein => GND,
	sumout => \CalculaMedia|SUM3|S1|S1|s1|S\(0),
	cout => \CalculaMedia|SUM3|S1|S1|s1|_~1\,
	shareout => \CalculaMedia|SUM3|S1|S1|s1|_~2\);

-- Location: MLABCELL_X52_Y1_N3
\CalculaMedia|SUM3|S1|S1|s1|S[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S1|S1|s1|S\(1) = SUM(( !\CalculaMedia|SUM1|S1|S1|s2|S\(1) $ (!\CalculaMedia|SUM2|S1|S1|s2|S\(1)) ) + ( \CalculaMedia|SUM3|S1|S1|s1|_~2\ ) + ( \CalculaMedia|SUM3|S1|S1|s1|_~1\ ))
-- \CalculaMedia|SUM3|S1|S1|s1|_~10\ = CARRY(( !\CalculaMedia|SUM1|S1|S1|s2|S\(1) $ (!\CalculaMedia|SUM2|S1|S1|s2|S\(1)) ) + ( \CalculaMedia|SUM3|S1|S1|s1|_~2\ ) + ( \CalculaMedia|SUM3|S1|S1|s1|_~1\ ))
-- \CalculaMedia|SUM3|S1|S1|s1|_~11\ = SHARE((\CalculaMedia|SUM1|S1|S1|s2|S\(1) & \CalculaMedia|SUM2|S1|S1|s2|S\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|SUM1|S1|S1|s2|ALT_INV_S\(1),
	datad => \CalculaMedia|SUM2|S1|S1|s2|ALT_INV_S\(1),
	cin => \CalculaMedia|SUM3|S1|S1|s1|_~1\,
	sharein => \CalculaMedia|SUM3|S1|S1|s1|_~2\,
	sumout => \CalculaMedia|SUM3|S1|S1|s1|S\(1),
	cout => \CalculaMedia|SUM3|S1|S1|s1|_~10\,
	shareout => \CalculaMedia|SUM3|S1|S1|s1|_~11\);

-- Location: MLABCELL_X52_Y1_N6
\CalculaMedia|SUM3|S1|S1|s1|S[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S1|S1|s1|S\(2) = SUM(( !\CalculaMedia|SUM2|S1|S1|s2|S\(2) $ (!\CalculaMedia|SUM1|S1|S1|s2|S\(2)) ) + ( \CalculaMedia|SUM3|S1|S1|s1|_~11\ ) + ( \CalculaMedia|SUM3|S1|S1|s1|_~10\ ))
-- \CalculaMedia|SUM3|S1|S1|s1|_~13\ = CARRY(( !\CalculaMedia|SUM2|S1|S1|s2|S\(2) $ (!\CalculaMedia|SUM1|S1|S1|s2|S\(2)) ) + ( \CalculaMedia|SUM3|S1|S1|s1|_~11\ ) + ( \CalculaMedia|SUM3|S1|S1|s1|_~10\ ))
-- \CalculaMedia|SUM3|S1|S1|s1|_~14\ = SHARE((\CalculaMedia|SUM2|S1|S1|s2|S\(2) & \CalculaMedia|SUM1|S1|S1|s2|S\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|SUM2|S1|S1|s2|ALT_INV_S\(2),
	datad => \CalculaMedia|SUM1|S1|S1|s2|ALT_INV_S\(2),
	cin => \CalculaMedia|SUM3|S1|S1|s1|_~10\,
	sharein => \CalculaMedia|SUM3|S1|S1|s1|_~11\,
	sumout => \CalculaMedia|SUM3|S1|S1|s1|S\(2),
	cout => \CalculaMedia|SUM3|S1|S1|s1|_~13\,
	shareout => \CalculaMedia|SUM3|S1|S1|s1|_~14\);

-- Location: MLABCELL_X52_Y1_N9
\CalculaMedia|SUM3|S1|S1|s1|S[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S1|S1|s1|S\(3) = SUM(( !\CalculaMedia|SUM2|S1|S1|s2|S\(3) $ (!\CalculaMedia|SUM1|S1|S1|s2|S\(3)) ) + ( \CalculaMedia|SUM3|S1|S1|s1|_~14\ ) + ( \CalculaMedia|SUM3|S1|S1|s1|_~13\ ))
-- \CalculaMedia|SUM3|S1|S1|s1|_~7\ = CARRY(( !\CalculaMedia|SUM2|S1|S1|s2|S\(3) $ (!\CalculaMedia|SUM1|S1|S1|s2|S\(3)) ) + ( \CalculaMedia|SUM3|S1|S1|s1|_~14\ ) + ( \CalculaMedia|SUM3|S1|S1|s1|_~13\ ))
-- \CalculaMedia|SUM3|S1|S1|s1|_~8\ = SHARE((\CalculaMedia|SUM2|S1|S1|s2|S\(3) & \CalculaMedia|SUM1|S1|S1|s2|S\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|SUM2|S1|S1|s2|ALT_INV_S\(3),
	datad => \CalculaMedia|SUM1|S1|S1|s2|ALT_INV_S\(3),
	cin => \CalculaMedia|SUM3|S1|S1|s1|_~13\,
	sharein => \CalculaMedia|SUM3|S1|S1|s1|_~14\,
	sumout => \CalculaMedia|SUM3|S1|S1|s1|S\(3),
	cout => \CalculaMedia|SUM3|S1|S1|s1|_~7\,
	shareout => \CalculaMedia|SUM3|S1|S1|s1|_~8\);

-- Location: MLABCELL_X52_Y1_N12
\CalculaMedia|SUM3|S1|S1|s1|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S1|S1|s1|Cout~sumout\ = SUM(( GND ) + ( \CalculaMedia|SUM3|S1|S1|s1|_~8\ ) + ( \CalculaMedia|SUM3|S1|S1|s1|_~7\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \CalculaMedia|SUM3|S1|S1|s1|_~7\,
	sharein => \CalculaMedia|SUM3|S1|S1|s1|_~8\,
	sumout => \CalculaMedia|SUM3|S1|S1|s1|Cout~sumout\);

-- Location: MLABCELL_X52_Y1_N21
\CalculaMedia|SUM3|S1|S1|d1|O~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S1|S1|d1|O~0_combout\ = ( \CalculaMedia|SUM3|S1|S1|s1|S\(1) & ( \CalculaMedia|SUM3|S1|S1|s1|S\(3) ) ) # ( !\CalculaMedia|SUM3|S1|S1|s1|S\(1) & ( \CalculaMedia|SUM3|S1|S1|s1|S\(3) & ( \CalculaMedia|SUM3|S1|S1|s1|S\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|SUM3|S1|S1|s1|ALT_INV_S\(2),
	datae => \CalculaMedia|SUM3|S1|S1|s1|ALT_INV_S\(1),
	dataf => \CalculaMedia|SUM3|S1|S1|s1|ALT_INV_S\(3),
	combout => \CalculaMedia|SUM3|S1|S1|d1|O~0_combout\);

-- Location: MLABCELL_X52_Y2_N0
\CalculaMedia|SUM3|S1|S2|s1|S[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S1|S2|s1|S\(0) = SUM(( !\CalculaMedia|SUM1|S1|S2|s1|S\(0) $ (!\CalculaMedia|SUM2|S1|S2|s1|S\(0) $ (((\CalculaMedia|SUM3|S1|S1|d1|O~0_combout\) # (\CalculaMedia|SUM3|S1|S1|s1|Cout~sumout\)))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM3|S1|S2|s1|_~13\ = CARRY(( !\CalculaMedia|SUM1|S1|S2|s1|S\(0) $ (!\CalculaMedia|SUM2|S1|S2|s1|S\(0) $ (((\CalculaMedia|SUM3|S1|S1|d1|O~0_combout\) # (\CalculaMedia|SUM3|S1|S1|s1|Cout~sumout\)))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM3|S1|S2|s1|_~14\ = SHARE((!\CalculaMedia|SUM1|S1|S2|s1|S\(0) & (\CalculaMedia|SUM2|S1|S2|s1|S\(0) & ((\CalculaMedia|SUM3|S1|S1|d1|O~0_combout\) # (\CalculaMedia|SUM3|S1|S1|s1|Cout~sumout\)))) # (\CalculaMedia|SUM1|S1|S2|s1|S\(0) & 
-- (((\CalculaMedia|SUM3|S1|S1|d1|O~0_combout\) # (\CalculaMedia|SUM3|S1|S1|s1|Cout~sumout\)) # (\CalculaMedia|SUM2|S1|S2|s1|S\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101110111011100000000000000000110100110011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|SUM1|S1|S2|s1|ALT_INV_S\(0),
	datab => \CalculaMedia|SUM2|S1|S2|s1|ALT_INV_S\(0),
	datac => \CalculaMedia|SUM3|S1|S1|s1|ALT_INV_Cout~sumout\,
	datad => \CalculaMedia|SUM3|S1|S1|d1|ALT_INV_O~0_combout\,
	cin => GND,
	sharein => GND,
	sumout => \CalculaMedia|SUM3|S1|S2|s1|S\(0),
	cout => \CalculaMedia|SUM3|S1|S2|s1|_~13\,
	shareout => \CalculaMedia|SUM3|S1|S2|s1|_~14\);

-- Location: MLABCELL_X52_Y2_N3
\CalculaMedia|SUM3|S1|S2|s1|S[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S1|S2|s1|S\(1) = SUM(( !\CalculaMedia|SUM1|S1|S2|s2|S\(1) $ (!\CalculaMedia|SUM2|S1|S2|s2|S\(1)) ) + ( \CalculaMedia|SUM3|S1|S2|s1|_~14\ ) + ( \CalculaMedia|SUM3|S1|S2|s1|_~13\ ))
-- \CalculaMedia|SUM3|S1|S2|s1|_~7\ = CARRY(( !\CalculaMedia|SUM1|S1|S2|s2|S\(1) $ (!\CalculaMedia|SUM2|S1|S2|s2|S\(1)) ) + ( \CalculaMedia|SUM3|S1|S2|s1|_~14\ ) + ( \CalculaMedia|SUM3|S1|S2|s1|_~13\ ))
-- \CalculaMedia|SUM3|S1|S2|s1|_~8\ = SHARE((\CalculaMedia|SUM1|S1|S2|s2|S\(1) & \CalculaMedia|SUM2|S1|S2|s2|S\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|SUM1|S1|S2|s2|ALT_INV_S\(1),
	datad => \CalculaMedia|SUM2|S1|S2|s2|ALT_INV_S\(1),
	cin => \CalculaMedia|SUM3|S1|S2|s1|_~13\,
	sharein => \CalculaMedia|SUM3|S1|S2|s1|_~14\,
	sumout => \CalculaMedia|SUM3|S1|S2|s1|S\(1),
	cout => \CalculaMedia|SUM3|S1|S2|s1|_~7\,
	shareout => \CalculaMedia|SUM3|S1|S2|s1|_~8\);

-- Location: MLABCELL_X52_Y2_N6
\CalculaMedia|SUM3|S1|S2|s1|S[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S1|S2|s1|S\(2) = SUM(( !\CalculaMedia|SUM2|S1|S2|s2|S\(2) $ (!\CalculaMedia|SUM1|S1|S2|s2|S\(2)) ) + ( \CalculaMedia|SUM3|S1|S2|s1|_~8\ ) + ( \CalculaMedia|SUM3|S1|S2|s1|_~7\ ))
-- \CalculaMedia|SUM3|S1|S2|s1|_~10\ = CARRY(( !\CalculaMedia|SUM2|S1|S2|s2|S\(2) $ (!\CalculaMedia|SUM1|S1|S2|s2|S\(2)) ) + ( \CalculaMedia|SUM3|S1|S2|s1|_~8\ ) + ( \CalculaMedia|SUM3|S1|S2|s1|_~7\ ))
-- \CalculaMedia|SUM3|S1|S2|s1|_~11\ = SHARE((\CalculaMedia|SUM2|S1|S2|s2|S\(2) & \CalculaMedia|SUM1|S1|S2|s2|S\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|SUM2|S1|S2|s2|ALT_INV_S\(2),
	datad => \CalculaMedia|SUM1|S1|S2|s2|ALT_INV_S\(2),
	cin => \CalculaMedia|SUM3|S1|S2|s1|_~7\,
	sharein => \CalculaMedia|SUM3|S1|S2|s1|_~8\,
	sumout => \CalculaMedia|SUM3|S1|S2|s1|S\(2),
	cout => \CalculaMedia|SUM3|S1|S2|s1|_~10\,
	shareout => \CalculaMedia|SUM3|S1|S2|s1|_~11\);

-- Location: MLABCELL_X52_Y2_N9
\CalculaMedia|SUM3|S1|S2|s1|S[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S1|S2|s1|S\(3) = SUM(( !\CalculaMedia|SUM2|S1|S2|s2|S\(3) $ (!\CalculaMedia|SUM1|S1|S2|s2|S\(3)) ) + ( \CalculaMedia|SUM3|S1|S2|s1|_~11\ ) + ( \CalculaMedia|SUM3|S1|S2|s1|_~10\ ))
-- \CalculaMedia|SUM3|S1|S2|s1|_~4\ = CARRY(( !\CalculaMedia|SUM2|S1|S2|s2|S\(3) $ (!\CalculaMedia|SUM1|S1|S2|s2|S\(3)) ) + ( \CalculaMedia|SUM3|S1|S2|s1|_~11\ ) + ( \CalculaMedia|SUM3|S1|S2|s1|_~10\ ))
-- \CalculaMedia|SUM3|S1|S2|s1|_~5\ = SHARE((\CalculaMedia|SUM2|S1|S2|s2|S\(3) & \CalculaMedia|SUM1|S1|S2|s2|S\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|SUM2|S1|S2|s2|ALT_INV_S\(3),
	datad => \CalculaMedia|SUM1|S1|S2|s2|ALT_INV_S\(3),
	cin => \CalculaMedia|SUM3|S1|S2|s1|_~10\,
	sharein => \CalculaMedia|SUM3|S1|S2|s1|_~11\,
	sumout => \CalculaMedia|SUM3|S1|S2|s1|S\(3),
	cout => \CalculaMedia|SUM3|S1|S2|s1|_~4\,
	shareout => \CalculaMedia|SUM3|S1|S2|s1|_~5\);

-- Location: MLABCELL_X52_Y2_N12
\CalculaMedia|SUM3|S1|S2|s1|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S1|S2|s1|Cout~sumout\ = SUM(( GND ) + ( \CalculaMedia|SUM3|S1|S2|s1|_~5\ ) + ( \CalculaMedia|SUM3|S1|S2|s1|_~4\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \CalculaMedia|SUM3|S1|S2|s1|_~4\,
	sharein => \CalculaMedia|SUM3|S1|S2|s1|_~5\,
	sumout => \CalculaMedia|SUM3|S1|S2|s1|Cout~sumout\);

-- Location: LABCELL_X53_Y4_N57
\CalculaMedia|SUM3|S1|S2|d1|O~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S1|S2|d1|O~0_combout\ = ( \CalculaMedia|SUM3|S1|S2|s1|S\(2) & ( \CalculaMedia|SUM3|S1|S2|s1|S\(1) & ( \CalculaMedia|SUM3|S1|S2|s1|S\(3) ) ) ) # ( !\CalculaMedia|SUM3|S1|S2|s1|S\(2) & ( \CalculaMedia|SUM3|S1|S2|s1|S\(1) & ( 
-- \CalculaMedia|SUM3|S1|S2|s1|S\(3) ) ) ) # ( \CalculaMedia|SUM3|S1|S2|s1|S\(2) & ( !\CalculaMedia|SUM3|S1|S2|s1|S\(1) & ( \CalculaMedia|SUM3|S1|S2|s1|S\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CalculaMedia|SUM3|S1|S2|s1|ALT_INV_S\(3),
	datae => \CalculaMedia|SUM3|S1|S2|s1|ALT_INV_S\(2),
	dataf => \CalculaMedia|SUM3|S1|S2|s1|ALT_INV_S\(1),
	combout => \CalculaMedia|SUM3|S1|S2|d1|O~0_combout\);

-- Location: LABCELL_X53_Y4_N0
\CalculaMedia|SUM3|S1|S3|s1|S[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S1|S3|s1|S\(0) = SUM(( !\CalculaMedia|SUM2|S1|S3|s1|S\(0) $ (!\CalculaMedia|SUM1|S1|S3|s1|S\(0) $ (((\CalculaMedia|SUM3|S1|S2|d1|O~0_combout\) # (\CalculaMedia|SUM3|S1|S2|s1|Cout~sumout\)))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM3|S1|S3|s1|_~13\ = CARRY(( !\CalculaMedia|SUM2|S1|S3|s1|S\(0) $ (!\CalculaMedia|SUM1|S1|S3|s1|S\(0) $ (((\CalculaMedia|SUM3|S1|S2|d1|O~0_combout\) # (\CalculaMedia|SUM3|S1|S2|s1|Cout~sumout\)))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM3|S1|S3|s1|_~14\ = SHARE((!\CalculaMedia|SUM2|S1|S3|s1|S\(0) & (\CalculaMedia|SUM1|S1|S3|s1|S\(0) & ((\CalculaMedia|SUM3|S1|S2|d1|O~0_combout\) # (\CalculaMedia|SUM3|S1|S2|s1|Cout~sumout\)))) # (\CalculaMedia|SUM2|S1|S3|s1|S\(0) & 
-- (((\CalculaMedia|SUM3|S1|S2|d1|O~0_combout\) # (\CalculaMedia|SUM3|S1|S2|s1|Cout~sumout\)) # (\CalculaMedia|SUM1|S1|S3|s1|S\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101110111011100000000000000000110100110011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|SUM2|S1|S3|s1|ALT_INV_S\(0),
	datab => \CalculaMedia|SUM1|S1|S3|s1|ALT_INV_S\(0),
	datac => \CalculaMedia|SUM3|S1|S2|s1|ALT_INV_Cout~sumout\,
	datad => \CalculaMedia|SUM3|S1|S2|d1|ALT_INV_O~0_combout\,
	cin => GND,
	sharein => GND,
	sumout => \CalculaMedia|SUM3|S1|S3|s1|S\(0),
	cout => \CalculaMedia|SUM3|S1|S3|s1|_~13\,
	shareout => \CalculaMedia|SUM3|S1|S3|s1|_~14\);

-- Location: LABCELL_X53_Y4_N3
\CalculaMedia|SUM3|S1|S3|s1|S[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S1|S3|s1|S\(1) = SUM(( !\CalculaMedia|SUM1|S1|S3|s2|S\(1) $ (!\CalculaMedia|SUM2|S1|S3|s2|S\(1)) ) + ( \CalculaMedia|SUM3|S1|S3|s1|_~14\ ) + ( \CalculaMedia|SUM3|S1|S3|s1|_~13\ ))
-- \CalculaMedia|SUM3|S1|S3|s1|_~7\ = CARRY(( !\CalculaMedia|SUM1|S1|S3|s2|S\(1) $ (!\CalculaMedia|SUM2|S1|S3|s2|S\(1)) ) + ( \CalculaMedia|SUM3|S1|S3|s1|_~14\ ) + ( \CalculaMedia|SUM3|S1|S3|s1|_~13\ ))
-- \CalculaMedia|SUM3|S1|S3|s1|_~8\ = SHARE((\CalculaMedia|SUM1|S1|S3|s2|S\(1) & \CalculaMedia|SUM2|S1|S3|s2|S\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|SUM1|S1|S3|s2|ALT_INV_S\(1),
	datad => \CalculaMedia|SUM2|S1|S3|s2|ALT_INV_S\(1),
	cin => \CalculaMedia|SUM3|S1|S3|s1|_~13\,
	sharein => \CalculaMedia|SUM3|S1|S3|s1|_~14\,
	sumout => \CalculaMedia|SUM3|S1|S3|s1|S\(1),
	cout => \CalculaMedia|SUM3|S1|S3|s1|_~7\,
	shareout => \CalculaMedia|SUM3|S1|S3|s1|_~8\);

-- Location: LABCELL_X53_Y4_N6
\CalculaMedia|SUM3|S1|S3|s1|S[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S1|S3|s1|S\(2) = SUM(( !\CalculaMedia|SUM2|S1|S3|s2|S\(2) $ (!\CalculaMedia|SUM1|S1|S3|s2|S\(2)) ) + ( \CalculaMedia|SUM3|S1|S3|s1|_~8\ ) + ( \CalculaMedia|SUM3|S1|S3|s1|_~7\ ))
-- \CalculaMedia|SUM3|S1|S3|s1|_~10\ = CARRY(( !\CalculaMedia|SUM2|S1|S3|s2|S\(2) $ (!\CalculaMedia|SUM1|S1|S3|s2|S\(2)) ) + ( \CalculaMedia|SUM3|S1|S3|s1|_~8\ ) + ( \CalculaMedia|SUM3|S1|S3|s1|_~7\ ))
-- \CalculaMedia|SUM3|S1|S3|s1|_~11\ = SHARE((\CalculaMedia|SUM2|S1|S3|s2|S\(2) & \CalculaMedia|SUM1|S1|S3|s2|S\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011001100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \CalculaMedia|SUM2|S1|S3|s2|ALT_INV_S\(2),
	datad => \CalculaMedia|SUM1|S1|S3|s2|ALT_INV_S\(2),
	cin => \CalculaMedia|SUM3|S1|S3|s1|_~7\,
	sharein => \CalculaMedia|SUM3|S1|S3|s1|_~8\,
	sumout => \CalculaMedia|SUM3|S1|S3|s1|S\(2),
	cout => \CalculaMedia|SUM3|S1|S3|s1|_~10\,
	shareout => \CalculaMedia|SUM3|S1|S3|s1|_~11\);

-- Location: LABCELL_X53_Y4_N9
\CalculaMedia|SUM3|S1|S3|s1|S[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S1|S3|s1|S\(3) = SUM(( !\CalculaMedia|SUM2|S1|S3|s2|S\(3) $ (!\CalculaMedia|SUM1|S1|S3|s2|S\(3)) ) + ( \CalculaMedia|SUM3|S1|S3|s1|_~11\ ) + ( \CalculaMedia|SUM3|S1|S3|s1|_~10\ ))
-- \CalculaMedia|SUM3|S1|S3|s1|_~4\ = CARRY(( !\CalculaMedia|SUM2|S1|S3|s2|S\(3) $ (!\CalculaMedia|SUM1|S1|S3|s2|S\(3)) ) + ( \CalculaMedia|SUM3|S1|S3|s1|_~11\ ) + ( \CalculaMedia|SUM3|S1|S3|s1|_~10\ ))
-- \CalculaMedia|SUM3|S1|S3|s1|_~5\ = SHARE((\CalculaMedia|SUM2|S1|S3|s2|S\(3) & \CalculaMedia|SUM1|S1|S3|s2|S\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|SUM2|S1|S3|s2|ALT_INV_S\(3),
	datad => \CalculaMedia|SUM1|S1|S3|s2|ALT_INV_S\(3),
	cin => \CalculaMedia|SUM3|S1|S3|s1|_~10\,
	sharein => \CalculaMedia|SUM3|S1|S3|s1|_~11\,
	sumout => \CalculaMedia|SUM3|S1|S3|s1|S\(3),
	cout => \CalculaMedia|SUM3|S1|S3|s1|_~4\,
	shareout => \CalculaMedia|SUM3|S1|S3|s1|_~5\);

-- Location: LABCELL_X53_Y4_N12
\CalculaMedia|SUM3|S1|S3|s1|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S1|S3|s1|Cout~sumout\ = SUM(( GND ) + ( \CalculaMedia|SUM3|S1|S3|s1|_~5\ ) + ( \CalculaMedia|SUM3|S1|S3|s1|_~4\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \CalculaMedia|SUM3|S1|S3|s1|_~4\,
	sharein => \CalculaMedia|SUM3|S1|S3|s1|_~5\,
	sumout => \CalculaMedia|SUM3|S1|S3|s1|Cout~sumout\);

-- Location: LABCELL_X53_Y4_N48
\CalculaMedia|SUM3|S1|S3|d1|O~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S1|S3|d1|O~0_combout\ = ( \CalculaMedia|SUM3|S1|S3|s1|S\(3) & ( \CalculaMedia|SUM3|S1|S3|s1|S\(2) ) ) # ( \CalculaMedia|SUM3|S1|S3|s1|S\(3) & ( !\CalculaMedia|SUM3|S1|S3|s1|S\(2) & ( \CalculaMedia|SUM3|S1|S3|s1|S\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|SUM3|S1|S3|s1|ALT_INV_S\(1),
	datae => \CalculaMedia|SUM3|S1|S3|s1|ALT_INV_S\(3),
	dataf => \CalculaMedia|SUM3|S1|S3|s1|ALT_INV_S\(2),
	combout => \CalculaMedia|SUM3|S1|S3|d1|O~0_combout\);

-- Location: LABCELL_X53_Y6_N30
\CalculaMedia|SUM3|S1|S4|s1|S[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S1|S4|s1|S\(0) = SUM(( !\CalculaMedia|SUM2|S1|S4|s1|S\(0) $ (!\CalculaMedia|SUM1|S1|S4|s1|S\(0) $ (((\CalculaMedia|SUM3|S1|S3|d1|O~0_combout\) # (\CalculaMedia|SUM3|S1|S3|s1|Cout~sumout\)))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM3|S1|S4|s1|_~13\ = CARRY(( !\CalculaMedia|SUM2|S1|S4|s1|S\(0) $ (!\CalculaMedia|SUM1|S1|S4|s1|S\(0) $ (((\CalculaMedia|SUM3|S1|S3|d1|O~0_combout\) # (\CalculaMedia|SUM3|S1|S3|s1|Cout~sumout\)))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM3|S1|S4|s1|_~14\ = SHARE((!\CalculaMedia|SUM2|S1|S4|s1|S\(0) & (\CalculaMedia|SUM1|S1|S4|s1|S\(0) & ((\CalculaMedia|SUM3|S1|S3|d1|O~0_combout\) # (\CalculaMedia|SUM3|S1|S3|s1|Cout~sumout\)))) # (\CalculaMedia|SUM2|S1|S4|s1|S\(0) & 
-- (((\CalculaMedia|SUM3|S1|S3|d1|O~0_combout\) # (\CalculaMedia|SUM3|S1|S3|s1|Cout~sumout\)) # (\CalculaMedia|SUM1|S1|S4|s1|S\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101110111011100000000000000000110100110011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|SUM2|S1|S4|s1|ALT_INV_S\(0),
	datab => \CalculaMedia|SUM1|S1|S4|s1|ALT_INV_S\(0),
	datac => \CalculaMedia|SUM3|S1|S3|s1|ALT_INV_Cout~sumout\,
	datad => \CalculaMedia|SUM3|S1|S3|d1|ALT_INV_O~0_combout\,
	cin => GND,
	sharein => GND,
	sumout => \CalculaMedia|SUM3|S1|S4|s1|S\(0),
	cout => \CalculaMedia|SUM3|S1|S4|s1|_~13\,
	shareout => \CalculaMedia|SUM3|S1|S4|s1|_~14\);

-- Location: LABCELL_X53_Y6_N33
\CalculaMedia|SUM3|S1|S4|s1|S[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S1|S4|s1|S\(1) = SUM(( !\CalculaMedia|SUM1|S1|S4|s2|S\(1) $ (!\CalculaMedia|SUM2|S1|S4|s2|S\(1)) ) + ( \CalculaMedia|SUM3|S1|S4|s1|_~14\ ) + ( \CalculaMedia|SUM3|S1|S4|s1|_~13\ ))
-- \CalculaMedia|SUM3|S1|S4|s1|_~7\ = CARRY(( !\CalculaMedia|SUM1|S1|S4|s2|S\(1) $ (!\CalculaMedia|SUM2|S1|S4|s2|S\(1)) ) + ( \CalculaMedia|SUM3|S1|S4|s1|_~14\ ) + ( \CalculaMedia|SUM3|S1|S4|s1|_~13\ ))
-- \CalculaMedia|SUM3|S1|S4|s1|_~8\ = SHARE((\CalculaMedia|SUM1|S1|S4|s2|S\(1) & \CalculaMedia|SUM2|S1|S4|s2|S\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|SUM1|S1|S4|s2|ALT_INV_S\(1),
	datad => \CalculaMedia|SUM2|S1|S4|s2|ALT_INV_S\(1),
	cin => \CalculaMedia|SUM3|S1|S4|s1|_~13\,
	sharein => \CalculaMedia|SUM3|S1|S4|s1|_~14\,
	sumout => \CalculaMedia|SUM3|S1|S4|s1|S\(1),
	cout => \CalculaMedia|SUM3|S1|S4|s1|_~7\,
	shareout => \CalculaMedia|SUM3|S1|S4|s1|_~8\);

-- Location: LABCELL_X51_Y6_N3
\CalculaMedia|SUM2|S1|S4|s2|S[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM2|S1|S4|s2|S\(2) = SUM(( (!\CalculaMedia|SUM2|S1|S4|s1|Cout~sumout\ & ((!\CalculaMedia|SUM2|S1|S4|s1|S\(3) & ((\CalculaMedia|SUM2|S1|S4|s1|S\(2)))) # (\CalculaMedia|SUM2|S1|S4|s1|S\(3) & (\CalculaMedia|SUM2|S1|S4|s1|S\(1) & 
-- !\CalculaMedia|SUM2|S1|S4|s1|S\(2))))) # (\CalculaMedia|SUM2|S1|S4|s1|Cout~sumout\ & (((!\CalculaMedia|SUM2|S1|S4|s1|S\(2))))) ) + ( \CalculaMedia|SUM2|S1|S4|s2|_~5\ ) + ( \CalculaMedia|SUM2|S1|S4|s2|_~4\ ))
-- \CalculaMedia|SUM2|S1|S4|s2|_~7\ = CARRY(( (!\CalculaMedia|SUM2|S1|S4|s1|Cout~sumout\ & ((!\CalculaMedia|SUM2|S1|S4|s1|S\(3) & ((\CalculaMedia|SUM2|S1|S4|s1|S\(2)))) # (\CalculaMedia|SUM2|S1|S4|s1|S\(3) & (\CalculaMedia|SUM2|S1|S4|s1|S\(1) & 
-- !\CalculaMedia|SUM2|S1|S4|s1|S\(2))))) # (\CalculaMedia|SUM2|S1|S4|s1|Cout~sumout\ & (((!\CalculaMedia|SUM2|S1|S4|s1|S\(2))))) ) + ( \CalculaMedia|SUM2|S1|S4|s2|_~5\ ) + ( \CalculaMedia|SUM2|S1|S4|s2|_~4\ ))
-- \CalculaMedia|SUM2|S1|S4|s2|_~8\ = SHARE((\CalculaMedia|SUM2|S1|S4|s1|S\(2) & ((\CalculaMedia|SUM2|S1|S4|s1|S\(3)) # (\CalculaMedia|SUM2|S1|S4|s1|Cout~sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011111100000000000000000011011111000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|SUM2|S1|S4|s1|ALT_INV_S\(1),
	datab => \CalculaMedia|SUM2|S1|S4|s1|ALT_INV_Cout~sumout\,
	datac => \CalculaMedia|SUM2|S1|S4|s1|ALT_INV_S\(3),
	datad => \CalculaMedia|SUM2|S1|S4|s1|ALT_INV_S\(2),
	cin => \CalculaMedia|SUM2|S1|S4|s2|_~4\,
	sharein => \CalculaMedia|SUM2|S1|S4|s2|_~5\,
	sumout => \CalculaMedia|SUM2|S1|S4|s2|S\(2),
	cout => \CalculaMedia|SUM2|S1|S4|s2|_~7\,
	shareout => \CalculaMedia|SUM2|S1|S4|s2|_~8\);

-- Location: MLABCELL_X52_Y6_N33
\CalculaMedia|SUM1|S1|S4|s2|S[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM1|S1|S4|s2|S\(2) = SUM(( (!\CalculaMedia|SUM1|S1|S4|s1|Cout~sumout\ & ((!\CalculaMedia|SUM1|S1|S4|s1|S\(2) & (\CalculaMedia|SUM1|S1|S4|s1|S\(1) & \CalculaMedia|SUM1|S1|S4|s1|S\(3))) # (\CalculaMedia|SUM1|S1|S4|s1|S\(2) & 
-- ((!\CalculaMedia|SUM1|S1|S4|s1|S\(3)))))) # (\CalculaMedia|SUM1|S1|S4|s1|Cout~sumout\ & (((!\CalculaMedia|SUM1|S1|S4|s1|S\(2))))) ) + ( \CalculaMedia|SUM1|S1|S4|s2|_~5\ ) + ( \CalculaMedia|SUM1|S1|S4|s2|_~4\ ))
-- \CalculaMedia|SUM1|S1|S4|s2|_~7\ = CARRY(( (!\CalculaMedia|SUM1|S1|S4|s1|Cout~sumout\ & ((!\CalculaMedia|SUM1|S1|S4|s1|S\(2) & (\CalculaMedia|SUM1|S1|S4|s1|S\(1) & \CalculaMedia|SUM1|S1|S4|s1|S\(3))) # (\CalculaMedia|SUM1|S1|S4|s1|S\(2) & 
-- ((!\CalculaMedia|SUM1|S1|S4|s1|S\(3)))))) # (\CalculaMedia|SUM1|S1|S4|s1|Cout~sumout\ & (((!\CalculaMedia|SUM1|S1|S4|s1|S\(2))))) ) + ( \CalculaMedia|SUM1|S1|S4|s2|_~5\ ) + ( \CalculaMedia|SUM1|S1|S4|s2|_~4\ ))
-- \CalculaMedia|SUM1|S1|S4|s2|_~8\ = SHARE((\CalculaMedia|SUM1|S1|S4|s1|S\(2) & ((\CalculaMedia|SUM1|S1|S4|s1|S\(3)) # (\CalculaMedia|SUM1|S1|S4|s1|Cout~sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000111100000000000000000011110001110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|SUM1|S1|S4|s1|ALT_INV_S\(1),
	datab => \CalculaMedia|SUM1|S1|S4|s1|ALT_INV_Cout~sumout\,
	datac => \CalculaMedia|SUM1|S1|S4|s1|ALT_INV_S\(2),
	datad => \CalculaMedia|SUM1|S1|S4|s1|ALT_INV_S\(3),
	cin => \CalculaMedia|SUM1|S1|S4|s2|_~4\,
	sharein => \CalculaMedia|SUM1|S1|S4|s2|_~5\,
	sumout => \CalculaMedia|SUM1|S1|S4|s2|S\(2),
	cout => \CalculaMedia|SUM1|S1|S4|s2|_~7\,
	shareout => \CalculaMedia|SUM1|S1|S4|s2|_~8\);

-- Location: LABCELL_X53_Y6_N36
\CalculaMedia|SUM3|S1|S4|s1|S[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S1|S4|s1|S\(2) = SUM(( !\CalculaMedia|SUM2|S1|S4|s2|S\(2) $ (!\CalculaMedia|SUM1|S1|S4|s2|S\(2)) ) + ( \CalculaMedia|SUM3|S1|S4|s1|_~8\ ) + ( \CalculaMedia|SUM3|S1|S4|s1|_~7\ ))
-- \CalculaMedia|SUM3|S1|S4|s1|_~10\ = CARRY(( !\CalculaMedia|SUM2|S1|S4|s2|S\(2) $ (!\CalculaMedia|SUM1|S1|S4|s2|S\(2)) ) + ( \CalculaMedia|SUM3|S1|S4|s1|_~8\ ) + ( \CalculaMedia|SUM3|S1|S4|s1|_~7\ ))
-- \CalculaMedia|SUM3|S1|S4|s1|_~11\ = SHARE((\CalculaMedia|SUM2|S1|S4|s2|S\(2) & \CalculaMedia|SUM1|S1|S4|s2|S\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|SUM2|S1|S4|s2|ALT_INV_S\(2),
	datad => \CalculaMedia|SUM1|S1|S4|s2|ALT_INV_S\(2),
	cin => \CalculaMedia|SUM3|S1|S4|s1|_~7\,
	sharein => \CalculaMedia|SUM3|S1|S4|s1|_~8\,
	sumout => \CalculaMedia|SUM3|S1|S4|s1|S\(2),
	cout => \CalculaMedia|SUM3|S1|S4|s1|_~10\,
	shareout => \CalculaMedia|SUM3|S1|S4|s1|_~11\);

-- Location: MLABCELL_X52_Y6_N36
\CalculaMedia|SUM1|S1|S4|s2|S[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM1|S1|S4|s2|S\(3) = SUM(( \CalculaMedia|SUM1|S1|S4|s1|S\(3) ) + ( \CalculaMedia|SUM1|S1|S4|s2|_~8\ ) + ( \CalculaMedia|SUM1|S1|S4|s2|_~7\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \CalculaMedia|SUM1|S1|S4|s1|ALT_INV_S\(3),
	cin => \CalculaMedia|SUM1|S1|S4|s2|_~7\,
	sharein => \CalculaMedia|SUM1|S1|S4|s2|_~8\,
	sumout => \CalculaMedia|SUM1|S1|S4|s2|S\(3));

-- Location: LABCELL_X51_Y6_N6
\CalculaMedia|SUM2|S1|S4|s2|S[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM2|S1|S4|s2|S\(3) = SUM(( \CalculaMedia|SUM2|S1|S4|s1|S\(3) ) + ( \CalculaMedia|SUM2|S1|S4|s2|_~8\ ) + ( \CalculaMedia|SUM2|S1|S4|s2|_~7\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \CalculaMedia|SUM2|S1|S4|s1|ALT_INV_S\(3),
	cin => \CalculaMedia|SUM2|S1|S4|s2|_~7\,
	sharein => \CalculaMedia|SUM2|S1|S4|s2|_~8\,
	sumout => \CalculaMedia|SUM2|S1|S4|s2|S\(3));

-- Location: LABCELL_X53_Y6_N39
\CalculaMedia|SUM3|S1|S4|s1|S[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S1|S4|s1|S\(3) = SUM(( !\CalculaMedia|SUM1|S1|S4|s2|S\(3) $ (!\CalculaMedia|SUM2|S1|S4|s2|S\(3)) ) + ( \CalculaMedia|SUM3|S1|S4|s1|_~11\ ) + ( \CalculaMedia|SUM3|S1|S4|s1|_~10\ ))
-- \CalculaMedia|SUM3|S1|S4|s1|_~4\ = CARRY(( !\CalculaMedia|SUM1|S1|S4|s2|S\(3) $ (!\CalculaMedia|SUM2|S1|S4|s2|S\(3)) ) + ( \CalculaMedia|SUM3|S1|S4|s1|_~11\ ) + ( \CalculaMedia|SUM3|S1|S4|s1|_~10\ ))
-- \CalculaMedia|SUM3|S1|S4|s1|_~5\ = SHARE((\CalculaMedia|SUM1|S1|S4|s2|S\(3) & \CalculaMedia|SUM2|S1|S4|s2|S\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000000000101010110101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|SUM1|S1|S4|s2|ALT_INV_S\(3),
	datad => \CalculaMedia|SUM2|S1|S4|s2|ALT_INV_S\(3),
	cin => \CalculaMedia|SUM3|S1|S4|s1|_~10\,
	sharein => \CalculaMedia|SUM3|S1|S4|s1|_~11\,
	sumout => \CalculaMedia|SUM3|S1|S4|s1|S\(3),
	cout => \CalculaMedia|SUM3|S1|S4|s1|_~4\,
	shareout => \CalculaMedia|SUM3|S1|S4|s1|_~5\);

-- Location: LABCELL_X53_Y6_N15
\CalculaMedia|SUM3|S1|S4|d1|O~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S1|S4|d1|O~0_combout\ = ( \CalculaMedia|SUM3|S1|S4|s1|S\(2) & ( \CalculaMedia|SUM3|S1|S4|s1|S\(3) ) ) # ( !\CalculaMedia|SUM3|S1|S4|s1|S\(2) & ( \CalculaMedia|SUM3|S1|S4|s1|S\(3) & ( \CalculaMedia|SUM3|S1|S4|s1|S\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CalculaMedia|SUM3|S1|S4|s1|ALT_INV_S\(1),
	datae => \CalculaMedia|SUM3|S1|S4|s1|ALT_INV_S\(2),
	dataf => \CalculaMedia|SUM3|S1|S4|s1|ALT_INV_S\(3),
	combout => \CalculaMedia|SUM3|S1|S4|d1|O~0_combout\);

-- Location: LABCELL_X53_Y6_N42
\CalculaMedia|SUM3|S1|S4|s1|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S1|S4|s1|Cout~sumout\ = SUM(( GND ) + ( \CalculaMedia|SUM3|S1|S4|s1|_~5\ ) + ( \CalculaMedia|SUM3|S1|S4|s1|_~4\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \CalculaMedia|SUM3|S1|S4|s1|_~4\,
	sharein => \CalculaMedia|SUM3|S1|S4|s1|_~5\,
	sumout => \CalculaMedia|SUM3|S1|S4|s1|Cout~sumout\);

-- Location: LABCELL_X53_Y10_N30
\CalculaMedia|SUM3|S2|S1|s1|S[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S2|S1|s1|S\(0) = SUM(( !\CalculaMedia|SUM1|S2|S1|s2|_~0_combout\ $ (!\CalculaMedia|SUM2|S2|S1|s2|_~0_combout\ $ (((\CalculaMedia|SUM3|S1|S4|s1|Cout~sumout\) # (\CalculaMedia|SUM3|S1|S4|d1|O~0_combout\)))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM3|S2|S1|s1|_~13\ = CARRY(( !\CalculaMedia|SUM1|S2|S1|s2|_~0_combout\ $ (!\CalculaMedia|SUM2|S2|S1|s2|_~0_combout\ $ (((\CalculaMedia|SUM3|S1|S4|s1|Cout~sumout\) # (\CalculaMedia|SUM3|S1|S4|d1|O~0_combout\)))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM3|S2|S1|s1|_~14\ = SHARE((!\CalculaMedia|SUM1|S2|S1|s2|_~0_combout\ & (\CalculaMedia|SUM2|S2|S1|s2|_~0_combout\ & ((\CalculaMedia|SUM3|S1|S4|s1|Cout~sumout\) # (\CalculaMedia|SUM3|S1|S4|d1|O~0_combout\)))) # 
-- (\CalculaMedia|SUM1|S2|S1|s2|_~0_combout\ & (((\CalculaMedia|SUM3|S1|S4|s1|Cout~sumout\) # (\CalculaMedia|SUM3|S1|S4|d1|O~0_combout\)) # (\CalculaMedia|SUM2|S2|S1|s2|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101110111011100000000000000000110100110011001",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|SUM1|S2|S1|s2|ALT_INV__~0_combout\,
	datab => \CalculaMedia|SUM2|S2|S1|s2|ALT_INV__~0_combout\,
	datac => \CalculaMedia|SUM3|S1|S4|d1|ALT_INV_O~0_combout\,
	datad => \CalculaMedia|SUM3|S1|S4|s1|ALT_INV_Cout~sumout\,
	cin => GND,
	sharein => GND,
	sumout => \CalculaMedia|SUM3|S2|S1|s1|S\(0),
	cout => \CalculaMedia|SUM3|S2|S1|s1|_~13\,
	shareout => \CalculaMedia|SUM3|S2|S1|s1|_~14\);

-- Location: LABCELL_X53_Y10_N33
\CalculaMedia|SUM3|S2|S1|s1|S[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S2|S1|s1|S\(1) = SUM(( GND ) + ( \CalculaMedia|SUM3|S2|S1|s1|_~14\ ) + ( \CalculaMedia|SUM3|S2|S1|s1|_~13\ ))
-- \CalculaMedia|SUM3|S2|S1|s1|_~4\ = CARRY(( GND ) + ( \CalculaMedia|SUM3|S2|S1|s1|_~14\ ) + ( \CalculaMedia|SUM3|S2|S1|s1|_~13\ ))
-- \CalculaMedia|SUM3|S2|S1|s1|_~5\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \CalculaMedia|SUM3|S2|S1|s1|_~13\,
	sharein => \CalculaMedia|SUM3|S2|S1|s1|_~14\,
	sumout => \CalculaMedia|SUM3|S2|S1|s1|S\(1),
	cout => \CalculaMedia|SUM3|S2|S1|s1|_~4\,
	shareout => \CalculaMedia|SUM3|S2|S1|s1|_~5\);

-- Location: LABCELL_X53_Y10_N36
\CalculaMedia|SUM3|S2|S1|s1|S[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S2|S1|s1|S\(2) = SUM(( GND ) + ( \CalculaMedia|SUM3|S2|S1|s1|_~5\ ) + ( \CalculaMedia|SUM3|S2|S1|s1|_~4\ ))
-- \CalculaMedia|SUM3|S2|S1|s1|_~1\ = CARRY(( GND ) + ( \CalculaMedia|SUM3|S2|S1|s1|_~5\ ) + ( \CalculaMedia|SUM3|S2|S1|s1|_~4\ ))
-- \CalculaMedia|SUM3|S2|S1|s1|_~2\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \CalculaMedia|SUM3|S2|S1|s1|_~4\,
	sharein => \CalculaMedia|SUM3|S2|S1|s1|_~5\,
	sumout => \CalculaMedia|SUM3|S2|S1|s1|S\(2),
	cout => \CalculaMedia|SUM3|S2|S1|s1|_~1\,
	shareout => \CalculaMedia|SUM3|S2|S1|s1|_~2\);

-- Location: LABCELL_X53_Y10_N39
\CalculaMedia|SUM3|S2|S1|s1|S[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S2|S1|s1|S\(3) = SUM(( GND ) + ( \CalculaMedia|SUM3|S2|S1|s1|_~2\ ) + ( \CalculaMedia|SUM3|S2|S1|s1|_~1\ ))
-- \CalculaMedia|SUM3|S2|S1|s1|_~7\ = CARRY(( GND ) + ( \CalculaMedia|SUM3|S2|S1|s1|_~2\ ) + ( \CalculaMedia|SUM3|S2|S1|s1|_~1\ ))
-- \CalculaMedia|SUM3|S2|S1|s1|_~8\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \CalculaMedia|SUM3|S2|S1|s1|_~1\,
	sharein => \CalculaMedia|SUM3|S2|S1|s1|_~2\,
	sumout => \CalculaMedia|SUM3|S2|S1|s1|S\(3),
	cout => \CalculaMedia|SUM3|S2|S1|s1|_~7\,
	shareout => \CalculaMedia|SUM3|S2|S1|s1|_~8\);

-- Location: LABCELL_X53_Y10_N42
\CalculaMedia|SUM3|S2|S1|s1|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S2|S1|s1|Cout~sumout\ = SUM(( GND ) + ( \CalculaMedia|SUM3|S2|S1|s1|_~8\ ) + ( \CalculaMedia|SUM3|S2|S1|s1|_~7\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \CalculaMedia|SUM3|S2|S1|s1|_~7\,
	sharein => \CalculaMedia|SUM3|S2|S1|s1|_~8\,
	sumout => \CalculaMedia|SUM3|S2|S1|s1|Cout~sumout\);

-- Location: LABCELL_X53_Y10_N21
\CalculaMedia|SUM3|S2|S2|s2|_~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S2|S2|s2|_~0_combout\ = ( \CalculaMedia|SUM3|S2|S1|s1|S\(1) & ( (\CalculaMedia|SUM3|S2|S1|s1|S\(3)) # (\CalculaMedia|SUM3|S2|S1|s1|Cout~sumout\) ) ) # ( !\CalculaMedia|SUM3|S2|S1|s1|S\(1) & ( ((\CalculaMedia|SUM3|S2|S1|s1|S\(3) & 
-- \CalculaMedia|SUM3|S2|S1|s1|S\(2))) # (\CalculaMedia|SUM3|S2|S1|s1|Cout~sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111111001100110011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CalculaMedia|SUM3|S2|S1|s1|ALT_INV_Cout~sumout\,
	datac => \CalculaMedia|SUM3|S2|S1|s1|ALT_INV_S\(3),
	datad => \CalculaMedia|SUM3|S2|S1|s1|ALT_INV_S\(2),
	dataf => \CalculaMedia|SUM3|S2|S1|s1|ALT_INV_S\(1),
	combout => \CalculaMedia|SUM3|S2|S2|s2|_~0_combout\);

-- Location: LABCELL_X53_Y10_N0
\CalculaMedia|SUM3|S2|S1|s2|S[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S2|S1|s2|S\(1) = SUM(( (!\CalculaMedia|SUM3|S2|S1|s1|S\(1) & (((\CalculaMedia|SUM3|S2|S1|s1|S\(2) & \CalculaMedia|SUM3|S2|S1|s1|S\(3))) # (\CalculaMedia|SUM3|S2|S1|s1|Cout~sumout\))) # (\CalculaMedia|SUM3|S2|S1|s1|S\(1) & 
-- (!\CalculaMedia|SUM3|S2|S1|s1|Cout~sumout\ & ((!\CalculaMedia|SUM3|S2|S1|s1|S\(3))))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM3|S2|S1|s2|_~1\ = CARRY(( (!\CalculaMedia|SUM3|S2|S1|s1|S\(1) & (((\CalculaMedia|SUM3|S2|S1|s1|S\(2) & \CalculaMedia|SUM3|S2|S1|s1|S\(3))) # (\CalculaMedia|SUM3|S2|S1|s1|Cout~sumout\))) # (\CalculaMedia|SUM3|S2|S1|s1|S\(1) & 
-- (!\CalculaMedia|SUM3|S2|S1|s1|Cout~sumout\ & ((!\CalculaMedia|SUM3|S2|S1|s1|S\(3))))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM3|S2|S1|s2|_~2\ = SHARE((\CalculaMedia|SUM3|S2|S1|s1|S\(1) & ((\CalculaMedia|SUM3|S2|S1|s1|S\(3)) # (\CalculaMedia|SUM3|S2|S1|s1|Cout~sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010101010100000000000000000110011000101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|SUM3|S2|S1|s1|ALT_INV_S\(1),
	datab => \CalculaMedia|SUM3|S2|S1|s1|ALT_INV_Cout~sumout\,
	datac => \CalculaMedia|SUM3|S2|S1|s1|ALT_INV_S\(2),
	datad => \CalculaMedia|SUM3|S2|S1|s1|ALT_INV_S\(3),
	cin => GND,
	sharein => GND,
	sumout => \CalculaMedia|SUM3|S2|S1|s2|S\(1),
	cout => \CalculaMedia|SUM3|S2|S1|s2|_~1\,
	shareout => \CalculaMedia|SUM3|S2|S1|s2|_~2\);

-- Location: LABCELL_X53_Y10_N3
\CalculaMedia|SUM3|S2|S1|s2|S[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S2|S1|s2|S\(2) = SUM(( (!\CalculaMedia|SUM3|S2|S1|s1|Cout~sumout\ & ((!\CalculaMedia|SUM3|S2|S1|s1|S\(3) & ((\CalculaMedia|SUM3|S2|S1|s1|S\(2)))) # (\CalculaMedia|SUM3|S2|S1|s1|S\(3) & (\CalculaMedia|SUM3|S2|S1|s1|S\(1) & 
-- !\CalculaMedia|SUM3|S2|S1|s1|S\(2))))) # (\CalculaMedia|SUM3|S2|S1|s1|Cout~sumout\ & (((!\CalculaMedia|SUM3|S2|S1|s1|S\(2))))) ) + ( \CalculaMedia|SUM3|S2|S1|s2|_~2\ ) + ( \CalculaMedia|SUM3|S2|S1|s2|_~1\ ))
-- \CalculaMedia|SUM3|S2|S1|s2|_~4\ = CARRY(( (!\CalculaMedia|SUM3|S2|S1|s1|Cout~sumout\ & ((!\CalculaMedia|SUM3|S2|S1|s1|S\(3) & ((\CalculaMedia|SUM3|S2|S1|s1|S\(2)))) # (\CalculaMedia|SUM3|S2|S1|s1|S\(3) & (\CalculaMedia|SUM3|S2|S1|s1|S\(1) & 
-- !\CalculaMedia|SUM3|S2|S1|s1|S\(2))))) # (\CalculaMedia|SUM3|S2|S1|s1|Cout~sumout\ & (((!\CalculaMedia|SUM3|S2|S1|s1|S\(2))))) ) + ( \CalculaMedia|SUM3|S2|S1|s2|_~2\ ) + ( \CalculaMedia|SUM3|S2|S1|s2|_~1\ ))
-- \CalculaMedia|SUM3|S2|S1|s2|_~5\ = SHARE((\CalculaMedia|SUM3|S2|S1|s1|S\(2) & ((\CalculaMedia|SUM3|S2|S1|s1|S\(3)) # (\CalculaMedia|SUM3|S2|S1|s1|Cout~sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011111100000000000000000011011111000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|SUM3|S2|S1|s1|ALT_INV_S\(1),
	datab => \CalculaMedia|SUM3|S2|S1|s1|ALT_INV_Cout~sumout\,
	datac => \CalculaMedia|SUM3|S2|S1|s1|ALT_INV_S\(3),
	datad => \CalculaMedia|SUM3|S2|S1|s1|ALT_INV_S\(2),
	cin => \CalculaMedia|SUM3|S2|S1|s2|_~1\,
	sharein => \CalculaMedia|SUM3|S2|S1|s2|_~2\,
	sumout => \CalculaMedia|SUM3|S2|S1|s2|S\(2),
	cout => \CalculaMedia|SUM3|S2|S1|s2|_~4\,
	shareout => \CalculaMedia|SUM3|S2|S1|s2|_~5\);

-- Location: LABCELL_X53_Y10_N6
\CalculaMedia|SUM3|S2|S1|s2|S[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S2|S1|s2|S\(3) = SUM(( \CalculaMedia|SUM3|S2|S1|s1|S\(3) ) + ( \CalculaMedia|SUM3|S2|S1|s2|_~5\ ) + ( \CalculaMedia|SUM3|S2|S1|s2|_~4\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \CalculaMedia|SUM3|S2|S1|s1|ALT_INV_S\(3),
	cin => \CalculaMedia|SUM3|S2|S1|s2|_~4\,
	sharein => \CalculaMedia|SUM3|S2|S1|s2|_~5\,
	sumout => \CalculaMedia|SUM3|S2|S1|s2|S\(3));

-- Location: LABCELL_X53_Y6_N0
\CalculaMedia|SUM3|S1|S4|s2|S[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S1|S4|s2|S\(1) = SUM(( (!\CalculaMedia|SUM3|S1|S4|s1|S\(1) & (((\CalculaMedia|SUM3|S1|S4|s1|S\(2) & \CalculaMedia|SUM3|S1|S4|s1|S\(3))) # (\CalculaMedia|SUM3|S1|S4|s1|Cout~sumout\))) # (\CalculaMedia|SUM3|S1|S4|s1|S\(1) & 
-- (!\CalculaMedia|SUM3|S1|S4|s1|Cout~sumout\ & ((!\CalculaMedia|SUM3|S1|S4|s1|S\(3))))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM3|S1|S4|s2|_~1\ = CARRY(( (!\CalculaMedia|SUM3|S1|S4|s1|S\(1) & (((\CalculaMedia|SUM3|S1|S4|s1|S\(2) & \CalculaMedia|SUM3|S1|S4|s1|S\(3))) # (\CalculaMedia|SUM3|S1|S4|s1|Cout~sumout\))) # (\CalculaMedia|SUM3|S1|S4|s1|S\(1) & 
-- (!\CalculaMedia|SUM3|S1|S4|s1|Cout~sumout\ & ((!\CalculaMedia|SUM3|S1|S4|s1|S\(3))))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM3|S1|S4|s2|_~2\ = SHARE((\CalculaMedia|SUM3|S1|S4|s1|S\(1) & ((\CalculaMedia|SUM3|S1|S4|s1|S\(3)) # (\CalculaMedia|SUM3|S1|S4|s1|Cout~sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010101010100000000000000000110011000101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|SUM3|S1|S4|s1|ALT_INV_S\(1),
	datab => \CalculaMedia|SUM3|S1|S4|s1|ALT_INV_Cout~sumout\,
	datac => \CalculaMedia|SUM3|S1|S4|s1|ALT_INV_S\(2),
	datad => \CalculaMedia|SUM3|S1|S4|s1|ALT_INV_S\(3),
	cin => GND,
	sharein => GND,
	sumout => \CalculaMedia|SUM3|S1|S4|s2|S\(1),
	cout => \CalculaMedia|SUM3|S1|S4|s2|_~1\,
	shareout => \CalculaMedia|SUM3|S1|S4|s2|_~2\);

-- Location: LABCELL_X53_Y6_N3
\CalculaMedia|SUM3|S1|S4|s2|S[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S1|S4|s2|S\(2) = SUM(( (!\CalculaMedia|SUM3|S1|S4|s1|Cout~sumout\ & ((!\CalculaMedia|SUM3|S1|S4|s1|S\(3) & ((\CalculaMedia|SUM3|S1|S4|s1|S\(2)))) # (\CalculaMedia|SUM3|S1|S4|s1|S\(3) & (\CalculaMedia|SUM3|S1|S4|s1|S\(1) & 
-- !\CalculaMedia|SUM3|S1|S4|s1|S\(2))))) # (\CalculaMedia|SUM3|S1|S4|s1|Cout~sumout\ & (((!\CalculaMedia|SUM3|S1|S4|s1|S\(2))))) ) + ( \CalculaMedia|SUM3|S1|S4|s2|_~2\ ) + ( \CalculaMedia|SUM3|S1|S4|s2|_~1\ ))
-- \CalculaMedia|SUM3|S1|S4|s2|_~4\ = CARRY(( (!\CalculaMedia|SUM3|S1|S4|s1|Cout~sumout\ & ((!\CalculaMedia|SUM3|S1|S4|s1|S\(3) & ((\CalculaMedia|SUM3|S1|S4|s1|S\(2)))) # (\CalculaMedia|SUM3|S1|S4|s1|S\(3) & (\CalculaMedia|SUM3|S1|S4|s1|S\(1) & 
-- !\CalculaMedia|SUM3|S1|S4|s1|S\(2))))) # (\CalculaMedia|SUM3|S1|S4|s1|Cout~sumout\ & (((!\CalculaMedia|SUM3|S1|S4|s1|S\(2))))) ) + ( \CalculaMedia|SUM3|S1|S4|s2|_~2\ ) + ( \CalculaMedia|SUM3|S1|S4|s2|_~1\ ))
-- \CalculaMedia|SUM3|S1|S4|s2|_~5\ = SHARE((\CalculaMedia|SUM3|S1|S4|s1|S\(2) & ((\CalculaMedia|SUM3|S1|S4|s1|S\(3)) # (\CalculaMedia|SUM3|S1|S4|s1|Cout~sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011111100000000000000000011011111000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|SUM3|S1|S4|s1|ALT_INV_S\(1),
	datab => \CalculaMedia|SUM3|S1|S4|s1|ALT_INV_Cout~sumout\,
	datac => \CalculaMedia|SUM3|S1|S4|s1|ALT_INV_S\(3),
	datad => \CalculaMedia|SUM3|S1|S4|s1|ALT_INV_S\(2),
	cin => \CalculaMedia|SUM3|S1|S4|s2|_~1\,
	sharein => \CalculaMedia|SUM3|S1|S4|s2|_~2\,
	sumout => \CalculaMedia|SUM3|S1|S4|s2|S\(2),
	cout => \CalculaMedia|SUM3|S1|S4|s2|_~4\,
	shareout => \CalculaMedia|SUM3|S1|S4|s2|_~5\);

-- Location: LABCELL_X53_Y6_N6
\CalculaMedia|SUM3|S1|S4|s2|S[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S1|S4|s2|S\(3) = SUM(( \CalculaMedia|SUM3|S1|S4|s1|S\(3) ) + ( \CalculaMedia|SUM3|S1|S4|s2|_~5\ ) + ( \CalculaMedia|SUM3|S1|S4|s2|_~4\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \CalculaMedia|SUM3|S1|S4|s1|ALT_INV_S\(3),
	cin => \CalculaMedia|SUM3|S1|S4|s2|_~4\,
	sharein => \CalculaMedia|SUM3|S1|S4|s2|_~5\,
	sumout => \CalculaMedia|SUM3|S1|S4|s2|S\(3));

-- Location: LABCELL_X53_Y4_N30
\CalculaMedia|SUM3|S1|S3|s2|S[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S1|S3|s2|S\(1) = SUM(( (!\CalculaMedia|SUM3|S1|S3|s1|S\(1) & (((\CalculaMedia|SUM3|S1|S3|s1|S\(2) & \CalculaMedia|SUM3|S1|S3|s1|S\(3))) # (\CalculaMedia|SUM3|S1|S3|s1|Cout~sumout\))) # (\CalculaMedia|SUM3|S1|S3|s1|S\(1) & 
-- (((!\CalculaMedia|SUM3|S1|S3|s1|S\(3) & !\CalculaMedia|SUM3|S1|S3|s1|Cout~sumout\)))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM3|S1|S3|s2|_~1\ = CARRY(( (!\CalculaMedia|SUM3|S1|S3|s1|S\(1) & (((\CalculaMedia|SUM3|S1|S3|s1|S\(2) & \CalculaMedia|SUM3|S1|S3|s1|S\(3))) # (\CalculaMedia|SUM3|S1|S3|s1|Cout~sumout\))) # (\CalculaMedia|SUM3|S1|S3|s1|S\(1) & 
-- (((!\CalculaMedia|SUM3|S1|S3|s1|S\(3) & !\CalculaMedia|SUM3|S1|S3|s1|Cout~sumout\)))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM3|S1|S3|s2|_~2\ = SHARE((\CalculaMedia|SUM3|S1|S3|s1|S\(1) & ((\CalculaMedia|SUM3|S1|S3|s1|Cout~sumout\) # (\CalculaMedia|SUM3|S1|S3|s1|S\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101010100000000000000000101001010101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|SUM3|S1|S3|s1|ALT_INV_S\(1),
	datab => \CalculaMedia|SUM3|S1|S3|s1|ALT_INV_S\(2),
	datac => \CalculaMedia|SUM3|S1|S3|s1|ALT_INV_S\(3),
	datad => \CalculaMedia|SUM3|S1|S3|s1|ALT_INV_Cout~sumout\,
	cin => GND,
	sharein => GND,
	sumout => \CalculaMedia|SUM3|S1|S3|s2|S\(1),
	cout => \CalculaMedia|SUM3|S1|S3|s2|_~1\,
	shareout => \CalculaMedia|SUM3|S1|S3|s2|_~2\);

-- Location: LABCELL_X53_Y4_N33
\CalculaMedia|SUM3|S1|S3|s2|S[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S1|S3|s2|S\(2) = SUM(( (!\CalculaMedia|SUM3|S1|S3|s1|S\(2) & (((\CalculaMedia|SUM3|S1|S3|s1|S\(1) & \CalculaMedia|SUM3|S1|S3|s1|S\(3))) # (\CalculaMedia|SUM3|S1|S3|s1|Cout~sumout\))) # (\CalculaMedia|SUM3|S1|S3|s1|S\(2) & 
-- (((!\CalculaMedia|SUM3|S1|S3|s1|Cout~sumout\ & !\CalculaMedia|SUM3|S1|S3|s1|S\(3))))) ) + ( \CalculaMedia|SUM3|S1|S3|s2|_~2\ ) + ( \CalculaMedia|SUM3|S1|S3|s2|_~1\ ))
-- \CalculaMedia|SUM3|S1|S3|s2|_~4\ = CARRY(( (!\CalculaMedia|SUM3|S1|S3|s1|S\(2) & (((\CalculaMedia|SUM3|S1|S3|s1|S\(1) & \CalculaMedia|SUM3|S1|S3|s1|S\(3))) # (\CalculaMedia|SUM3|S1|S3|s1|Cout~sumout\))) # (\CalculaMedia|SUM3|S1|S3|s1|S\(2) & 
-- (((!\CalculaMedia|SUM3|S1|S3|s1|Cout~sumout\ & !\CalculaMedia|SUM3|S1|S3|s1|S\(3))))) ) + ( \CalculaMedia|SUM3|S1|S3|s2|_~2\ ) + ( \CalculaMedia|SUM3|S1|S3|s2|_~1\ ))
-- \CalculaMedia|SUM3|S1|S3|s2|_~5\ = SHARE((\CalculaMedia|SUM3|S1|S3|s1|S\(2) & ((\CalculaMedia|SUM3|S1|S3|s1|S\(3)) # (\CalculaMedia|SUM3|S1|S3|s1|Cout~sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011001100000000000000000011110001001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|SUM3|S1|S3|s1|ALT_INV_S\(1),
	datab => \CalculaMedia|SUM3|S1|S3|s1|ALT_INV_S\(2),
	datac => \CalculaMedia|SUM3|S1|S3|s1|ALT_INV_Cout~sumout\,
	datad => \CalculaMedia|SUM3|S1|S3|s1|ALT_INV_S\(3),
	cin => \CalculaMedia|SUM3|S1|S3|s2|_~1\,
	sharein => \CalculaMedia|SUM3|S1|S3|s2|_~2\,
	sumout => \CalculaMedia|SUM3|S1|S3|s2|S\(2),
	cout => \CalculaMedia|SUM3|S1|S3|s2|_~4\,
	shareout => \CalculaMedia|SUM3|S1|S3|s2|_~5\);

-- Location: LABCELL_X53_Y4_N36
\CalculaMedia|SUM3|S1|S3|s2|S[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S1|S3|s2|S\(3) = SUM(( \CalculaMedia|SUM3|S1|S3|s1|S\(3) ) + ( \CalculaMedia|SUM3|S1|S3|s2|_~5\ ) + ( \CalculaMedia|SUM3|S1|S3|s2|_~4\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \CalculaMedia|SUM3|S1|S3|s1|ALT_INV_S\(3),
	cin => \CalculaMedia|SUM3|S1|S3|s2|_~4\,
	sharein => \CalculaMedia|SUM3|S1|S3|s2|_~5\,
	sumout => \CalculaMedia|SUM3|S1|S3|s2|S\(3));

-- Location: MLABCELL_X52_Y1_N30
\CalculaMedia|SUM3|S1|S1|s2|S[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S1|S1|s2|S\(1) = SUM(( (!\CalculaMedia|SUM3|S1|S1|s1|Cout~sumout\ & ((!\CalculaMedia|SUM3|S1|S1|s1|S\(3) & ((\CalculaMedia|SUM3|S1|S1|s1|S\(1)))) # (\CalculaMedia|SUM3|S1|S1|s1|S\(3) & (\CalculaMedia|SUM3|S1|S1|s1|S\(2) & 
-- !\CalculaMedia|SUM3|S1|S1|s1|S\(1))))) # (\CalculaMedia|SUM3|S1|S1|s1|Cout~sumout\ & (((!\CalculaMedia|SUM3|S1|S1|s1|S\(1))))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM3|S1|S1|s2|_~1\ = CARRY(( (!\CalculaMedia|SUM3|S1|S1|s1|Cout~sumout\ & ((!\CalculaMedia|SUM3|S1|S1|s1|S\(3) & ((\CalculaMedia|SUM3|S1|S1|s1|S\(1)))) # (\CalculaMedia|SUM3|S1|S1|s1|S\(3) & (\CalculaMedia|SUM3|S1|S1|s1|S\(2) & 
-- !\CalculaMedia|SUM3|S1|S1|s1|S\(1))))) # (\CalculaMedia|SUM3|S1|S1|s1|Cout~sumout\ & (((!\CalculaMedia|SUM3|S1|S1|s1|S\(1))))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM3|S1|S1|s2|_~2\ = SHARE((\CalculaMedia|SUM3|S1|S1|s1|S\(1) & ((\CalculaMedia|SUM3|S1|S1|s1|S\(3)) # (\CalculaMedia|SUM3|S1|S1|s1|Cout~sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011111100000000000000000011011111000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|SUM3|S1|S1|s1|ALT_INV_S\(2),
	datab => \CalculaMedia|SUM3|S1|S1|s1|ALT_INV_Cout~sumout\,
	datac => \CalculaMedia|SUM3|S1|S1|s1|ALT_INV_S\(3),
	datad => \CalculaMedia|SUM3|S1|S1|s1|ALT_INV_S\(1),
	cin => GND,
	sharein => GND,
	sumout => \CalculaMedia|SUM3|S1|S1|s2|S\(1),
	cout => \CalculaMedia|SUM3|S1|S1|s2|_~1\,
	shareout => \CalculaMedia|SUM3|S1|S1|s2|_~2\);

-- Location: LABCELL_X53_Y2_N0
\CalculaMedia|Converte|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|Converte|Add0~1_sumout\ = SUM(( \CalculaMedia|SUM3|S1|S1|s2|S\(1) ) + ( \CalculaMedia|SUM3|S1|S2|s1|S\(0) ) + ( !VCC ))
-- \CalculaMedia|Converte|Add0~2\ = CARRY(( \CalculaMedia|SUM3|S1|S1|s2|S\(1) ) + ( \CalculaMedia|SUM3|S1|S2|s1|S\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CalculaMedia|SUM3|S1|S2|s1|ALT_INV_S\(0),
	datad => \CalculaMedia|SUM3|S1|S1|s2|ALT_INV_S\(1),
	cin => GND,
	sumout => \CalculaMedia|Converte|Add0~1_sumout\,
	cout => \CalculaMedia|Converte|Add0~2\);

-- Location: LABCELL_X53_Y2_N30
\CalculaMedia|SUM3|S1|S2|s2|S[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S1|S2|s2|S\(1) = SUM(( (!\CalculaMedia|SUM3|S1|S2|s1|S\(3) & ((!\CalculaMedia|SUM3|S1|S2|s1|S\(1) $ (!\CalculaMedia|SUM3|S1|S2|s1|Cout~sumout\)))) # (\CalculaMedia|SUM3|S1|S2|s1|S\(3) & (!\CalculaMedia|SUM3|S1|S2|s1|S\(1) & 
-- ((\CalculaMedia|SUM3|S1|S2|s1|Cout~sumout\) # (\CalculaMedia|SUM3|S1|S2|s1|S\(2))))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM3|S1|S2|s2|_~1\ = CARRY(( (!\CalculaMedia|SUM3|S1|S2|s1|S\(3) & ((!\CalculaMedia|SUM3|S1|S2|s1|S\(1) $ (!\CalculaMedia|SUM3|S1|S2|s1|Cout~sumout\)))) # (\CalculaMedia|SUM3|S1|S2|s1|S\(3) & (!\CalculaMedia|SUM3|S1|S2|s1|S\(1) & 
-- ((\CalculaMedia|SUM3|S1|S2|s1|Cout~sumout\) # (\CalculaMedia|SUM3|S1|S2|s1|S\(2))))) ) + ( !VCC ) + ( !VCC ))
-- \CalculaMedia|SUM3|S1|S2|s2|_~2\ = SHARE((\CalculaMedia|SUM3|S1|S2|s1|S\(1) & ((\CalculaMedia|SUM3|S1|S2|s1|Cout~sumout\) # (\CalculaMedia|SUM3|S1|S2|s1|S\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000111100000000000000000001110011110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|SUM3|S1|S2|s1|ALT_INV_S\(2),
	datab => \CalculaMedia|SUM3|S1|S2|s1|ALT_INV_S\(3),
	datac => \CalculaMedia|SUM3|S1|S2|s1|ALT_INV_S\(1),
	datad => \CalculaMedia|SUM3|S1|S2|s1|ALT_INV_Cout~sumout\,
	cin => GND,
	sharein => GND,
	sumout => \CalculaMedia|SUM3|S1|S2|s2|S\(1),
	cout => \CalculaMedia|SUM3|S1|S2|s2|_~1\,
	shareout => \CalculaMedia|SUM3|S1|S2|s2|_~2\);

-- Location: MLABCELL_X52_Y1_N33
\CalculaMedia|SUM3|S1|S1|s2|S[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S1|S1|s2|S\(2) = SUM(( (!\CalculaMedia|SUM3|S1|S1|s1|S\(2) & (((\CalculaMedia|SUM3|S1|S1|s1|S\(3) & \CalculaMedia|SUM3|S1|S1|s1|S\(1))) # (\CalculaMedia|SUM3|S1|S1|s1|Cout~sumout\))) # (\CalculaMedia|SUM3|S1|S1|s1|S\(2) & 
-- (!\CalculaMedia|SUM3|S1|S1|s1|Cout~sumout\ & (!\CalculaMedia|SUM3|S1|S1|s1|S\(3)))) ) + ( \CalculaMedia|SUM3|S1|S1|s2|_~2\ ) + ( \CalculaMedia|SUM3|S1|S1|s2|_~1\ ))
-- \CalculaMedia|SUM3|S1|S1|s2|_~4\ = CARRY(( (!\CalculaMedia|SUM3|S1|S1|s1|S\(2) & (((\CalculaMedia|SUM3|S1|S1|s1|S\(3) & \CalculaMedia|SUM3|S1|S1|s1|S\(1))) # (\CalculaMedia|SUM3|S1|S1|s1|Cout~sumout\))) # (\CalculaMedia|SUM3|S1|S1|s1|S\(2) & 
-- (!\CalculaMedia|SUM3|S1|S1|s1|Cout~sumout\ & (!\CalculaMedia|SUM3|S1|S1|s1|S\(3)))) ) + ( \CalculaMedia|SUM3|S1|S1|s2|_~2\ ) + ( \CalculaMedia|SUM3|S1|S1|s2|_~1\ ))
-- \CalculaMedia|SUM3|S1|S1|s2|_~5\ = SHARE((\CalculaMedia|SUM3|S1|S1|s1|S\(2) & ((\CalculaMedia|SUM3|S1|S1|s1|S\(3)) # (\CalculaMedia|SUM3|S1|S1|s1|Cout~sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101010001010100000000000000000110001001101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|SUM3|S1|S1|s1|ALT_INV_S\(2),
	datab => \CalculaMedia|SUM3|S1|S1|s1|ALT_INV_Cout~sumout\,
	datac => \CalculaMedia|SUM3|S1|S1|s1|ALT_INV_S\(3),
	datad => \CalculaMedia|SUM3|S1|S1|s1|ALT_INV_S\(1),
	cin => \CalculaMedia|SUM3|S1|S1|s2|_~1\,
	sharein => \CalculaMedia|SUM3|S1|S1|s2|_~2\,
	sumout => \CalculaMedia|SUM3|S1|S1|s2|S\(2),
	cout => \CalculaMedia|SUM3|S1|S1|s2|_~4\,
	shareout => \CalculaMedia|SUM3|S1|S1|s2|_~5\);

-- Location: LABCELL_X53_Y2_N3
\CalculaMedia|Converte|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|Converte|Add0~5_sumout\ = SUM(( \CalculaMedia|SUM3|S1|S1|s2|S\(2) ) + ( \CalculaMedia|SUM3|S1|S2|s2|S\(1) ) + ( \CalculaMedia|Converte|Add0~2\ ))
-- \CalculaMedia|Converte|Add0~6\ = CARRY(( \CalculaMedia|SUM3|S1|S1|s2|S\(2) ) + ( \CalculaMedia|SUM3|S1|S2|s2|S\(1) ) + ( \CalculaMedia|Converte|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|SUM3|S1|S2|s2|ALT_INV_S\(1),
	datad => \CalculaMedia|SUM3|S1|S1|s2|ALT_INV_S\(2),
	cin => \CalculaMedia|Converte|Add0~2\,
	sumout => \CalculaMedia|Converte|Add0~5_sumout\,
	cout => \CalculaMedia|Converte|Add0~6\);

-- Location: LABCELL_X53_Y2_N33
\CalculaMedia|SUM3|S1|S2|s2|S[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S1|S2|s2|S\(2) = SUM(( (!\CalculaMedia|SUM3|S1|S2|s1|S\(2) & (((\CalculaMedia|SUM3|S1|S2|s1|S\(3) & \CalculaMedia|SUM3|S1|S2|s1|S\(1))) # (\CalculaMedia|SUM3|S1|S2|s1|Cout~sumout\))) # (\CalculaMedia|SUM3|S1|S2|s1|S\(2) & 
-- (!\CalculaMedia|SUM3|S1|S2|s1|S\(3) & ((!\CalculaMedia|SUM3|S1|S2|s1|Cout~sumout\)))) ) + ( \CalculaMedia|SUM3|S1|S2|s2|_~2\ ) + ( \CalculaMedia|SUM3|S1|S2|s2|_~1\ ))
-- \CalculaMedia|SUM3|S1|S2|s2|_~4\ = CARRY(( (!\CalculaMedia|SUM3|S1|S2|s1|S\(2) & (((\CalculaMedia|SUM3|S1|S2|s1|S\(3) & \CalculaMedia|SUM3|S1|S2|s1|S\(1))) # (\CalculaMedia|SUM3|S1|S2|s1|Cout~sumout\))) # (\CalculaMedia|SUM3|S1|S2|s1|S\(2) & 
-- (!\CalculaMedia|SUM3|S1|S2|s1|S\(3) & ((!\CalculaMedia|SUM3|S1|S2|s1|Cout~sumout\)))) ) + ( \CalculaMedia|SUM3|S1|S2|s2|_~2\ ) + ( \CalculaMedia|SUM3|S1|S2|s2|_~1\ ))
-- \CalculaMedia|SUM3|S1|S2|s2|_~5\ = SHARE((\CalculaMedia|SUM3|S1|S2|s1|S\(2) & ((\CalculaMedia|SUM3|S1|S2|s1|Cout~sumout\) # (\CalculaMedia|SUM3|S1|S2|s1|S\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010101010100000000000000000100011010101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|SUM3|S1|S2|s1|ALT_INV_S\(2),
	datab => \CalculaMedia|SUM3|S1|S2|s1|ALT_INV_S\(3),
	datac => \CalculaMedia|SUM3|S1|S2|s1|ALT_INV_S\(1),
	datad => \CalculaMedia|SUM3|S1|S2|s1|ALT_INV_Cout~sumout\,
	cin => \CalculaMedia|SUM3|S1|S2|s2|_~1\,
	sharein => \CalculaMedia|SUM3|S1|S2|s2|_~2\,
	sumout => \CalculaMedia|SUM3|S1|S2|s2|S\(2),
	cout => \CalculaMedia|SUM3|S1|S2|s2|_~4\,
	shareout => \CalculaMedia|SUM3|S1|S2|s2|_~5\);

-- Location: MLABCELL_X52_Y1_N36
\CalculaMedia|SUM3|S1|S1|s2|S[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S1|S1|s2|S\(3) = SUM(( \CalculaMedia|SUM3|S1|S1|s1|S\(3) ) + ( \CalculaMedia|SUM3|S1|S1|s2|_~5\ ) + ( \CalculaMedia|SUM3|S1|S1|s2|_~4\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \CalculaMedia|SUM3|S1|S1|s1|ALT_INV_S\(3),
	cin => \CalculaMedia|SUM3|S1|S1|s2|_~4\,
	sharein => \CalculaMedia|SUM3|S1|S1|s2|_~5\,
	sumout => \CalculaMedia|SUM3|S1|S1|s2|S\(3));

-- Location: LABCELL_X53_Y2_N6
\CalculaMedia|Converte|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|Converte|Add0~9_sumout\ = SUM(( !\CalculaMedia|SUM3|S1|S2|s1|S\(0) $ (!\CalculaMedia|SUM3|S1|S1|s2|S\(3)) ) + ( \CalculaMedia|SUM3|S1|S2|s2|S\(2) ) + ( \CalculaMedia|Converte|Add0~6\ ))
-- \CalculaMedia|Converte|Add0~10\ = CARRY(( !\CalculaMedia|SUM3|S1|S2|s1|S\(0) $ (!\CalculaMedia|SUM3|S1|S1|s2|S\(3)) ) + ( \CalculaMedia|SUM3|S1|S2|s2|S\(2) ) + ( \CalculaMedia|Converte|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CalculaMedia|SUM3|S1|S2|s1|ALT_INV_S\(0),
	datac => \CalculaMedia|SUM3|S1|S2|s2|ALT_INV_S\(2),
	datad => \CalculaMedia|SUM3|S1|S1|s2|ALT_INV_S\(3),
	cin => \CalculaMedia|Converte|Add0~6\,
	sumout => \CalculaMedia|Converte|Add0~9_sumout\,
	cout => \CalculaMedia|Converte|Add0~10\);

-- Location: LABCELL_X53_Y2_N36
\CalculaMedia|SUM3|S1|S2|s2|S[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|SUM3|S1|S2|s2|S\(3) = SUM(( \CalculaMedia|SUM3|S1|S2|s1|S\(3) ) + ( \CalculaMedia|SUM3|S1|S2|s2|_~5\ ) + ( \CalculaMedia|SUM3|S1|S2|s2|_~4\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \CalculaMedia|SUM3|S1|S2|s1|ALT_INV_S\(3),
	cin => \CalculaMedia|SUM3|S1|S2|s2|_~4\,
	sharein => \CalculaMedia|SUM3|S1|S2|s2|_~5\,
	sumout => \CalculaMedia|SUM3|S1|S2|s2|S\(3));

-- Location: LABCELL_X53_Y2_N9
\CalculaMedia|Converte|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|Converte|Add0~13_sumout\ = SUM(( \CalculaMedia|SUM3|S1|S2|s2|S\(3) ) + ( !\CalculaMedia|SUM3|S1|S2|s2|S\(1) $ (((!\CalculaMedia|SUM3|S1|S1|s2|S\(3)) # (!\CalculaMedia|SUM3|S1|S2|s1|S\(0)))) ) + ( \CalculaMedia|Converte|Add0~10\ ))
-- \CalculaMedia|Converte|Add0~14\ = CARRY(( \CalculaMedia|SUM3|S1|S2|s2|S\(3) ) + ( !\CalculaMedia|SUM3|S1|S2|s2|S\(1) $ (((!\CalculaMedia|SUM3|S1|S1|s2|S\(3)) # (!\CalculaMedia|SUM3|S1|S2|s1|S\(0)))) ) + ( \CalculaMedia|Converte|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000011110000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|SUM3|S1|S1|s2|ALT_INV_S\(3),
	datab => \CalculaMedia|SUM3|S1|S2|s1|ALT_INV_S\(0),
	datac => \CalculaMedia|SUM3|S1|S2|s2|ALT_INV_S\(1),
	datad => \CalculaMedia|SUM3|S1|S2|s2|ALT_INV_S\(3),
	cin => \CalculaMedia|Converte|Add0~10\,
	sumout => \CalculaMedia|Converte|Add0~13_sumout\,
	cout => \CalculaMedia|Converte|Add0~14\);

-- Location: LABCELL_X53_Y2_N12
\CalculaMedia|Converte|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|Converte|Add0~17_sumout\ = SUM(( (\CalculaMedia|SUM3|S1|S2|s2|S\(1) & (\CalculaMedia|SUM3|S1|S2|s1|S\(0) & \CalculaMedia|SUM3|S1|S1|s2|S\(3))) ) + ( \CalculaMedia|SUM3|S1|S2|s2|S\(2) ) + ( \CalculaMedia|Converte|Add0~14\ ))
-- \CalculaMedia|Converte|Add0~18\ = CARRY(( (\CalculaMedia|SUM3|S1|S2|s2|S\(1) & (\CalculaMedia|SUM3|S1|S2|s1|S\(0) & \CalculaMedia|SUM3|S1|S1|s2|S\(3))) ) + ( \CalculaMedia|SUM3|S1|S2|s2|S\(2) ) + ( \CalculaMedia|Converte|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|SUM3|S1|S2|s2|ALT_INV_S\(1),
	datab => \CalculaMedia|SUM3|S1|S2|s1|ALT_INV_S\(0),
	datac => \CalculaMedia|SUM3|S1|S2|s2|ALT_INV_S\(2),
	datad => \CalculaMedia|SUM3|S1|S1|s2|ALT_INV_S\(3),
	cin => \CalculaMedia|Converte|Add0~14\,
	sumout => \CalculaMedia|Converte|Add0~17_sumout\,
	cout => \CalculaMedia|Converte|Add0~18\);

-- Location: LABCELL_X53_Y2_N15
\CalculaMedia|Converte|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|Converte|Add0~21_sumout\ = SUM(( \CalculaMedia|SUM3|S1|S2|s2|S\(3) ) + ( GND ) + ( \CalculaMedia|Converte|Add0~18\ ))
-- \CalculaMedia|Converte|Add0~22\ = CARRY(( \CalculaMedia|SUM3|S1|S2|s2|S\(3) ) + ( GND ) + ( \CalculaMedia|Converte|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CalculaMedia|SUM3|S1|S2|s2|ALT_INV_S\(3),
	cin => \CalculaMedia|Converte|Add0~18\,
	sumout => \CalculaMedia|Converte|Add0~21_sumout\,
	cout => \CalculaMedia|Converte|Add0~22\);

-- Location: LABCELL_X53_Y2_N18
\CalculaMedia|Converte|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|Converte|Add0~25_sumout\ = SUM(( GND ) + ( GND ) + ( \CalculaMedia|Converte|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \CalculaMedia|Converte|Add0~22\,
	sumout => \CalculaMedia|Converte|Add0~25_sumout\);

-- Location: DSP_X54_Y4_N0
\CalculaMedia|Converte|Mult0~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 4,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 7,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 1,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_plus36",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \CalculaMedia|Converte|Mult0~mac_AX_bus\,
	ay => \CalculaMedia|Converte|Mult0~mac_AY_bus\,
	bx => \CalculaMedia|Converte|Mult0~mac_BX_bus\,
	by => \CalculaMedia|Converte|Mult0~mac_BY_bus\,
	resulta => \CalculaMedia|Converte|Mult0~mac_RESULTA_bus\);

-- Location: DSP_X54_Y6_N0
\CalculaMedia|Converte|Mult1~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 4,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 10,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 1,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_plus36",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \CalculaMedia|Converte|Mult1~mac_AX_bus\,
	ay => \CalculaMedia|Converte|Mult1~mac_AY_bus\,
	bx => \CalculaMedia|Converte|Mult1~mac_BX_bus\,
	by => \CalculaMedia|Converte|Mult1~mac_BY_bus\,
	resulta => \CalculaMedia|Converte|Mult1~mac_RESULTA_bus\);

-- Location: DSP_X54_Y8_N0
\CalculaMedia|Converte|Mult2~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 4,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 15,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 2,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_plus36",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \CalculaMedia|Converte|Mult2~mac_AX_bus\,
	ay => \CalculaMedia|Converte|Mult2~mac_AY_bus\,
	bx => \CalculaMedia|Converte|Mult2~mac_BX_bus\,
	by => \CalculaMedia|Converte|Mult2~mac_BY_bus\,
	resulta => \CalculaMedia|Converte|Mult2~mac_RESULTA_bus\);

-- Location: DSP_X54_Y14_N0
\CalculaMedia|Converte|Mult3~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 3,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 17,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 3,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 18,
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_plus36",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \CalculaMedia|Converte|Mult3~mac_AX_bus\,
	ay => \CalculaMedia|Converte|Mult3~mac_AY_bus\,
	bx => \CalculaMedia|Converte|Mult3~mac_BX_bus\,
	by => \CalculaMedia|Converte|Mult3~mac_BY_bus\,
	resulta => \CalculaMedia|Converte|Mult3~mac_RESULTA_bus\,
	chainout => \CalculaMedia|Converte|Mult3~mac_CHAINOUT_bus\);

-- Location: DSP_X54_Y12_N0
\CalculaMedia|Converte|Mult4~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 20,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 3,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m27x27",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "true")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \CalculaMedia|Converte|Mult4~mac_AX_bus\,
	ay => \CalculaMedia|Converte|Mult4~mac_AY_bus\,
	chainin => \CalculaMedia|Converte|Mult4~mac_CHAININ_bus\,
	resulta => \CalculaMedia|Converte|Mult4~mac_RESULTA_bus\,
	chainout => \CalculaMedia|Converte|Mult4~mac_CHAINOUT_bus\);

-- Location: DSP_X54_Y10_N0
\CalculaMedia|Converte|Mult5~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 24,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 3,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m27x27",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "true")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \CalculaMedia|Converte|Mult5~8_AX_bus\,
	ay => \CalculaMedia|Converte|Mult5~8_AY_bus\,
	chainin => \CalculaMedia|Converte|Mult5~8_CHAININ_bus\,
	resulta => \CalculaMedia|Converte|Mult5~8_RESULTA_bus\);

-- Location: LABCELL_X55_Y10_N3
\CalculaMedia|ConverteBCD|binary[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|binary[13]~feeder_combout\ = ( \CalculaMedia|Converte|bin_out\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CalculaMedia|Converte|ALT_INV_bin_out\(15),
	combout => \CalculaMedia|ConverteBCD|binary[13]~feeder_combout\);

-- Location: LABCELL_X53_Y10_N15
\CalculaMedia|ConverteBCD|binary[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|binary[12]~feeder_combout\ = ( \CalculaMedia|Converte|bin_out\(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CalculaMedia|Converte|ALT_INV_bin_out\(14),
	combout => \CalculaMedia|ConverteBCD|binary[12]~feeder_combout\);

-- Location: LABCELL_X53_Y10_N54
\CalculaMedia|ConverteBCD|binary[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|binary[11]~feeder_combout\ = ( \CalculaMedia|Converte|bin_out\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CalculaMedia|Converte|ALT_INV_bin_out\(13),
	combout => \CalculaMedia|ConverteBCD|binary[11]~feeder_combout\);

-- Location: LABCELL_X53_Y10_N27
\CalculaMedia|ConverteBCD|binary[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|binary[10]~feeder_combout\ = ( \CalculaMedia|Converte|bin_out\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CalculaMedia|Converte|ALT_INV_bin_out\(12),
	combout => \CalculaMedia|ConverteBCD|binary[10]~feeder_combout\);

-- Location: LABCELL_X55_Y10_N42
\CalculaMedia|ConverteBCD|binary[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|binary[9]~feeder_combout\ = ( \CalculaMedia|Converte|bin_out\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CalculaMedia|Converte|ALT_INV_bin_out\(11),
	combout => \CalculaMedia|ConverteBCD|binary[9]~feeder_combout\);

-- Location: LABCELL_X55_Y10_N36
\CalculaMedia|ConverteBCD|binary[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|binary[8]~feeder_combout\ = ( \CalculaMedia|Converte|bin_out\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CalculaMedia|Converte|ALT_INV_bin_out\(10),
	combout => \CalculaMedia|ConverteBCD|binary[8]~feeder_combout\);

-- Location: LABCELL_X55_Y10_N57
\CalculaMedia|ConverteBCD|binary[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|binary[7]~feeder_combout\ = ( \CalculaMedia|Converte|bin_out\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CalculaMedia|Converte|ALT_INV_bin_out\(9),
	combout => \CalculaMedia|ConverteBCD|binary[7]~feeder_combout\);

-- Location: LABCELL_X53_Y10_N51
\CalculaMedia|ConverteBCD|binary[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|binary[6]~feeder_combout\ = ( \CalculaMedia|Converte|bin_out\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CalculaMedia|Converte|ALT_INV_bin_out\(8),
	combout => \CalculaMedia|ConverteBCD|binary[6]~feeder_combout\);

-- Location: LABCELL_X53_Y10_N57
\CalculaMedia|ConverteBCD|binary[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|binary[5]~feeder_combout\ = ( \CalculaMedia|Converte|bin_out\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CalculaMedia|Converte|ALT_INV_bin_out\(7),
	combout => \CalculaMedia|ConverteBCD|binary[5]~feeder_combout\);

-- Location: LABCELL_X53_Y10_N12
\CalculaMedia|ConverteBCD|binary[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|binary[4]~feeder_combout\ = ( \CalculaMedia|Converte|bin_out\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CalculaMedia|Converte|ALT_INV_bin_out\(6),
	combout => \CalculaMedia|ConverteBCD|binary[4]~feeder_combout\);

-- Location: LABCELL_X53_Y10_N18
\CalculaMedia|ConverteBCD|binary[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|binary[3]~feeder_combout\ = ( \CalculaMedia|Converte|bin_out\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CalculaMedia|Converte|ALT_INV_bin_out\(5),
	combout => \CalculaMedia|ConverteBCD|binary[3]~feeder_combout\);

-- Location: LABCELL_X53_Y10_N24
\CalculaMedia|ConverteBCD|binary[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|binary[2]~feeder_combout\ = ( \CalculaMedia|Converte|bin_out\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CalculaMedia|Converte|ALT_INV_bin_out\(4),
	combout => \CalculaMedia|ConverteBCD|binary[2]~feeder_combout\);

-- Location: LABCELL_X53_Y10_N48
\CalculaMedia|ConverteBCD|binary[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|binary[1]~feeder_combout\ = ( \CalculaMedia|Converte|bin_out\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CalculaMedia|Converte|ALT_INV_bin_out\(3),
	combout => \CalculaMedia|ConverteBCD|binary[1]~feeder_combout\);

-- Location: MLABCELL_X52_Y10_N48
\CalculaMedia|ConverteBCD|binary_next~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|binary_next~0_combout\ = ( \CalculaMedia|ConverteBCD|binary\(0) & ( \CalculaMedia|ConverteBCD|shift_counter[1]~DUPLICATE_q\ & ( (!\CalculaMedia|ConverteBCD|shift_counter\(0) & (\CalculaMedia|ConverteBCD|shift_counter\(3) & 
-- \CalculaMedia|ConverteBCD|shift_counter\(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|ConverteBCD|ALT_INV_shift_counter\(0),
	datac => \CalculaMedia|ConverteBCD|ALT_INV_shift_counter\(3),
	datad => \CalculaMedia|ConverteBCD|ALT_INV_shift_counter\(2),
	datae => \CalculaMedia|ConverteBCD|ALT_INV_binary\(0),
	dataf => \CalculaMedia|ConverteBCD|ALT_INV_shift_counter[1]~DUPLICATE_q\,
	combout => \CalculaMedia|ConverteBCD|binary_next~0_combout\);

-- Location: FF_X52_Y10_N49
\CalculaMedia|ConverteBCD|binary[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|binary_next~0_combout\,
	asdata => \CalculaMedia|Converte|bin_out\(2),
	sload => \CalculaMedia|ConverteBCD|ALT_INV_state.shift~q\,
	ena => \CalculaMedia|ConverteBCD|ALT_INV_state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|binary\(0));

-- Location: FF_X53_Y10_N49
\CalculaMedia|ConverteBCD|binary[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|binary[1]~feeder_combout\,
	asdata => \CalculaMedia|ConverteBCD|binary\(0),
	sload => \CalculaMedia|ConverteBCD|state.shift~q\,
	ena => \CalculaMedia|ConverteBCD|binary[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|binary\(1));

-- Location: FF_X53_Y10_N25
\CalculaMedia|ConverteBCD|binary[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|binary[2]~feeder_combout\,
	asdata => \CalculaMedia|ConverteBCD|binary\(1),
	sload => \CalculaMedia|ConverteBCD|state.shift~q\,
	ena => \CalculaMedia|ConverteBCD|binary[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|binary\(2));

-- Location: FF_X53_Y10_N19
\CalculaMedia|ConverteBCD|binary[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|binary[3]~feeder_combout\,
	asdata => \CalculaMedia|ConverteBCD|binary\(2),
	sload => \CalculaMedia|ConverteBCD|state.shift~q\,
	ena => \CalculaMedia|ConverteBCD|binary[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|binary\(3));

-- Location: FF_X53_Y10_N13
\CalculaMedia|ConverteBCD|binary[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|binary[4]~feeder_combout\,
	asdata => \CalculaMedia|ConverteBCD|binary\(3),
	sload => \CalculaMedia|ConverteBCD|state.shift~q\,
	ena => \CalculaMedia|ConverteBCD|binary[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|binary\(4));

-- Location: FF_X53_Y10_N59
\CalculaMedia|ConverteBCD|binary[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|binary[5]~feeder_combout\,
	asdata => \CalculaMedia|ConverteBCD|binary\(4),
	sload => \CalculaMedia|ConverteBCD|state.shift~q\,
	ena => \CalculaMedia|ConverteBCD|binary[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|binary\(5));

-- Location: FF_X53_Y10_N52
\CalculaMedia|ConverteBCD|binary[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|binary[6]~feeder_combout\,
	asdata => \CalculaMedia|ConverteBCD|binary\(5),
	sload => \CalculaMedia|ConverteBCD|state.shift~q\,
	ena => \CalculaMedia|ConverteBCD|binary[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|binary\(6));

-- Location: FF_X55_Y10_N59
\CalculaMedia|ConverteBCD|binary[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|binary[7]~feeder_combout\,
	asdata => \CalculaMedia|ConverteBCD|binary\(6),
	sload => \CalculaMedia|ConverteBCD|state.shift~q\,
	ena => \CalculaMedia|ConverteBCD|binary[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|binary\(7));

-- Location: FF_X55_Y10_N38
\CalculaMedia|ConverteBCD|binary[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|binary[8]~feeder_combout\,
	asdata => \CalculaMedia|ConverteBCD|binary\(7),
	sload => \CalculaMedia|ConverteBCD|state.shift~q\,
	ena => \CalculaMedia|ConverteBCD|binary[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|binary\(8));

-- Location: FF_X55_Y10_N43
\CalculaMedia|ConverteBCD|binary[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|binary[9]~feeder_combout\,
	asdata => \CalculaMedia|ConverteBCD|binary\(8),
	sload => \CalculaMedia|ConverteBCD|state.shift~q\,
	ena => \CalculaMedia|ConverteBCD|binary[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|binary\(9));

-- Location: FF_X53_Y10_N29
\CalculaMedia|ConverteBCD|binary[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|binary[10]~feeder_combout\,
	asdata => \CalculaMedia|ConverteBCD|binary\(9),
	sload => \CalculaMedia|ConverteBCD|state.shift~q\,
	ena => \CalculaMedia|ConverteBCD|binary[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|binary\(10));

-- Location: FF_X53_Y10_N56
\CalculaMedia|ConverteBCD|binary[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|binary[11]~feeder_combout\,
	asdata => \CalculaMedia|ConverteBCD|binary\(10),
	sload => \CalculaMedia|ConverteBCD|state.shift~q\,
	ena => \CalculaMedia|ConverteBCD|binary[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|binary\(11));

-- Location: FF_X53_Y10_N16
\CalculaMedia|ConverteBCD|binary[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|binary[12]~feeder_combout\,
	asdata => \CalculaMedia|ConverteBCD|binary\(11),
	sload => \CalculaMedia|ConverteBCD|state.shift~q\,
	ena => \CalculaMedia|ConverteBCD|binary[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|binary\(12));

-- Location: FF_X55_Y10_N4
\CalculaMedia|ConverteBCD|binary[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|binary[13]~feeder_combout\,
	asdata => \CalculaMedia|ConverteBCD|binary\(12),
	sload => \CalculaMedia|ConverteBCD|state.shift~q\,
	ena => \CalculaMedia|ConverteBCD|binary[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|binary\(13));

-- Location: LABCELL_X56_Y2_N9
\CalculaMedia|ConverteBCD|Selector31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|Selector31~0_combout\ = ( \CalculaMedia|ConverteBCD|binary\(13) & ( ((!\CalculaMedia|ConverteBCD|binary[2]~0_combout\ & \CalculaMedia|ConverteBCD|bcds\(0))) # (\CalculaMedia|ConverteBCD|Selector1~0_combout\) ) ) # ( 
-- !\CalculaMedia|ConverteBCD|binary\(13) & ( (!\CalculaMedia|ConverteBCD|binary[2]~0_combout\ & \CalculaMedia|ConverteBCD|bcds\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000110011101110110011001110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|ConverteBCD|ALT_INV_binary[2]~0_combout\,
	datab => \CalculaMedia|ConverteBCD|ALT_INV_Selector1~0_combout\,
	datad => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(0),
	dataf => \CalculaMedia|ConverteBCD|ALT_INV_binary\(13),
	combout => \CalculaMedia|ConverteBCD|Selector31~0_combout\);

-- Location: FF_X56_Y2_N10
\CalculaMedia|ConverteBCD|bcds[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|Selector31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|bcds[0]~DUPLICATE_q\);

-- Location: FF_X57_Y2_N38
\CalculaMedia|ConverteBCD|bcds_out_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|ConverteBCD|bcds[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \CalculaMedia|ConverteBCD|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|bcds_out_reg\(0));

-- Location: MLABCELL_X59_Y4_N54
\RegistraMedia|IQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegistraMedia|IQ~0_combout\ = ( \controlador|Eatual.Perdeu~q\ ) # ( !\controlador|Eatual.Perdeu~q\ & ( \CalculaMedia|ConverteBCD|bcds_out_reg\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|ConverteBCD|ALT_INV_bcds_out_reg\(0),
	dataf => \controlador|ALT_INV_Eatual.Perdeu~q\,
	combout => \RegistraMedia|IQ~0_combout\);

-- Location: FF_X59_Y4_N56
\RegistraMedia|IQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegistraMedia|IQ~0_combout\,
	ena => \controlador|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistraMedia|IQ\(0));

-- Location: FF_X59_Y4_N58
\RegistraMedia|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \RegistraMedia|IQ\(0),
	sload => VCC,
	ena => \controlador|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistraMedia|Q\(0));

-- Location: FF_X56_Y2_N25
\CalculaMedia|ConverteBCD|bcds[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|Selector30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|bcds\(1));

-- Location: LABCELL_X56_Y2_N0
\CalculaMedia|ConverteBCD|Selector28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|Selector28~0_combout\ = ( \CalculaMedia|ConverteBCD|bcds\(3) & ( \CalculaMedia|ConverteBCD|bcds\(1) & ( (!\CalculaMedia|ConverteBCD|binary[2]~0_combout\) # ((\CalculaMedia|ConverteBCD|Selector1~0_combout\ & 
-- !\CalculaMedia|ConverteBCD|bcds\(2))) ) ) ) # ( \CalculaMedia|ConverteBCD|bcds\(3) & ( !\CalculaMedia|ConverteBCD|bcds\(1) & ( (!\CalculaMedia|ConverteBCD|binary[2]~0_combout\) # ((\CalculaMedia|ConverteBCD|Selector1~0_combout\ & 
-- (!\CalculaMedia|ConverteBCD|bcds\(2) $ (!\CalculaMedia|ConverteBCD|bcds\(0))))) ) ) ) # ( !\CalculaMedia|ConverteBCD|bcds\(3) & ( !\CalculaMedia|ConverteBCD|bcds\(1) & ( (\CalculaMedia|ConverteBCD|Selector1~0_combout\ & (\CalculaMedia|ConverteBCD|bcds\(2) 
-- & !\CalculaMedia|ConverteBCD|bcds\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000101010111011101000000000000000001011101010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|ConverteBCD|ALT_INV_binary[2]~0_combout\,
	datab => \CalculaMedia|ConverteBCD|ALT_INV_Selector1~0_combout\,
	datac => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(2),
	datad => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(0),
	datae => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(3),
	dataf => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(1),
	combout => \CalculaMedia|ConverteBCD|Selector28~0_combout\);

-- Location: FF_X56_Y2_N1
\CalculaMedia|ConverteBCD|bcds[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|Selector28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|bcds\(3));

-- Location: LABCELL_X56_Y2_N18
\CalculaMedia|ConverteBCD|Selector29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|Selector29~0_combout\ = ( \CalculaMedia|ConverteBCD|bcds\(2) & ( \CalculaMedia|ConverteBCD|bcds\(3) & ( (!\CalculaMedia|ConverteBCD|binary[2]~0_combout\) # ((\CalculaMedia|ConverteBCD|Selector1~0_combout\ & 
-- (!\CalculaMedia|ConverteBCD|bcds[1]~DUPLICATE_q\ $ (\CalculaMedia|ConverteBCD|bcds\(0))))) ) ) ) # ( !\CalculaMedia|ConverteBCD|bcds\(2) & ( \CalculaMedia|ConverteBCD|bcds\(3) & ( (\CalculaMedia|ConverteBCD|Selector1~0_combout\ & 
-- (!\CalculaMedia|ConverteBCD|bcds[1]~DUPLICATE_q\ $ (\CalculaMedia|ConverteBCD|bcds\(0)))) ) ) ) # ( \CalculaMedia|ConverteBCD|bcds\(2) & ( !\CalculaMedia|ConverteBCD|bcds\(3) & ( (!\CalculaMedia|ConverteBCD|binary[2]~0_combout\) # 
-- ((\CalculaMedia|ConverteBCD|Selector1~0_combout\ & (\CalculaMedia|ConverteBCD|bcds[1]~DUPLICATE_q\ & \CalculaMedia|ConverteBCD|bcds\(0)))) ) ) ) # ( !\CalculaMedia|ConverteBCD|bcds\(2) & ( !\CalculaMedia|ConverteBCD|bcds\(3) & ( 
-- (\CalculaMedia|ConverteBCD|Selector1~0_combout\ & \CalculaMedia|ConverteBCD|bcds[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011101010101010101100110000000000111011101010101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|ConverteBCD|ALT_INV_binary[2]~0_combout\,
	datab => \CalculaMedia|ConverteBCD|ALT_INV_Selector1~0_combout\,
	datac => \CalculaMedia|ConverteBCD|ALT_INV_bcds[1]~DUPLICATE_q\,
	datad => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(0),
	datae => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(2),
	dataf => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(3),
	combout => \CalculaMedia|ConverteBCD|Selector29~0_combout\);

-- Location: FF_X56_Y2_N20
\CalculaMedia|ConverteBCD|bcds[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|Selector29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|bcds\(2));

-- Location: LABCELL_X56_Y2_N24
\CalculaMedia|ConverteBCD|Selector30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|Selector30~0_combout\ = ( \CalculaMedia|ConverteBCD|bcds\(1) & ( \CalculaMedia|ConverteBCD|bcds\(3) & ( (!\CalculaMedia|ConverteBCD|binary[2]~0_combout\) # ((\CalculaMedia|ConverteBCD|Selector1~0_combout\ & 
-- !\CalculaMedia|ConverteBCD|bcds\(0))) ) ) ) # ( !\CalculaMedia|ConverteBCD|bcds\(1) & ( \CalculaMedia|ConverteBCD|bcds\(3) & ( (\CalculaMedia|ConverteBCD|Selector1~0_combout\ & !\CalculaMedia|ConverteBCD|bcds\(0)) ) ) ) # ( 
-- \CalculaMedia|ConverteBCD|bcds\(1) & ( !\CalculaMedia|ConverteBCD|bcds\(3) & ( (!\CalculaMedia|ConverteBCD|binary[2]~0_combout\) # ((\CalculaMedia|ConverteBCD|Selector1~0_combout\ & (!\CalculaMedia|ConverteBCD|bcds\(2) $ 
-- (!\CalculaMedia|ConverteBCD|bcds\(0))))) ) ) ) # ( !\CalculaMedia|ConverteBCD|bcds\(1) & ( !\CalculaMedia|ConverteBCD|bcds\(3) & ( (\CalculaMedia|ConverteBCD|Selector1~0_combout\ & (!\CalculaMedia|ConverteBCD|bcds\(2) & 
-- \CalculaMedia|ConverteBCD|bcds\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000101010111011101000110011000000001011101110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|ConverteBCD|ALT_INV_binary[2]~0_combout\,
	datab => \CalculaMedia|ConverteBCD|ALT_INV_Selector1~0_combout\,
	datac => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(2),
	datad => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(0),
	datae => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(1),
	dataf => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(3),
	combout => \CalculaMedia|ConverteBCD|Selector30~0_combout\);

-- Location: FF_X56_Y2_N26
\CalculaMedia|ConverteBCD|bcds[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|Selector30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|bcds[1]~DUPLICATE_q\);

-- Location: LABCELL_X56_Y2_N39
\CalculaMedia|ConverteBCD|bcds_out_reg[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|bcds_out_reg[1]~feeder_combout\ = \CalculaMedia|ConverteBCD|bcds[1]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|ConverteBCD|ALT_INV_bcds[1]~DUPLICATE_q\,
	combout => \CalculaMedia|ConverteBCD|bcds_out_reg[1]~feeder_combout\);

-- Location: FF_X56_Y2_N41
\CalculaMedia|ConverteBCD|bcds_out_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|bcds_out_reg[1]~feeder_combout\,
	ena => \CalculaMedia|ConverteBCD|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|bcds_out_reg\(1));

-- Location: FF_X56_Y1_N13
\RegistraMedia|IQ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|ConverteBCD|bcds_out_reg\(1),
	sclr => \controlador|Eatual.Perdeu~q\,
	sload => VCC,
	ena => \controlador|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistraMedia|IQ\(1));

-- Location: LABCELL_X56_Y1_N15
\RegistraMedia|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegistraMedia|Q[1]~feeder_combout\ = ( \RegistraMedia|IQ\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \RegistraMedia|ALT_INV_IQ\(1),
	combout => \RegistraMedia|Q[1]~feeder_combout\);

-- Location: FF_X56_Y1_N17
\RegistraMedia|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegistraMedia|Q[1]~feeder_combout\,
	ena => \controlador|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistraMedia|Q\(1));

-- Location: LABCELL_X56_Y2_N54
\CalculaMedia|ConverteBCD|bcds_out_reg[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|bcds_out_reg[2]~feeder_combout\ = \CalculaMedia|ConverteBCD|bcds\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(2),
	combout => \CalculaMedia|ConverteBCD|bcds_out_reg[2]~feeder_combout\);

-- Location: FF_X56_Y2_N55
\CalculaMedia|ConverteBCD|bcds_out_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|bcds_out_reg[2]~feeder_combout\,
	ena => \CalculaMedia|ConverteBCD|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|bcds_out_reg\(2));

-- Location: FF_X59_Y4_N38
\RegistraMedia|IQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|ConverteBCD|bcds_out_reg\(2),
	sclr => \controlador|Eatual.Perdeu~q\,
	sload => VCC,
	ena => \controlador|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistraMedia|IQ\(2));

-- Location: FF_X59_Y4_N40
\RegistraMedia|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \RegistraMedia|IQ\(2),
	sload => VCC,
	ena => \controlador|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistraMedia|Q\(2));

-- Location: FF_X56_Y2_N2
\CalculaMedia|ConverteBCD|bcds[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|Selector28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|bcds[3]~DUPLICATE_q\);

-- Location: FF_X56_Y2_N37
\CalculaMedia|ConverteBCD|bcds_out_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|ConverteBCD|bcds[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \CalculaMedia|ConverteBCD|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|bcds_out_reg\(3));

-- Location: LABCELL_X56_Y1_N30
\RegistraMedia|IQ~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegistraMedia|IQ~1_combout\ = ( \controlador|Eatual.Perdeu~q\ ) # ( !\controlador|Eatual.Perdeu~q\ & ( \CalculaMedia|ConverteBCD|bcds_out_reg\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|ConverteBCD|ALT_INV_bcds_out_reg\(3),
	datae => \controlador|ALT_INV_Eatual.Perdeu~q\,
	combout => \RegistraMedia|IQ~1_combout\);

-- Location: FF_X56_Y1_N32
\RegistraMedia|IQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegistraMedia|IQ~1_combout\,
	ena => \controlador|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistraMedia|IQ\(3));

-- Location: FF_X56_Y1_N34
\RegistraMedia|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \RegistraMedia|IQ\(3),
	sload => VCC,
	ena => \controlador|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistraMedia|Q\(3));

-- Location: LABCELL_X56_Y2_N15
\CalculaMedia|ConverteBCD|Selector27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|Selector27~0_combout\ = ( \CalculaMedia|ConverteBCD|bcds[3]~DUPLICATE_q\ & ( (!\CalculaMedia|ConverteBCD|bcds\(2)) # ((!\CalculaMedia|ConverteBCD|bcds[0]~DUPLICATE_q\ & !\CalculaMedia|ConverteBCD|bcds[1]~DUPLICATE_q\)) ) ) # ( 
-- !\CalculaMedia|ConverteBCD|bcds[3]~DUPLICATE_q\ & ( (\CalculaMedia|ConverteBCD|bcds\(2) & ((\CalculaMedia|ConverteBCD|bcds[1]~DUPLICATE_q\) # (\CalculaMedia|ConverteBCD|bcds[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101010101111011101010101000010001010101011110111010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(2),
	datab => \CalculaMedia|ConverteBCD|ALT_INV_bcds[0]~DUPLICATE_q\,
	datad => \CalculaMedia|ConverteBCD|ALT_INV_bcds[1]~DUPLICATE_q\,
	datae => \CalculaMedia|ConverteBCD|ALT_INV_bcds[3]~DUPLICATE_q\,
	combout => \CalculaMedia|ConverteBCD|Selector27~0_combout\);

-- Location: LABCELL_X56_Y2_N6
\CalculaMedia|ConverteBCD|Selector27~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|Selector27~1_combout\ = ( \CalculaMedia|ConverteBCD|Selector27~0_combout\ & ( ((!\CalculaMedia|ConverteBCD|binary[2]~0_combout\ & \CalculaMedia|ConverteBCD|bcds\(4))) # (\CalculaMedia|ConverteBCD|Selector1~0_combout\) ) ) # ( 
-- !\CalculaMedia|ConverteBCD|Selector27~0_combout\ & ( (!\CalculaMedia|ConverteBCD|binary[2]~0_combout\ & \CalculaMedia|ConverteBCD|bcds\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000110011101110110011001110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|ConverteBCD|ALT_INV_binary[2]~0_combout\,
	datab => \CalculaMedia|ConverteBCD|ALT_INV_Selector1~0_combout\,
	datad => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(4),
	dataf => \CalculaMedia|ConverteBCD|ALT_INV_Selector27~0_combout\,
	combout => \CalculaMedia|ConverteBCD|Selector27~1_combout\);

-- Location: FF_X56_Y2_N8
\CalculaMedia|ConverteBCD|bcds[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|Selector27~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|bcds\(4));

-- Location: FF_X56_Y2_N13
\CalculaMedia|ConverteBCD|bcds_out_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|ConverteBCD|bcds\(4),
	sload => VCC,
	ena => \CalculaMedia|ConverteBCD|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|bcds_out_reg\(4));

-- Location: LABCELL_X56_Y1_N0
\RegistraMedia|IQ~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegistraMedia|IQ~2_combout\ = (\CalculaMedia|ConverteBCD|bcds_out_reg\(4)) # (\controlador|Eatual.Perdeu~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|ALT_INV_Eatual.Perdeu~q\,
	datac => \CalculaMedia|ConverteBCD|ALT_INV_bcds_out_reg\(4),
	combout => \RegistraMedia|IQ~2_combout\);

-- Location: FF_X56_Y1_N1
\RegistraMedia|IQ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegistraMedia|IQ~2_combout\,
	ena => \controlador|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistraMedia|IQ\(4));

-- Location: FF_X56_Y1_N2
\RegistraMedia|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \RegistraMedia|IQ\(4),
	sload => VCC,
	ena => \controlador|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistraMedia|Q\(4));

-- Location: FF_X56_Y2_N44
\CalculaMedia|ConverteBCD|bcds[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|Selector26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|bcds\(5));

-- Location: LABCELL_X56_Y2_N30
\CalculaMedia|ConverteBCD|Selector24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|Selector24~0_combout\ = ( \CalculaMedia|ConverteBCD|bcds\(7) & ( \CalculaMedia|ConverteBCD|bcds[5]~DUPLICATE_q\ & ( (!\CalculaMedia|ConverteBCD|binary[2]~0_combout\) # ((\CalculaMedia|ConverteBCD|Selector1~0_combout\ & 
-- !\CalculaMedia|ConverteBCD|bcds\(6))) ) ) ) # ( \CalculaMedia|ConverteBCD|bcds\(7) & ( !\CalculaMedia|ConverteBCD|bcds[5]~DUPLICATE_q\ & ( (!\CalculaMedia|ConverteBCD|binary[2]~0_combout\) # ((\CalculaMedia|ConverteBCD|Selector1~0_combout\ & 
-- (!\CalculaMedia|ConverteBCD|bcds\(6) $ (!\CalculaMedia|ConverteBCD|bcds\(4))))) ) ) ) # ( !\CalculaMedia|ConverteBCD|bcds\(7) & ( !\CalculaMedia|ConverteBCD|bcds[5]~DUPLICATE_q\ & ( (\CalculaMedia|ConverteBCD|Selector1~0_combout\ & 
-- (\CalculaMedia|ConverteBCD|bcds\(6) & !\CalculaMedia|ConverteBCD|bcds\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000101010111011101000000000000000001011101010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|ConverteBCD|ALT_INV_binary[2]~0_combout\,
	datab => \CalculaMedia|ConverteBCD|ALT_INV_Selector1~0_combout\,
	datac => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(6),
	datad => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(4),
	datae => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(7),
	dataf => \CalculaMedia|ConverteBCD|ALT_INV_bcds[5]~DUPLICATE_q\,
	combout => \CalculaMedia|ConverteBCD|Selector24~0_combout\);

-- Location: FF_X56_Y2_N31
\CalculaMedia|ConverteBCD|bcds[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|Selector24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|bcds\(7));

-- Location: LABCELL_X56_Y2_N48
\CalculaMedia|ConverteBCD|Selector25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|Selector25~0_combout\ = ( \CalculaMedia|ConverteBCD|bcds\(6) & ( \CalculaMedia|ConverteBCD|bcds\(7) & ( (!\CalculaMedia|ConverteBCD|binary[2]~0_combout\) # ((\CalculaMedia|ConverteBCD|Selector1~0_combout\ & 
-- (!\CalculaMedia|ConverteBCD|bcds\(4) $ (\CalculaMedia|ConverteBCD|bcds\(5))))) ) ) ) # ( !\CalculaMedia|ConverteBCD|bcds\(6) & ( \CalculaMedia|ConverteBCD|bcds\(7) & ( (\CalculaMedia|ConverteBCD|Selector1~0_combout\ & (!\CalculaMedia|ConverteBCD|bcds\(4) 
-- $ (\CalculaMedia|ConverteBCD|bcds\(5)))) ) ) ) # ( \CalculaMedia|ConverteBCD|bcds\(6) & ( !\CalculaMedia|ConverteBCD|bcds\(7) & ( (!\CalculaMedia|ConverteBCD|binary[2]~0_combout\) # ((\CalculaMedia|ConverteBCD|bcds\(4) & 
-- (\CalculaMedia|ConverteBCD|Selector1~0_combout\ & \CalculaMedia|ConverteBCD|bcds\(5)))) ) ) ) # ( !\CalculaMedia|ConverteBCD|bcds\(6) & ( !\CalculaMedia|ConverteBCD|bcds\(7) & ( (\CalculaMedia|ConverteBCD|Selector1~0_combout\ & 
-- \CalculaMedia|ConverteBCD|bcds\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111101010101010101100001100000000111010111010101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|ConverteBCD|ALT_INV_binary[2]~0_combout\,
	datab => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(4),
	datac => \CalculaMedia|ConverteBCD|ALT_INV_Selector1~0_combout\,
	datad => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(5),
	datae => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(6),
	dataf => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(7),
	combout => \CalculaMedia|ConverteBCD|Selector25~0_combout\);

-- Location: FF_X56_Y2_N50
\CalculaMedia|ConverteBCD|bcds[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|bcds\(6));

-- Location: LABCELL_X56_Y2_N42
\CalculaMedia|ConverteBCD|Selector26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|Selector26~0_combout\ = ( \CalculaMedia|ConverteBCD|bcds\(5) & ( \CalculaMedia|ConverteBCD|bcds\(7) & ( (!\CalculaMedia|ConverteBCD|binary[2]~0_combout\) # ((\CalculaMedia|ConverteBCD|Selector1~0_combout\ & 
-- !\CalculaMedia|ConverteBCD|bcds\(4))) ) ) ) # ( !\CalculaMedia|ConverteBCD|bcds\(5) & ( \CalculaMedia|ConverteBCD|bcds\(7) & ( (\CalculaMedia|ConverteBCD|Selector1~0_combout\ & !\CalculaMedia|ConverteBCD|bcds\(4)) ) ) ) # ( 
-- \CalculaMedia|ConverteBCD|bcds\(5) & ( !\CalculaMedia|ConverteBCD|bcds\(7) & ( (!\CalculaMedia|ConverteBCD|binary[2]~0_combout\) # ((\CalculaMedia|ConverteBCD|Selector1~0_combout\ & (!\CalculaMedia|ConverteBCD|bcds\(6) $ 
-- (!\CalculaMedia|ConverteBCD|bcds\(4))))) ) ) ) # ( !\CalculaMedia|ConverteBCD|bcds\(5) & ( !\CalculaMedia|ConverteBCD|bcds\(7) & ( (\CalculaMedia|ConverteBCD|Selector1~0_combout\ & (!\CalculaMedia|ConverteBCD|bcds\(6) & 
-- \CalculaMedia|ConverteBCD|bcds\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000101010111011101000110011000000001011101110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|ConverteBCD|ALT_INV_binary[2]~0_combout\,
	datab => \CalculaMedia|ConverteBCD|ALT_INV_Selector1~0_combout\,
	datac => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(6),
	datad => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(4),
	datae => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(5),
	dataf => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(7),
	combout => \CalculaMedia|ConverteBCD|Selector26~0_combout\);

-- Location: FF_X56_Y2_N43
\CalculaMedia|ConverteBCD|bcds[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|Selector26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|bcds[5]~DUPLICATE_q\);

-- Location: FF_X57_Y2_N10
\CalculaMedia|ConverteBCD|bcds_out_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|ConverteBCD|bcds[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \CalculaMedia|ConverteBCD|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|bcds_out_reg\(5));

-- Location: MLABCELL_X59_Y4_N30
\RegistraMedia|IQ[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegistraMedia|IQ[5]~feeder_combout\ = ( \CalculaMedia|ConverteBCD|bcds_out_reg\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CalculaMedia|ConverteBCD|ALT_INV_bcds_out_reg\(5),
	combout => \RegistraMedia|IQ[5]~feeder_combout\);

-- Location: FF_X59_Y4_N32
\RegistraMedia|IQ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegistraMedia|IQ[5]~feeder_combout\,
	sclr => \controlador|Eatual.Perdeu~q\,
	ena => \controlador|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistraMedia|IQ\(5));

-- Location: MLABCELL_X59_Y4_N33
\RegistraMedia|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegistraMedia|Q[5]~feeder_combout\ = \RegistraMedia|IQ\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RegistraMedia|ALT_INV_IQ\(5),
	combout => \RegistraMedia|Q[5]~feeder_combout\);

-- Location: FF_X59_Y4_N34
\RegistraMedia|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegistraMedia|Q[5]~feeder_combout\,
	ena => \controlador|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistraMedia|Q\(5));

-- Location: FF_X56_Y2_N49
\CalculaMedia|ConverteBCD|bcds[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|bcds[6]~DUPLICATE_q\);

-- Location: LABCELL_X56_Y2_N36
\CalculaMedia|ConverteBCD|bcds_out_reg[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|bcds_out_reg[6]~feeder_combout\ = \CalculaMedia|ConverteBCD|bcds[6]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CalculaMedia|ConverteBCD|ALT_INV_bcds[6]~DUPLICATE_q\,
	combout => \CalculaMedia|ConverteBCD|bcds_out_reg[6]~feeder_combout\);

-- Location: FF_X56_Y2_N38
\CalculaMedia|ConverteBCD|bcds_out_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|bcds_out_reg[6]~feeder_combout\,
	ena => \CalculaMedia|ConverteBCD|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|bcds_out_reg\(6));

-- Location: FF_X56_Y1_N19
\RegistraMedia|IQ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|ConverteBCD|bcds_out_reg\(6),
	sclr => \controlador|Eatual.Perdeu~q\,
	sload => VCC,
	ena => \controlador|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistraMedia|IQ\(6));

-- Location: LABCELL_X56_Y1_N21
\RegistraMedia|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegistraMedia|Q[6]~feeder_combout\ = ( \RegistraMedia|IQ\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \RegistraMedia|ALT_INV_IQ\(6),
	combout => \RegistraMedia|Q[6]~feeder_combout\);

-- Location: FF_X56_Y1_N22
\RegistraMedia|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegistraMedia|Q[6]~feeder_combout\,
	ena => \controlador|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistraMedia|Q\(6));

-- Location: FF_X56_Y2_N32
\CalculaMedia|ConverteBCD|bcds[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|Selector24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|bcds[7]~DUPLICATE_q\);

-- Location: FF_X56_Y2_N56
\CalculaMedia|ConverteBCD|bcds_out_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|ConverteBCD|bcds[7]~DUPLICATE_q\,
	sload => VCC,
	ena => \CalculaMedia|ConverteBCD|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|bcds_out_reg\(7));

-- Location: LABCELL_X56_Y1_N45
\RegistraMedia|IQ~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegistraMedia|IQ~3_combout\ = ( \controlador|Eatual.Perdeu~q\ ) # ( !\controlador|Eatual.Perdeu~q\ & ( \CalculaMedia|ConverteBCD|bcds_out_reg\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|ConverteBCD|ALT_INV_bcds_out_reg\(7),
	datae => \controlador|ALT_INV_Eatual.Perdeu~q\,
	combout => \RegistraMedia|IQ~3_combout\);

-- Location: FF_X56_Y1_N47
\RegistraMedia|IQ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegistraMedia|IQ~3_combout\,
	ena => \controlador|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistraMedia|IQ\(7));

-- Location: FF_X56_Y1_N43
\RegistraMedia|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \RegistraMedia|IQ\(7),
	sload => VCC,
	ena => \controlador|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistraMedia|Q\(7));

-- Location: LABCELL_X56_Y2_N57
\CalculaMedia|ConverteBCD|Selector23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|Selector23~0_combout\ = ( \CalculaMedia|ConverteBCD|bcds[7]~DUPLICATE_q\ & ( (!\CalculaMedia|ConverteBCD|bcds[6]~DUPLICATE_q\) # ((!\CalculaMedia|ConverteBCD|bcds[5]~DUPLICATE_q\ & !\CalculaMedia|ConverteBCD|bcds\(4))) ) ) # ( 
-- !\CalculaMedia|ConverteBCD|bcds[7]~DUPLICATE_q\ & ( (\CalculaMedia|ConverteBCD|bcds[6]~DUPLICATE_q\ & ((\CalculaMedia|ConverteBCD|bcds\(4)) # (\CalculaMedia|ConverteBCD|bcds[5]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011111111111100010001111111110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|ConverteBCD|ALT_INV_bcds[5]~DUPLICATE_q\,
	datab => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(4),
	datad => \CalculaMedia|ConverteBCD|ALT_INV_bcds[6]~DUPLICATE_q\,
	dataf => \CalculaMedia|ConverteBCD|ALT_INV_bcds[7]~DUPLICATE_q\,
	combout => \CalculaMedia|ConverteBCD|Selector23~0_combout\);

-- Location: LABCELL_X57_Y2_N33
\CalculaMedia|ConverteBCD|Selector23~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|Selector23~1_combout\ = ( \CalculaMedia|ConverteBCD|Selector23~0_combout\ & ( ((!\CalculaMedia|ConverteBCD|binary[2]~0_combout\ & \CalculaMedia|ConverteBCD|bcds\(8))) # (\CalculaMedia|ConverteBCD|Selector1~0_combout\) ) ) # ( 
-- !\CalculaMedia|ConverteBCD|Selector23~0_combout\ & ( (!\CalculaMedia|ConverteBCD|binary[2]~0_combout\ & \CalculaMedia|ConverteBCD|bcds\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000110011101110110011001110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|ConverteBCD|ALT_INV_binary[2]~0_combout\,
	datab => \CalculaMedia|ConverteBCD|ALT_INV_Selector1~0_combout\,
	datad => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(8),
	dataf => \CalculaMedia|ConverteBCD|ALT_INV_Selector23~0_combout\,
	combout => \CalculaMedia|ConverteBCD|Selector23~1_combout\);

-- Location: FF_X57_Y2_N35
\CalculaMedia|ConverteBCD|bcds[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|Selector23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|bcds\(8));

-- Location: FF_X57_Y2_N40
\CalculaMedia|ConverteBCD|bcds_out_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|ConverteBCD|bcds\(8),
	sload => VCC,
	ena => \CalculaMedia|ConverteBCD|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|bcds_out_reg\(8));

-- Location: LABCELL_X56_Y1_N24
\RegistraMedia|IQ~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegistraMedia|IQ~4_combout\ = ( \controlador|Eatual.Perdeu~q\ ) # ( !\controlador|Eatual.Perdeu~q\ & ( \CalculaMedia|ConverteBCD|bcds_out_reg\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111111111100110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CalculaMedia|ConverteBCD|ALT_INV_bcds_out_reg\(8),
	datae => \controlador|ALT_INV_Eatual.Perdeu~q\,
	combout => \RegistraMedia|IQ~4_combout\);

-- Location: FF_X56_Y1_N26
\RegistraMedia|IQ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegistraMedia|IQ~4_combout\,
	ena => \controlador|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistraMedia|IQ\(8));

-- Location: FF_X56_Y1_N28
\RegistraMedia|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \RegistraMedia|IQ\(8),
	sload => VCC,
	ena => \controlador|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistraMedia|Q\(8));

-- Location: LABCELL_X57_Y2_N18
\CalculaMedia|ConverteBCD|Selector21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|Selector21~0_combout\ = ( \CalculaMedia|ConverteBCD|bcds\(10) & ( \CalculaMedia|ConverteBCD|bcds\(11) & ( (!\CalculaMedia|ConverteBCD|binary[2]~0_combout\) # ((\CalculaMedia|ConverteBCD|Selector1~0_combout\ & 
-- (!\CalculaMedia|ConverteBCD|bcds\(8) $ (\CalculaMedia|ConverteBCD|bcds\(9))))) ) ) ) # ( !\CalculaMedia|ConverteBCD|bcds\(10) & ( \CalculaMedia|ConverteBCD|bcds\(11) & ( (\CalculaMedia|ConverteBCD|Selector1~0_combout\ & 
-- (!\CalculaMedia|ConverteBCD|bcds\(8) $ (\CalculaMedia|ConverteBCD|bcds\(9)))) ) ) ) # ( \CalculaMedia|ConverteBCD|bcds\(10) & ( !\CalculaMedia|ConverteBCD|bcds\(11) & ( (!\CalculaMedia|ConverteBCD|binary[2]~0_combout\) # 
-- ((\CalculaMedia|ConverteBCD|Selector1~0_combout\ & (\CalculaMedia|ConverteBCD|bcds\(8) & \CalculaMedia|ConverteBCD|bcds\(9)))) ) ) ) # ( !\CalculaMedia|ConverteBCD|bcds\(10) & ( !\CalculaMedia|ConverteBCD|bcds\(11) & ( 
-- (\CalculaMedia|ConverteBCD|Selector1~0_combout\ & \CalculaMedia|ConverteBCD|bcds\(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011101010101010101100110000000000111011101010101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|ConverteBCD|ALT_INV_binary[2]~0_combout\,
	datab => \CalculaMedia|ConverteBCD|ALT_INV_Selector1~0_combout\,
	datac => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(8),
	datad => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(9),
	datae => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(10),
	dataf => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(11),
	combout => \CalculaMedia|ConverteBCD|Selector21~0_combout\);

-- Location: FF_X57_Y2_N19
\CalculaMedia|ConverteBCD|bcds[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|bcds\(10));

-- Location: LABCELL_X57_Y2_N36
\CalculaMedia|ConverteBCD|Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|Selector20~0_combout\ = ( \CalculaMedia|ConverteBCD|Selector1~0_combout\ & ( \CalculaMedia|ConverteBCD|bcds\(8) & ( (\CalculaMedia|ConverteBCD|bcds\(11) & ((!\CalculaMedia|ConverteBCD|binary[2]~0_combout\) # 
-- (!\CalculaMedia|ConverteBCD|bcds\(10)))) ) ) ) # ( !\CalculaMedia|ConverteBCD|Selector1~0_combout\ & ( \CalculaMedia|ConverteBCD|bcds\(8) & ( (!\CalculaMedia|ConverteBCD|binary[2]~0_combout\ & \CalculaMedia|ConverteBCD|bcds\(11)) ) ) ) # ( 
-- \CalculaMedia|ConverteBCD|Selector1~0_combout\ & ( !\CalculaMedia|ConverteBCD|bcds\(8) & ( (!\CalculaMedia|ConverteBCD|bcds\(11) & (((!\CalculaMedia|ConverteBCD|bcds\(9) & \CalculaMedia|ConverteBCD|bcds\(10))))) # (\CalculaMedia|ConverteBCD|bcds\(11) & 
-- ((!\CalculaMedia|ConverteBCD|binary[2]~0_combout\) # (!\CalculaMedia|ConverteBCD|bcds\(9) $ (!\CalculaMedia|ConverteBCD|bcds\(10))))) ) ) ) # ( !\CalculaMedia|ConverteBCD|Selector1~0_combout\ & ( !\CalculaMedia|ConverteBCD|bcds\(8) & ( 
-- (!\CalculaMedia|ConverteBCD|binary[2]~0_combout\ & \CalculaMedia|ConverteBCD|bcds\(11)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010111100111000001010000010100000111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|ConverteBCD|ALT_INV_binary[2]~0_combout\,
	datab => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(9),
	datac => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(11),
	datad => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(10),
	datae => \CalculaMedia|ConverteBCD|ALT_INV_Selector1~0_combout\,
	dataf => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(8),
	combout => \CalculaMedia|ConverteBCD|Selector20~0_combout\);

-- Location: FF_X57_Y2_N50
\CalculaMedia|ConverteBCD|bcds[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|ConverteBCD|Selector20~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|bcds\(11));

-- Location: LABCELL_X57_Y2_N12
\CalculaMedia|ConverteBCD|Selector22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|Selector22~0_combout\ = ( \CalculaMedia|ConverteBCD|bcds\(9) & ( \CalculaMedia|ConverteBCD|bcds\(10) & ( (!\CalculaMedia|ConverteBCD|binary[2]~0_combout\) # ((\CalculaMedia|ConverteBCD|Selector1~0_combout\ & 
-- !\CalculaMedia|ConverteBCD|bcds\(8))) ) ) ) # ( !\CalculaMedia|ConverteBCD|bcds\(9) & ( \CalculaMedia|ConverteBCD|bcds\(10) & ( (\CalculaMedia|ConverteBCD|bcds\(11) & (\CalculaMedia|ConverteBCD|Selector1~0_combout\ & !\CalculaMedia|ConverteBCD|bcds\(8))) 
-- ) ) ) # ( \CalculaMedia|ConverteBCD|bcds\(9) & ( !\CalculaMedia|ConverteBCD|bcds\(10) & ( (!\CalculaMedia|ConverteBCD|binary[2]~0_combout\) # ((\CalculaMedia|ConverteBCD|Selector1~0_combout\ & (!\CalculaMedia|ConverteBCD|bcds\(11) $ 
-- (!\CalculaMedia|ConverteBCD|bcds\(8))))) ) ) ) # ( !\CalculaMedia|ConverteBCD|bcds\(9) & ( !\CalculaMedia|ConverteBCD|bcds\(10) & ( (\CalculaMedia|ConverteBCD|Selector1~0_combout\ & (!\CalculaMedia|ConverteBCD|bcds\(11) $ 
-- (!\CalculaMedia|ConverteBCD|bcds\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010111111110001001000010000000100001111111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(11),
	datab => \CalculaMedia|ConverteBCD|ALT_INV_Selector1~0_combout\,
	datac => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(8),
	datad => \CalculaMedia|ConverteBCD|ALT_INV_binary[2]~0_combout\,
	datae => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(9),
	dataf => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(10),
	combout => \CalculaMedia|ConverteBCD|Selector22~0_combout\);

-- Location: FF_X57_Y2_N14
\CalculaMedia|ConverteBCD|bcds[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|bcds\(9));

-- Location: FF_X57_Y2_N7
\CalculaMedia|ConverteBCD|bcds_out_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|ConverteBCD|bcds\(9),
	sload => VCC,
	ena => \CalculaMedia|ConverteBCD|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|bcds_out_reg\(9));

-- Location: MLABCELL_X59_Y4_N48
\RegistraMedia|IQ[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegistraMedia|IQ[9]~feeder_combout\ = ( \CalculaMedia|ConverteBCD|bcds_out_reg\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CalculaMedia|ConverteBCD|ALT_INV_bcds_out_reg\(9),
	combout => \RegistraMedia|IQ[9]~feeder_combout\);

-- Location: FF_X59_Y4_N50
\RegistraMedia|IQ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegistraMedia|IQ[9]~feeder_combout\,
	sclr => \controlador|Eatual.Perdeu~q\,
	ena => \controlador|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistraMedia|IQ\(9));

-- Location: MLABCELL_X59_Y4_N51
\RegistraMedia|Q[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegistraMedia|Q[9]~feeder_combout\ = \RegistraMedia|IQ\(9)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistraMedia|ALT_INV_IQ\(9),
	combout => \RegistraMedia|Q[9]~feeder_combout\);

-- Location: FF_X59_Y4_N52
\RegistraMedia|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegistraMedia|Q[9]~feeder_combout\,
	ena => \controlador|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistraMedia|Q\(9));

-- Location: FF_X57_Y2_N20
\CalculaMedia|ConverteBCD|bcds[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|bcds[10]~DUPLICATE_q\);

-- Location: FF_X57_Y2_N25
\CalculaMedia|ConverteBCD|bcds_out_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|ConverteBCD|bcds[10]~DUPLICATE_q\,
	sload => VCC,
	ena => \CalculaMedia|ConverteBCD|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|bcds_out_reg\(10));

-- Location: FF_X56_Y1_N50
\RegistraMedia|IQ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|ConverteBCD|bcds_out_reg\(10),
	sclr => \controlador|Eatual.Perdeu~q\,
	sload => VCC,
	ena => \controlador|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistraMedia|IQ\(10));

-- Location: LABCELL_X56_Y1_N51
\RegistraMedia|Q[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegistraMedia|Q[10]~feeder_combout\ = \RegistraMedia|IQ\(10)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistraMedia|ALT_INV_IQ\(10),
	combout => \RegistraMedia|Q[10]~feeder_combout\);

-- Location: FF_X56_Y1_N52
\RegistraMedia|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegistraMedia|Q[10]~feeder_combout\,
	ena => \controlador|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistraMedia|Q\(10));

-- Location: FF_X57_Y2_N56
\CalculaMedia|ConverteBCD|bcds_out_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|ConverteBCD|bcds\(11),
	sload => VCC,
	ena => \CalculaMedia|ConverteBCD|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|bcds_out_reg\(11));

-- Location: MLABCELL_X59_Y4_N0
\RegistraMedia|IQ~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegistraMedia|IQ~5_combout\ = ( \CalculaMedia|ConverteBCD|bcds_out_reg\(11) & ( \controlador|Eatual.Perdeu~q\ ) ) # ( !\CalculaMedia|ConverteBCD|bcds_out_reg\(11) & ( \controlador|Eatual.Perdeu~q\ ) ) # ( \CalculaMedia|ConverteBCD|bcds_out_reg\(11) & ( 
-- !\controlador|Eatual.Perdeu~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \CalculaMedia|ConverteBCD|ALT_INV_bcds_out_reg\(11),
	dataf => \controlador|ALT_INV_Eatual.Perdeu~q\,
	combout => \RegistraMedia|IQ~5_combout\);

-- Location: FF_X59_Y4_N2
\RegistraMedia|IQ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegistraMedia|IQ~5_combout\,
	ena => \controlador|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistraMedia|IQ\(11));

-- Location: FF_X59_Y4_N4
\RegistraMedia|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \RegistraMedia|IQ\(11),
	sload => VCC,
	ena => \controlador|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistraMedia|Q\(11));

-- Location: LABCELL_X57_Y2_N57
\CalculaMedia|ConverteBCD|Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|Selector19~0_combout\ = ( \CalculaMedia|ConverteBCD|bcds\(11) & ( (!\CalculaMedia|ConverteBCD|bcds\(10)) # ((!\CalculaMedia|ConverteBCD|bcds\(8) & !\CalculaMedia|ConverteBCD|bcds\(9))) ) ) # ( !\CalculaMedia|ConverteBCD|bcds\(11) 
-- & ( (\CalculaMedia|ConverteBCD|bcds\(10) & ((\CalculaMedia|ConverteBCD|bcds\(9)) # (\CalculaMedia|ConverteBCD|bcds\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001111101100111011001110110011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(8),
	datab => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(10),
	datac => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(9),
	dataf => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(11),
	combout => \CalculaMedia|ConverteBCD|Selector19~0_combout\);

-- Location: LABCELL_X57_Y2_N30
\CalculaMedia|ConverteBCD|Selector19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|Selector19~1_combout\ = ( \CalculaMedia|ConverteBCD|Selector19~0_combout\ & ( ((!\CalculaMedia|ConverteBCD|binary[2]~0_combout\ & \CalculaMedia|ConverteBCD|bcds\(12))) # (\CalculaMedia|ConverteBCD|Selector1~0_combout\) ) ) # ( 
-- !\CalculaMedia|ConverteBCD|Selector19~0_combout\ & ( (!\CalculaMedia|ConverteBCD|binary[2]~0_combout\ & \CalculaMedia|ConverteBCD|bcds\(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001111101011110000111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|ConverteBCD|ALT_INV_binary[2]~0_combout\,
	datac => \CalculaMedia|ConverteBCD|ALT_INV_Selector1~0_combout\,
	datad => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(12),
	dataf => \CalculaMedia|ConverteBCD|ALT_INV_Selector19~0_combout\,
	combout => \CalculaMedia|ConverteBCD|Selector19~1_combout\);

-- Location: FF_X57_Y2_N31
\CalculaMedia|ConverteBCD|bcds[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|Selector19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|bcds\(12));

-- Location: FF_X57_Y2_N29
\CalculaMedia|ConverteBCD|bcds_out_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|ConverteBCD|bcds\(12),
	sload => VCC,
	ena => \CalculaMedia|ConverteBCD|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|bcds_out_reg\(12));

-- Location: LABCELL_X56_Y1_N3
\RegistraMedia|IQ~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegistraMedia|IQ~6_combout\ = ( \CalculaMedia|ConverteBCD|bcds_out_reg\(12) ) # ( !\CalculaMedia|ConverteBCD|bcds_out_reg\(12) & ( \controlador|Eatual.Perdeu~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controlador|ALT_INV_Eatual.Perdeu~q\,
	dataf => \CalculaMedia|ConverteBCD|ALT_INV_bcds_out_reg\(12),
	combout => \RegistraMedia|IQ~6_combout\);

-- Location: FF_X56_Y1_N5
\RegistraMedia|IQ[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegistraMedia|IQ~6_combout\,
	ena => \controlador|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistraMedia|IQ\(12));

-- Location: FF_X56_Y1_N4
\RegistraMedia|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \RegistraMedia|IQ\(12),
	sload => VCC,
	ena => \controlador|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistraMedia|Q\(12));

-- Location: LABCELL_X57_Y2_N51
\CalculaMedia|ConverteBCD|Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|Selector17~0_combout\ = ( \CalculaMedia|ConverteBCD|bcds\(14) & ( \CalculaMedia|ConverteBCD|bcds\(12) & ( (!\CalculaMedia|ConverteBCD|binary[2]~0_combout\) # ((\CalculaMedia|ConverteBCD|bcds\(13) & 
-- \CalculaMedia|ConverteBCD|Selector1~0_combout\)) ) ) ) # ( !\CalculaMedia|ConverteBCD|bcds\(14) & ( \CalculaMedia|ConverteBCD|bcds\(12) & ( (\CalculaMedia|ConverteBCD|bcds\(13) & \CalculaMedia|ConverteBCD|Selector1~0_combout\) ) ) ) # ( 
-- \CalculaMedia|ConverteBCD|bcds\(14) & ( !\CalculaMedia|ConverteBCD|bcds\(12) & ( (!\CalculaMedia|ConverteBCD|binary[2]~0_combout\) # ((\CalculaMedia|ConverteBCD|bcds\(15) & (!\CalculaMedia|ConverteBCD|bcds\(13) & 
-- \CalculaMedia|ConverteBCD|Selector1~0_combout\))) ) ) ) # ( !\CalculaMedia|ConverteBCD|bcds\(14) & ( !\CalculaMedia|ConverteBCD|bcds\(12) & ( (\CalculaMedia|ConverteBCD|Selector1~0_combout\ & (!\CalculaMedia|ConverteBCD|bcds\(15) $ 
-- (!\CalculaMedia|ConverteBCD|bcds\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100101010101011101000000000000011111010101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|ConverteBCD|ALT_INV_binary[2]~0_combout\,
	datab => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(15),
	datac => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(13),
	datad => \CalculaMedia|ConverteBCD|ALT_INV_Selector1~0_combout\,
	datae => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(14),
	dataf => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(12),
	combout => \CalculaMedia|ConverteBCD|Selector17~0_combout\);

-- Location: FF_X57_Y2_N53
\CalculaMedia|ConverteBCD|bcds[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|bcds\(14));

-- Location: LABCELL_X57_Y2_N42
\CalculaMedia|ConverteBCD|Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|Selector16~0_combout\ = ( \CalculaMedia|ConverteBCD|bcds\(15) & ( \CalculaMedia|ConverteBCD|bcds\(12) & ( (!\CalculaMedia|ConverteBCD|binary[2]~0_combout\) # ((\CalculaMedia|ConverteBCD|Selector1~0_combout\ & 
-- !\CalculaMedia|ConverteBCD|bcds\(14))) ) ) ) # ( \CalculaMedia|ConverteBCD|bcds\(15) & ( !\CalculaMedia|ConverteBCD|bcds\(12) & ( (!\CalculaMedia|ConverteBCD|binary[2]~0_combout\) # ((\CalculaMedia|ConverteBCD|Selector1~0_combout\ & 
-- (!\CalculaMedia|ConverteBCD|bcds\(14) $ (!\CalculaMedia|ConverteBCD|bcds\(13))))) ) ) ) # ( !\CalculaMedia|ConverteBCD|bcds\(15) & ( !\CalculaMedia|ConverteBCD|bcds\(12) & ( (\CalculaMedia|ConverteBCD|Selector1~0_combout\ & 
-- (\CalculaMedia|ConverteBCD|bcds\(14) & !\CalculaMedia|ConverteBCD|bcds\(13))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000101010111011101000000000000000001011101010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|ConverteBCD|ALT_INV_binary[2]~0_combout\,
	datab => \CalculaMedia|ConverteBCD|ALT_INV_Selector1~0_combout\,
	datac => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(14),
	datad => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(13),
	datae => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(15),
	dataf => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(12),
	combout => \CalculaMedia|ConverteBCD|Selector16~0_combout\);

-- Location: FF_X57_Y2_N44
\CalculaMedia|ConverteBCD|bcds[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|bcds\(15));

-- Location: LABCELL_X57_Y2_N3
\CalculaMedia|ConverteBCD|Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|Selector18~0_combout\ = ( \CalculaMedia|ConverteBCD|binary[2]~0_combout\ & ( \CalculaMedia|ConverteBCD|bcds\(14) & ( (!\CalculaMedia|ConverteBCD|bcds\(12) & (\CalculaMedia|ConverteBCD|Selector1~0_combout\ & 
-- ((\CalculaMedia|ConverteBCD|bcds\(15)) # (\CalculaMedia|ConverteBCD|bcds\(13))))) ) ) ) # ( !\CalculaMedia|ConverteBCD|binary[2]~0_combout\ & ( \CalculaMedia|ConverteBCD|bcds\(14) & ( ((!\CalculaMedia|ConverteBCD|bcds\(12) & 
-- (\CalculaMedia|ConverteBCD|bcds\(15) & \CalculaMedia|ConverteBCD|Selector1~0_combout\))) # (\CalculaMedia|ConverteBCD|bcds\(13)) ) ) ) # ( \CalculaMedia|ConverteBCD|binary[2]~0_combout\ & ( !\CalculaMedia|ConverteBCD|bcds\(14) & ( 
-- (\CalculaMedia|ConverteBCD|Selector1~0_combout\ & (!\CalculaMedia|ConverteBCD|bcds\(12) $ (!\CalculaMedia|ConverteBCD|bcds\(15)))) ) ) ) # ( !\CalculaMedia|ConverteBCD|binary[2]~0_combout\ & ( !\CalculaMedia|ConverteBCD|bcds\(14) & ( 
-- ((\CalculaMedia|ConverteBCD|Selector1~0_combout\ & (!\CalculaMedia|ConverteBCD|bcds\(12) $ (!\CalculaMedia|ConverteBCD|bcds\(15))))) # (\CalculaMedia|ConverteBCD|bcds\(13)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101111011000000000101101000110011001110110000000000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(12),
	datab => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(13),
	datac => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(15),
	datad => \CalculaMedia|ConverteBCD|ALT_INV_Selector1~0_combout\,
	datae => \CalculaMedia|ConverteBCD|ALT_INV_binary[2]~0_combout\,
	dataf => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(14),
	combout => \CalculaMedia|ConverteBCD|Selector18~0_combout\);

-- Location: FF_X57_Y2_N17
\CalculaMedia|ConverteBCD|bcds[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|ConverteBCD|Selector18~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|bcds\(13));

-- Location: LABCELL_X57_Y2_N54
\CalculaMedia|ConverteBCD|bcds_out_reg[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|bcds_out_reg[13]~feeder_combout\ = ( \CalculaMedia|ConverteBCD|bcds\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(13),
	combout => \CalculaMedia|ConverteBCD|bcds_out_reg[13]~feeder_combout\);

-- Location: FF_X57_Y2_N55
\CalculaMedia|ConverteBCD|bcds_out_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|bcds_out_reg[13]~feeder_combout\,
	ena => \CalculaMedia|ConverteBCD|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|bcds_out_reg\(13));

-- Location: LABCELL_X56_Y1_N54
\RegistraMedia|IQ[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegistraMedia|IQ[13]~feeder_combout\ = ( \CalculaMedia|ConverteBCD|bcds_out_reg\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CalculaMedia|ConverteBCD|ALT_INV_bcds_out_reg\(13),
	combout => \RegistraMedia|IQ[13]~feeder_combout\);

-- Location: FF_X56_Y1_N56
\RegistraMedia|IQ[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegistraMedia|IQ[13]~feeder_combout\,
	sclr => \controlador|Eatual.Perdeu~q\,
	ena => \controlador|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistraMedia|IQ\(13));

-- Location: FF_X56_Y1_N59
\RegistraMedia|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \RegistraMedia|IQ\(13),
	sload => VCC,
	ena => \controlador|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistraMedia|Q\(13));

-- Location: FF_X57_Y2_N2
\CalculaMedia|ConverteBCD|bcds_out_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \CalculaMedia|ConverteBCD|bcds\(14),
	sload => VCC,
	ena => \CalculaMedia|ConverteBCD|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|bcds_out_reg\(14));

-- Location: LABCELL_X56_Y1_N36
\RegistraMedia|IQ[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegistraMedia|IQ[14]~feeder_combout\ = ( \CalculaMedia|ConverteBCD|bcds_out_reg\(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CalculaMedia|ConverteBCD|ALT_INV_bcds_out_reg\(14),
	combout => \RegistraMedia|IQ[14]~feeder_combout\);

-- Location: FF_X56_Y1_N38
\RegistraMedia|IQ[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegistraMedia|IQ[14]~feeder_combout\,
	sclr => \controlador|Eatual.Perdeu~q\,
	ena => \controlador|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistraMedia|IQ\(14));

-- Location: FF_X56_Y1_N41
\RegistraMedia|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \RegistraMedia|IQ\(14),
	sload => VCC,
	ena => \controlador|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistraMedia|Q\(14));

-- Location: LABCELL_X57_Y2_N27
\CalculaMedia|ConverteBCD|bcds_out_reg[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CalculaMedia|ConverteBCD|bcds_out_reg[15]~feeder_combout\ = \CalculaMedia|ConverteBCD|bcds\(15)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|ConverteBCD|ALT_INV_bcds\(15),
	combout => \CalculaMedia|ConverteBCD|bcds_out_reg[15]~feeder_combout\);

-- Location: FF_X57_Y2_N28
\CalculaMedia|ConverteBCD|bcds_out_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \CalculaMedia|ConverteBCD|bcds_out_reg[15]~feeder_combout\,
	ena => \CalculaMedia|ConverteBCD|state.done~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CalculaMedia|ConverteBCD|bcds_out_reg\(15));

-- Location: LABCELL_X56_Y1_N6
\RegistraMedia|IQ~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegistraMedia|IQ~7_combout\ = ( \controlador|Eatual.Perdeu~q\ ) # ( !\controlador|Eatual.Perdeu~q\ & ( \CalculaMedia|ConverteBCD|bcds_out_reg\(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CalculaMedia|ConverteBCD|ALT_INV_bcds_out_reg\(15),
	datae => \controlador|ALT_INV_Eatual.Perdeu~q\,
	combout => \RegistraMedia|IQ~7_combout\);

-- Location: FF_X56_Y1_N8
\RegistraMedia|IQ[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegistraMedia|IQ~7_combout\,
	ena => \controlador|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistraMedia|IQ\(15));

-- Location: FF_X56_Y1_N7
\RegistraMedia|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \RegistraMedia|IQ\(15),
	sload => VCC,
	ena => \controlador|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistraMedia|Q\(15));

-- Location: LABCELL_X50_Y4_N0
\controlador|WideNor0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controlador|WideNor0~0_combout\ = ( \controlador|Eatual.Perdeu~q\ ) # ( !\controlador|Eatual.Perdeu~q\ & ( (!\controlador|Eatual.Inicial~q\) # (\controlador|Eatual.CompletouJogada~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \controlador|ALT_INV_Eatual.Inicial~q\,
	datad => \controlador|ALT_INV_Eatual.CompletouJogada~q\,
	dataf => \controlador|ALT_INV_Eatual.Perdeu~q\,
	combout => \controlador|WideNor0~0_combout\);

-- Location: MLABCELL_X34_Y65_N0
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


