library IEEE;
use IEEE.std_logic_1164.all;

entity controlador is
  port (clock, reset, zerar, iniciar, pronto: in STD_LOGIC;
        liga, enabler, resetr, fim: out STD_LOGIC); 
end controlador;

architecture controlador of controlador is
  type tipo_Estado is ( parado, zera, iniciado, medindo, registra, espera);
  signal Ereg, Eprox: tipo_Estado;
begin
  process (clock, reset)
  begin
    if reset = '1' then
      Ereg <= parado;
    elsif clock 'event and clock = '1' then
      Ereg <= Eprox;
    end if;
  end process;

  process (zerar, iniciar, pronto)
  begin
    case Ereg is
      when parado => if (iniciar = '0' and zerar = '0') then Eprox <= parado;
                     elsif (iniciar = '0' and zerar ='1') then	Eprox <= zera;
							else 											 Eprox <= iniciado;
                     end if;
							
      when zera =>    if iniciar = '0' and zerar = '1' then Eprox <= zera;
                      else                             Eprox <= parado;
                      end if;	
							 
      when iniciado => Eprox <= medindo;
							
		when medindo => if pronto = '0' then Eprox <= medindo;
							 else  Eprox <= registra;
							 end if;
      when registra =>  Eprox <= espera;
							
      when espera => if iniciar = '1' then Eprox <= espera;
                      else               Eprox <= parado;
                     end if;
    end case;
  end process;
 
   with Ereg select
    liga <= '1' when iniciado | medindo,
            '0' when others;
   with Ereg select
   enabler <= '1' when registra | espera,
              '0' when others;
	with Ereg select
	resetr <= '1' when zera,
				 '0'	when others;
	with Ereg select
	fim <= '1' when espera,
			'0'	when others;
end controlador;
