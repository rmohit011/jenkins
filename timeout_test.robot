*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
RegTest
    open browser    http://demowebshop.tricentis.com/register   chrome
    maximize browser window
    ${time}=    get selenium timeout
    log to console  ${time}
    set selenium timeout    10 seconds
    wait until page contains    Register    #default waiting time is 5seconds (but we have set it 10 seconds above)
    ${time}=    get selenium timeout
    log to console  ${time}
    select radio button     Gender  M
    input text  xpath://*[@id="FirstName"]      Mohit
    input text  name:LastName   Raghav
    input text  name:Email  memohitriet@gmail.com
    input text  name:Password   mohit123
    close browser

