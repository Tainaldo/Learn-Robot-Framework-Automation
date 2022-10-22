*** Settings ***
Library        Selenium2Library

*** Variables ***
${url}        https://www.sugarcrm.com/au/resources/crm-platform-demo/
${browser}    chrome

*** Test Cases ***
TC to demostrate Browser Operation Keywords in Robot Framework
    [Documentation]    TC to demostrate list Operation Keywords

    Open Browser    ${url}    ${browser} 
    Maximize Browser Window
    Sleep    2s
    Input Text    name=email    tyjaikla8794@gmail.com

    Scroll Element Into View    id=field1

    Sleep    2s
    Page Should Contain List        xpath=//*[@id="field27"]/select
    Page Should Not Contain List    id=field272

    @{AllItems}=     Get List Items             xpath=//select[@name='employees_c']
    ${ListLable}=    Get Selected List Label    xpath=//select[@name='employees_c']
    ${ListValue}=    Get Selected List Value    xpath=//select[@name='employees_c']


    Sleep    1s
    List Selection Should Be    xpath=//select[@name='employees_c']    Company Size*

    Select From List By Index    xpath=//select[@name='employees_c']    1
    ${LLabel1}=    Get Selected List Label    xpath=//select[@name='employees_c']
    Sleep    2s

    Select From List By Label    xpath=//select[@name='employees_c']    51 - 100 employees
    ${LLabel2}=    Get Selected List Label    xpath=//select[@name='employees_c']
    Sleep    2s

    Select From List By Value    xpath=//select[@name='employees_c']    level5
    ${LLabel3}=    Get Selected List Value    xpath=//select[@name='employees_c']
    Sleep    2s

#   Multiselect lists
    Go To           url=https://www.w3schools.com/tags/tryit.asp?filename=tryhtml_select_multiple
    Select Frame    id=iframeResult
    Select All From List    id=cars
    Sleep    2s
    @{ListLabls}=    Get Selected List Labels    id=cars
    Sleep    2s
    Unselect From List By Value    id=cars    audi
    Sleep    2s
    Unselect From List By Index    id=cars    1
    Sleep    2s
    Unselect From List By Label    id=cars    Volvo
    Sleep    2s
    @{ListValues}=    Get Selected List Values    id=cars
    Sleep    2s
    Unselect All From List    id=cars
    Sleep    2s
    List Should Have No Selections    id=cars
    
    Close Browser