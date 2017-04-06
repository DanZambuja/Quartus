library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

entity medidor is
    port (CLOCK, RESET, liga, sinal : in STD_LOGIC;
            Q : out STD_LOGIC_VECTOR(7 downto 0);
            RCO, pronto: out STD_LOGIC -- pronto indica o fim da contagem, RCO indica carry out
				);
end medidor;

architecture medidor of medidor is
signal R, E, ILD_L, IENP, IRCO: STD_LOGIC; -- R: sinal interno para o resetc / E: sinal interno para ENT
signal IQ1, IQ2, ID1, ID2: unsigned(3 downto 0);
component ContadorBCD is
	port (CLK, CLR_L, LD_L, ENP, ENT: in std_logic;
			D: in unsigned(3 downto 0);
			Q: out unsigned(3 downto 0);
			RCO: out std_logic);
end component;
component controle is
	port (clock, reset, liga, sinal: in STD_LOGIC;
        resetc, enablec, pronto: out STD_LOGIC);
end component;
begin
	 ILD_L <= '1';
	 IENP <= '1';
	 ID1 <= "0000";
	 ID2 <= "0000";
    C1: controle port map (CLOCK, RESET, liga, sinal, R, E, pronto);
    D1: ContadorBCD port map (CLOCK, R, ILD_L, IENP, E, ID1, IQ1, IRCO);
	 D2: ContadorBCD port map (CLOCK, R, ILD_L, IRCO, E, ID2, IQ2, RCO);
	 Q <= std_logic_vector(IQ2&IQ1);
end medidor;