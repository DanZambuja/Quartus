library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

entity interface_leds_botoes is 
	port (clock, reset, iniciar, resposta: in STD_LOGIC;
			ligado, estimulo, pulso, erro, wligado, westimulo, wpulso, werro: out STD_LOGIC;
			estadoDisplay: out STD_LOGIC_VECTOR(6 downto 0));
end interface_leds_botoes;

architecture interface of interface_leds_botoes is 

component hex7seg_en is
	port (
		x3, x2, x1, x0 : in std_logic;
		enable : in std_logic;
		a,b,c,d,e,f,g : out std_logic
	);
end component;

signal atraso: UNSIGNED(3 downto 0);
signal s_ligado: STD_LOGIC;
signal s_pulso : STD_LOGIC;
signal s_estimulo : STD_LOGIC;
signal resposta_ativada, estimulo_ativado: STD_LOGIC;
signal s_erro : STD_LOGIC;
signal estado: STD_LOGIC_VECTOR(3 downto 0);
begin
process(clock, reset, iniciar)
	begin 
	if (reset = '1') then -- Estado 0, reseta todos os sinais
		ligado <= '0';
		estimulo <= '0';
		s_estimulo <= '0';
		erro <= '0';
		pulso <= '0';
		s_pulso <= '0';
		s_ligado <= '0';
		estimulo_ativado <= '0';
		resposta_ativada <= '0';
		atraso <= (others => '0');
		estado <= "0000";
	elsif (resposta = '1' and s_estimulo = '1' and s_ligado = '1') then --Resposta Realizada corretamente, Estado 3
		pulso <= '0';
		s_pulso <= '0';
		estimulo <= '0';
		s_estimulo <= '0';
		estado <= "0011";
	elsif (resposta_ativada = '1' and resposta='0') then
		ligado <= '0';
		s_ligado <= '0';
		erro <= '0';
		s_erro <= '0';
	elsif (resposta = '1' and estimulo_ativado = '0' and s_ligado = '1') then   -- Punicao caso reaja antes do estimulo, Estado 4
		erro <= '1';
		s_erro <= '1';
		estado <= "0100";
	elsif (s_erro = '1') then -- Caso erro seja ativado desliga o resto, fim de tentativa
			ligado <= '0';
			s_ligado <= '0';
			estimulo <= '0';
			s_estimulo <= '0';
			pulso <= '0';
			s_pulso <= '0';
	else
	if (clock'event and clock = '1') then
		if (iniciar = '1') then -- Liga a interface, Estado 1
			ligado <= '1';
			s_ligado <= '1';
			estado <= "0001";
		end if;
		if (s_ligado <= '1') then -- Comeca a realizar a contagem do atraso
			atraso <= atraso + 1;
		end if;
		if (resposta = '1' and s_ligado = '1') then  --Sinaliza se houve tentativa de resposta ao estimulo
			resposta_ativada <= '1';
		end if;
		if (atraso = 10 and s_ligado = '1') then --Quando se atingir 10 clocks de atraso, iniciar estimulo, Estado 2
			estimulo <= '1';
			s_estimulo <= '1';
			estimulo_ativado <= '1';
			pulso <= '1';
			s_pulso <= '1';
			estado <= "0010";
		end if;
	end if;
	end if;
end process;

D1: hex7seg_en port map(estado(3), estado(2), estado(1), estado(0), '1', estadoDisplay(6), estadoDisplay(5), estadoDisplay(4), estadoDisplay(3), estadoDisplay(2), estadoDisplay(1), estadoDisplay(0));

werro <= s_erro;
westimulo <= s_estimulo;
wligado <= s_ligado;
wpulso <= s_pulso;

end interface;