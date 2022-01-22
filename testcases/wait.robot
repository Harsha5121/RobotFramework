*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}      https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm


*** Test Cases ***
inputtest1
    ${spead}=       get selenium speed
    log to console    ${spead}
    open browser   ${url}     ${browser}
    maximize browser window
    set selenium speed    2 seconds
    input text    name:firstname    sri_harsha
    input text    name:lastname     sai_kamesh
    select radio button    sex      Male
    select radio button    exp      3
    #input text    /html/body/div[1]/div/div[2]/div[4]/div/form/table/tbody/tr[5]/td[2]/input     23-11-1996
    #input text    name:datepicker   23-11-1996
    #select checkbox     profession
    select from list by index   name:continents      3
    select from list by label    selenium_commands      Wait Commands
    click element    xpath:/html/body/div[1]/div/div[2]/div[4]/div/form/table/tbody/tr[11]/td[2]/button
    #select checkbox    tool     Selenium Webdriver
    #select from list by index    continents     2
    #click element    id:submit
    #sleep       5
    ${spead}=       get selenium speed
    log to console    ${spead}
    close browser



*** Keywords ***



