library ieee; -- Biblioteca onde std_logic_1164 esta definida
use ieee.std_logic_1164.all; --Biblioteca que define os tipos de variaveis utilizados 

entity SomadorBCD is -- Declara a entidade do Somador BCD (seu black box, contorno)
port (A, B : in std_logic_vector(3 downto 0); -- Barramentos de entrada de 4 bits
		vem_um  : in std_logic; -- Carry de entrada
		vai_um : out std_logic; -- Carry de saida
		S    : out std_logic_vector(3 downto 0);
		s_cout1: out std_logic;
		s_soma1: out std_logic_vector(3 downto 0)); -- Barramento de saida de 4 bits, indica o resultado 
		-- Da operacao aritmetica S = A + B
end SomadorBCD; -- Finaliza declaracao de entidade

architecture estrutural of SomadorBCD is -- Define a declaracao do funcionamento do somad0r bcd
Component Somador4bits_comportamental is -- Define o componente a ser utilizado
	port (A, B : in std_logic_vector(3 downto 0); -- barramentos de entrada dos somadores binarios
			Cin   : in std_logic; -- carry de entrada (vem um) do somador binario
			S    : out std_logic_vector(3 downto 0); -- Saida do componente de 4 bits
			Cout   : out std_logic); -- carry de saida do componetne de 4 bits
end Component;
Component DetectorCodigoInvalido is -- Declaracao do componente que detecta se sera necessaria a
-- correcao de +6
	port (D : in std_logic_vector(3 downto 0); -- Entrada de 4 bits do detector
			O : out std_logic); -- Saida de 1 bit do detector
end Component;
signal s_soma, R : std_logic_vector(3 downto 0); -- Declaracao dos sinais internos da soma ainda
-- nao corrigida e dos sinais de entrada para o componente "+6"
signal s_cout, O , s_vai_um, x, y: std_logic; -- Declaracao dos sinais internos de carry out do "Somador
--binario", barramento de saida do "Detector de codigo invalido", entradas do componente "+6"
--e carry in e carry out do componente "+6".
begin -- Inicio da descricao estrutural em si, conectando os componentes.
	s1: Somador4bits_comportamental port map(A, B, vem_um, s_soma, s_cout); -- Mapeamento das portas do "Somador
	--binario"
	d1: DetectorCodigoInvalido port map(s_soma, O); -- Mapeamento das portas do "Detector de codigo 
	--invalido"
	s_vai_um <= s_cout or O; -- s_vai_um recebe '1' se houver carry out do "Somador binario" ou se
	--a saida do "Detector de codigo invalido" for '1', ou seja, se for necessario Correcao Posterior
	--de Seis
	R(3) <= '0';		-- Define o valor do barramento de entrada do "+6", 
	R(0) <= '0';
	R(2) <= s_vai_um;
	R(1) <= s_vai_um;
	x <= '0';			-- x e y, que sao respectivamente, carry in e carry out do "+6" recebem 0, pois
	--nao sao necessarios nesse componente
	y <= '0';
	s2: Somador4bits_comportamental port map(R, s_soma, x, S, y); -- Mapeamento das portas do "+6"
	vai_um <= s_vai_um;	-- Finalmente, Cout, que eh o carry out geral do circuito, recebe s_vai_um
	s_cout1 <= s_cout;
	s_soma1 <= s_soma;
end estrutural; -- Fim da descricao estrutural