library IEEE;
use IEEE.std_logic_1164.all;

entity Atrasador is 

	port (clock, reset, contaAtraso: in std_logic;
			sinalAtraso, depTT1, depTT2, depConta: out std_logic;
			depT:out std_logic_vector(3 downto 0);
			estado: out std_logic_vector(3 downto 0);
			tempoAtraso, tempoUsado, tempoCicladobit, tempoCicladoBCD, tempoContadorAtraso: out std_logic_vector(15 downto 0));

end Atrasador;

--sinalAtraso, ciclou, ciclando, inicio, registra, reseta, convertendo, converteu, contando: out std_logic;
--tempoCicladobit, tempoCicladoBCD: out std_logic_vector(15 downto 0);
--tempoAtraso, tempoUsado: out std_logic_vector(15 downto 0));

architecture arch of Atrasador is


component controleAtrasador is 
	port (clock, reset, contaAtraso, ciclou, sinalAtraso, converteu: in std_logic;
			ciclando, conta, inicio, registra, resetaContadores, convertendo : out std_logic;
			estado : out std_logic_vector(3 downto 0));
end component;


component comparador is
	port (
			clock, reset, enable: in STD_LOGIC;
			A: in STD_LOGIC_VECTOR(15 downto 0);
			S: out STD_LOGIC
		  );
		  
end component;

component LFSR is
  port (
    cout   :out std_logic_vector (15 downto 0);-- Output of the counter
    enable :in  std_logic;
    clk    :in  std_logic;                    -- Input rlock
    reset  :in  std_logic;                    -- Input reset
	 seed	  :in  std_logic_vector (15 downto 0));
end component;

component Four_Digit_BCD_Counter is
port(Clk, CLR_L, enable: in std_logic;
     Q1, Q2, Q3, Q4: inout std_logic_vector(3 downto 0):= "0000");
end component;

component reg16bits_en is
    port (CLOCK, CLR, ENABLE: in STD_LOGIC; 
          D: in STD_LOGIC_VECTOR (15 downto 0);
          Q: out STD_LOGIC_VECTOR (15 downto 0));
end component;

component bitToBCD is
    port(
        clk, reset: in std_logic;
        binary_in: in std_logic_vector(13 downto 0);
        bcd0, bcd1, bcd2, bcd3: out std_logic_vector(3 downto 0)
    );
end component;

component compare is 
	port (A, B: in std_logic_vector(3 downto 0);
			AeqB, AgtB, AltB: out std_logic);
end component;

signal reset_L, cicla, s_inicio, s_registra, s_resetaContadores, s_converteu, s_convertendo : std_logic;
signal s_tempoAtraso, s_tempoCiclado1, s_tempoCiclado2, s_tempoUsado: std_logic_vector(15 downto 0);
signal s_Q1, s_Q2, s_Q3, s_Q4: std_logic_vector(3 downto 0);
signal s_ciclou, s_sinalAtraso, s_ciclando, s_conta: std_logic;
signal s_X1, s_X2, s_X3, s_X4: std_logic_vector(3 downto 0);
signal T1, T2, T3, T4, TT1, TT2, TT: std_logic;
begin

reset_L <= not(reset);
s_tempoAtraso <= s_Q4&s_Q3&s_Q2&s_Q1;
sinalAtraso <= s_sinalAtraso;

	C: controleAtrasador port map(clock, reset, contaAtraso, s_ciclou, s_sinalAtraso, s_converteu, s_ciclando, s_conta, s_inicio, s_registra, s_resetaContadores, s_convertendo, estado);
	
	--ContadordeAtraso: comparador port map(clock, reset, s_conta, s_tempoCiclado2, s_sinalAtraso);
	
	ContadordoAtraso: Four_Digit_BCD_Counter port map(clock, not(reset) and not(s_resetaContadores), s_conta, s_X1, s_X2, s_X3, s_X4);
	
	C1: compare port map(s_X1, s_tempoCiclado2(3 downto 0), T1, open, open);
	C2: compare port map(s_X2, s_tempoCiclado2(7 downto 4), T2, open, open);
	C3: compare port map(s_X3, s_tempoCiclado2(11 downto 8), T3, open, open);
	C4: compare port map(s_X4, s_tempoCiclado2(15 downto 12), T4, open, open);
	
	TT1 <= T1 and T2;
	TT2 <= T3 and T4;
	s_sinalAtraso <= TT1 and TT2 and s_conta;
	
	Converte: bitToBCD port map(clock, reset or s_resetaContadores, s_tempoCiclado1(13 downto 0), s_tempoCiclado2(15 downto 12), s_tempoCiclado2(11 downto 8), s_tempoCiclado2(7 downto 4), s_tempoCiclado2(3 downto 0));
	
	ContadordeConversao: comparador port map(clock, reset or s_resetaContadores, s_convertendo, "0000000000100000", s_converteu);
	
	PSEUDORANDOM: LFSR port map(s_tempoCiclado1, s_ciclando, clock, reset or s_resetaContadores, s_tempoUsado);
	
	ciclagensLFSR: comparador port map(clock, reset or s_resetaContadores, s_ciclando, "0000"&s_tempoUsado(11 downto 0), s_ciclou);
	
	Registrador: reg16bits_en port map(clock, reset or s_resetaContadores, s_registra, s_tempoAtraso, s_tempoUsado);
	
	geraSeed: Four_Digit_BCD_Counter port map(clock, reset_L, '1', s_Q1, s_Q2, s_Q3, s_Q4);
	
	
	
--contando <= s_conta;	
--inicio <= s_inicio;
--registra <= s_registra;
--reseta <= s_resetaContadores;
depConta<= s_conta;
depTT1<=TT1;
depTT2<=TT2;
depT<=T4&T3&T2&T1;
tempoCicladobit <= s_tempoCiclado1;
tempoCicladoBCD <= s_tempoCiclado2;
tempoContadorAtraso<=s_X4&s_X3&s_X2&s_X1;
tempoAtraso <= s_tempoAtraso;
--ciclou <= s_ciclou;
--ciclando <= s_ciclando;
tempoUsado <= s_tempoUsado;
--convertendo<= s_convertendo;
--converteu <= s_converteu;

end arch;