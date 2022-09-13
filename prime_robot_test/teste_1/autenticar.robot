***Settings***
Documentation           Login com uma conta existente 

Library     SeleniumLibrary


***Variables***

${login}        joaopedrormello@gmail.com
${senha}        bsikkw89
*** Test Cases ***

Login com Sucesso 
    [Arguments]     ${login}    ${senha}

    Open Browser        https://developer.clashroyale.com/#/login       chrome 

    Title Should Be     Clash Royale API

    Sleep               7s


    Input Text          css:input[id=email]             ${login}
    Input Text          css:input[id=password]          ${senha} 

    Click Element       xpath://*[@id="content"]/div/div[2]/div/div/div/div/div/div/form/div[4]/button
 