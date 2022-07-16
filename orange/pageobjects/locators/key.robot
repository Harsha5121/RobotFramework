*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
tc01

    ${myinfolink}       /index.php/pim/viewMyDetails
    ${myinfolink} should be equal as strings    /index.php/pim/viewMyDetails