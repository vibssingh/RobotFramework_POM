*** Settings ***
Documentation    A resource file with reusable keywords and variables.
Library     SeleniumLibrary

*** Variables ***
${valid_username}     Admin
${valid_password}       admin123
${invalid_username}     1234
${invalid_password}     45678
${blank_username}
${blank_password}
${url}      https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser_name}      Chrome

*** Keywords ***

Open the Browser with URL
    Open Browser   ${url}    headlesschrome
    Maximize Browser Window
    Set Selenium Implicit Wait    5

Close Browser Session
    Close Browser
