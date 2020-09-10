*** Settings ***
Resource  ../Functions/Hotel_Keywords.robot

*** Test Cases ***

Teste hotel
    Acessar site de viagem
    Pesquisar viagem "New York"



Verifica Saldo
    ${VERIFICAVALORTOTAL}=    Run Keyword And Return Status   Verifica Valor Total da Compra
    Run Keyword If  '${VERIFICAVALORTOTAL}'=='True'    Run Keywords
    ...    Capture Page Screenshot
    ...    AND   Log To Console     Saldo Suficiente!
    ...    ELSE    Run Keywords     Capture Page Screenshot    AND   Log To Console     Saldo Insuficiente!
Verifica Valor Total da Compra
    Wait Until Page Contains Element    ${LIXEIRACOMPRA}    timeout=60.0
    Page Should Contain Element      ${VALORTOTALCOMPRA}