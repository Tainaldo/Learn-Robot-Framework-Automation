# แบบ Builtin

*** Settings ***    
Library        Selenium2Library
Resource       ../Resouces/commonFunctionality.robot

Suite Setup    commonFunctionality.Start TestCase
Suite Teardown     commonFunctionality.Finish TestCase
Test Template      Invalid Login Scenario  

*** Variables ***
${url}    https://www.saucedemo.com/
${browser}    chrome
${txtbox_username}     id=user-name
${txtbox_password}     id=password
${btn_login}           id=login-button
${txt_error}           xpath=//h3[@data-test='error']

*** Keywords ***
# ตรวจสอบเข้าสู่ระบบล้มเหลว ไม่ถูกต้อง - เมื่อ Username ผิด
Invalid Login Scenario
    [Arguments]    ${username}    ${password}    ${error_msg}
    Input Text    ${txtbox_username}    ${username}
    Input Text    ${txtbox_password}    ${password}
    Click Button    ${btn_login}
    Sleep    2s
    Element Should Contain    ${txt_error}    ${error_msg}

*** Test Cases ***                                        Username            Password        ERROR MESSAGE
Verify Login Fails - Blank Username and Password          ${EMPTY}            ${EMPTY}        Epic sadface: Username is required
Verify Login Fails - Wrong Username                       standard_us         secret_sauce    Epic sadface: Username and password do not match any user in this service
Verify Login Fails - LockedOut User                       locked_out_user     secret_sauce    Epic sadface: Sorry, this user has been locked out.
Verify Login Fails - Wrong Password                       locked_out_user     secret_sa       Epic sadface: Username and password do not match any user in this service
Verify Login Fails - Wrong Username and Password          standard_u          secret_s        Epic sadface: Username and password do not match any user in this service