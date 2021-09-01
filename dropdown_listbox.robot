*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://www.practiceselenium.com/practice-form.html
${browser}  chrome


*** Test Cases ***
Hadnling dropdown and lists
    open browser    ${url}  ${browser}
    maximize browser window

    #handling drop down
    select from list by label   continents  Europe   #name followed by label
    sleep   5
    select from list by index   continents  2
    sleep   3
    #select from list by value

    #select multiple values from list box
    select from list by label   selenium_commands   Switch Commands
    sleep   3
    select from list by label   selenium_commands   Navigation Commands
    sleep   3
    unselect from list by label   selenium_commands   Switch Commands
    sleep   3

    close browser

