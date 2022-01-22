*** Settings ***
Library    SeleniumLibrary
Suite Setup    log to console  open my browser
Suite Teardown    log to console    close

Test Setup    log to console    harsha
Test Teardown    log to console     kamesh

*** Test Cases ***
TC1
    log to console    SRI

TC2
    log to console    SAI