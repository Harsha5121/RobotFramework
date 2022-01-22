*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}      http://demo.automationtesting.in/Windows.html


*** Test Cases ***
windowbrowser
    open browser    ${url}    ${browser}
    ${title}=   get title
    log to console    ${title}
    sleep    10
    click element    xpath://*[@id="Tabbed"]/a/button



