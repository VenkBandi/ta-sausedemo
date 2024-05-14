*** Settings ***
Library    SeleniumLibrary

Resource    ../../Resources/logout_common_resource.robot




*** Test Cases ***
Checking logout functionality of accepted users
    Open loged in Window
    Click Logout
    Success messege must appear



*** Keywords ***

