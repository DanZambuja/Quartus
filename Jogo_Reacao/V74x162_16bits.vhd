library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

entity V74x162_16bits is
	port (CLK, CLR_L, LD_L, ENP, ENT: in STD_LOGIC;
			D: in STD_LOGIC_VECTOR(15 downto 0);
			Q: out STD_LOGIC_VECTOR(15 downto 0);
			RCO: out STD_LOGIC);
end V74x162_16bits;

architecture hierarquica of V74x162_16bits is
component V74x162 is
	port (CLK, CLR_L, LD_L, ENP, ENT: in STD_LOGIC;
			D: in STD_LOGIC_VECTOR(3 downto 0);
			Q: out STD_LOGIC_VECTOR(3 downto 0);
			RCO: out STD_LOGIC);
end component;
alias firstD is D (3 downto 0);
alias secondD is D (7 downto 4);
alias thirdD is D ( 11 downto 8);
alias fourthD is D (15 downto 12);
alias firstQ is Q (3 downto 0);
alias secondQ is Q (7 downto 4);
alias thirdQ is Q ( 11 downto 8);
alias fourthQ is Q (15 downto 12);
signal firstRCO, secondRCO, thirdRCO : STD_LOGIC;

begin 

	C1 : V74x162 port map(CLK, CLR_L, LD_L, ENP, ENT, firstD, firstQ, firstRCO);
	C2 : V74x162 port map(CLK, CLR_L, LD_L, ENP, firstRCO, secondD, secondQ, secondRCO);
	C3 : V74x162 port map(CLK, CLR_L, LD_L, ENP, secondRCO, thirdD, thirdQ, thirdRCO);
	C4 : V74x162 port map(CLK, CLR_L, LD_L, ENP, thirdRCO, fourthD, fourthQ, RCO);
	
end hierarquica;