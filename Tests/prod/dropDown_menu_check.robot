*** Settings ***
Library    SeleniumLibrary
Library    ../../Resources/python_common_modules.py
Library    Collections


Resource    ../../Resources/dropDown_common_resources.robot

Suite Teardown    Close Browsers


*** Variables ***
${file}    nameprice.csv


*** Test Cases ***
Interact with drop down menu on logedin page Z TO A
    Set login page ready
    Wait for page to appear
    Sort products from Z to A
    Get price and name details to nameprice.csv file
    Match item nameprice.csv file with expected data    2
Interact with drop down menu on logedin page A TO Z
    Set login page ready
    Wait for page to appear
    Sort products from A to Z
    Get price and name details to nameprice.csv file
    Match item nameprice.csv file with expected data    1
Interact with drop down menu on logedin page high price to low price
    Set login page ready
    Wait for page to appear
    Sort products from high price to low price
    Get price and name details to nameprice.csv file
    Match item nameprice.csv file with expected data    4
Interact with drop down menu on logedin page low price to high price
    Set login page ready
    Wait for page to appear
    Sort products from low price to high price
    Get price and name details to nameprice.csv file
    Match item nameprice.csv file with expected data    2
*** Keywords ***
Match item nameprice.csv file with expected data
    [Arguments]    ${num}
    [Documentation]    Enter 1:A2Z 2:Z2A 3:LowPrice2HighPrice 4:HighPrice2LowPrice
    ${truth_value}=    MatchData    ${num}    
    Log    ${truth_value}
    ${messege}=    GetMessage    ${truth_value}
    Log    ${messege}
    Remove File    ${file}
    Run Keyword If    'Fail' in '''${messege}'''    Fail    The test should not indicate success




    

     

         
    


