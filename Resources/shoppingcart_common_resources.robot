*** Settings ***
Library     SeleniumLibrary

Resource    logintest_common_resources.robot


*** Variables ***



*** Keywords ***
Open loged in Window
    Open my Browser
    Input username    standard_user
    Input pwd     secret_sause
