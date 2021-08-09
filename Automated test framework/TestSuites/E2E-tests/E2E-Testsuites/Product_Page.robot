*** Settings ***
Resource   ../Resources/Login_KW.robot
Resource   ../Resources/Product_Page_KW.robot
Variables  ../Data/My_Page.yaml
Variables  ../Data/Product_Page.yaml

Test Setup        Run Keywords    Open Odoo Application       ${LOGIN.URL_PAGE}       ${LOGIN.BROWSER}
...                AND     User Logins To the System    ${LOGIN.USERNAME}      ${LOGIN.PASSWORD}
Test Teardown     Run Keywords  Delete the product  ${product_name}   AND    Close Browser

*** Test Cases ***
TESTCASE1_Create a storeable product successfully when filling all fields
    [Tags]    Smoke
    Navigate to the inventory page
    Navigate to the products page
    Click on create Button
    ${product_name}=  Enter all fields    ${TESTCASE1.PRODUCT.product_name}    ${TESTCASE1.PRODUCT.pro_type}    ${TESTCASE1.PRODUCT.pro_category}    ${TESTCASE1.PRODUCT.s_price}    ${TESTCASE1.PRODUCT.costs}    ${TESTCASE1.PRODUCT.int_ref}    ${TESTCASE1.PRODUCT.barcode}    ${TESTCASE1.PRODUCT.int_note}    ${TESTCASE1.PRODUCT.wei}    ${TESTCASE1.PRODUCT.vol}    ${TESTCASE1.PRODUCT.cus_lead_time}    ${TESTCASE1.PRODUCT.des_for_delivery_order}    ${TESTCASE1.PRODUCT.des_for_receipts}
    Click on save button
    Search product with name   ${product_name}
    Verify the product ${TESTCASE1.PRODUCT.product_name} displays in the index page

TESTCASE2_Update quantity of a storeable product
    [Tags]    Smoke
    Navigate to the inventory page
    Navigate to the products page
    Click on create Button
    ${product_name}=  Enter all fields    ${TESTCASE2.PRODUCT.product_name}    ${TESTCASE2.PRODUCT.pro_type}    ${TESTCASE2.PRODUCT.pro_category}    ${TESTCASE2.PRODUCT.s_price}    ${TESTCASE2.PRODUCT.costs}    ${TESTCASE2.PRODUCT.int_ref}    ${TESTCASE2.PRODUCT.barcode}    ${TESTCASE2.PRODUCT.int_note}    ${TESTCASE2.PRODUCT.wei}    ${TESTCASE2.PRODUCT.vol}    ${TESTCASE2.PRODUCT.cus_lead_time}    ${TESTCASE2.PRODUCT.des_for_delivery_order}    ${TESTCASE2.PRODUCT.des_for_receipts}
    Click on save button
    Search product with name   ${TESTCASE2.PRODUCT.product_name}
    Click on the first product
    Click on update quantity
    Enter new quantity    ${TESTCASE2.PRODUCT.new_qty}
    Click on apply button
    Verify the quantity was updated  ${TESTCASE2.PRODUCT.new_qty}
    Search product with name   ${product_name}
    Verify the product ${product_name} displays in the index page

TESTCASE8_Test Archive a product
    [Tags]    Smoke
    Navigate to the inventory page
    Navigate to the products page
    Click on create Button
    ${product_name}=  Enter all fields    ${TESTCASE8.PRODUCT.product_name}    ${TESTCASE8.PRODUCT.pro_type}    ${TESTCASE8.PRODUCT.pro_category}    ${TESTCASE8.PRODUCT.s_price}    ${TESTCASE8.PRODUCT.costs}    ${TESTCASE8.PRODUCT.int_ref}    ${TESTCASE8.PRODUCT.barcode}    ${TESTCASE8.PRODUCT.int_note}    ${TESTCASE8.PRODUCT.wei}    ${TESTCASE8.PRODUCT.vol}    ${TESTCASE8.PRODUCT.cus_lead_time}    ${TESTCASE8.PRODUCT.des_for_delivery_order}    ${TESTCASE8.PRODUCT.des_for_receipts}
    Click on save button
    Search product with name   ${product_name}
    Verify the product ${TESTCASE8.PRODUCT.product_name} displays in the index page
    Archive product with name  ${TESTCASE8.PRODUCT.product_name}
    Search product with name   ${product_name}
    Verify the product ${TESTCASE8.PRODUCT.product_name} is not visible
    [Teardown]    Close Browser