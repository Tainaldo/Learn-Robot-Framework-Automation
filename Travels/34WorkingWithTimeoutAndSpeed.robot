*** Settings ***
Library        Selenium2Library

*** Variables ***
${url}        https://www.sugarcrm.com/au/resources/crm-platform-demo/
${browser}    chrome

*** Test Cases ***
TC to demostrate Browser Mouse Actions Keywords in Robot Framework
    [Documentation]    TC to demostrate Mouse Actions Operation Keywords
    ${default_selenium_timeout}=    Get Selenium Timeout
    ${default_selenium_speed}=      Get Selenium Speed  
    Set Selenium Speed    2s         
        
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Input Text    name=email    tyjaikla8794@gmail.com

    Scroll Element Into View    id=field20

    Mouse Down                  xpath=//div[@id='field25']/input

    Mouse Down                  xpath=//div[@id='field25']/input

    Scroll Element Into View    xpath=//div[@class='col-md-9']

#   Click link
    Mouse Down On Link    xpath=//a[@href='https://www.sugarcrm.com/au/why-sugar/trust/']
     
    Close Browser