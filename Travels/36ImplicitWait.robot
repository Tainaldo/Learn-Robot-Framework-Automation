*** Settings ***
Library        Selenium2Library

*** Variables ***
${url}        https://www.sugarcrm.com/au/resources/crm-platform-demo/
${browser}    chrome

*** Test Cases ***
TC to demostrate Implicit Wait in Robot Framework
    [Documentation]    TC to demostrate Implicit Wait in Robot Framework

#   Wait เริ่มต้นคืออะไร Variable นี้จะถูกพิมพ์ลงใน result fild
    ${default_implicit_wait}=    Get Selenium Implicit Wait

#   Set wait ไว้ที่ 20s
    Set Selenium Implicit Wait    20s
#   แสดงค่า wait ใหม่ให้ดูหลังจากตั้งค่า wait
    ${custom_implicit_wait}=    Get Selenium Implicit Wait    

    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    Input Text    name=email    tyjaikla8794@gmail.com

    Scroll Element Into View    id=field20

    Mouse Down    xpath=//div[@id='field25']/input

    Mouse Up    xpath=//div[@id='field25']/input

    Close Browser