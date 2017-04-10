library IEEE;
use IEEE.std_logic_1164.all;

entity controleAtrasador is
	port (clock, reset, contaAtraso, ciclou, sinalAtraso, converteu: in std_logic;
			ciclando, conta, inicio, registra, resetaContadores, convertendo : out std_logic;
			estado : out std_logic_vector(3 downto 0));
end controleAtrasador;

architecture maquinaEstados of controleAtrasador is
type Estados is (Inicial, RegistraSeed1, RegistraSeed2, Cicla, Conversao, Contando, Fim);
signal Eatual, Eprox : Estados;
begin
	process (clock, reset)
	begin
	if reset = '1' then Eatual <= Inicial;
	elsif clock'event and clock = '1' then Eatual <= Eprox;
	end if;
	end process;

	process (contaAtraso, ciclou, converteu, sinalAtraso)
	begin

	case Eatual is

		when Inicial =>
		if (contaAtraso = '1') then
			Eprox <= RegistraSeed1;
		else
			Eprox <= Eatual;
		end if;

		when RegistraSeed1 => Eprox <= RegistraSeed2;

		when RegistraSeed2 => Eprox <= Cicla;

		when Cicla =>
		if (ciclou = '1') then
			Eprox <= Conversao;
		else
			Eprox <= Eatual;
		end if;

		when Conversao =>
		if (converteu = '1') then
			Eprox <= Contando;
		else
			Eprox <= Eatual;
		end if;

		when Contando =>
		if (sinalAtraso = '1') then
			Eprox <= Fim;
		else
			Eprox <= Eatual;
		end if;

		when Fim => Eprox <= Inicial;

		when others => Eprox <= Inicial;

	end case;

	end process;

	with Eatual select

		resetaContadores <=   '1' when Fim,
									 '0' when others;

	with Eatual select

		convertendo <=   '1' when Conversao,
							  '0' when others;
	with Eatual select

		inicio <=   '1' when Inicial,
						'0' when others;
	with Eatual select

		registra <= '1' when RegistraSeed1 | RegistraSeed2,
						'0' when others;

	with Eatual select

		ciclando <= '1' when Cicla,
						'0' when others;
	with Eatual select

		conta <= '1' when Contando,
					'0' when others;


	with Eatual select
		estado <= "0000" when Inicial,
					 "0001" when RegistraSeed1,
					 "0010" when RegistraSeed2,
					 "0100" when Conversao,
					 "0011" when Cicla,
					 "0101" when Contando,
					 "0110" when Fim,
					 "1111" when others;

end maquinaEstados;
