library IEEE;
use IEEE.std_logic_1164.all;

entity Tentativa is
	port (clock, reset, inicia, resposta, jogar, jogador: in std_logic;
			tempo : in std_logic_vector(15 downto 0);
			estimulo, erro, finaliza: out std_logic;
			saida1, saida2 :out std_logic_vector(15 downto 0);
			estadoJogo: out std_logic_vector(1 downto 0));
end Tentativa;

architecture hierarquico of Tentativa is
component deMuxSaida is
	port (entrada : in std_logic_vector(15 downto 0);
			jogador : in std_logic;
			saida1, saida2 : out std_logic_vector(15 downto 0));
end component;

component estadosJogo is
	port (clock, reset, jogar, resposta, sinalAtraso: in std_logic;
			estimulo, erro, finaliza, atraso: out std_logic;
			estadoJogo: out std_logic_vector(1 downto 0));
end component;

component contador is 
	port (clock, reset, jogar: in std_logic;
			atraso: in std_logic_vector(15 downto 0);
			sinal : out std_logic);
end component;

component contaResposta is 
	port (clock, reset, estimulo, resposta: in std_logic;
			result: out std_logic_vector(15 downto 0));
end component;



signal s_saida, s_valor_atraso : std_logic_vector(15 downto 0);
signal s_sinal, s_atraso, s_estimulo : std_logic;
signal s_estadoJogo : std_logic_vector(1 downto 0);

begin
	C : contador port map (clock, reset, jogar, tempo, s_sinal);
	E: estadosJogo port map (clock, reset, jogar, resposta, s_sinal, s_estimulo, erro, finaliza, s_atraso, s_estadoJogo);
	R: contaResposta port map(clock, reset, s_estimulo, resposta, s_saida);
	D: deMuxSaida port map (s_saida, jogador, saida1, saida2);
estadoJogo <= s_estadoJogo;
end hierarquico;