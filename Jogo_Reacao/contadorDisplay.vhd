library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity contadorDisplay is
	port (contaDisplay, liga: in std_logic;
			selecionaDisplay : out std_logic_vector(1 downto 0));
end contadorDisplay;

architecture contador of contadorDisplay is
signal I : std_logic_vector(1 downto 0);
begin
process (contaDisplay, I)
begin
if (liga = '1') then
	if (contaDisplay'event and contaDisplay = '1') then
		if ( I = "00"  ) then I <= "01";
		elsif (I = "01") then I <= "10";
		elsif (I = "10") then I <= "00";
		else I <= "00";
		end if;
	end if;
else 
	I <= "00";
end if;
end process;
selecionaDisplay <= I;
end contador;