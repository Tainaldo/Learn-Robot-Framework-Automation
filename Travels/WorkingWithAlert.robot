*** Settings ***
Library        Selenium2Library

*** Variables ***
${url}        url=https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert
${browser}    chrome

*** Test Cases ***
TC to demostrate how to handle Alert in Robot Framework
    [Documentation]    TC to demostrate how to handle Alert in Robot Framework
    
    Open Browser    ${url}    ${browser} 
    Select Frame    id=iframeResult
    Maximize Browser Window
    Click Button    xpath=//button[@onclick='myFunction()']    
    Handle Alert    action=ACCEPT    timeout=5s    

    Go To    url=https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert
    Select Frame    id=iframeResult
    Maximize Browser Window
    Click Button    xpath=//button[@onclick='myFunction()']    
    Sleep    2s
    ${messahe1}=    Handle Alert    action=ACCEPT    timeout=2s

    Go To    url=https://www.w3schools.com/js/tryit.asp?filename=tryjs_confirm
    Select Frame    id=iframeResult
    Click Button    xpath=//button[@onclick='myFunction()']    
    Sleep    2s
    ${messahe1}=    Handle Alert    DISMISS    2s    

    Go To    url=https://www.w3schools.com/js/tryit.asp?filename=tryjs_prompt
    Select Frame    id=iframeResult
    Sleep    2s    
    Click Button    xpath=//button[@onclick='myFunction()']    
    Input Text Into Alert    RCVAcademy
    Sleep    2s

    Go To    url=https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert2
    Select Frame    id=iframeResult
    Click Button    xpath=//button[@onclick='myFunction()']    
    Sleep    2s
    Alert Should Be Present    text=Hello How are you?    action=ACCEPT

    Go To    url=https://www.sugarcrm.com/au/request-demo/
    Sleep    2s
    Alert Should Not Be Present    action=ACCEPT    timeout=2s

    Close Browser