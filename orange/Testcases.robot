*** Settings ***
Library    SeleniumLibrary
Resource    ../orange/pageobjects/actions/key.robot
Suite Setup    open my browser
Suite Setup     close all browsers

*** Test Cases ***
tc01

    ${myinfolink}       /index.php/pim/viewMyDetails
    ${myinfolink} should be equal as strings    /index.php/pim/viewMyDetails

