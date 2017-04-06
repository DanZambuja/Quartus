library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity LFSR is
	port (clock, enable, reset: in std_logic;
			entrada : in std_logic_vector(15 downto 0);
			saida : out std_logic_vector(15 downto 0));
end LFSR;

architecture pseudoRandom of LFSR is

signal I : unsigned(3 downto 0);
signal k : integer;
signal s_saida: std_logic_vector(15 downto 0);
begin
process(clock, enable, reset, entrada)
begin
if ( clock'event and clock = '1') then
	if (std_logic_vector(I) = "1010" ) then 
		I <= (others => '0');
	end if;
	k <= to_integer(I);
	s_saida(15 - k) <= s_saida(15 - k);
	s_saida(14 - k) <= s_saida(14 - k);
	s_saida(13 - k) <= s_saida(15 - k) xor s_saida(14 - k);
	s_saida(11 - k) <= s_saida(13 - k) xor s_saida(12- k);
	s_saida(9 - k) <= s_saida (11 - k) xor s_saida(10 - k);
	if (enable = '1') then 
		I <= I + 1;
	else 
		I<=(others=>'0');
		s_saida <= entrada;
	end if;
end if;
end process;
saida <= s_saida;
end pseudoRandom;