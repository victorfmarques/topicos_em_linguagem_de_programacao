*** Settings ***
Documentation    Suite description
Resource  ../Resource/Resource.robot

*** Test Cases ***
Validar acesso ao blog robotizando
    Acessar blog robotizando

Validar pesquisa de postagens
    Pesquisar a postagem "season premiere"
    Clicar no post "Season Premiere: Introdução ao Robot Framework" encontrado