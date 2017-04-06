library IEEE;
use IEEE.std_logic_1164.all;

entity ComponenteAssociado is
    port ( liga, sinal, RESET, CLOCK : in STD_LOGIC;
            RCO : out STD_LOGIC;
            Q : out STD_LOGIC_VECTOR(1 to 4));
end ComponenteAssociado;

architecture ComponenteAssociado of ComponenteAssociado is
signal Resetc, Enablec, LD_L, ENP: STD_LOGIC;
component V74x163 port ( CLK, CLR_L, LD_L, ENP, ENT: in STD_LOGIC; RCO : out STD_LOGIC; Q : out STD_LOGIC_VECTOR ); end component;
component umFSM port ( CLOCK, RESET, liga, sinal: in STD_LOGIC; enablec, resetc: out STD_LOGIC ); end component;.
begin
    U1: umFSM port map (CLOCK, RESET, liga, sinal, Enablec, Resetc);
    U2: V74x163 port map (CLOCK, Resetc, LD_L, ENP, Enablec, RCO, Q);
end ComponenteAssociado;