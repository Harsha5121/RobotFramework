#user defined keywords without aruguments
#user defined keywords with arguments
#user defined keywords with aruments & return value

*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resources.robot

*** Variables ***
${browser}  chrome
${url}      http://testautomationpractice.blogspot.com/


*** Test Cases ***
keyy
    ${pl}=  LaunchBrowser   ${url}   ${browser}
    ${pl}=  get title
    log to console    ${pl}
    sleep   1
    double click element    xpath://*[@id="HTML10"]/div[1]/button
    sleep    1
    close browser


