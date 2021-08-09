*** Settings ***

Resource  Env_Variables.robot
Resource  ../Locators/Transfer_Page.robot
Resource  ../Locators/Common_Locators.robot

*** Keywords ***
Open Inventory Page
    wait until page contains element    ${INVENTORY_BUTTON}    ${TIME_OUT}
    Click Element    ${INVENTORY_BUTTON}

Open Transfers Page
    wait until element is Visible    ${OPERATION_PARENT_MENU}    ${TIME_OUT}
    Click Element    ${OPERATION_PARENT_MENU}
    wait until element is visible    ${TRANSFERS_SUB_MENU}    ${TIME_OUT}
    Click Element    ${TRANSFERS_SUB_MENU}

Create Transfers
    [Arguments]     ${contact_name}     ${operation_type}       ${product_name}     ${demand}   ${shipping_pol}     ${responsible}      ${note}

    wait until page contains element    ${CREATE_BUTTON}    ${TIME_OUT}
    click button    ${CREATE_BUTTON}

    wait until page contains element    ${OPERATION_TYPE_FIELD}    ${TIME_OUT}
    
    
    click element     ${CONTACT_FIELD}
    sleep   2
    press keys      ${OPERATION_TYPE_FIELD}     TAB
    sleep   2
    click element      ${OPERATION_TYPE_FIELD}
    sleep   2
    input text      ${OPERATION_TYPE_FIELD}     ${operation_type}
    sleep   2
    #wait until element is visible   ${OPT_RES}
    #click element      ${OPT_RES}
    #press keys      ${OPERATION_TYPE_FIELD}     TAB
    sleep   2

    click element   ${OPERATIONS_TAB}
    sleep   1
    click element   ${ADD_A_LINE_PRODUCT}
    sleep  3
    input text      ${PRODUCT_FIELD}    ${product_name}
    sleep   2
    click element   ${PRODUCT_RESULT}
    clear element text      ${DEMAND_FIELD}
    input text      ${DEMAND_FIELD}     ${demand}
    press keys      ${DEMAND_FIELD}     ENTER

    click element   ${ADDITIONAL_INFO_TAB}
    input text      ${RESPONSIBLE_FIELD}        ${responsible}

    click element   ${NOTE_TAB}
    input text      ${NOTE_FIELD}       ${note}

    click element   ${SAVE_BUTTON}

    sleep  3
    ${transfer_name} =    get text    ${SEARCH_NAME}
    [Return]    ${transfer_name}

Search created Transfer
    [Arguments]     ${transfer_name}
    Open Transfers Page
    wait until page contains element    ${SEARCH_FIELD}    ${TIME_OUT}
    input text      ${SEARCH_FIELD}     ${transfer_name}
    press keys      ${SEARCH_FIELD}     ENTER
    sleep   2
    wait until page contains element    ${FIRST_RESULT_NAME}
    ${x} =  get text    ${FIRST_RESULT_NAME}
    Should Be True  '${x}' == '${transfer_name}'
    