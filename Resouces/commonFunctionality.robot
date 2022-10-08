*** Settings ***
Library        Selenium2Library

*** Variables ***
${url}        https://www.ebay.com/
${browser}    chrome

*** Keywords ***
Start TestCase
    Open Browser    ${url}        ${browser}
    Maximize Browser Window

Finish TestCase
    Close Browser