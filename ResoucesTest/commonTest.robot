*** Settings ***
Library        Selenium2Library

*** Keywords ***
Check Textfield
    Page Should Contain Textfield    xpath=//input[@id='home-profile-username']