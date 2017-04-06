library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

entity medidor is
    port (CLOCK, RESET, liga, sinal : in STD_LOGIC;
            Q : out STD_LOGIC_VECTOR(3 downto 0);
            RCO, pronto: out STD_LOGIC; -- pronto indica o fim da contagem, RCO indica carry out
				estado: out std_logic_vector(3 downto 0);
				Depura: out unsigned(3 downto 0)); -- sinal de depuracao para verificar os estados da maquina
end medidor;

architecture medidor of medidor is
signal R, E, ILD_L, IENP: STD_LOGIC; -- R: sinal interno para o resetc / E: sinal interno para ENT
signal IQ, ID: unsigned(3 downto 0);
component V74x163 
	port (CLK, CLR_L, LD_L, ENP, ENT: in std_logic;
			D: in unsigned(3 downto 0);
			Q: out unsigned(3 downto 0);
			RCO: out std_logic);
end component;
component controle 
	port (clock, reset, liga, sinal: in STD_LOGIC;
        resetc, enablec, pronto: out STD_LOGIC;
		  estado : out std_logic_vector(3 downto 0));
end component;
begin
	 ILD_L <= '1';
	 IENP <= '1';
	 ID <= "0000";
    C1: controle port map (CLOCK, RESET, liga, sinal, R, E, pronto, estado);
    D2: V74x163 port map (CLOCK, R, ILD_L, IENP, E, ID, IQ, RCO);
	 Q <= std_logic_vector(IQ);
	 Depura<=IQ;
end medidor;