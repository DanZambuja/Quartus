library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

entity comparador is
	port (
			clock, reset, enable: in STD_LOGIC;
			A: in STD_LOGIC_VECTOR(15 downto 0);
			S: out STD_LOGIC
		  );

end comparador;

Architecture arch of comparador is

component Four_Digit_BCD_Counter is
port(Clk, CLR_L, enable: in std_logic;
     Q1, Q2, Q3, Q4: inout std_logic_vector(3 downto 0):= "0000");
end component;

component compare is
	port (A, B: in std_logic_vector(3 downto 0);
			AeqB, AgtB, AltB: out std_logic);
end component;
signal reset_L: std_logic;
signal s_Q1, s_Q2, s_Q3, s_Q4: std_logic_vector(3 downto 0);
signal SS1, SS2, S1, S2, S3, S4:std_logic;
Begin
reset_L <= not(reset);
	Contador: Four_Digit_BCD_Counter port map(clock, reset_L, enable, s_Q1, s_Q2, s_Q3, s_Q4);
	C1: compare port map(A(3 downto 0), s_Q1, S1, open, open);
	C2: compare port map(A(7 downto 4), s_Q2, S2, open, open);
	C3: compare port map(A(11 downto 8), s_Q3, S3, open, open);
	C4: compare port map(A(15 downto 12), s_Q4, S4, open, open);
SS1 <= S1 and S2;
SS2 <= S3 and S4;
S<= SS1 and SS2;

end arch;
