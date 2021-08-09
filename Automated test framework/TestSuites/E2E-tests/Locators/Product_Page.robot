*** Variables ***
${CREATE_PRODUCT_URL}    https://much-gmbh-framework-viet-testing-staging-1-2974590.dev.odoo.com/web#menu_id=117&action=204

${PRODUCT_PARENT_MENU}      //a[@data-menu-xmlid='stock.menu_stock_inventory_control']
${PRODUCT_SUB_MENU}     //a[@role='menuitem']//span[text()='Products']
${CREATE_BUTTON}        //button[@class='btn btn-primary o-kanban-button-new']
${EDIT_BUTTON}      //button[@class='btn btn-primary o_form_button_edit']

${PRODUCT_NAME_FIELD}     //input[@name='name']
${CAN_BE_SOLD_CHECKBOX}     //div[@name="sale_ok"]
${CAN_BE_PURCHASE_CHECKBOX}     //div[@name='purchase_ok']
${GENERAL_INFORMATION_TAB}      //li[@class='nav-item']//a[text()='General Information']
${PURCHASE_TAB}     //li[@class='nav-item']//a[text()='Purchase']
${INVENTORY_TAB}        //li[@class='nav-item']//a[text()='Inventory']
${PRODUCT_TYPE}     //select[@name='type']
${PRODUCT_TYPE_CONSUMABLE}        //option[text()='Consumable']
${PRODUCT_TYPE_SERVICE}        //option[text()='Service']
${PRODUCT_TYPE_STORABLE_PRODUCT}        //option[text()='Storable Product']
${PRODUCT_CATEGORY}        //div[@name='categ_id']//div[1]//input
${PRODUCT_CATEGORY_ALL}     //li[@class='ui-menu-item']//a[text()='All']
${PRODUCT_CATEGORY_ALL_EXPENSES}     //li[@class='ui-menu-item']//a[text()='All / Expenses']
${PRODUCT_CATEGORY_ALL_SELEABLE}     //li[@class='ui-menu-item']//a[text()='All / Saleable']
${SALE_PRICE}       //div[@name='list_price']//input
${COST}     //div[@name='standard_price']//input
${INTERNAL_REFERENCE}       //input[@name='default_code']
${BARCODE}      //input[@name='barcode']

${INTERNAL_NOTE}        //textarea[@name='description']

${SAVE_BUTTON}      //button[@class='btn btn-primary o_form_button_save']
${DISCARD_BUTTON}       //button[@class='btn btn-secondary o_form_button_cancel']
${WEIGHT}       //input[@name='weight']
${VOLUME}       //input[@name='volume']
${CUSTOMER_LEAD_TIME}        //input[@name='sale_delay']
${DESCRIPTION_FOR_DELIVERY_ORDER}       //textarea[@name='description_pickingout']
${DESCRIPTION_FOR_RECEIPTS}     //textarea[@name='description_pickingin']

${ACTION_BUTTON}        //button[@class='o_dropdown_toggler_btn btn btn-secondary']//span[text()='Action']
${DELETE_BUTTON}        //li[@role='menuitem']//a[text()='Delete']
${ARCHIVE_BUTTON}       //li[@role='menuitem']//a[text()='Archive']
${DELETE_CONFIRM_OK_BUTTON}     //button[@class='btn btn-primary']//span[text()='Ok']

${SEARCH_PRODUCT_FIELD}     //input[@class='o_searchview_input']

${FIRST_PRODUCT_NAME}       //*[@class='o_kanban_record_title']//span[1]

${UPDATE_QUANTITY_BUTTON}       //button[@name='action_update_quantity_on_hand']
${UPDATE_QUANTITY_FIELD}        //input[@name='new_quantity']
${APPLY_UPDATE_BUTTON}      //button[@name='change_product_qty']

${QUANTITY_ON_HAND}     //button[@name='action_open_quants']//span[@widget='statinfo']//span[@class='o_stat_value']
