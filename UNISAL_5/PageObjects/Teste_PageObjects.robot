*** Settings ***
Documentation    Suite description


*** Variables ***

${BROWSER}              chrome
${ITEMCARD}     //*[@id="homefeatured"]/li[1]
${ADDTOCARTBUTTON}     //*[@id="homefeatured"]/li[1]/div/div[2]/div[2]/a[1]
${PROCEEDTOCHECKOUT}    //a[@title='Proceed to checkout']
${TRASHICON}    //a[@title='Delete']
${VALUE}      //*[@id='total_price']//..//*[text()='$165.55']
${ADDBUTTON}     //*[@title='Add']
${SHOPPING}    //a[@title='Continue shopping']
${SEARCHBAR}    //*[@id="search_query_top"]
${SEARCHBTN}    //button[@name="submit_search"]
${NEWITEM}    //*[@id="center_column"]/ul/li/div/div[1]/div/a[1]
${ADDTOCARD}    //*[@id="center_column"]/ul/li/div/div[2]/div[2]/a[1]
${ADDBUTTON2}    //*[@id="cart_quantity_up_2_7_0_0"]
${NOMEITEM}    //span[@id="layer_cart_product_title"]