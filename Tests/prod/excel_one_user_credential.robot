*** Settings ***
Library    ExcelLibrary   
Library    SeleniumLibrary
Library    Screenshot

*** Variables ***
${URL}      https://www.saucedemo.com/
${filepath}    /Users/venkatabandi/google_backup/test_automation/robot-test-automation-sauce-demo/Data/mock_user_data.xlsx


*** Test Cases ***
Log in test
   ${result}=     Read Excel     ${filepath}    Sheet1    2    1    2
   ${username}=    Set Variable    ${result}[0]
   ${password}=    Set Variable    ${result}[1]
   Log    ${username}
   Log    ${password}
   Setup Browser
   Input Text    id=user-name   ${username}
   Input Text    id=password   ${password}
   Click Button    id=login-button
   Sleep    2s
   Take Screenshot
   Close Browser

*** Keywords ***
Setup Browser
    Open Browser  ${URL}  Chrome
    Maximize Browser Window

Read Excel
    [Arguments]     ${filepath}    ${sheetname}    ${rownum}    ${column1}    ${column2}
    Open Excel Document    ${filepath}       1
    Get Sheet    ${sheetname}
    ${username}    Read Excel Cell    ${rownum}    ${column1}
    ${password}    Read Excel Cell    ${rownum}    ${column2}
    [Return]    ${username}    ${password}
    Close Current Excel Document
