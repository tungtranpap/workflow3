*** Settings ***

Resource  Env_Variables.robot
Resource  ../Locators/Common_Locators.robot
Resource  ../Locators/Product_Page.robot


*** Keywords ***
Navigate to the inventory page
    wait until page contains element    ${INVENTORY_BUTTON}    ${TIME_OUT}
    Click Element    ${INVENTORY_BUTTON}

Navigate to the products page
    wait until element is Visible    ${PRODUCT_PARENT_MENU}    ${TIME_OUT}
    Click Element    ${PRODUCT_PARENT_MENU}
    wait until element is visible    ${PRODUCT_SUB_MENU}    ${TIME_OUT}
    Click Element    ${PRODUCT_SUB_MENU}

Click on create Button
    wait until page contains element    ${CREATE_BUTTON}    ${TIME_OUT}
    Click Button    ${CREATE_BUTTON}

Enter all fields
    [Arguments]    ${product_name}=Test Product    ${pro_type}=Storable Product    ${pro_category}=All    ${s_price}=1    ${costs}=0    ${int_ref}=     ${barcode}=    ${int_note}=Test internal note    ${wei}=0    ${vol}=0    ${cus_lead_time}=0    ${des_for_delivery_order}=''    ${des_for_receipts}=''
    [Return]  ${product_name}
    ${p_type} =    Set Variable    ${PRODUCT_TYPE_STORABLE_PRODUCT}

    wait until element is Visible    ${PRODUCT_NAME_FIELD}    ${TIME_OUT}
    Input Text    ${PRODUCT_NAME_FIELD}    ${product_name}

    click element    ${GENERAL_INFORMATION_TAB}

    click element    ${PRODUCT_TYPE}
    wait until element is visible    ${p_type}    ${TIME_OUT}
    click element    ${p_type}

    click element    ${PRODUCT_CATEGORY}
    wait until element is visible    ${PRODUCT_CATEGORY_ALL}    ${TIME_OUT}
    click element    ${PRODUCT_CATEGORY_ALL}

    clear element text    ${SALE_PRICE}
    input text    ${SALE_PRICE}     ${s_price}

    clear element text    ${COST}
    input text    ${COST}    ${costs}

    input text     ${INTERNAL_NOTE}     ${int_note}

    click element    ${INVENTORY_TAB}

    clear element text    ${WEIGHT}
    input text    ${WEIGHT}    ${wei}

    clear element text    ${VOLUME}
    input text    ${VOLUME}    ${vol}

    clear element text    ${CUSTOMER_LEAD_TIME}
    input text    ${CUSTOMER_LEAD_TIME}    ${cus_lead_time}

    input text    ${DESCRIPTION_FOR_DELIVERY_ORDER}     ${des_for_delivery_order}

    input text    ${DESCRIPTION_FOR_RECEIPTS}     ${des_for_receipts}

Click on save button

    click element    ${SAVE_BUTTON}

The save button will disappear and the edit button appears
    wait until page contains element    ${EDIT_BUTTON}      ${TIME_OUT}

Verify the product ${product_name} displays in the index page
    [Return]  ${product_name}

    ${result} =    Get the first product name
    Should Be True  '${result}' == '${product_name}'

Search product with name 
    [Arguments]    ${product_name}=Test Product
    Navigate to the products page
    wait until element is visible    ${SEARCH_PRODUCT_FIELD}
    input text      ${SEARCH_PRODUCT_FIELD}     ${product_name}
    press keys      ${SEARCH_PRODUCT_FIELD}     ENTER
    sleep    4

Get the first product name
    wait until page contains element    ${FIRST_PRODUCT_NAME}
    ${x} =   get text    ${FIRST_PRODUCT_NAME}
    [Return]    ${x}

Click on the first product
    wait until page contains element    ${FIRST_PRODUCT_NAME}
    click element    ${FIRST_PRODUCT_NAME}

Click on action button
    wait until page contains element    ${ACTION_BUTTON}
    click element    ${ACTION_BUTTON}

Click on delete button
    wait until element is visible     ${DELETE_BUTTON}
    click element    ${DELETE_BUTTON}

Click on archive button
    wait until element is visible     ${ARCHIVE_BUTTON}
    click element    ${ARCHIVE_BUTTON}

Click ok button on confirm
    wait until element is visible       ${DELETE_CONFIRM_OK_BUTTON}
    click element    ${DELETE_CONFIRM_OK_BUTTON}

Click on update quantity
    wait until page contains element    ${UPDATE_QUANTITY_BUTTON}
    click element    ${UPDATE_QUANTITY_BUTTON}

Archive product with name
    [Arguments]     ${product_name}
    Click on the first product
    Click on action button
    Click on archive button
    Click ok button on confirm

Verify ${product_name} has been saved
    Search product with name   ${product_name}
    Verify the product ${product_name} is visible

Verify the product ${product_name} is visible
    Search product with name   ${product_name}
    Page Should Not Contain Element    ${FIRST_PRODUCT_NAME}

Verify the product ${product_name} is not visible
    #Search product with name   ${product_name}
    Page Should Not Contain Element    ${FIRST_PRODUCT_NAME}

Delete the product
    [Arguments]  ${product_name}
#    Search product with name   ${product_name}
    Click on the first product
    Click on action button
    Click on archive button
    Click ok button on confirm

Enter new quantity 
    [Arguments]    ${new_quantity}
    wait until page contains element    ${UPDATE_QUANTITY_FIELD}
    input text      ${UPDATE_QUANTITY_FIELD}    ${new_quantity}

Click on apply button
    click element   ${APPLY_UPDATE_BUTTON}

Verify the quantity was updated
    [Arguments]    ${new_quantity}
    sleep   5
    ${x} =    get text    ${QUANTITY_ON_HAND}
    Should Be True    '${x}' == '${new_quantity}'
