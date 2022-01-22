*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}      https://www.techlistic.com/p/selenium-practice-form.html


*** Test Cases ***
inputtest1
    open browser   ${url}     ${browser}
    sleep       5
    input text    name:firstname    sriharsha
    input text    name:lastname     saikamesh
    sleep       1
    select radio button    sex      Male
    select radio button    exp      1
    #input text    name:datepicker   23-11-1996
    select checkbox    profession       Automation Tester
    select checkbox    tool     Selenium Webdriver
    select from list by index    continents     2
    click element    id:submit
    sleep       5



*** Keywords ***



