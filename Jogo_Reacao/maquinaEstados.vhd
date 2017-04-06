library IEEE;
use IEEE.std_logic_1164.all;

entity maquinaEstados is 

	port (clock, reset, inicia, finaliza, contaDisplay : in std_logic;
			jogar, jogador : out std_logic;
			estado : out std_logic_vector(1 downto 0));

end maquinaEstados;

architecture Estados of maquinaEstados is 
type tipo_Estado is (Inicial, Jogador1, Intervalo, Jogador2);
signal Ereg, Eprox : tipo_Estado;
begin
	process (clock, reset) 
	begin 
	if reset = '1' then Ereg <= Inicial;
	elsif clock'event and clock = '1' then Ereg <= Eprox;
	end if;
	end process;
	
	process (inicia, finaliza)
	begin 
		case Ereg is 
			when Inicial => if ( inicia = '1' ) then 
				Eprox <= Jogador1; 
				estado <= "00";
				end if;
			when Jogador1 => if (finaliza = '1' ) then 
				Eprox <= Intervalo; 
				estado <= "01";
				end if;
			when Intervalo => if ( inicia = '1' ) then 
				Eprox <= Jogador2;
				estado <= "10";
				end if;
			when Jogador2 => if ( finaliza = '1' ) then 
				Eprox <= Inicial; 
				estado <= "11";
			end if;
			when others => Eprox <= Inicial;
		end case;
	end process;
	with Ereg select
		jogar <= '1' when Jogador1 | Jogador2,
				   '0' when others;
	with Ereg select
		jogador <= '0' when Jogador1,
				     '1' when others;
end Estados;