*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}      https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm


*** Test Cases ***
inputtest1
    open browser   ${url}     ${browser}
    maximize browser window
    input text    name:firstname    sri_harsha
    input text    name:lastname     sai_kamesh
    select radio button    sex      Male
    select radio button    exp      3
    select from list by index   name:continents      3
    #select from list by label    selenium_commands      Wait Commands
    #click element    xpath:/html/body/div[1]/div/div[2]/div[4]/div/form/table/tbody/tr[11]/td[2]/button
    #handle alert    ACCEPT
    #handle alert    dismiss
    #sleep    1
    capture page screenshot    dillls.png
    close browser
