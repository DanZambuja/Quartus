library IEEE;
use IEEE.std_logic_1164.all;

entity CircuitoBase is 

	port (clock, reset, finalizaRodada, START, resposta, selectJogador : in std_logic;
			selectDisplay: in std_logic_vector(1 downto 0);
			contaAtraso , aguardando, fimRodada, erro, demora, MostraSinalAtraso, MostraContaAtraso, fimHierarquico, jogador, rodada, perdeu, fimJogada: out std_logic;
			estadoRodada, estadoAtrasador, estadoJogada: out std_logic_vector (3 downto 0);
			pulso, saida, depuraMedia:out std_logic_vector(15 downto 0));
	
end CircuitoBase;


architecture estrutural of CircuitoBase is

component BoxRodada is

	port (clock, reset, finalizaRodada, rodada, resposta : in std_logic;
			contaAtraso , aguardando, fimRodada, erro, demora, MostraSinalAtraso, MostraContaAtraso, fimHierarquico : out std_logic;
			estadoRodada, estadoAtrasador : out std_logic_vector (3 downto 0);
			pulso:out std_logic_vector(15 downto 0));
			
end component;

component mux4to1 is 
	port (SEL : in std_logic_vector(1 downto 0);
	      A, B, C, D: in std_logic_vector(15 downto 0);
	      X : out std_logic_vector(15 downto 0));
end component;

component regbit_en is -- Define a entidade que representa o registrador
    port (CLOCK, CLR, ENABLE: in STD_LOGIC; -- Define as portas de entrada como STD_LOGIC
          D: in STD_LOGIC; -- Define o barramento de entrada como um STD_LOGIC_VECTOR de 4 bits
          Q: out STD_LOGIC); -- Define o barramento de saída como STD_ULOGIC_VECTOR de 4 bits.
end component;

component Media is

	port (clock, reset, enable, inicio, finalizaRodada, fimRodada, vacilou: in std_logic;
			pulso : in std_logic_vector(15 downto 0);
			media, depuraMedia: out std_logic_vector(15 downto 0);
			rodada, perde, fimJogada: out std_logic;
			estadoJogada: out std_logic_vector(3 downto 0));
	
end component;

signal s_pulso: std_logic_vector(15 downto 0);
signal s_estadoRodada: std_logic_vector(3 downto 0);
signal s_jogador, s_erro, s_demora, s_vacilou, s_fimRodada: std_logic;

begin
	
	
	s_vacilou <= s_erro or s_demora;
	
	INTERFACE: BoxRodada port map(clock, reset, finalizaRodada, START, resposta, contaAtraso , aguardando, s_fimRodada, s_erro, s_demora, MostraSinalAtraso, MostraContaAtraso, fimHierarquico, s_estadoRodada, estadoAtrasador, s_pulso);	
	RegistraJogador: regbit_en port map(clock, reset, not(s_estadoRodada(3)) and not(s_estadoRodada(2)) and not(s_estadoRodada(1)) and not(s_estadoRodada(0)), selectJogador, s_jogador);
	CalculaMedia: Media port map(clock, reset, fimHierarquico, START, finalizaRodada, s_fimRodada, s_vacilou, s_pulso, s_media, depuraMedia, s_rodada, perdeu, fimJogada, estadoJogada);
	
	
	MultiplexadorFinal: mux4to1 port map(selectDisplay, s_pulso, "0000000000000001", "0000000000000010", "0000000000000011", saida);
	
	fimRodada <= s_fimRodada;
	demora <= s_demora;
	vacilou <= s_vacilou;
	erro <= s_erro;
	pulso <= s_pulso;
	estadoRodada <= s_estadoRodada;
	jogador <= s_jogador;
	media <= s_media;
	rodada <= s_rodada;
	
end estrutural;