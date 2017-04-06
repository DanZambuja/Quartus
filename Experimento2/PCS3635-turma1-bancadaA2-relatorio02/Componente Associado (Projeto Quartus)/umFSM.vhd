library IEEE;
use IEEE.std_logic_1164.all;

entity umFSM is
  port ( CLOCK, RESET, liga, sinal: in STD_LOGIC;
         enablec, resetc: out STD_LOGIC;
				estado : out STD_LOGIC_VECTOR (3 downto 0));
end;

architecture umFSM of umFSM is
  type tipo_Estado is ( INICIAL, LIGADO, CONTA, LIMPA, ESPERA);
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
                      else           		Eprox <= LIGADO;
							 estado <= "0000";
                      end if;
      when LIGADO => if SINAL = '0' then Eprox <= LIGADO;
                      else               Eprox <= CONTA;
							 estado <= "0001";
                      end if;
      when CONTA => if SINAL = '1' then Eprox <= CONTA;
                      else              Eprox <= LIMPA;
							 estado <= "0010";
                      end if;
      when LIMPA => if LIGA = '0' then Eprox <= INICIAL;
                      else             Eprox <= ESPERA;
							 estado <= "0011";
                      end if;
      when ESPERA => if SINAL = '0' then Eprox <= ESPERA;
                      else               Eprox <= CONTA;
							 estado <= "0100";
                     end if;
      when others => Eprox <= INICIAL;
							estado <= "1111";
    end case;
  end process;

  with Ereg select
    enablec <= '1' when CONTA,
                '0' when others;
  with Ereg select
    resetc <= '0' when INICIAL | LIMPA,
              '1' when others;
  end umFSM;
