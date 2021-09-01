*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.flipkart.com/

*** Test Cases ***
LoginTest
    open browser    ${url}   ${browser}
    searchstring
    close browser
*** Keywords ***
searchstring
    click element  xpath:/html/body/div[2]/div/div/button
    input text  xpath://*[@id="container"]/div/div[1]/div[1]/div[2]/div[2]/form/div/div/input   samsung
    click element   xpath://*[@id="container"]/div/div[1]/div[1]/div[2]/div[2]/form/div/button
