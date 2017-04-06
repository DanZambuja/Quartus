library IEEE;
use IEEE.std_logic_1164.all;

entity BoxRodada is

	port (clock, reset, finalizaRodada, rodada, resposta : in std_logic;
			contaAtraso , aguardando, fimRodada, erro, demora, MostraSinalAtraso, MostraContaAtraso : out std_logic;
			estadoRodada, estadoAtrasador : out std_logic_vector (3 downto 0);
			pulsoRodada:out std_logic_vector(15 downto 0));
			
end BoxRodada;

architecture arch of BoxRodada is 

component ControleRodada is 

	port (clock, reset, finalizaRodada, rodada, sinalAtraso, demorou, resposta : in std_logic;
			contaAtraso , aguardando, fimRodada, erro : out std_logic;
			estado : out std_logic_vector (3 downto 0));

end component;

component comparador is
	port (
			clock, reset, enable: in STD_LOGIC;
			A: in STD_LOGIC_VECTOR(15 downto 0);
			S: out STD_LOGIC
		  );
		  
end component;

component Atrasador is 

	port (clock, reset, contaAtraso: in std_logic;
			sinalAtraso: out std_logic;
			estado: out std_logic_vector(3 downto 0));

end component;

component Four_Digit_BCD_Counter is
port(Clk, CLR_L, enable: in std_logic;
     Q1, Q2, Q3, Q4: inout std_logic_vector(3 downto 0):= "0000");
end component;

component compare is 
	port (A, B: in std_logic_vector(3 downto 0);
			AeqB, AgtB, AltB: out std_logic);
end component;


signal s_sinalAtraso, s_demorou, s_contaAtraso, s_aguardando, s_fim, s_fimRodada: std_logic;
signal s_pulsoRodada: std_logic_vector(15 downto 0);
signal s_Q1, s_Q2, s_Q3, s_Q4: std_logic_vector(3 downto 0);
signal SS1, SS2, S1, S2, S3, S4:std_logic;

begin


	C: controleRodada port map(clock, reset, finalizaRodada, rodada, s_sinalAtraso, s_demorou, resposta, s_contaAtraso, s_aguardando, s_fimRodada, erro, estadoRodada);
	
	D: Atrasador port map(clock, reset or s_fimRodada, s_contaAtraso, s_sinalAtraso, estadoAtrasador);
	
	--VerificaDemora: comparador port map(clock, reset, s_aguardando, "1001100110011001", s_demorou);
	
	ContaDemora: Four_Digit_BCD_Counter port map(clock, not(reset), s_aguardando, s_Q1, s_Q2, s_Q3, s_Q4);
	s_pulsoRodada <= s_Q4&s_Q3&s_Q2&s_Q1;
	
	C1: compare port map("1001", s_Q1, S1, open, open);
	C2: compare port map("1001", s_Q2, S2, open, open);
	C3: compare port map("1001", s_Q3, S3, open, open);
	C4: compare port map("1001", s_Q4, S4, open, open);
	
	SS1 <= S1 and S2;
	SS2 <= S3 and S4;
	s_demorou<= SS1 and SS2;


fimRodada <= s_fimRodada;	
pulsoRodada <= s_pulsoRodada;
MostraSinalAtraso<=s_sinalAtraso;
mostraContaAtraso<=s_contaAtraso;
aguardando <= s_aguardando;
demora <= s_demorou;
	
end arch;
