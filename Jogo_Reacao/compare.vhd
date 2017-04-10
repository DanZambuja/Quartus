library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

entity compare is
	port (A, B: in std_logic_vector(3 downto 0);
			AeqB, AgtB, AltB: out std_logic);
end compare;

architecture Behavioral of compare is
signal s_A, S_B: signed(3 downto 0);
begin

s_A <= signed(A);
s_B <= signed(B);
AeqB <= '1' when A = B else '0';
AgtB <= '1' when A > B else '0';
AltB <= '1' when A < B else '0';

end Behavioral;
