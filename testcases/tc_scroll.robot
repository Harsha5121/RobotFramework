#scrolling till it reach a pixel number
#scrolling till it find a elemwnt on page
#scrolling till the bottom

*** Settings ***
Library    SeleniumLibrary



*** Variables ***


*** Test Cases ***
scrollingpixel
    open browser    http://testautomationpractice.blogspot.com/     chrome
    maximize browser window
    execute javascript    window.scrollTo(0,1000)
    close browser

scrollingelement
    open browser    http://testautomationpractice.blogspot.com/     chrome
    maximize browser window
    scroll element into view    xpath://*[@id="HTML1"]/div[1]/table/tbody/tr[7]/td[2]
    close browser

scrolling_bottom
    open browser    http://testautomationpractice.blogspot.com/     chrome
    maximize browser window
    execute javascript    window.scrollTo(0,document.body.scrollHeight)
    sleep    2
    execute javascript    window.scrollTo(0,-document.body.scrollHeight)
    sleep    2
    close browser

*** Keywords ***
