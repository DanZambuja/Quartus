library IEEE;
use IEEE.std_logic_1164.all;

entity deMuxSaida is
	port (entrada : in std_logic_vector(15 downto 0);
			jogador : in std_logic;
			saida1, saida2 : out std_logic_vector(15 downto 0));
end deMuxSaida;

architecture deMux of deMuxSaida is

begin
process (jogador)
begin
if ( jogador = '0' ) then saida1 <= entrada;
else saida2 <= entrada;
end if;
end process;
end deMux;