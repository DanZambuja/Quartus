library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

entity V74x162 is
	port (CLK, CLR_L, LD_L, ENP, ENT: in STD_LOGIC;
			D: in STD_LOGIC_VECTOR(3 downto 0);
			Q: out STD_LOGIC_VECTOR(3 downto 0);
			RCO: out STD_LOGIC);
end V74x162;

architecture V74x162_arch of V74x162 is -- Declara o inicio da descricao do comportamento da entidade
signal IQ: unsigned(3 downto 0); -- Sinal interno 
begin
process(CLK, ENT, IQ) -- Declara sinais de interesse ao processo
	begin 
		if (CLK'event and CLK='1') then -- Verifica se ocorreu uma borda de subida
			if CLR_L = '0' then IQ <= (others => '0'); -- Caso clear ativo baixo, zera a saida
			elsif LD_L = '0' then IQ <= UNSIGNED(D); -- Caso LD_L ativo baixo, carrega o valor do barramento
			--elsif (IQ >= 9) then IQ <= (others => '0'); -- Caso a contagem atinja o valor 9, ou seja carregado um superior, volta para o 0
			elsif (ENT and ENP) = '1' then 
			   if (IQ = 9) then IQ <= (others => '0');
				else IQ <= IQ + 1; -- Caso ambos enables estejam ativos, realize a contagem
				end if;
			end if;
		end if;
		if ((IQ = 9) and (ENT='1')) then RCO <= '1'; -- Ativa o sinal de carry out, ao atingir o valor 9, ou caso seja carregado um valor superior
		else RCO <= '0'; -- Caso nao esteja no valor maximo, desativa o carry
		end if;
		Q <= STD_LOGIC_VECTOR(IQ);
end process;
end V74x162_arch;