*** Settings ***
Library        Selenium2Library

*** Variables ***
${url}        https://www.google.com/
${browser}    chrome

*** Test Cases ***
Test case to demonstrate FOR Loop in Robot Framework
    [Documentation]    Test Case to demonstrate FOR Loop in Robot Framework
    Set Selenium Implicit Wait    5s

    Open Browser    ${url}     ${browser}
    Maximize Browser Window
    Input Text    name=q       RCV Academy
    Press Keys    name=btnK    RETURN

    @{results_on_page}=    Get WebElements    id=rcnt

    FOR    ${element}    IN    @{results_on_page}
            ${text}=    Get Text    ${element}
        
    END

    Close Browser