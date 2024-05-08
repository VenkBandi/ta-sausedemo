*** Settings ***
Library    ExcelLibrary   
Library    SeleniumLibrary
Library    Screenshot
Library    Collections

*** Variables ***
${URL}      https://www.saucedemo.com/
${filepath}    /Users/venkatabandi/google_backup/test_automation/robot-test-automation-sauce-demo/Data/mock_user_data.xlsx


*** Test Cases ***
Log in test
    @{result}    Read Excel    ${filepath}    Sheet1    1    1    1
    Log Many    @{result}

*** Keywords ***
Setup Browser
    Open Browser  ${URL}  Chrome
    Maximize Browser Window

Read Excel
    [Arguments]     ${filepath}    ${sheetname}    ${offset}    ${username_column}    ${password_column}
    Open Excel Document    ${filepath}       1
    Get Sheet    ${sheetname}
    @{username}    Read Excel Column    ${username_column}    ${offset}
    [Return]    @{username}   
    Close Current Excel Document
