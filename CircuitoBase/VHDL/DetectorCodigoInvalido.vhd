library ieee;
use ieee.std_logic_1164.all;

entity DetectorCodigoInvalido is
	port (D : in std_logic_vector(3 downto 0);
			O : out std_logic);
end DetectorCodigoInvalido;

architecture Detector of DetectorCodigoInvalido is
begin
	O <= D(3) and (D(2) or D(1));
end Detector;