library IEEE;
use IEEE.std_logic_1164.all;

entity somadorBCD16_bits is
	
	port (A, B : in std_logic_vector(15 downto 0); -- Barramentos de entrada de 4 bits
		vem_um  : in std_logic; -- Carry de entrada
		vai_um : out std_logic; -- Carry de saida
		S    : out std_logic_vector(15 downto 0);
		s_cout1: out std_logic;
		s_soma1: out std_logic_vector(15 downto 0));
		
end somadorBCD16_bits;


architecture estrutural of somadorBCD16_bits is

component SomadorBCD is -- Declara a entidade do Somador BCD (seu black box, contorno)
port (A, B : in std_logic_vector(3 downto 0); -- Barramentos de entrada de 4 bits
		vem_um  : in std_logic; -- Carry de entrada
		vai_um : out std_logic; -- Carry de saida
		S    : out std_logic_vector(3 downto 0);
		s_cout1: out std_logic;
		s_soma1: out std_logic_vector(3 downto 0)); -- Barramento de saida de 4 bits, indica o resultado 
		-- Da operacao aritmetica S = A + B
end component;

signal s_vai_um_1, s_vai_um_2, s_vai_um_3: std_logic;
	
begin

	S1: somadorBCD port map(A(3 downto 0), B(3 downto 0), vem_um, s_vai_um_1, S(3 downto 0), open, open);
	S2: somadorBCD port map(A(7 downto 4), B(7 downto 4), s_vai_um_1, s_vai_um_2, S(7 downto 4), open, open); 
	S3: somadorBCD port map(A(11 downto 8), B(11 downto 8), s_vai_um_2, s_vai_um_3,S(11 downto 8), open, open);
	S4: somadorBCD port map(A(15 downto 12), B(15 downto 12), s_vai_um_3, vai_um,S(15 downto 12), open, open);

end estrutural;