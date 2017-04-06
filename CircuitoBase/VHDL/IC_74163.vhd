library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity IC_74163 is
port(LdN, ClrN, P, T, ClK: in std_logic:='0';  
D: in std_logic_vector(3 downto 0):="0000";
Cout: out std_logic; Qout: inout std_logic_vector(3 downto 0):="0000");
end entity;

architecture IC_74163_1 of IC_74163 is
begin
Cout <= Qout(3) and Qout(2) and Qout(1) and Qout(0) and T;
process (CLK)
begin
if CLK'event and CLK = '1' then     -- change state on rising edge
if ClrN = '0' then  Qout <= "0000";
elsif LdN = '0' then Qout <= D;
elsif (P and T) = '1' then Qout <= Qout+1;
   end if;
   end if;
end process;
end architecture;