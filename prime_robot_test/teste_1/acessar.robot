*** Settings ***
Documentation          Abrir o Navegador na página 

Library     SeleniumLibrary 

*** Test Cases *** 

Deve acessar a Página da Web    

    Open Browser            https://developer.clashroyale.com/              chrome 

    Title Should Be         Clash Royale API

    Close Browser  


