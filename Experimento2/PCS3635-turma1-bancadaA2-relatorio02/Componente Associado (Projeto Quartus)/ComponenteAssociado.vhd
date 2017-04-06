library IEEE;  -- Bibilioteca principal, contem os "packets" de std_logic 1164.
use IEEE.std_logic_1164.all; -- Traz informações sobre os tipos de variaveis definidas por usuarios, que
-- sao utilizadas no programa.
use IEEE.std_logic_arith.all;

entity ComponenteAssociado is -- Declara a entidade da associacao.
    port ( liga, sinal, RESET, CLOCK : in STD_LOGIC; -- Declara as entradas e saidas, junto de seus tipos.
				RCO, ResetcOUT, EnablecOUT: out STD_LOGIC;
            Q : out UNSIGNED (3 downto 0);
				ESTADO : out STD_LOGIC_VECTOR (3 downto 0);
				CLOCKout : out STD_LOGIC);
end ComponenteAssociado; -- Fecha a declaracao de entidade.

architecture ComponenteAssociado of ComponenteAssociado is -- Inicia a definicao da arquitetura, que ira descrever
-- como o componente se comporta.
signal Resetc, Enablec, LD_L, ENP: STD_LOGIC; -- Indicam os "fios" que iram ligar um componente ao outro.
-- Descreve o componente 74163 que utilizamos na aula passa, como um elemento a ser associado.
component V74x163 port ( CLK, CLR_L, LD_L, ENP, ENT: in STD_LOGIC;
									D : in UNSIGNED (3 downto 0);
									RCO : out STD_LOGIC; 
									Q : out UNSIGNED (3 downto 0));
end component;
-- Descreve o componente, maquina de estados, que ira controlar o CI. Declarando as portas de entrada e saida.
component umFSM port ( CLOCK, RESET, liga, sinal: in STD_LOGIC;
								enablec, resetc: out STD_LOGIC;
								ESTADO: out  STD_LOGIC_VECTOR (3 downto 0));
end component;
-- Inicia o processo de mapeamento das entradas e saidas.
begin
	ResetcOUT <= resetc;
	EnablecOUT <= enablec;
-- Mapeia as entradas e saidas de um componente ao outro, utilizando os sinais declarados
-- como fios, para ligar estes.
    U1: umFSM port map (CLOCK, RESET, liga, sinal, Enablec, Resetc, ESTADO);
-- Mapeia as entradas e saidas do CI
    U2: V74x163 port map (CLOCK, Resetc, '1', '1', Enablec, "0000", RCO, Q);
-- Fecha a descricao do comportamento da associacao
	CLOCKout <= CLOCK;
end ComponenteAssociado; -- Fecha a descricao da arquitetura do ComponenteAssociado.
