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

#   ตรวจสอบว่ามีการแจ้งเตือน
    Go To    url=https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert
    Select Frame    id=iframeResult
    Maximize Browser Window
    Click Button    xpath=//button[@onclick='myFunction()']    
    Sleep    2s
    ${messahe1}=    Handle Alert    action=ACCEPT    timeout=2s

#   ตรวจสอบว่า"ไม่มี"การแจ้งเตือน
    Go To    url=https://www.w3schools.com/js/tryit.asp?filename=tryjs_confirm
    Select Frame    id=iframeResult
    Click Button    xpath=//button[@onclick='myFunction()']    
    Sleep    2s
    ${messahe1}=    Handle Alert    DISMISS    2s    

#   ใส่ข้อความลงไปใน Alert
    Go To    url=https://www.w3schools.com/js/tryit.asp?filename=tryjs_prompt
    Select Frame    id=iframeResult
    Sleep    2s    
    Click Button    xpath=//button[@onclick='myFunction()']    
    Input Text Into Alert    RCVAcademy
    Sleep    2s

#   ตรวจสอบข้อความ...บน Alert หน้านี้
    Go To    url=https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert2
    Select Frame    id=iframeResult
    Click Button    xpath=//button[@onclick='myFunction()']    
    Sleep    2s
    Alert Should Be Present    text=Hello How are you?    action=ACCEPT

#   ตรวจสอบไม่มี Alert บนหน้านี้
    Go To    url=https://www.sugarcrm.com/au/request-demo/
    Sleep    2s
    Alert Should Not Be Present    action=ACCEPT    timeout=2s

    Close Browser