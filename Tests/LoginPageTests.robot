*** Settings ***
Documentation       Tests to login to Login Page
Library     SeleniumLibrary
Test Setup      Open the Browser with URL
Test Teardown   Close Browser Session
Resource       ../Resources/GenericResources.robot
Resource       ../Resources/LoginResources.robot
Resource      ../Resources/DashboardResources.robot

*** Test Cases ***

Validate Unsuccessful Login using invalid credentials

    [Tags]    SMOKE
    LoginResources.Fill the login form     ${valid_username}       ${invalid_password}
    LoginResources.Verify the error message is correct


Validate Unsuccessful Login for blank username

    [Tags]    REGRESSION
     LoginResources.Fill the login form     ${blank_username}       ${valid_password}
     LoginResources.Verify the error message is displayed for username


Validate Unsuccessful Login for blank password

    [Tags]    SMOKE     REGRESSION

     LoginResources.Fill the login form     ${valid_username}       ${blank_password}
     LoginResources.Verify the error message is displayed for password


Validate successful Login

    [Tags]    UAT

    LoginResources.Fill the login form     ${valid_username}       ${valid_password}
    DashboardResources.Verify Dashboard page opens



