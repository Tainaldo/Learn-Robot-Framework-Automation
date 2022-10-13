*** Settings ***
Library        Selenium2Library

*** Variables ***
${url}        https://booking.nokair.com/th/profile
${browser}    chrome

*** Keywords ***
Start TestCase
    Open Browser    ${url}        ${browser}
    Maximize Browser Window

Finish TestCase
    Close Browser