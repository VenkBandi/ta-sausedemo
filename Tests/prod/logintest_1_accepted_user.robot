*** Settings ***
Library    ExcelLibrary   
Library    Screenshot

Resource   ../../Resources/login_test.robot
*** Variables ***
${filepath}    /Users/venkatabandi/google_backup/test_automation/robot-test-automation-sauce-demo/Data/mock_user_data.xlsx


*** Test Cases ***
Log in test
   ${result}=     Read Excel     ${filepath}    Sheet1    2    1    2
   ${username}=    Set Variable    ${result}[0]
   ${password}=    Set Variable    ${result}[1]
   Log    ${username}
   Log    ${password}
   Open my Browser
   Input username     ${username}
   Input pwd   ${password}
   Click login button
   Sleep   2s
   Welcome page should be visible
   Take Screenshot
   Close Browser

*** Keywords ***
Read Excel
    [Arguments]     ${filepath}    ${sheetname}    ${rownum}    ${column1}    ${column2}
    Open Excel Document    ${filepath}       1
    Get Sheet    ${sheetname}
    ${username}    Read Excel Cell    ${rownum}    ${column1}
    ${password}    Read Excel Cell    ${rownum}    ${column2}
    [Return]    ${username}    ${password}
    Close Current Excel Document
