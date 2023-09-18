*** Settings ***
Documentation        Este é o arquivo de config do robot

Resource        package.robot

*** Keywords ***
##    Teste Setup    ##
Abrir navegador
    Open Browser     about:blank    chrome
    Maximize Browser Window

##    Test Teardown    ##
Fechar navegador
    Close Browser