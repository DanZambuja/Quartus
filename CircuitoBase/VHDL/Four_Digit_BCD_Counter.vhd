library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Four_Digit_BCD_Counter is
port(Clk, CLR_L, enable: in std_logic;
     Q1, Q2, Q3, Q4: inout std_logic_vector(3 downto 0):= "0000");
end entity;

architecture Four_Digit_BCD_Counter_1 of Four_Digit_BCD_Counter is
component IC_74163 is
port(LdN, ClrN, P, T, ClK: in std_logic;  
D: in std_logic_vector(3 downto 0);
Cout: out std_logic; Qout: inout std_logic_vector(3 downto 0) );
end component;
signal ClrN1, ClrN2, ClrN3, ClrN4: std_logic;
signal T2, T3, T4: std_logic;
begin
ClrN1 <= Q1(3) NAND Q1(0);
ClrN2 <= (Q2(3) NAND Q2(0)) or (not(T2));
ClrN3 <= (Q3(3) NAND Q3(0)) or (not(T3)) or (not(T2));
ClrN4 <= (Q4(3) NAND Q4(0)) or (not(T4)) or (not(T3)) or (not(T2));
T2 <= not (Q1(3) NAND Q1(0));
T3 <= not (Q2(3) NAND Q2(0));
T4 <= not (Q3(3) NAND Q3(0));
IC_1: IC_74163 port map (CLR_L,ClrN1, enable,'1',Clk,"0000",open,Q1);
IC_2: IC_74163 port map (CLR_L,ClrN2, enable,T2,Clk,"0000",open,Q2);
IC_3: IC_74163 port map (CLR_L,ClrN3, enable,T3 and T2,Clk,"0000",open,Q3);
IC_4: IC_74163 port map (CLR_L,ClrN4, enable,T4 and T3 and T2,Clk,"0000",open,Q4);
end architecture;