***Settings***
Documentation       Gerando uma nova chave 
Library             SeleniumLibrary 
Library             teste_1/autenticar.robot 

***Variables***
${login}                joaopedrormello@gmail.com
${senha}                bsikkw89
${nome_chave}           Chave do Joao 
${descricao_chave}      Chave para processo seletivo da Prime Robot 
${ip_joao}              189.110.40.145

****Test Cases***
Login 
    [Arguments]     ${login}    ${senha}
    Open Browser        https://developer.clashroyale.com/#/login       chrome 
    Title Should Be     Clash Royale API
    Sleep               7s
    Input Text          css:input[id=email]             ${login}
    Input Text          css:input[id=password]          ${senha} 
    Click Element       xpath://*[@id="content"]/div/div[2]/div/div/div/div/div/div/form/div[4]/button
 

Gerar Nova Chave 

    Sleep               7s
    Click Element       xpath://*[@id="content"]/div/div[2]/div/header/div/div/div[3]/div/div/button
    Sleep               3s
    Click Element       xpath://*[@id="content"]/div/div[2]/div/header/div/div/div[3]/div/div/ul/li[1]/a
    Sleep               3s
    Click Element       xpath://*[@id="content"]/div/div[2]/div/div/section[2]/div/div/div[2]/p/a

    Input Text          css:input[id=name]                  ${nome_chave}
    Input Text          xpath://*[@id="description"]       ${descricao_chave}
    Input Text          css:input[id=range-0]               ${ip_joao}

    Click Element                           xpath://*[@id="content"]/div/div[2]/div/div/section/div/div/div[2]/form/div[5]/button
    
    # Element Attribute Value Should Be       Value:Key created successfully.

    Close Browser 