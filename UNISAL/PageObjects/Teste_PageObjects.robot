*** Settings ***
Documentation    Suite description
Resource    ../Functions/Teste_Keywords.robot
Resource    ../TestSuite/Teste_TestSuite.robot
Resource    ../Functions/Teste_InputData.robot

*** Variables ***

${BROWSER}              chrome
${ROBOTFRAMEWORKURL}    https://robotframework.org/
${LIBRARIESBUTTON}    //a[@href="#libraries"]
${BULTINBUTTON}    //a[text()='Builtin']
