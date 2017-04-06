library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity estadosJogo is 
	port (clock, reset, jogar, resposta, sinalAtraso: in std_logic;
			estimulo, erro, finaliza, atraso: out std_logic;
			estadoJogo: out std_logic_vector(1 downto 0));
end estadosJogo;

architecture Estados of estadosJogo is 
type tipo_Estado is (E_Atraso, Aguarda, Errado, Fim);
signal Ereg, Eprox : tipo_Estado;
begin
process(clock, reset, jogar, Ereg) 
begin 
	if (jogar = '0') then Ereg <= E_Atraso;
	elsif (clock'event and clock = '1') then Ereg <= Eprox;
	end if;
end process;
process (jogar, resposta, Ereg, sinalAtraso)
begin
	case Ereg is 
		when E_Atraso => if (sinalAtraso = '1' ) then Eprox <= Aguarda;
							elsif (sinalAtraso = '1' and resposta = '0') then Eprox <= Fim;
							elsif (sinalAtraso = '0' and resposta = '1') then Eprox <= Errado;
							end if;
		
		when Aguarda => if ( resposta = '1') then Eprox <= Fim;
							end if;
		when Errado => Eprox <= Errado;
		when Fim =>  Eprox <= Fim;
		
	end case;
end process;
	with Ereg select
		estadoJogo <= "00" when E_Atraso,
					 "01" when Aguarda,
					 "10" when Errado,
					 "11" when Fim;
	with Ereg select 
		atraso <= '1' when E_Atraso,
					 '0' when others;
	with Ereg select 
		estimulo <= '1' when Aguarda,
						'0' when others;
	with Ereg select 
		erro <= '1' when Errado,
					'0' when others;
	with Ereg select 
		finaliza <= '1' when Fim,
				      '0' when others;
end Estados;