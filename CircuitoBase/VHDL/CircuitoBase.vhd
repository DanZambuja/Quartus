library IEEE;
use IEEE.std_logic_1164.all;

entity CircuitoBase is 

	port (clock, reset, liga, resposta, finalizaRodada: in std_logic;
			fim, fimRodada: out std_logic;
			saidaAtual: out std_logic_vector(15 downto 0));
	
end CircuitoBase;


architecture estrutural of CircuitoBase is

component BoxRodada is

	port (clock, reset, finalizaRodada, rodada, resposta : in std_logic;
			contaAtraso , aguardando, fimRodada, erro, demora, MostraSinalAtraso, MostraContaAtraso : out std_logic;
			estadoRodada, estadoAtrasador : out std_logic_vector (3 downto 0);
			pulsoRodada:out std_logic_vector(15 downto 0));
			
end component;


signal s_iniciar, s_contaAtraso, s_sinalAtraso, s_fimRodada, s_fim: std_logic;
signal s_saidaMedidor: std_logic_vector(15 downto 0);

begin


	INTERFACE: BoxRodada port map(clock, reset, finalizaRodada, liga, resposta, s_contaAtraso ,s_iniciar, s_fimRodada, s_erro, s_demora, s_MostraSinalAtraso, s_MostraContaAtraso,s_estadoRodada, s_estadoAtrasador, s_pulsoRodada);	
	

	
fimRodada<=s_fimRodada;
fim<=s_fim;
saidaAtual<=s_saidaMedidor;

end estrutural;