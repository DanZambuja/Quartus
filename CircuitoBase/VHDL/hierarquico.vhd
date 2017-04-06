library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

entity hierarquico is 
	port (clock, reset, iniciar, zerar, pulso : in STD_LOGIC;
	      saida : out STD_LOGIC_VECTOR(15 downto 0);
			fim : out STD_LOGIC;
			sig_resetr: out std_logic;
			sig_enabler: out std_logic;
			sig_liga: out std_logic;
			sig_medida:out std_logic_Vector(15 downto 0);
			saidaDisplay: out std_logic_vector(27 downto 0));
end hierarquico;

architecture hierarquica of hierarquico is

component medidor is
    port (CLOCK, RESET, liga, sinal : in STD_LOGIC;
            Q : out STD_LOGIC_VECTOR(15 downto 0);
            RCO, pronto: out STD_LOGIC; -- pronto indica o fim da contagem, RCO indica carry out
				estado: out std_logic_vector(3 downto 0));
end component;

component controlador is
  port (clock, reset, zerar, iniciar, pronto: in STD_LOGIC;
        liga, enabler, resetr, fim: out STD_LOGIC); 
end component;

component reg16bits_en is -- Define a entidade que representa o registrador
    port (CLOCK, CLR, ENABLE: in STD_LOGIC; -- Define as portas de entrada como STD_LOGIC
          D: in STD_LOGIC_VECTOR (15 downto 0); -- Define o barramento de entrada como um STD_LOGIC_VECTOR de 4 bits
          Q: out STD_LOGIC_VECTOR (15 downto 0)); -- Define o barramento de saída como STD_ULOGIC_VECTOR de 4 bits.
end component;

component hex7seg_en is
	port (
		x3, x2, x1, x0 : in std_logic;
		enable : in std_logic;
		a,b,c,d,e,f,g : out std_logic
	);
end component;


signal s_liga, s_pronto, s_resetr, s_enabler: std_logic;
signal s_medida : std_logic_vector(15 downto 0);
signal s_saida: std_logic_vector(15 downto 0);

begin 

	M1: medidor port map(clock, reset, s_liga, pulso, s_medida, open, s_pronto, open);
	C1: controlador port map(clock, reset, zerar, iniciar, s_pronto, s_liga, s_enabler, s_resetr, fim);
	R1: reg16bits_en port map(clock, s_resetr, s_enabler, s_medida, s_saida);
	D1: hex7seg_en port map(s_saida(3), s_saida(2), s_saida(1), s_saida(0), '1', saidaDisplay(27), saidaDisplay(26), saidaDisplay(25), saidaDisplay(24), saidaDisplay(23), saidaDisplay(22), saidaDisplay(21));
	D2: hex7seg_en port map(s_saida(7), s_saida(6), s_saida(5), s_saida(4), '1', saidaDisplay(20), saidaDisplay(19), saidaDisplay(18), saidaDisplay(17), saidaDisplay(16), saidaDisplay(15), saidaDisplay(14));
	D3: hex7seg_en port map(s_saida(11), s_saida(10), s_saida(9), s_saida(8), '1', saidaDisplay(13), saidaDisplay(12), saidaDisplay(11), saidaDisplay(10), saidaDisplay(9), saidaDisplay(8), saidaDisplay(7));
	D4: hex7seg_en port map(s_saida(15), s_saida(14), s_saida(13), s_saida(12), '1', saidaDisplay(6), saidaDisplay(5), saidaDisplay(4), saidaDisplay(3), saidaDisplay(2), saidaDisplay(1), saidaDisplay(0));
	
	sig_medida <= s_medida;--e o sinal que entra no registrador
	saida<= s_saida; --e a saida que fica no registrador
	sig_resetr <= s_resetr; --avisa se foi aplicado reset no registradort
	sig_enabler <= s_enabler; -- quando se permite o que o registrador registre
	sig_liga <= s_liga; -- quando liga o medidor
	
end hierarquica;