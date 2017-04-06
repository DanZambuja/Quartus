library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

entity contador is
	port (clock, reset, jogar: in std_logic;
			atraso: in std_logic_vector(15 downto 0);
			sinal : out std_logic);
end contador;

architecture conta of contador  is
signal IQ : unsigned (15 downto 0);
begin
process (jogar, clock)
begin
if ( jogar = '1' ) then 
	if ( clock'event and clock = '1') then
		IQ <= IQ + 1;
	end if;
	if (std_logic_vector(IQ) = atraso) then 
		sinal <= '1';
	else 
		sinal <= '0';
	end if;
else 
	IQ <= (others=> '0');
end if;
end process;
end conta;