*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${BROWSER}              chrome
${URL}                  http://robotizandotestes.blogspot.com/
${CABECALHO}            Header1
${BOTAO_LUPA}           //button[@aria-label="Pesquisa"]
${CAMPO_PESQUISAR}      //input[@name="q"]
${BOTAO_PESQUISAR}      //input[@value="Pesquisa"]
${LINK_POST}            //*[@id="Blog1"]/div/b/i/article/div/div/h3/a
${TITULO_POST}          //*[@id='Blog1']/div/article/div/div/h3

*** Keywords ***
Acessar blog robotizando
    Open Browser   ${URL}   ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible   ${CABECALHO}
    Title Should Be   Robotizando Testes

Pesquisar a postagem "${PESQUISA}"
    Click Element   ${BOTAO_LUPA}
    Input Text   ${CAMPO_PESQUISAR}   ${PESQUISA}
    Click Element   ${BOTAO_PESQUISAR}
    Wait Until Element Is Visible  ${LINK_POST}

Verifica Resultado da pesquisa
    [Arguments]    ${TITULO_POST}
    Page Should Contain    ${TITULO_POST}

Clicar no post encontrado
    Click Element   ${LINK_POST}

Valida postagem
    [Arguments]    ${TITULO_POST_DESC}
    Wait Until Element Is Visible   ${TITULO_POST}
    Title Should Be   ${TITULO_POST_DESC}
    Capture Page Screenshot

Fechar Navegador
    Close Browser