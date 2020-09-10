*** Settings ***
Documentation    Suite description
Resource    ../Functions/Teste_Keywords.robot
Resource    ../TestSuite/Teste_TestSuite.robot
Resource    ../Functions/Teste_InputData.robot

*** Variables ***

${BROWSER}              chrome
${ITEMCARD}     //*[@id="homefeatured"]/li[1]
${ADDTOCARTBUTTON}     //*[@id="homefeatured"]/li[1]/div/div[2]/div[2]/a[1]
${PROCEEDTOCHECKOUT}    //a[@title='Proceed to checkout']
${TRASHICON}    //a[@title='Delete']
${VALUE}      //*[@id='total_price']//..//*[text()='$35.02']
${ADDBUTTON}     //*[@title='Add']