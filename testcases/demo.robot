*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***

login
    open browser    https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F      chrome
    input text    id:Email      admin@yourstore.com
    input text    id:Password       admin
    click button    xpath:/html/body/div[6]/div/div/div/div/div[2]/div[1]/div/form/div[3]/button
    close browser