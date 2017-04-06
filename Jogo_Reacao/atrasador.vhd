library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
entity atrasador is 
	port (clock, reset, jogar, atraso: in std_logic;
			tempo : in std_logic_vector(15 downto 0);
			sinalAtraso : out std_logic;
			tempo_Final : out std_logic_vector(15 downto 0)
			);
end atrasador;

architecture atraso of atrasador is 
component LFSR
	port (clock, reset : in std_logic;
			entrada: in std_logic_vector(15 downto 0);
			saida : out std_logic_vector(15 downto 0));
end component;
signal IQ :unsigned(15 downto 0);
begin 
	Random : LFSR port map (clock, reset, tempo, tempo_Final);
end atraso;