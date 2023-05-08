*** Settings ***
Documentation       All the page objects and keywords of Forget Password page
Library     SeleniumLibrary

*** Variables ***
${forgot_page_title}       css:.orangehrm-forgot-password-title
${username}     css:.oxd-input--active
${reset_btn}     css:.orangehrm-forgot-password-button--reset
${cancel_btn}    css:.orangehrm-forgot-password-button--cancel
${reset_message}      xpath://div[@class='orangehrm-card-container']/h6
${login_page_title}   xpath://*[@class='orangehrm-login-slot']/h5

*** Keywords ***

Verify Forgot Your Password Page opens
    Element Text Should Be    ${forgot_page_title}      Reset Password

Fill the Forgot Password Page
   Input Text        ${username}     abc@gmail.com
   Click Button    ${reset_btn}

Verify the message
    Element Text Should Be    ${reset_message}      Reset Password link sent successfully

Cancel the Reset Password
    Click Button    ${cancel_btn}

Verify that Login Page is displayed
    Element Text Should Be    ${login_page_title}       Login