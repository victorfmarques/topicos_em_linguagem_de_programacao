*** Settings ***
Resource  ../Functions/Hotel_Keywords.robot

*** Test Cases ***

Teste hotel
    Acessar site de viagem
    Pesquisar viagem "New York"

