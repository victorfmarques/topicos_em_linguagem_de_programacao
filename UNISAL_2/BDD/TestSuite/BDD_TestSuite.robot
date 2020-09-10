*** Settings ***

Resource  ../Resource/ResourceBDD.robot
Resource  ../KeywordsBDD/BDDpt-br.robot
Suite Teardown    Fechar Navegador

*** Test Cases ***

Cenário 01: Pesquisar postagem Season Premiere
    Dado que esteja na tela HOME do blog
    Quando pesquisar pela palavra "season premiere"
    Então a postagem "Season Premiere: Introdução ao Robot Framework" deve ser listada no resultado

Cenário 02: Ler postagem Season Premiere
    Dado que esteja na tela de resultado da pesquisa pela postagem "Season Premiere: Introdução ao Robot Framework"
    Quando clicar no link da postagem
    Então a tela da postagem "Season Premiere: Introdução ao Robot Framework" deve ser mostrada



*** Keywords ***

Que esteja na tela HOME do blog
    Acessar blog robotizando

Pesquisar pela palavra "${PESQUISA}"
    Pesquisar a postagem "${PESQUISA}"

A postagem "${TITULO_POST_DESC}" deve ser listada no resultado
    Verifica Resultado da pesquisa    ${TITULO_POST_DESC}

Que esteja na tela de resultado da pesquisa pela postagem "${TITULO_POST_DESC}"
    Verifica Resultado da pesquisa    ${TITULO_POST_DESC}

Clicar no link da postagem
    Clicar no post encontrado

A tela da postagem "${TITULO_POST_DESC}" deve ser mostrada
    Valida postagem    ${TITULO_POST_DESC}