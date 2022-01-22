*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}      https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html


*** Test Cases ***
testframes
    open browser   ${url}     ${browser}
    maximize browser window
    select frame    packageListFrame
    click link    org.openqa.selenium
    sleep    5
    unselect frame
    close browser


    select frame    packageFrame
    sleep    1
    click element    xpath:/html/body/main/ul/li[1]/a
    sleep    5
    unselect frame
    close browser

    open browser   ${url}     ${browser}
    select frame    classFrame
    click link    org.openqa.selenium
    unselect frame
    close browser



