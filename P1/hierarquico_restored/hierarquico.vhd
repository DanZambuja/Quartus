library IEEE;
use IEEE.std_logic_1164.all;

entity hierarquico is 
	port (clock, reset, iniciar, zerar, pulso: in std_logic;
			medida: out std_logic_vector(3 downto 0); --indica o valor do sinal medida
			fim: out std_logic;
			s_medida: out std_logic_vector(3 downto 0);
			Sliga, Senable_r1, Senable_r2, Sreset_r1, Sreset_r2: out std_logic;
			saidaDisplay1, saidaDisplay2, saidaDisplay3: out std_logic_vector(6 downto 0);
			soma: out std_logic_vector(3 downto 0);
			s_pronto: out std_logic;
			s_somador:out std_logic_vector(3 downto 0)); -- indica o valor do sinal soma
end hierarquico;

architecture hierarquica of hierarquico is

component medidor is
    port (CLOCK, RESET, liga, sinal : in STD_LOGIC;
            Q : out STD_LOGIC_VECTOR(3 downto 0);
            RCO, pronto: out STD_LOGIC -- pronto indica o fim da contagem, RCO indica carry out
				);
end component;

component reg4bits_en is -- Define a entidade que representa o registrador
    port (CLOCK, CLR, ENABLE: in STD_LOGIC; -- Define as portas de entrada como STD_LOGIC
          D: in STD_LOGIC_VECTOR (3 downto 0); -- Define o barramento de entrada como um STD_LOGIC_VECTOR de 4 bits
          Q: out STD_LOGIC_VECTOR (3 downto 0)); -- Define o barramento de saída como STD_ULOGIC_VECTOR de 4 bits.
end component;

component hex7seg_en is
	port (
		x3, x2, x1, x0 : in std_logic;
		enable : in std_logic;
		a,b,c,d,e,f,g : out std_logic
	);
end component;

component controlador is
  port (clock, reset, zerar, iniciar, pronto: in STD_LOGIC;
        liga, enable_r1, enable_r2, reset_r1, reset_r2, fim: out STD_LOGIC);  -- Estado para depuracao do estado da maquina
end component;

component SomadorBCD is -- Declara a entidade do Somador BCD (seu black box, contorno)
port (A, B : in std_logic_vector(3 downto 0); -- Barramentos de entrada de 4 bits
		vem_um  : in std_logic; -- Carry de entrada
		vai_um : out std_logic; -- Carry de saida
		S    : out std_logic_vector(3 downto 0);
		s_cout1: out std_logic;
		s_soma1: out std_logic_vector(3 downto 0)); -- Barramento de saida de 4 bits, indica o resultado 
		-- Da operacao aritmetica S = A + B
end component; -- Finaliza declaracao de entidade

signal Imedida , s_reg1, s_reg2, Isomador: std_logic_vector(3 downto 0);
signal Ipronto, s_liga, s_enable_r1, s_enable_r2, s_reset_r1, s_reset_r2 : std_logic;
begin -- estado1 serve para depurar os estados da maquina controle
--estado 2 serve para depurar os estados da maquina controlador
	A1: medidor port map (clock, reset, s_liga, pulso, Imedida, open, Ipronto);
	C1: controlador port map (clock, reset, zerar, iniciar, Ipronto, s_liga, s_enable_r1, s_enable_r2, s_reset_r1, s_reset_r2, fim);
	R1: reg4bits_en port map (clock, s_reset_r1, s_enable_r1, Imedida, s_reg1);
	R2: reg4bits_en port map (clock, s_reset_r2, s_enable_r2, Isomador, s_reg2);
	S1: somadorBCD port map(s_reg1, s_reg2, '0', open, Isomador, open, open);
	Dmedida: hex7seg_en port map(s_reg1(3), s_reg1(2), s_reg1(1), s_reg1(0), '1', saidaDisplay2(0), saidaDisplay2(1), saidaDisplay2(2), saidaDisplay2(3), saidaDisplay2(4), saidaDisplay2(5), saidaDisplay2(6));
	Ds_medida: hex7seg_en port map(Imedida(3), Imedida(2), Imedida(1), Imedida(0), '1', saidaDisplay1(0), saidaDisplay1(1), saidaDisplay1(2), saidaDisplay1(3), saidaDisplay1(4), saidaDisplay1(5), saidaDisplay1(6));
	Dsoma: hex7seg_en port map(s_reg2(3), s_reg2(2), s_reg2(1), s_reg2(0), '1', saidaDisplay3(0), saidaDisplay3(1), saidaDisplay3(2), saidaDisplay3(3), saidaDisplay3(4), saidaDisplay3(5), saidaDisplay3(6));
	s_medida <= Imedida;
	medida<=s_reg1;
	soma <= s_reg2;
	s_pronto<=Ipronto;
	--Spronto <= Ipronto;
	Sliga <= s_liga;
	Senable_r1 <= s_enable_r1;
	Sreset_r1 <= s_reset_r1;
	Senable_r2 <= s_enable_r2;
	Sreset_r2 <= s_reset_r2;
	s_somador<=Isomador;
end hierarquica;