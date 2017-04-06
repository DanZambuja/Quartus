library IEEE;
use IEEE.std_logic_1164.all;

entity muxDisplay is 
	
	port (s_saida1, s_saida2, s_recorde : in std_logic_vector(15 downto 0);
			selecionaDisplay: in std_logic_vector(1 downto 0);
			s_saida: out std_logic_vector(15 downto 0));
end muxDisplay;

architecture multiplex of muxDisplay is 
begin
process(selecionaDisplay) 
begin
if (selecionaDisplay = "00" ) then s_saida <= s_saida1;
elsif (selecionaDisplay = "01") then s_saida <= s_saida2;
elsif (selecionaDisplay = "10") then s_saida <= s_recorde;
else s_saida <= (others => '0');
end if;
end process;
end multiplex;