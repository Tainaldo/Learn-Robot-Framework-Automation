*** Settings ***
Documentation    Basic seach functionality
Library    Selenium2Library

*** Keywords ***
Start TestCase
    Open Browser    https://www.ebay.com/        chrome
    Maximize Browser Window

Verify seach result
    Input Text    //*[@id="gh-ac"]    moblie
    Press Keys    //*[@id="gh-btn"]    RETURN
    Page Should Contain    moblie

Filter result by condition
    Click Element    //span[contains(text(),'Condition')]
    Sleep    3s
    Mouse Down
Finish TestCase
        Close Browser

*** Test Cases ***
Basic seach functionality for ebay
    Set Test Documentation    This test case verifies the basic search
    Set Tags    Fuctional

    Start TestCase
    Verify seach result
    Filter result by condition
    Finish TestCase