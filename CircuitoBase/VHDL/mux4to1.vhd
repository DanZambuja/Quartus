library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity mux4to1 is 
	port (SEL : in std_logic_vector(3 downto 0);
	      A, B, C, D: in std_logic_vector(15 downto 0);
	      X : out std_logic_vector(15 downto 0));
end mux4to1;


architecture behavioral of mux4to1 is 
begin
process(SEL, A, B, C, D)
begin
if( SEL = "00") then
	X<=A;
elsif(SEL = "01") then 
	X<=B;
elsif(SEL = "10") then
	X<=C:
else
	X<=D;

end behavioral;
