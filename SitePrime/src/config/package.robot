*** Settings ***
Documentation        Este é o gerenciador de dependencias da automação

Library    SeleniumLibrary

##        Keywords        ##

Resource        ../auto/keywords/kws_home.robot

##        Page Objects        ##
Resource        ../auto/pages/home_page.robot

##        Hooks        ##
Resource        hooks.robot