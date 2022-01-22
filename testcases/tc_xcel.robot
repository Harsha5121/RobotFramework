*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot
Suite Setup    open my browser
Suite Teardown    close my browser
Test Template    invalid login


*** Test Cases ***
LogintestwithExcel using    ${username}     ${password}

*** Keywords ***

invalid login
    [Arguments]    ${username}  ${password}
    Username       ${username}
    Password       ${password}
    click login
    error msg should be visible




