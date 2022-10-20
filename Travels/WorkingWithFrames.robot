*** Settings ***
Library        Selenium2Library

*** Variables ***
${url}        https://www.nokair.com/

*** Test Cases ***
TC to demostrate Browser Operation Keywords in Robot Framework
    [Documentation]    TC to demostrate Frames Operation Keywords
# Nokair ไม่มี Frames
    Open Browser    ${url}    chrome
    Maximize Browser Window
    Sleep    3s

    Select Frame    id=benefit

    Current Frame Should Contain    บินกับนกแอร์ดีกว่ายังไง

    Current Frame Should Not Contain    บินกับนกแอร์ดีกว่ายังไง นี่สิ

    Unselect Frame

    Frame Should Contain    id=benefit    บินกับนกแอร์ดีกว่ายังไง

    Close Browser

#https://www.youtube.com/watch?v=F_L0aSMWrjQ&list=PLL34mf651faORDOyJrk0E6k9FM-wKgfPV&index=49&t=280s