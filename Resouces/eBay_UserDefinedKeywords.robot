*** Settings ***
Library        Selenium2Library

*** Keywords ***
Verify seach result
    Input Text    //*[@id="gh-ac"]    moblie
    Press Keys    //*[@id="gh-btn"]    RETURN
    Page Should Contain    moblie

Filter result by condition
    Click Element      //span[span[text()='Condition']]
    Sleep    3s
    Click Element    //span//span[text()='New']

Verify Filter result
    Element Should Contain    //div[text()='New']    New