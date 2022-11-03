*** Settings ***
Library        Selenium2Library

*** Variables ***
${url}        https://www.saucedemo.com/
${browser}    chrome

*** Keywords ***
Test Keyword1
    Log To Console    Executed Keyword1 - Found Item as expected
    Close Browser
Test Keyword2
    Log To Console    Executed Keyword2 - Found less than expected Item
    Close Browser
Test Keyword3
    Log To Console    Executed Keyword3 - Exception
    Close Browser

*** Test Cases ***
Test case to demonstrate IF/ELSE in Robot Framework
    [Documentation]    Test Case to demonstrate F/ELSE in Robot Framework
    
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Input Text    id=user-name    standard_user     
    Input Text    id=password     secret_sauce
    Click Button    id=login-button

#   นับจำนวนรายการใน Page
    ${items_on_page}=    Get Element Count    xpath=//div[@class='inventory_list']/div

    Run Keyword If    ${items_on_page}==10    Test Keyword1    
    ...    ELSE IF    ${items_on_page} < 10 and ${items_on_page} > 6    Test Keyword3
    ...    ELSE    Test Keyword3


