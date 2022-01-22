*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot
Suite Setup    open my browser
Suite Teardown    close my browser
Task Template    invalid login



*** Test Cases ***              Username                            Password
right user empty password       admin@yourstore.com                 ${EMPTY}
right user wrong password       admin@yourstore.com                 amin
wrong user empty password       dmin@yourstore.com                  admin
wrong user wrong password       admin@yourstore.co                  admin
wrong user right password       admin@yourstore.om                  admin






*** Keywords ***

invalid login
    [Arguments]    ${username}      ${password}
    username       ${username}
    password       ${password}
    click login
    error msg should be visible




