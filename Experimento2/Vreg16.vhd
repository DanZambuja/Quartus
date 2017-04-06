library IEEE; -- Bibilioteca principal, contem os "packets" de std_logic 1164.
use IEEE.std_logic_1164.all; -- Traz informações sobre os tipos de variaveis definidas por usuarios, que
-- sao utilizadas no programa ( linha 16 por exemplo, em que CLK é definida como STD_LOGIC ).

entity Vreg16 is -- Definição da entidade do registrador, seu black box.
    port (CLK, CLKEN, OE_L, CLR_L: in STD_LOGIC; -- Define as portas de entrada como STD_LOGIC.
          D: in STD_LOGIC_VECTOR (1 to 16); -- Define o barramento de entrada como STD_LOGIC_VECTOR de 16 bits
          Q: out STD_ULOGIC_VECTOR (1 to 16)); -- Define o barramento de saida como STD_LOGIC_VECTOR de 16 bits
end Vreg16; -- Conclui a definicao das entradas e saidas do registrador e seus tipos.

architecture Vreg16 of Vreg16 is -- Inicia a definicao do comportamento apresentado pela entidade acima definida.
signal CLR, OE: STD_LOGIC; -- Define sinais intermediarios que irao auxiliar na definicao do comportamento do componente.
signal IQ: STD_LOGIC_VECTOR (1 to 16); -- Define o barramento intermediario que ira guardar os valores a serem transferidos dos barramentos
-- de entrada para os de saida.
begin
process(CLK, CLR_L, CLR, OE_L, OE, IQ) -- Define o inicio do processo sequencial que definira o comportamento do componente,
-- e que utilizara os sinais entre parenteses em sua operacao
begin -- Inicia o processo sequencial
    CLR <= not CLR_L; -- Define um sinal interno de CLR (clear) ativo alto.
    OE <= not OE_L; -- Define um sinal interno de OE (output enable) ativo alto.
    if (CLR = '1') then IQ <= (others => '0'); -- Define um laco condicional ativado no sinal de CLR que zera o barramento IQ.
    elsif (CLK'event and CLK='1') then -- Caso CLR nao seja ativado, esta linha busca avaliar se ocorre uma borda de subida do clock para
-- realizar a operacao em seu laco.
        if (CLKEN = '1') then IQ <= D; -- Define a operacao de que se o sinal CLKEN esta em nivel alto, entao o barramento IQ recebe
-- os dados do barramento D.
        end if; -- Fecha o laco condicional aberto na linha 23.
    end if; -- Fecha o laco condicional aberto na linha 20, e indica que ocorreu um ciclo do clock.
    if OE = '1' then Q <= To_StdULogicVector(IQ); -- Converte o resultado em IQ para std_ulogic_vector e carrega a saida Q com esse valor,
-- caso OE esteja ativado em nivel logico alto.
    else Q <= (others => 'Z'); -- Caso contrario a saida Q é carregada como modo Z, de alta impedancia.
    end if; -- Fecha o laco condicional da linha 27.
end process; -- Finaliza o processo sequencial aberto na linha 17.
end Vreg16; -- Fecha a arquitetura definida para a entidade Vreg16.
