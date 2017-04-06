library IEEE;
use IEEE.std_logic_1164.all;

entity Jogo_Reacao is 
	port (clock, reset, inicia, resposta, contaDisplay: in std_logic;
			estimulo, erro: out std_logic;
			saida : out std_logic_vector (27 downto 0);
			saidaGanhador : out std_logic_vector(6 downto 0);
			estado : out std_logic_vector(1 downto 0);
			estadoJogo: out std_logic_vector(1 downto 0));
end Jogo_Reacao;

architecture hierarquica of Jogo_Reacao is

component maquinaEstados is 

	port (clock, reset, inicia, finaliza, contaDisplay : in std_logic;
			jogar, jogador : out std_logic;
			estado : out std_logic_vector(1 downto 0));

end component;

component hex7seg_en is 
	port (
		x3, x2, x1, x0 : in std_logic;
		enable : in std_logic;
		a,b,c,d,e,f,g : out std_logic
	);
end component;

component muxDisplay is 
	port (s_saida1, s_saida2, s_recorde : in std_logic_vector(15 downto 0);
			selecionaDisplay: in std_logic_vector(1 downto 0);
			s_saida: out std_logic_vector(15 downto 0));
			
end component;

component contadorDisplay is

	port (contaDisplay, liga: in std_logic;
			selecionaDisplay : out std_logic_vector(1 downto 0));

end component;

component reg16bits_en is
    port (CLOCK, CLR, ENABLE: in STD_LOGIC; 
          D: in STD_LOGIC_VECTOR (15 downto 0); 
          Q: out STD_LOGIC_VECTOR (15 downto 0));
end component;

component comparador is 
	port (s_saida1, s_saida2 : in std_logic_vector(15 downto 0);
			s_recorde: out std_logic_vector(15 downto 0);
			s_ganhador: out std_logic_vector(3 downto 0));
	
end component;

component Tentativa is
	port (clock, reset, inicia, resposta, jogar, jogador: in std_logic;
			tempo : in std_logic_vector(15 downto 0);
			estimulo, erro, finaliza: out std_logic;
			saida1, saida2 :out std_logic_vector(15 downto 0);
			estadoJogo: out std_logic_vector(1 downto 0));
end component;

component tempoAtual is
	port (clock, jogar: in std_logic;
			tempo : out std_logic_vector(15 downto 0));
end component;

component LFSR is
	port (clock, enable, reset: in std_logic;
			entrada : in std_logic_vector(15 downto 0);
			saida : out std_logic_vector(15 downto 0));
end component;

signal s_jogar, s_jogador, s_finaliza : std_logic;
signal s_saida1, s_saida2, s_recorde, s_saida, s_atraso, s_atraso_final : std_logic_vector (15 downto 0);
signal s_selecionaDisplay : std_logic_vector(1 downto 0);
signal s_ganhador : std_logic_vector(3 downto 0);
begin 
	
	Controle : maquinaEstados port map (clock, reset, inicia, s_finaliza, contaDisplay, s_jogar, s_jogador, estado);
	
	Tent : Tentativa port map (clock, reset, inicia, resposta, s_jogar, s_jogador, s_atraso_final, estimulo, erro, s_finaliza, s_saida1, s_saida2, estadoJogo);
	
	T : tempoAtual port map(clock, s_jogar, s_atraso);
	
	Random : LFSR port map(clock, s_jogar, reset, s_atraso, s_atraso_final);
	
	C : comparador port map (s_saida1, s_saida2,s_recorde, s_ganhador);
	
	ContDispl : contadorDisplay port map(contaDisplay, inicia, s_selecionaDisplay);
	
	muxD :  muxDisplay port map(s_saida1, s_saida2, s_recorde, s_selecionaDisplay,s_saida);
	
	
	DisplayPonto4: hex7seg_en port map(s_saida(15), s_saida(14), s_saida(13), s_saida(12), '1', saida(27), saida(26), saida(25), saida(24), saida(23), saida(22), saida(21));
	DisplayPonto3: hex7seg_en port map(s_saida(11), s_saida(10), s_saida(9), s_saida(8), '1', saida(20), saida(19), saida(18), saida(17), saida(16), saida(15), saida(14));
	DisplayPonto2: hex7seg_en port map(s_saida(7), s_saida(6), s_saida(5), s_saida(4), '1', saida(13), saida(12), saida(11), saida(10), saida(9), saida(8), saida(7));
	DisplayPonto1: hex7seg_en port map(s_saida(3), s_saida(2), s_saida(1), s_saida(0), '1', saida(6), saida(5), saida(4), saida(3), saida(2), saida(1), saida(0));
	
	DisplayGanhador : hex7seg_en port map(s_ganhador(3), s_ganhador(2), s_ganhador(1), s_ganhador(0), '1', saidaGanhador(6), saidaGanhador(5), saidaGanhador(4), saidaGanhador(3), saidaGanhador(2), saidaGanhador(1), saidaGanhador(0));
	

end hierarquica;