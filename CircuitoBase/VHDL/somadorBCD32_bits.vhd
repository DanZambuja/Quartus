library IEEE;
use IEEE.std_logic_1164.all;

entity somadorBCD32_bits is
	
	port (A, B : in std_logic_vector(31 downto 0); -- Barramentos de entrada de 4 bits
		vem_um  : in std_logic; -- Carry de entrada
		vai_um : out std_logic; -- Carry de saida
		S    : out std_logic_vector(31 downto 0);
		s_cout1: out std_logic;
		s_soma1: out std_logic_vector(31 downto 0));
		
end somadorBCD32_bits;

architecture estrutural of somadorBCD32_bits is

component SomadorBCD16_bits is -- Declara a entidade do Somador BCD (seu black box, contorno)
port (A, B : in std_logic_vector(15 downto 0); -- Barramentos de entrada de 4 bits
		vem_um  : in std_logic; -- Carry de entrada
		vai_um : out std_logic; -- Carry de saida
		S    : out std_logic_vector(15 downto 0);
		s_cout1: out std_logic;
		s_soma1: out std_logic_vector(15 downto 0)); -- Barramento de saida de 4 bits, indica o resultado 
		-- Da operacao aritmetica S = A + B
end component;

signal s_vai_um_1: std_logic;
	
begin

	S1: somadorBCD16_bits port map(A(15 downto 0), B(15 downto 0), vem_um, s_vai_um_1, S(15 downto 0), open, open);
	S2: somadorBCD16_bits port map(A(31 downto 16), B(31 downto 16), s_vai_um_1, vai_um, S(31 downto 16), open, open); 

end estrutural;