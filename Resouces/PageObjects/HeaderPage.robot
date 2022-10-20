*** Settings ***
Library        Selenium2Library
Variables      ../Webelements.py

*** Keywords ***
Input Search Text and Click Search
    [Arguments]   ${search_text}
    Input Text    ${HomePageTextBox}     ${search_text}
    Press Keys    ${HomePageButton}      RETURN

Click on Advanced Search Link
    Click Element    ${HomePageSearchLink}