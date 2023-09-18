*** Settings ***
Documentation        Este teste para documentação

Library        Collections

Resource        ../main.resource
Resource        ../setup.resource
Resource        ../teardown.resource

*** Variables ***
${simples}=        teste com variavel local
${valor1}=         1
${valor2}=         1
@{lista}           
...    uva
...    tangeria
...    banana
...    abacaxi
&{pessoa}            
...    nome=Sidney    
...    Idade=47

*** Test Cases ***
Testar log de variaveis
    variavel simples

Testar log de variaveis 2
    variavel simples 2

Testar log de variaveis 3
    variavel simples 3

*** Keywords ***
variavel simples
    Log To Console    \n${simples}
    ${soma}    Evaluate    ${valor1}+${valor2}
    Log To Console    ${soma}
    Set Global Variable    ${soma}

variavel simples 2
    Log To Console    \n${soma}
    Log To Console    ${lista}[2]
    Log List          ${lista}
    Set Global Variable    ${lista}

variavel simples 3
    Log To Console    FIM