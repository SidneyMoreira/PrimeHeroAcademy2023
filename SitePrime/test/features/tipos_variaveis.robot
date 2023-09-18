*** Settings ***
Documentation        Demonstração de tipo de variaveis

*** Variables ***
${SIMPLES_STRING}    XXX
${SIMPLES_NUMERICA}    9999
${SIMPLES_BOOLEANA}    ${TRUE}

@{LISTA}    cliente01    cliente02    cliente03
&{DICIONARIO}    nome=cliente    email=cliente@email.com    idade=30

*** Test Cases ***
Cenario 01: Variavel Simples 
    Logar variavel Simples no Console

Cenario 02: Variavel lista
    Logar variavel Lista no Console

Cenario 03: Variavel Dicionario
    Logar variavel Dicionario no Console

*** Keywords ***
Logar variavel Simples no Console
    Log To Console    .
    Log To Console    ------------------------------------------------------------
    Log To Console    Variavel Simples
    Log To Console    Sou uma Variavel Simples, meu conteúdo é: ${SIMPLES_STRING}
    Log To Console    Sou uma Variavel Numerica, meu conteúdo é: ${SIMPLES_NUMERICA}
    Log To Console    Sou uma Variavel Booleana, meu conteúdo é: ${SIMPLES_BOOLEANA}
    Log To Console    ------------------------------------------------------------

Logar variavel Lista no Console
    Log To Console    .
    Log To Console    ------------------------------------------------------------
    Log To Console    Variavel Lista
    Log To Console    Primeiro Cliente: ${LISTA}[0]
    Log To Console    Segundo Cliente: ${LISTA}[1]
    Log To Console    Terceiro Cliente: ${LISTA}[2]
    Log To Console    ------------------------------------------------------------
Logar variavel Dicionario no Console
    Log To Console    .
    Log To Console    ------------------------------------------------------------
    Log To Console    Variavel Dicionario
    Log To Console    Nome do Cliente: ${DICIONARIO.nome}
    Log To Console    Email do Cliente: ${DICIONARIO.email}
    Log To Console    Idade do Cliente: ${DICIONARIO.idade}
    Log To Console    ------------------------------------------------------------
