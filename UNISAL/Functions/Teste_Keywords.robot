*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObjects/Teste_PageObjects.robot
Resource    ../TestSuite/Teste_TestSuite.robot
Resource    ../PageObjects/Teste_InputData.robot

*** Keywords ***
GoToRobotFramework
    Open Browser    ${ROBOTFRAMEWORKURL}    ${BROWSER}    options=add_argument("--incognito")
    Maximize Browser Window
    Go To         ${ROBOTFRAMEWORKURL}

GoToLibrariesBuiltin
    Click Link    xpath:${LIBRARIESBUTTON}
#    Wait Until Page Contains Element     xpath:${BULTINBUTTON}, timeout=60.0
    Click Link    ${BULTINBUTTON}
    Select Window    NEW
    Capture Page Screenshot
    Sleep      5s
    Close Browser