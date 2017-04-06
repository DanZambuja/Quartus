library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

entity tempoAtual is
	port (clock, jogar: in std_logic;
			tempo : out std_logic_vector(15 downto 0));
end tempoAtual;

architecture temporal of tempoAtual is
signal s_tempo : unsigned(15 downto 0);
begin
process( jogar, clock )
begin
if ( jogar = '0' ) then
	s_tempo <= (others => '0');
else 
	if ( clock'event and clock = '1') then s_tempo <= s_tempo + 1;
	end if;
end if;
end process;
tempo <= std_logic_vector(s_tempo);
end temporal;