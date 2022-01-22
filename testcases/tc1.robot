*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}      https://www.facebook.com/


*** Test Cases ***
logintest
    open browser   ${url}     ${browser}
    input text    id:email    sriharshasaikamesh@gmail.com
    input text    id:pass       Harsha@123
    sleep    3
    title should be    Facebook – log in or sign up
    ${"email_txt"}    set variable    id:email
    element should be visible    ${"email_txt"}
    element should be enabled    ${"email_txt"}


radiobuttonstest
    open browser    ${url}     ${browser}
    click element

*** Keywords ***

