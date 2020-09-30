*** Settings ***
Documentation    Suite description
Resource    ../Functions/Teste_Keywords.robot


*** Test Cases ***
Test title
    [Tags]    Teste1
    GoToURL
    CriaLista
    AddToCart
    AddQty
    ContinueShopping
    Search "Blouse"
    AddNewItem
    AddQtyItem2
    CheckValue
    FecharNavegador
