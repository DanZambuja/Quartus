library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Somador4bits_comportamental is 
	port (A, B : in std_logic_vector(3 downto 0);
			Cin   : in std_logic;
			S    : out std_logic_vector(3 downto 0);
			Cout   : out std_logic);
end Somador4bits_comportamental;

architecture comportamental of Somador4bits_comportamental is
signal soma : std_logic_vector(4 downto 0);
begin
	soma <= ('0'&A) + ('0'&B) + ("0000"&Cin);
	Cout <= soma(4);
	S <= soma(3 downto 0);
end comportamental;