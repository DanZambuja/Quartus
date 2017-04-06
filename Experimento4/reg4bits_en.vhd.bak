library IEEE;  -- Bibilioteca principal, contem os "packets" de std_logic 1164.
use IEEE.std_logic_1164.all; -- Traz informações sobre os tipos de variaveis definidas por usuarios, que
-- sao utilizadas no programa.

entity reg4bits_en is -- Define a entidade que representa o registrador
    port (CLOCK, ENABLE, CLR: in STD_LOGIC; -- Define as portas de entrada como STD_LOGIC
          D: in STD_LOGIC_VECTOR (1 to 4); -- Define o barramento de entrada como um STD_LOGIC_VECTOR de 4 bits
          Q: out STD_ULOGIC_VECTOR (1 to 4)); -- Define o barramento de saída como STD_ULOGIC_VECTOR de 4 bits.
end reg4bits_en; -- Conclui a definicao das portas de entrada e saida do componente.

architecture reg4bits_en of reg4bits_en is -- Inicio da definicao do comportamento do registrador.
signal IQ: STD_LOGIC_VECTOR (1 to 4);
begin -- Definicao do sinal interno intermediario, ou seja, os sinais dos flip flops.
process(CLOCK, CLR, ENABLE, IQ) -- Define os sinais que serao utilizados no processo sequencial.
begin -- Inicia o processo descrito anteriormente.
    if (CLOCK'event and CLOCK='1') then -- Verifica se houve borda de subida do clock.
        if (CLR = '1') then IQ <= (others=>'0'); -- Se CLR for 1, o vetor IQ recebe 0.
        elsif (ENABLE = '1') then IQ <= D; -- Se ENABLE for 1, o vetor IQ recebe os sinais do barramento de entrada.
        end if; -- Fecha o laço condicional aberto na linha 16.
        if (CLR = '1' or ENABLE = '1') then Q <= To_StdULogicVector(IQ); -- Caso CLR ou ENABLE forem 1 na saída, Q recebe
-- O valor do barramento intermediario.
        end if; -- Fecha o laço condicional aberto na linha 19.
    end if; -- Fecha o laço condicional aberto na linha 15.
end process; -- Fecha o processo que descreve o comportamento do registrador.
end reg4bits_en; -- Fecha a arquitetura do componente.
