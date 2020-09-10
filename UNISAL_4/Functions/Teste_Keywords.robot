*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObjects/Teste_PageObjects.robot
Resource    ../TestSuite/Teste_TestSuite.robot
Resource    ../PageObjects/Teste_InputData.robot

*** Keywords ***
GoToURL
    Open Browser    ${URL}    ${BROWSER}    options=add_argument("--incognito")
    Maximize Browser Window

AddToCart
    Wait Until Page Contains Element     ${ITEMCARD}
    Mouse Over     ${ITEMCARD}
    Wait Until Page Contains Element     ${ADDTOCARTBUTTON}    timeout=20.0
    Click Link    xpath:${ADDTOCARTBUTTON}
    Wait Until Page Contains Element     ${PROCEEDTOCHECKOUT}    timeout=20.0
    Sleep     5
    Click Link    xpath:${PROCEEDTOCHECKOUT}

AddQty
    Wait Until Page Contains Element     ${ADDBUTTON}    timeout=20.0
    Click Link    xpath:${ADDBUTTON}
    Sleep    5

CheckValue
    ${CHECKFULLVALUE}=    Run Keyword And Return Status   CheckCartValue
    Run Keyword If  '${CHECKFULLVALUE}'=='True'    Run Keywords
    ...    Capture Page Screenshot
    ...    AND   Log To Console     Saldo Suficiente!
    ...    ELSE    Run Keywords     Capture Page Screenshot    AND   Log To Console     Saldo Insuficiente!

CheckCartValue
    Wait Until Page Contains Element    ${TRASHICON}    timeout=20.0
    Page Should Contain Element      ${VALUE}

FecharNavegador
    Sleep    5
    CloseBrowser