*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
RegTest
    open browser    http://demowebshop.tricentis.com/register   chrome
    maximize browser window
    ${implicit}=    get selenium implicit wait
    log to console  ${implicit}
    #implicit wait statement applicable for all statement in script
    set selenium implicit wait  10 seconds  # (wait for maximum 10 second,if found within 10 sec. no need to wait for 10 sec, if not find within 10 seconds then fail)
    ${implicit}=    get selenium implicit wait
    log to console  ${implicit}
    select radio button     Gender  M
    input text  xpath://*[@id="FirstName"]      Mohit
    input text  name:LastName   Raghav
    input text  name:Email  memohitriet@gmail.com
    input text  name:Password   mohit123
    close browser

