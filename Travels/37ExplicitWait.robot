*** Settings ***
Library        Selenium2Library

*** Variables ***
${url}        https://www.sugarcrm.com/au/resources/crm-platform-demo/
${browser}    chrome   

*** Test Cases ***
Test case to demonstrate Explicit Wait in Robot Framework
    [Documentation]    Test Case to demonstrate Explicit Wait in Robot Framework

    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Input Text    name=email    tyjaikla8794@gmail.com

    Scroll Element Into View    xpath=//li[@id='menu-item-18904']

#   รอจนกว่าหน้าจะมีข้อความ "SugarCRM Platform Suite Demo"
    Wait Until Page Contains    SugarCRM Platform Suite Demo
#   รอจนกว่าจะมีองค์ประกอบ ""
    Wait Until Page Contains Element    xpath=//li[@id='menu-item-19419']/a
#   รอจนกว่าจะไม่มีข้อความ "SugarCRM Platform Suite Demo" *สมมุติว่ากดไปหน้าอื่นแล้วจาก Wait Until Page Contains
    Wait Until Page Does Not Contain    SugarCRM Platform Suite Demoo
#   รอจนกว่าจะไม่มีองค์ประกอบ ""
    Wait Until Page Does Not Contain Element    xpath=//li[@id='menu-item-19419']/abc

#   รอจนกว่า URL ที่ต้องการตรวจสอบเปิด
    Wait Until Location Is    https://www.sugarcrm.com/au/resources/crm-platform-demo/
#   รอจนกว่าไม่มี URL นั้น --> ทำโดยการเพิ่ม abc ไปมั่วๆ
    Wait Until Location Is Not    https://www.sugarcrm.com/au/resources/crm-platform-demo/abc
#   URL ที่มีตำแหน่งเฉพาะ
    Wait Until Location Contains    au
#   รอจนกว่าจะไม่มี URL "aun"
    Wait Until Location Does Not Contain    aun

#   รอจนกว่าจะมีองค์ประกอบดังนี้ 
    Wait Until Element Contains    xpath=//li[@id='menu-item-19419']/a    Deployment Options     
    Wait Until Element Does Not Contain    xpath=//li[@id='menu-item-19419']/a    random text
#   รอจนกว่าองค์ประกอบนั้นเปิดใช้งานไหม
    Wait Until Element Is Enabled    xpath=//li[@id='menu-item-19419']/a
#   รอจนกว่าองค์ประกอบนั้นมองไม่เห็น -> เติม/abc ขึ้นมา
    Wait Until Element Is Not Visible    xpath=//li[@id='menu-item-19419']/abc
#   รอจนกว่าองค์ประกอบนั้นมองเห็น
    Wait Until Element Is Visible    xpath=//li[@id='menu-item-19419']/a

    Close Browser
    