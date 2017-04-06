library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

entity comparador is 
	port (s_saida1, s_saida2 : in std_logic_vector(15 downto 0);
			s_recorde: out std_logic_vector(15 downto 0);
			s_ganhador: out std_logic_vector(3 downto 0));
	
end comparador;

architecture comparador of comparador is

signal A, B : unsigned(15 downto 0);

begin 
A <= unsigned(s_saida1);
B <= unsigned(s_saida2);
process(s_saida1, s_saida2, A, B)
begin
if ( A - B  < 0 ) then 
	s_recorde <= s_saida2;
	s_ganhador <= "0010";
else 
	s_recorde <= s_saida1;
	s_ganhador <= "0001";
end if;
end process;
end comparador;