library IEEE;  -- Bibilioteca principal, contem os "packets" de std_logic 1164.
use IEEE.std_logic_1164.all; -- Traz informações sobre os tipos de variaveis definidas por usuarios, que
-- sao utilizadas no programa.

entity ComponenteAssociado is -- Declara a entidade da associacao.
    port ( liga, sinal, RESET, CLOCK : in STD_LOGIC; -- Declara as entradas e saidas, junto de seus tipos.
            RCO : out STD_LOGIC;
            Q : out STD_LOGIC_VECTOR(1 to 4));
end ComponenteAssociado; -- Fecha a declaracao de entidade.

architecture ComponenteAssociado of ComponenteAssociado is -- Inicia a definicao da arquitetura, que ira descrever
-- como o componente se comporta.
signal Resetc, Enablec, LD_L, ENP: STD_LOGIC; -- Indicam os "fios" que iram ligar um componente ao outro.
-- Descreve o componente 74163 que utilizamos na aula passa, como um elemento a ser associado.
component V74x163 port ( CLK, CLR_L, LD_L, ENP, ENT: in STD_LOGIC; RCO : out STD_LOGIC; Q : out STD_LOGIC_VECTOR ); end component;
-- Descreve o componente, maquina de estados, que ira controlar o CI. Declarando as portas de entrada e saida.
component umFSM port ( CLOCK, RESET, liga, sinal: in STD_LOGIC; enablec, resetc: out STD_LOGIC ); end component;
-- Inicia o processo de mapeamento das entradas e saidas.
begin
-- Mapeia as entradas e saidas de um componente ao outro, utilizando os sinais declarados
-- como fios, para ligar estes.
    U1: umFSM port map (CLOCK, RESET, liga, sinal, Enablec, Resetc);
-- Mapeia as entradas e saidas do CI
    U2: V74x163 port map (CLOCK, Resetc, LD_L, ENP, Enablec, RCO, Q);
-- Fecha a descricao do comportamento da associacao
end ComponenteAssociado; -- Fecha a descricao da arquitetura do ComponenteAssociado.
