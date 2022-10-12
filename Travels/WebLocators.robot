*** Settings ***
Library        Selenium2Library

*** Test Cases ***
TC to demostrate Weblocators in Robot FW
    [Documentation]    This is sample test case to demostrate Weblocators in Robot FW

    Open Browser    https://www.ebay.com/    chrome
    Maximize Browser Window
    Click Link    link:Seller Information Center
    Sleep    4s
    Close Browser