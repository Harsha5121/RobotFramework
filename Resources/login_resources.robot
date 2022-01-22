*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F
${browser}      chrome


*** Keywords ***
open my browser
    open browser    ${url}      ${browser}
    maximize browser window




close my browser
    close all browsers

open login page
    go to    ${url}

Username
    [Arguments]   ${username}
    input text    id:Email      ${username}

Password
    [Arguments]    ${password}
    input text    id:Password      ${password}

click login
    click button    xpath://button[contains(text(),'Log in')]

logout
    click link    Logout

error msg should be visible
    page should contain    Login was unsuccessful. Please correct the errors and try again.

dashboard
    page should contain    Dashboard
