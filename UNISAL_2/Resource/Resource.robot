*** Settings ***
Library  SeleniumLibrary
Resource  ../BDD/TestCasesKeywordsDrivenExemplo.robot

*** Variables ***
${BROWSER}              chrome
${URL}                  http://robotizandotestes.blogspot.com/
${CABECALHO}            Header1
${BOTAO_LUPA}           //button[@aria-label="Pesquisa"]
${CAMPO_PESQUISAR}      //input[@name="q"]
${BOTAO_PESQUISAR}      //input[@value="Pesquisa"]
${LINK_POST}            //*[@id='Blog1']/div[1]/b/i/article/div/div/h3/a
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
    Wait Until Element Is Visible  xpath:${LINK_POST}

Clicar no post "${TITULO_POST_DESC}" encontrado
    Click Element   xpath:${LINK_POST}
    Wait Until Element Is Visible   xpath:${TITULO_POST}
    Title Should Be   ${TITULO_POST_DESC}
    Capture Page Screenshot

Fechar Navegar
    Close Browser