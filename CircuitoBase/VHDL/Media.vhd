library IEEE;
use IEEE.std_logic_1164.all;


entity Media is

	port (clock, reset, inicio, finalizaRodada, fimRodada, vacilou: in std_logic;
			pulso : in std_logic_vector(15 downto 0);
			media, depuraMedia: out std_logic_vector(15 downto 0);
			rodada, perde, fimJogada: out std_logic;
			estadoJogada: out std_logic_vector(3 downto 0));
	
end Media;

architecture arch of Media is 

component dadosMedidas is
	port(	clock, clear: in std_logic;
			estadoRodada: in std_logic_vector(3 downto 0);
			pulsoRodada: in std_logic_vector(15 downto 0);
			medida:out std_logic_vector(15 downto 0));
end component;

component controleJogada is 

	port (clock, reset, jogada, finalizaRodada, fimRodada, vacilou : in std_logic;
			rodada, perde, fimJogada : out std_logic;
			estado : out std_logic_vector(3 downto 0));

end component;

component reg16bits_en2 is -- Define a entidade que representa o registrador
    port (CLOCK, CLR, ENABLE: in STD_LOGIC; -- Define as portas de entrada como STD_LOGIC
          D: in STD_LOGIC_VECTOR (15 downto 0); -- Define o barramento de entrada como um STD_LOGIC_VECTOR de 4 bits
          Q: out STD_LOGIC_VECTOR (15 downto 0)); -- Define o barramento de saída como STD_ULOGIC_VECTOR de 4 bits.
end component;

signal s_estadoJogada: std_logic_vector(3 downto 0);
signal s_rodada, s_perde, s_fimJogada: std_logic;
signal s_media: std_logic_vector(15 downto 0);
begin

	CalculaMedia: dadosMedidas port map(clock, '0', s_estadoJogada, pulso, s_media);
	controlador: controleJogada port map(clock, reset, inicio, finalizaRodada, fimRodada, vacilou, s_rodada, s_perde, s_fimJogada, s_estadoJogada);
	RegistraMedia: reg16bits_en2 port map(clock, s_perde, s_fimJogada, s_media, media);
	
	estadoJogada <= s_estadoJogada;
	rodada <= s_rodada;
	perde <= s_perde;
	fimJogada <= s_fimJogada;
	depuraMedia <= s_media;

end arch;