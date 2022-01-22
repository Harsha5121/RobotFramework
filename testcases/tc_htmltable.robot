*** Settings ***
Library    SeleniumLibrary


*** Variables ***



*** Test Cases ***

html_table
    open browser    http://testautomationpractice.blogspot.com/     chrome
    maximize browser window
    ${rows}=    get element count   xpath://*[@id="HTML1"]/div[1]/table/tbody/tr
    log to console      ${rows}

    ${cols}=    get element count    xpath://*[@id="HTML1"]/div[1]/table/tbody/tr[1]/th
    log to console      ${cols}



    ${data}=    get text    xpath://*[@id="HTML1"]/div[1]/table/tbody/tr[2]/td[2]
    log to console    ${data}


    #validations

    table column should contain    xpath://*[@id="HTML1"]/div[1]/table    2   Author
    table row should contain    xpath://*[@id="HTML1"]/div[1]/table     4   Learn JS
    table cell should contain    xpath://*[@id="HTML1"]/div[1]/table    5   2   Mukesh

    close browser

*** Keywords ***




