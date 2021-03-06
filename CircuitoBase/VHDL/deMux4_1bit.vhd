library IEEE;
use IEEE.std_logic_1164.all;

entity deMux_4_1bit is
	port (SEL : in std_logic_vector(3 downto 0);
			E: in std_logic;
			S1, S2, S3, S4: out std_logic);

end deMux_4_1bit;


architecture behavioral of deMux_4_1bit is
begin
process(SEL)
begin
	if (SEL = "0001") then
		S1 <= E;
		S2 <= '0';
		S3 <= '0';
		S4 <= '0';
	elsif (SEL = "0010") then
		S2 <= E;
		S1 <= '0';
		S3 <= '0';
		S4 <= '0';
	elsif (SEL = "0011") then 
		S3 <= E;
		S2 <= '0';
		S1 <= '0';
		S4 <= '0';
	elsif (SEL = "0100") then 
		S4 <= E;
		S2 <= '0';
		S3 <= '0';
		S1 <= '0';
	end if;
end process;
end behavioral;