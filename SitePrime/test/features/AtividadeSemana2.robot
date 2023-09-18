*** Settings ***
Documentation        Desafio semana 2
Library    Collections

*** Variables ***
&{DADOS}    
...    Nome=João
...    Idade=30
...    Rua=Rua das Flores
...    Numero=123
...    Bairro=Centro
...    Cidade=São Paulo
...    Estado=SP
...    CEP=12345-678

@{LISTA_MISTA}        A  1  B  2  C  3

@{FRUTAS}  
...  Banana
...  Uva
...  Maça
...  Laranja
...  Tangeria
...  Kiwii

*** Test Cases ***
Exercicio 01: Exercicio Dicionario
    Exibir os dados de um Dicionario no Console

Exercicio 02: Argumentos e Retornos + If Simples
    Exibir o retorno de If simples

Exercicio 03: For Simples + Lista
    Exiba cada uma das frutas de uma lista usando um For Simples

Exercicio 04: If Inline + For in Range
    Um loop que conte quantos números par existem entre 0 e 10
     
*** Keywords ***
Exibir os dados de um Dicionario no Console

    Log To Console    \n------------------------------------------------------------
    Log To Console    Nome: ${DADOS.Nome}
    Log To Console    Idade: ${DADOS.Idade}
    Log To Console    Rua: ${DADOS.Rua}
    Log To Console    Numero: ${DADOS.Numero}
    Log To Console    Bairro: ${DADOS.Bairro}
    Log To Console    Cidade: ${DADOS.Cidade}
    Log To Console    Estado: ${DADOS.Estado}
    Log To Console    CEP: ${DADOS.CEP}
    Log To Console    ------------------------------------------------------------

Exibir o retorno de If simples
    
    [Arguments]    ${idade}=
    ${idade}    Set Variable    38    
    ${ano_nascimento}    Evaluate    2023 - ${idade}
    
    #${seculo}    Set Variable If    ${ano_nascimento} < 2000    Nasceu no século passado    Nasceu neste século
    IF    ${ano_nascimento} < 2000
        ${seculo}   Set Variable    Nasceu no século passado
    ELSE
        ${seculo}   Set Variable    Nasceu neste século
    END
    Log To Console    \n------------------------------------------------------------
    Log To Console    ${ano_nascimento}-${seculo}
    Log To Console    ------------------------------------------------------------

Exiba cada uma das frutas de uma lista usando um For Simples
   
    Log To Console    \n------------------------------------------------------------
    FOR    ${FRUTA}    IN    @{FRUTAS}
        Log To Console        ${FRUTA}
    END
    Log To Console    ------------------------------------------------------------

Um loop que conte quantos números par existem entre 0 e 10
    
    ${count}=    Set Variable    0
    FOR    ${num}    IN RANGE    11
        ${num_par}=    Evaluate    ${num} % 2
       
        IF  ${num_par} == 0  log to console  \nNúmero par: ${num}
        ${count}=    Evaluate    ${count} + (1 if ${num_par} == 0 else 0)
        
    END
   
    Log To Console    \n------------------------------------------------------------
    Log To Console    Números pares entre 0 e 10: ${count}
    Log To Console    ------------------------------------------------------------
