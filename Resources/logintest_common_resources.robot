*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${URL}      https://www.saucedemo.com/
${BROWSER}      Chrome


*** Keywords ***
Open my Browser
    Open Browser    ${URL}    browser=${BROWSER}
    Maximize Browser Window

Close Browsers
    Close All Browsers

Open Login Page
    Go To    ${URL}

Input username
    [Arguments]    ${username}
    Input Text    id=user-name   ${username}

Input pwd
    [Arguments]    ${password}
    Input Text    id=password   ${password}

Click login button
    Click Button    id=login-button

Welcome page should be visible
    Page Should Contain Element    xpath=//*[@id="shopping_cart_container"]


Error page should be visible
    Page Should Not Contain Element        xpath=//*[@id="shopping_cart_container"]
  