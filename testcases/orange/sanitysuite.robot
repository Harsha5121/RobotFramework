*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/orange_resources.robot
Suite Setup    open my browser
Suite Teardown    close my browser
Task Template    invalid login

*** Test Cases ***

right user empty password       Admin                 ${EMPTY}
right user wrong password       Admin                 amin
wrong user empty password       dmin@                 ${EMPTY}
wrong user wrong password       admine.co             admin
wrong user right password       adyourstore.om        admin
right                           Admin                 admin123








*** Keywords ***

    invalid login
    [Arguments]    ${username}      ${password}
    username       ${username}
    password       ${password}
    click login
    error msg should be visible

