library IEEE;
use IEEE.std_logic_1164.all;

entity dadosMedidas is
	port(	clock, clear: in std_logic;
			estadoRodada: in std_logic_vector(3 downto 0);
			pulsoRodada: in std_logic_vector(15 downto 0);
			medida, depuraReg1, depuraReg2, depuraReg3, depuraReg4:out std_logic_vector(15 downto 0);
			depuraMedida: out std_logic_vector(27 downto 0);
			depuraSaida3: out std_logic_vector(31 downto 0);
			depuraEn1, depuraEn2, depuraEn3, depuraEn4: out std_logic);
end dadosMedidas;

architecture fluxoDados of dadosMedidas is


component reg16bits_en is -- Define a entidade que representa o registrador
    port (CLOCK, CLR, ENABLE: in STD_LOGIC; -- Define as portas de entrada como STD_LOGIC
          D: in STD_LOGIC_VECTOR (15 downto 0); -- Define o barramento de entrada como um STD_LOGIC_VECTOR de 4 bits
          Q: out STD_LOGIC_VECTOR (15 downto 0)); -- Define o barramento de saída como STD_ULOGIC_VECTOR de 4 bits.
end component; 

component deMux_4 is
	port (SEL : in std_logic_vector(3 downto 0);
			E: in std_logic_vector(15 downto 0);
			S1, S2, S3, S4: out std_logic_vector(15 downto 0));

end component;

component somadorBCD32_bits is
	
	port (A, B : in std_logic_vector(31 downto 0); -- Barramentos de entrada de 4 bits
		vem_um  : in std_logic; -- Carry de entrada
		vai_um : out std_logic; -- Carry de saida
		S    : out std_logic_vector(31 downto 0);
		s_cout1: out std_logic;
		s_soma1: out std_logic_vector(31 downto 0));
		
end component;

component BCDTo32Bit is
    Port ( bcd_in_0 : in  STD_LOGIC_VECTOR (3 downto 0);
           bcd_in_10 : in  STD_LOGIC_VECTOR (3 downto 0);
           bcd_in_100 : in  STD_LOGIC_VECTOR (3 downto 0);
           bcd_in_1000 : in  STD_LOGIC_VECTOR (3 downto 0);
           bcd_in_10000 : in  STD_LOGIC_VECTOR (3 downto 0);
           bcd_in_100000 : in  STD_LOGIC_VECTOR (3 downto 0);
           bcd_in_1000000 : in  STD_LOGIC_VECTOR (3 downto 0);
           bcd_in_10000000 : in  STD_LOGIC_VECTOR (3 downto 0);
           bin_out : out  STD_LOGIC_VECTOR (27 downto 0) := (others => '0'));
end component;

component bitToBCD is
    port(
        clk, reset: in std_logic;
        binary_in: in std_logic_vector(13 downto 0);
        bcd0, bcd1, bcd2, bcd3: out std_logic_vector(3 downto 0)
    );
end component;

component deMux_4_1bit is
	port (SEL : in std_logic_vector(3 downto 0);
			E: in std_logic;
			S1, S2, S3, S4: out std_logic);

end component;


signal s_R1, s_R2, s_R3, s_R4, extende1, extende2, extende3, extende4, sreg1, sreg2, sreg3, sreg4, s_saida: std_logic_vector(15 downto 0);
signal saida1, saida2, saida3: std_logic_vector(31 downto 0);
signal s_medida: std_logic_vector(27 downto 0);
signal en1, en2, en3, en4 : std_logic;
begin
extende1<= (others=>'0');
extende2<= (others=>'0');
extende3<= (others=>'0');
extende4<= (others=>'0');
depuraReg1 <= sreg1;
depuraReg2 <= sreg2;
depuraReg3 <= sreg3;
depuraReg4 <= sreg4;
depuraMedida <= s_medida;
depuraSaida3 <= saida3;
depuraEn1 <= en1;
depuraEn2 <= en2;
depuraEn3 <= en3;
depuraEn4 <= en4;

	DEMUX4: deMux_4 port map(estadoRodada, pulsoRodada, s_R1, s_R2, s_R3, s_R4);
	DEMUX4_1bit: deMux_4_1bit port map(estadoRodada, '1', en1, en2, en3, en4);
	REG1: reg16bits_en port map(clock, clear, en1, s_R1, sreg1);
	REG2: reg16bits_en port map(clock, clear, en2, s_R2, sreg2);
	REG3: reg16bits_en port map(clock, clear, en3, s_R3, sreg3);
	REG4: reg16bits_en port map(clock, clear, en4, s_R4, sreg4);
	SUM1: somadorBCD32_bits port map(extende1&sreg1, extende2&sreg2, '0', open, saida1, open, open);
	SUM2: somadorBCD32_bits port map(extende3&sreg3, extende4&sreg4, '0', open, saida2, open, open);
	SUM3: somadorBCD32_bits port map(saida1, saida2, '0', open, saida3, open, open);
	Converte: BCDTo32Bit port map(saida3(3 downto 0), saida3(7 downto 4),saida3(11 downto 8),saida3(15 downto 12),saida3(19 downto 16), saida3(23 downto 20), saida3(27 downto 24), saida3(31 downto 28), s_medida);
	s_saida <= s_medida(17 downto 2);
	ConverteBCD: bitToBCD port map(clock, clear, s_saida(13 downto 0), medida(3 downto 0), medida(7 downto 4), medida(11 downto 8), medida(15 downto 12));
	
end fluxoDados;