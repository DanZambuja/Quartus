library IEEE;
use IEEE.std_logic_1164.all;

entity controle is
  port (CLOCK, RESET, liga, sinal: in STD_LOGIC;
        resetc, enablec, pronto: out STD_LOGIC
		  );
end controle;

architecture controle of controle is
  type tipo_Estado is ( INICIAL, LIGADO, CONTA, LIMPA, ESPERA, EPRONTO);
  signal Ereg, Eprox: tipo_Estado;
begin

  process (RESET, CLOCK)
  begin
    if RESET = '1' then
      Ereg <= INICIAL;
    elsif CLOCK 'event and CLOCK = '1' then
      Ereg <= Eprox;
    end if;
  end process;

  process (LIGA, SINAL, EREG)
  begin
    case Ereg is
      when INICIAL => if LIGA = '0' then Eprox <= INICIAL;
                      else           	Eprox <= LIGADO;
                      end if;
							
      when LIGADO =>  if SINAL = '1' then Eprox <= CONTA;
                      else               Eprox <= LIGADO;
                      end if;
							
      when CONTA =>   if SINAL = '1' then Eprox <= CONTA;
                      else                Eprox <= EPRONTO;
                      end if;
						
		when EPRONTO => Eprox <= LIMPA;
							
      when LIMPA => if LIGA = '0' then Eprox <= INICIAL;
                      else             Eprox <= ESPERA;
                      end if;
							
      when ESPERA => if SINAL = '0' then Eprox <= ESPERA;
                      else               Eprox <= CONTA;
                     end if;
						
      when others => Eprox <= INICIAL;
    end case;
  end process;

  with Ereg select
    enablec <= '1' when CONTA,
                '0' when others;
  with Ereg select
    resetc <= '0' when INICIAL | LIMPA,
              '1' when others;
	with Ereg select
	pronto <= '1' when EPRONTO,
				 '0'	when others;
end controle;
