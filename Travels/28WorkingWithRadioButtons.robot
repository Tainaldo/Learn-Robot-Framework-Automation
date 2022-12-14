*** Settings ***
Library        Selenium2Library

*** Variables ***
${url}        https://www.sugarcrm.com/au/request-demo/
${browser}    chrome

*** Test Cases ***
TC to demostrate Browser Operation Keywords in Robot Framework
    [Documentation]    TC to demostrate Radio Button Operation Keywords

    Open Browser     ${url}    chrome
    Maximize Browser Window
    Sleep    4s

#เว็บนี้เปลี่ยนไม่มี Radio Butoon แล้ว

    # เช็คว่ามี Radio Button ในหน้าไหม
    Page Should Contain Radio Button    locator
    # เช็คว่าไม่มี Radio Button ในหน้าไหม > ในคลิปทำส่วนนี้หบอกขึ้นมาเพื่อเช็ค
    Page Should Not Contain Radio Button    locator
    # ไม่เลือก Radio Button นี้
    Radio Button Should Not Be Selected    group_name
    # เลือก Radio Button
    Select Radio Button    group_name    value
    # ตั้ง Radio Button
    Radio Button Should Be Set To    group_name    value

    Close Browser
    