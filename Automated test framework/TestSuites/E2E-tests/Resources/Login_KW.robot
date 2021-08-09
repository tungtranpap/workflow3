*** Settings ***

Resource  Env_Variables.robot
Resource  ../Locators/Common_Locators.robot

*** Keywords ***
Open Odoo Application
    [Arguments]     ${url}     ${browser}
    open browser    ${url}    ${browser.lower()}
    set selenium speed    ${SELENIUM_SPEED}
    Maximize Browser Window

User Logins To the System
    [Arguments]     ${username}     ${password}
    wait until page contains element    ${Username_Field}    ${TIME_OUT}
    Input Text    ${Username_Field}    ${username}

    Wait Until Element Is Visible    ${Password_Field}    ${TIME_OUT}
    Input Text    ${Password_Field}    ${password}
    Click Button    ${Login_Button}

