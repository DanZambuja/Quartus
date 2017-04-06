library IEEE;
use IEEE.std_logic_1164.all;

entity CircuitoBase is 

	port (clock, reset, finalizaRodada, rodada, resposta : in std_logic;
			selectDisplay: in std_logic_vector(1 downto 0);
			contaAtraso , aguardando, fimRodada, erro, demora, MostraSinalAtraso, MostraContaAtraso, fimHierarquico : out std_logic;
			estadoRodada, estadoAtrasador : out std_logic_vector (3 downto 0);
			pulso, saida:out std_logic_vector(15 downto 0));
	
end CircuitoBase;


architecture estrutural of CircuitoBase is

component BoxRodada is

	port (clock, reset, finalizaRodada, rodada, resposta : in std_logic;
			contaAtraso , aguardando, fimRodada, erro, demora, MostraSinalAtraso, MostraContaAtraso, fimHierarquico : out std_logic;
			estadoRodada, estadoAtrasador : out std_logic_vector (3 downto 0);
			pulso:out std_logic_vector(15 downto 0));
			
end component;

component mux4to1 is 
	port (SEL : in std_logic_vector(3 downto 0);
	      A, B, C, D: in std_logic_vector(15 downto 0);
	      X : out std_logic_vector(15 downto 0));
end component;

signal s_pulso: std_logic_vector(15 downto 0);

begin


	INTERFACE: BoxRodada port map(clock, reset, finalizaRodada, rodada, resposta, contaAtraso , aguardando, fimRodada, erro, demora, MostraSinalAtraso, MostraContaAtraso, fimHierarquico, estadoRodada, estadoAtrasador, s_pulso);	
	MultiplexadorFinal: mux4to1 port map(selectDisplay, s_pulso, "0000000000000001", "0000000000000010", "0000000000000011", saida);
	
	pulso <= s_pulso;

end estrutural;