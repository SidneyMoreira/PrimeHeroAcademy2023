*** Settings ***
Resource    ../main.resource

*** Test Cases ***
Teste com variaveis globais
    variavel simples 4

*** Keywords ***
variavel simples 4
    Log To Console    \n${soma}
    Log To Console    ${lista}[1]

