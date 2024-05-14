*** Settings ***
Library    SeleniumLibrary
Library    ../../Resources/python_common_modules.py


Resource    ../../Resources/dropDown_common_resources.robot




*** Test Cases ***
Interact with drop down menu on logedin page
    Set login page ready
    Wait for page to appear
    Sort products from high price to low price
    Get price and name details to nameprice.csv file
    Match item nameprice.csv file with expected data
     

*** Keywords ***
Match item nameprice.csv file with expected data
...    [Arguments]    $[name]   $[price]
...    
...    

         
    


