*** Settings ***
Library        Selenium2Library

*** Keywords ***
Check Textfield
    Sleep    3s
    Page Should Contain Textfield    id=home-profile-username
    Input Text    id=home-profile-username    tyjaikla
    Page Should Contain Textfield    id=home-profile-password
    Input Password    id=home-profile-password    tY8794jaikla
    Sleep    5s
