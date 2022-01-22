*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
Mouserightclick
    open browser    https://swisnl.github.io/jQuery-contextMenu/demo.html     chrome
    maximize browser window
    sleep    1
    open context menu    xpath:/html/body/div/section/div/div/div/p/span
    close browser

double click element
    open browser    http://testautomationpractice.blogspot.com/     chrome
    maximize browser window
    sleep   1
    double click element    xpath://*[@id="HTML10"]/div[1]/button
    sleep    1
    close browser

dragdrop
    open browser    http://testautomationpractice.blogspot.com/     chrome
    maximize browser window
    sleep   1
    drag and drop    id:draggable   id:droppable
    sleep   1
    close browser


*** Keywords ***
