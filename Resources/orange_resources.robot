*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}      https://opensource-demo.orangehrmlive.com/
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
    input text    id:txtUsername      ${username}

Password
    [Arguments]    ${password}
    input text    id:txtPassword     ${password}

click login
    click button    xpath://input[@id='btnLogin']

logout
    click link    Logout

error msg should be visible
    page should contain    Invalid credentials

OrangeHRM
    page should contain    OrangeHRM
