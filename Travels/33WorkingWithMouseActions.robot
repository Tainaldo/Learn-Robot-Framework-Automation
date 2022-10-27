*** Settings ***
Library        Selenium2Library

*** Variables ***
${url}        https://www.sugarcrm.com/au/resources/crm-platform-demo/
${browser}    chrome

*** Test Cases ***
TC to demostrate Browser Mouse Actions Keywords in Robot Framework
    [Documentation]    TC to demostrate Mouse Actions Operation Keywords
        
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Input Text    name=email    tyjaikla8794@gmail.com

    Scroll Element Into View    id=field20

    Mouse Down                  xpath=//div[@id='field25']/input
    Sleep    2s
    Mouse Down                  xpath=//div[@id='field25']/input
    Sleep    2s

    Scroll Element Into View    xpath=//div[@class='col-md-9']
    Sleep    4s

#   Click link
    Mouse Down On Link    xpath=//a[@href='https://www.sugarcrm.com/au/why-sugar/trust/']
    Sleep    4s
 
    Mouse Over    xpath=//a[@href='/au/partner-type/solution/']
    Sleep    4s

    Mouse Out    xpath=//a[@href='/au/resources/?resource_type=webinar']
    Sleep    4s

    Mouse Down On Image    xpath=//img[@src='https://www.sugarcrm.com/au/wp-content/themes/sugarcrm/dist/images/sugarcrm-logo-blk.svg']
    Sleep    4s

#   Drag and drop example
    Go To    https://demoqa.com/droppable/
    Drag And Drop    id=draggable    id=droppable
    Sleep    4s

    Close Browser