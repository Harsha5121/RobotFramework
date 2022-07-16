*** Settings ***
Library    SeleniumLibrary
Resource    ../orange/pageobjects/actions/key.robot

*** Test Cases ***
TC1
    Username    Admin
    Password    admin123
    click login
    OrangeHRM
    close all browsers

TC2
    open my browser
    Username    Admin
    Password    admin12
    click login
    error msg should be visible
    close all browsers

TC3
    open my browser
    Username    Admi
    Password    admin123
    click login
    error msg should be visible
    close all browsers
TC4
    open my browser
    Username    Adm
    Password    admin3
    click login
    error msg should be visible
    close all browsers

TC5
    open login page
    click link   ${myinfolink}
    sleep    1
    page should contain    Personal Details
    close browser
