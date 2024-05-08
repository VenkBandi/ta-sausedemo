*** Settings ***
Library    SeleniumLibrary
Library    DataDriver    file=../../Data/mock_user_data.xlsx    sheet_name=Sheet1

Resource    ../../Resources/login_test.robot

Suite Teardown    Close Browsers
Test Template    Valid login


*** Test Cases ***
LoginTestwithAcceptedUsernames    ${username}    ${password}    
    


*** Keywords ***
Valid login
    [Arguments]    ${username}    ${password}
    [Tags]    Acceptedusers
    Open my Browser
    Input username    ${username}
    Input pwd    ${password}
    Click login button
    Welcome page should be visible