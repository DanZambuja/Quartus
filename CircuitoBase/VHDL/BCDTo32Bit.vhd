library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity BCDTo32Bit is
    Port ( bcd_in_0 : in  STD_LOGIC_VECTOR (3 downto 0);
           bcd_in_10 : in  STD_LOGIC_VECTOR (3 downto 0);
           bcd_in_100 : in  STD_LOGIC_VECTOR (3 downto 0);
           bcd_in_1000 : in  STD_LOGIC_VECTOR (3 downto 0);
           bcd_in_10000 : in  STD_LOGIC_VECTOR (3 downto 0);
           bcd_in_100000 : in  STD_LOGIC_VECTOR (3 downto 0);
           bcd_in_1000000 : in  STD_LOGIC_VECTOR (3 downto 0);
           bcd_in_10000000 : in  STD_LOGIC_VECTOR (3 downto 0);
           bin_out : out  STD_LOGIC_VECTOR (27 downto 0) := (others => '0'));
end BCDTo32Bit;

architecture Behavioral of BCDTo32Bit is

begin

bin_out <= (bcd_in_0) 
         + (bcd_in_10 * "1010") 
         + (bcd_in_100 * "1100100") 
         + (bcd_in_1000 * "1111101000") 
		   + (bcd_in_10000 * "0010011100010000")
		   + (bcd_in_100000 * "11000011010100000")
		   + (bcd_in_1000000 * "11110100001001000000")
		   + (bcd_in_10000000 * "100110001001011010000000");
			

end Behavioral;
