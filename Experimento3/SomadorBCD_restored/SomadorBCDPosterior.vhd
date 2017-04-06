library ieee;
use ieee.std_logic_1164.all;

entity SomadorBCDPosterior is 
port (A, B : in std_logic_vector(3 downto 0);
		Cin  : in std_logic;
		Cout : out std_logic;
		S    : out std_logic_vector(3 downto 0));
end SomadorBCDPosterior;

architecture estrutural of SomadorBCDPosterior is 
Component Somador4bits_comportamental is 
	port (A, B : in std_logic_vector(3 downto 0);
			Cin   : in std_logic;
			S    : out std_logic_vector(3 downto 0);
			Cout   : out std_logic);
end Component;
Component DetectorCodigoInvalido is
	port (D : in std_logic_vector(3 downto 0);
			O : out std_logic);
end Component;
signal I : std_logic_vector(3 downto 0);
signal C, O , Q: std_logic;
begin
	s1: Somador4bits_comportamental port map(A, B, Cin, I, C);
	d1: DetectorCodigoInvalido port map(I, O);
	Q <= C or O;
	s2: Somador4bits_comportamental port map('0'&Q&Q&'0', I, '0', S, '0');
	Cout <= Q;
end estrutural;