*** Settings ***
Library        Selenium2Library
Resource       ./HeaderPage.robot 


*** Variables ***
${search_result}        results for

*** Keywords ***
Verify seach result
    [Arguments]    ${search_text}
    Page Should Contain    ${search_result} ${search_text}