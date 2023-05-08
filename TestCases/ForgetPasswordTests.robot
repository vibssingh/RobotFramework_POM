*** Settings ***
Documentation       Tests to validate Forgot Your Password Page functionality
Library     SeleniumLibrary
Test Setup      Open the Browser with URL
Test Teardown   Close Browser Session
Resource       ../Resources/GenericResources.robot
Resource       ../Resources/LoginResources.robot
Resource      ../Resources/ForgetPasswordResources.robot


*** Test Cases ***

Validate Reset Password Functionality

    [Tags]    SMOKE
    LoginResources.Go to Forgot Your Password Page
    ForgetPasswordResources.Verify Forgot Your Password Page opens
    ForgetPasswordResources.Fill the Forgot Password Page
    ForgetPasswordResources.Verify the message

Validate Cancel Functionality

    [Tags]    REGRESSION
    LoginResources.Go to Forgot Your Password Page
    ForgetPasswordResources.Verify Forgot Your Password Page opens
    ForgetPasswordResources.Cancel the Reset Password
    ForgetPasswordResources.Verify that Login Page is displayed


