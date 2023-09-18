*** Settings ***
Documentation        Aqui estão as keywords relevantes para a automação da homepage do site 

Resource        ../../config/package.robot

*** Keywords ***
Acessar a pagina do Learning Prime 
    Go To    http://learningprime.com.br 

Clicar no segundo produto 
    Wait Until Element Is Visible    ${PRODUTO.segundo}
    Click Element    ${PRODUTO.segundo}

Tirar print
    Sleep    1s
    Capture Page Screenshot