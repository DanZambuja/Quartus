library ieee;
    use ieee.std_logic_1164.all;

entity LFSR is
  port (
    cout   :out std_logic_vector (15 downto 0);-- Output of the counter
    enable :in  std_logic;
    clk    :in  std_logic;                    -- Input rlock
    reset  :in  std_logic;                    -- Input reset
	 seed	  :in  std_logic_vector (15 downto 0));
end LFSR;

architecture rtl of LFSR is
    signal count           :std_logic_vector (15 downto 0);
    signal linear_feedback :std_logic;
	 signal conta, podeContar : std_logic;

begin
    linear_feedback <= not(count(15) xor count(11));

    process (clk, reset) begin
        if (reset = '1') then
            count <= seed;
				conta <= '0';
        elsif (clk'event and clk = '1') then
            if (enable = '1') then
                count <= (count(14) & count(13) & count(12) & count(11)
                          & count(10) & count(9) & count(8) & count(7)
								  & count (6) & count(5) & count(4) & count(3)
								  & count (2) & count(1) & count(0) & linear_feedback);
            end if;
        end if;
	end process;
	cout <= count;
end architecture;
