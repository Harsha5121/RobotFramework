*** Settings ***
Library    SeleniumLibrary


*** Variables ***


*** Test Cases ***
for_loop1
    FOR   ${i}    IN RANGE    1   10
    log to console    ${i}
    END

*** Keywords ***
