*** Settings ***
Library        Selenium2Library



*** Test Cases ***
TC to demostrate Browser Operation Keywords in Robot Framework
    [Documentation]    TC to demostrate Checkboxes Operation Keywords

    Open Browser    https://www.sugarcrm.com/au/request-demo/    chrome
    Maximize Browser Window
    Sleep    4s

    Scroll Element Into View    locator
    Page Should Contain Checkbox    locator

    Page Should Not Contain Checkbox    locator

    Select Checkbox    locator
    Checkbox Should Be Selected    locator
    Capture Element Screenshot    locator
    Sleep    4s
    Checkbox Should Not Be Selected    locator
    
#https://www.youtube.com/watch?v=IDQGYXyvb6M&list=PLL34mf651faORDOyJrk0E6k9FM-wKgfPV&index=48
