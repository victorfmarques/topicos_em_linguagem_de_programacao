*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObjects/Teste_PageObjects.robot
Resource    ../PageObjects/Teste_InputData.robot

*** Keywords ***
GoToURL
    Open Browser    ${URL}    ${BROWSER}    options=add_argument("--incognito")
    Maximize Browser Window

CriaLista
    @{LISTACOMPRA}    Create List
    Set Global Variable    ${LISTACOMPRA}

AddToCart
    Wait Until Page Contains Element     ${ITEMCARD}
    Mouse Over     ${ITEMCARD}
    Wait Until Page Contains Element     ${ADDTOCARTBUTTON}    timeout=20.0
    Click Link    xpath:${ADDTOCARTBUTTON}
    Sleep    4s
    ${NOMEITEM_VALUE1}    Get Text    ${NOMEITEM}
    Insert Into List    ${LISTACOMPRA}   0    ${NOMEITEM_VALUE1}
    Click Link    xpath:${PROCEEDTOCHECKOUT}

AddQty
    Wait Until Page Contains Element     ${ADDBUTTON}    timeout=20.0
    FOR    ${Qty}    IN RANGE    4
        Click Link    xpath:${ADDBUTTON}
    END
    Sleep    5s

ContinueShopping
    Click Link    ${SHOPPING}
    Wait Until Page Contains Element     ${ITEMCARD}

Search "${ITEM}"
    Input Text    ${SEARCHBAR}    ${ITEM}
    Click Element    ${SEARCHBTN}

AddNewItem
    Wait Until Page Contains Element    ${NEWITEM}
    Mouse Over    ${NEWITEM}
    Wait Until Page Contains Element    ${ADDTOCARD}    timeout=20.0
    Click Link    ${ADDTOCARD}
    Sleep    4s
    ${NOMEITEM_VALUE2}    Get Text    ${NOMEITEM}
    Insert Into List    ${LISTACOMPRA}   1    ${NOMEITEM_VALUE2}
    Click Link    ${PROCEEDTOCHECKOUT}

AddQtyItem2
    Wait Until Page Contains Element    ${ADDBUTTON2}
    FOR    ${Qty}    IN RANGE    2
        Click Link    ${ADDBUTTON2}
    END
    Sleep    5s

CheckValue
    ${CHECKFULLVALUE}=    Run Keyword And Return Status   CheckCartValue
    Run Keyword If  '${CHECKFULLVALUE}'=='True'    Run Keywords
    ...    Capture Page Screenshot
    ...    AND   Log To Console     Saldo Suficiente!
    ...    ELSE    Run Keywords     Capture Page Screenshot    AND   Log To Console     Saldo Insuficiente!
    Log    Item1: ${LISTACOMPRA[0]} e Item2: ${LISTACOMPRA[1]}

CheckCartValue
    Wait Until Page Contains Element    ${TRASHICON}    timeout=20.0
    Page Should Contain Element      ${VALUE}

FecharNavegador
    Sleep    5
    CloseBrowser