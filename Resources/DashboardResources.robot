*** Settings ***
Documentation        All the page objects and keywords of Dashboard page
Library     SeleniumLibrary

*** Variables ***
${dashboard_title}       css:.oxd-topbar-header-breadcrumb-module

*** Keywords ***

Verify Dashboard page opens
    Element Text Should Be    ${dashboard_title}      Dashboard