library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

entity hierarquico is 
	port (clock, reset, iniciar, zerar, pulso: in std_logic;
			saida: out std_logic_vector(7 downto 0);
			fim: out std_logic;
			s_m: out std_logic_vector(7 downto 0);
			saidaDisplay1: out std_logic_vector(6 downto 0);
			saidaDisplay2: out std_logic_vector(6 downto 0)); -- Sinal para visualizacao da contagem em "tempo real"
			--Spronto, Sliga, Senabler, Sresetr, tout: out std_logic);
end hierarquico;

architecture hierarquica of hierarquico is

component medidor is
    port (CLOCK, RESET, liga, sinal : in STD_LOGIC;
            Q : out STD_LOGIC_VECTOR(7 downto 0);
            RCO, pronto: out STD_LOGIC -- pronto indica o fim da contagem, RCO indica carry out
				);
end component;

component hex7seg_en is
	port (
		x3, x2, x1, x0 : in std_logic;
		enable : in std_logic;
		a,b,c,d,e,f,g : out std_logic
	);
end component;

component reg4bits_en is -- Define a entidade que representa o registrador
    port (CLOCK, CLR, ENABLE: in STD_LOGIC; -- Define as portas de entrada como STD_LOGIC
          D: in STD_LOGIC_VECTOR (7 downto 0); -- Define o barramento de entrada como um STD_LOGIC_VECTOR de 4 bits
          Q: out STD_LOGIC_VECTOR (7 downto 0)); -- Define o barramento de saída como STD_ULOGIC_VECTOR de 4 bits.
end component;

component controlador is
  port (clock, reset, zerar, iniciar, pronto: in STD_LOGIC;
        liga, enabler, resetr, fim: out STD_LOGIC); -- Estado para depuracao do estado da maquina
end component;
signal s_medida, Isaida : std_logic_vector(7 downto 0);
signal Ipronto, s_liga, s_enabler, s_resetr : std_logic;
begin -- estado1 serve para depurar os estados da maquina controle
--estado 2 serve para depurar os estados da maquina controlador
	A1: medidor port map (clock, reset, s_liga, pulso, s_medida, open, Ipronto);
	C1: controlador port map (clock, reset, zerar, iniciar, Ipronto, s_liga, s_enabler, s_resetr, fim);
	R1: reg4bits_en port map (clock, s_resetr, s_enabler, s_medida, Isaida);
	H1: hex7seg_en port map(Isaida(3), Isaida(2), Isaida(1), Isaida(0), '1', saidaDisplay1(6), saidaDisplay1(5), saidaDisplay1(4), saidaDisplay1(3), saidaDisplay1(2), saidaDisplay1(1), saidaDisplay1(0));
	H2: hex7seg_en port map(Isaida(7), Isaida(6), Isaida(5), Isaida(4), '1', saidaDisplay2(6), saidaDisplay2(5), saidaDisplay2(4), saidaDisplay2(3), saidaDisplay2(2), saidaDisplay2(1), saidaDisplay2(0));
	s_m <= s_medida;
	saida <= Isaida;
	--Spronto <= Ipronto;
	--Sliga <= s_liga;
	--Senabler <= s_enabler;
	--Sresetr <= s_resetr;
end hierarquica;