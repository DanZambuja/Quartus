library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

entity contaResposta is 
	port (clock, reset, estimulo, resposta: in std_logic;
			result: out std_logic_vector(15 downto 0));
end contaResposta;

architecture contagem of contaResposta is
signal IQ : unsigned(15 downto 0);
begin
process (clock, estimulo, resposta)
begin
if(resposta = '0' and estimulo = '1') then 
	if (clock'event and clock = '1') then
		IQ <= IQ + 1;
	end if;
elsif (resposta = '0' and estimulo = '0') then 
	IQ <= (others=> '0');
end if;
end process;
result <= std_logic_vector(IQ);
end contagem;