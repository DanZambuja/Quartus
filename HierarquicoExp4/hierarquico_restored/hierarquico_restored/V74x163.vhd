library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

entity V74x163 is
	port (CLK, CLR_L, LD_L, ENP, ENT: in std_logic;
			D: in unsigned(3 downto 0);
			Q: out unsigned(3 downto 0);
			RCO: out std_logic);
end V74x163;

architecture V74x163_arch of V74x163 is 
signal IQ: unsigned(3 downto 0);
begin
process(CLK, ENT, IQ)
	begin 
		if (CLK'event and CLK='1') then
			if CLR_L = '0' then IQ <= (others => '0');
			elsif LD_L = '0' then IQ <= D;
			elsif (ENT and ENP) = '1' then IQ <= IQ + 1;
			end if;
		end if;
		if ((IQ = 15) and (ENT='1')) then RCO <= '1';
		else RCO <= '0';
		end if;
		Q <= IQ;
end process;
end V74x163_arch;
		