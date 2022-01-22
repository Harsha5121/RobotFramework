*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
navigationtest
    open browser    https://www.google.com/     chrome
    sleep    2
    ${loc}=  get location
    log to console  ${loc}

    open browser    https://www.bing.com/     chrome
    ${loc}=  get location
    log to console  ${loc}

    go back
    ${loc}=  get location
    log to console  ${loc}
    sleep    2


    close all browsers