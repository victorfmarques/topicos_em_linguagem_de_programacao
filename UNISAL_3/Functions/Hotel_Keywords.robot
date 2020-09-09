*** Settings ***
Library    SeleniumLibrary

Resource    ../PageObjects/Hotel_InputData.robot
Resource    ../PageObjects/Hotel_PageObjects.robot

*** Keywords ***

Acessar site de viagem
    Open Browser   ${URL}   ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    xpath:${CIDADECLIQUE}    60s

Pesquisar viagem "${CIDADE}"
    Click Element    xpath:${CIDADECLIQUE}
    Input Text   xpath:${PESQUISACIDADE}   ${CIDADE}
    Wait Until Element Is Visible    ${CLICARPESQUISA}   20s
    Click Element    ${CLICARPESQUISA}
    Click Element    ${CHECKIN}
    Input Text   ${CHECKIN}   ${DATACHECKIN}    [TAB]
    Click Element    ${CHECKOUT}
    Input Text   ${CHECKOUT}   ${DATACHECKOUT}    [TAB]
    Click Element    xpath:${ADDCHILDREN}
    Click Element    xpath:${ADDCHILDREN}
    Click Element    xpath:${SEARCH}
    Capture Page Screenshot
    Sleep      5s
    Close Browser