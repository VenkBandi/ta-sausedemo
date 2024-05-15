*** Settings ***
Library     SeleniumLibrary
Library    Screenshot

Resource    logintest_common_resources.robot


*** Variables ***
${menu}      react-burger-menu-btn
${logout}      logout_sidebar_link
${resetshoppingcart}      reset_sidebar_link
${inventory}      inventory_sidebar_link
${shopingcarticon}    shopping_cart_container    


*** Test Cases ***

    



*** Keywords ***
Open loged in Window
    Open my Browser
    Input username    standard_user
    Input pwd    secret_sauce 
    Click login button  
Click options button on right
    Click Button   id=${menu}
    Sleep    2s
    
Reset shopping cart
    Sleep    2s
    Reload Page
    Click options button on right
    Wait Until Element Is Visible    id=${resetshoppingcart}
    Click Element   id=${resetshoppingcart}
    Reload Page
Go to products page
    Click Element    id=${inventory}

Click shopping cart icon
    Click Element    id=${shopingcarticon}


  