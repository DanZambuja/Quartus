library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

entity medidor is
    port (CLOCK, RESET, liga, sinal : in STD_LOGIC;
            Q : out STD_LOGIC_VECTOR(15 downto 0);
            RCO, pronto: out STD_LOGIC; -- pronto indica o fim da contagem, RCO indica carry out
				estado: out std_logic_vector(3 downto 0));
end medidor;

architecture medidor of medidor is
signal R, E, RCO1, RCO2, RCO3, RCO4: STD_LOGIC; -- R: sinal interno para o resetc / E: sinal interno para ENT
signal s_Q: STD_LOGIC_VECTOR(15 downto 0);
component V74x162_16bits 
	port (CLK, CLR_L, LD_L, ENP, ENT: in std_logic;
			D: in STD_LOGIC_VECTOR(15 downto 0);
			Q: out STD_LOGIC_VECTOR(15 downto 0);
			RCO: out std_logic);
end component;
component controle 
	port (clock, reset, liga, sinal: in STD_LOGIC;
        resetc, enablec, pronto: out STD_LOGIC;
		  estado : out std_logic_vector(3 downto 0));
end component;

component Four_Digit_BCD_Counter is
port(Clk, CLR_L, enable: in std_logic;
     Q1, Q2, Q3, Q4: inout std_logic_vector(3 downto 0):= "0000");
end component;

component compare is 
	port (A, B: in std_logic_vector(3 downto 0);
			AeqB, AgtB, AltB: out std_logic);
end component;

begin

    C1: controle port map (CLOCK, RESET, liga, sinal, R, E, pronto, estado);
    -- D2: V74x162_16bits port map (CLOCK, R, ILD_L, IENP, E, ID, IQ, RCO);
	 D1: Four_Digit_BCD_Counter port map(CLOCK, R, E, s_Q(3 downto 0), s_Q(7 downto 4), s_Q(11 downto 8), s_Q(15 downto 12));
	 geraRCO1: compare port map(s_Q(3 downto 0), "1001", RCO1, open, open);
	 geraRCO2: compare port map(s_Q(7 downto 4), "1001", RCO2, open, open);
	 geraRCO3: compare port map(s_Q(11 downto 8), "1001", RCO3, open, open);
	 geraRCO4: compare port map(s_Q(15 downto 12), "1001", RCO4, open, open);
	 RCO <= RCO1 and RCO2 and RCO3 and RCO4;
	 Q <= s_Q;
	 
end medidor;