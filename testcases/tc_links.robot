*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
links
    open browser        http://testautomationpractice.blogspot.com/     chrome
    maximize browser window
    ${links_count}  get element count   xpath://a
    log to console    ${links_count}
    close browser

linklist
    open browser        http://testautomationpractice.blogspot.com/     chrome
    maximize browser window
    ${links_count}=  get element count   xpath://a
    log to console    ${links_count}

    @{linkurl}      create list
    FOR     ${i}    IN RANGE    1   ${links_count}+1
    ${testlinks}=   get text    xpath:(//a)[${i}]
    log to console    ${testlinks}
    END
    close browser
*** Keywords ***


