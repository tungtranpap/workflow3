*** Variables ***
${OPERATION_PARENT_MENU}        //a[@data-menu-xmlid='stock.menu_stock_warehouse_mgmt']
${TRANSFERS_SUB_MENU}       //a[@role='menuitem']//span[text()='Transfers']
${CREATE_BUTTON}        //button[@class='btn btn-primary o_list_button_add']
${SAVE_BUTTON}      //button[@class='btn btn-primary o_form_button_save']
${DISCARD_BUTTON}       //button[@class='btn btn-secondary o_form_button_cancel']
${CONTACT_FIELD}        //div[@name='partner_id']//input[1]
${OPERATION_TYPE_FIELD}      //div[@name='picking_type_id']//input[1]
${OPERATIONS_TAB}       //li[@class='nav-item']//a[text()='Operations']
${ADDITIONAL_INFO_TAB}      //li[@class='nav-item']//a[text()='Additional Info']
${NOTE_TAB}     //li[@class='nav-item']//a[text()='Note']
${ADD_A_LINE_PRODUCT}       //div[@name='move_ids_without_package']//a[text()='Add a line']
${PRODUCT_FIELD}        //div[@name='move_ids_without_package']//input[@class='o_input ui-autocomplete-input']
${DEMAND_FIELD}     //div[@name='move_ids_without_package']//input[@name='product_uom_qty']
${RESPONSIBLE_FIELD}        //div[@name='user_id']//input[1]
${MOVE_TYPE}        //select[@name='move_type']
${MOVE_TYPE_AS_SOON_AS}     //select[@name='move_type']//option[text()='As soon as possible']
${MOVE_TYPE_WHEN_PRODUCT_READY}     //select[@name='move_type']//option[text()='When all products are ready']
${NOTE_FIELD}     //textarea[@name='note']

${SEARCH_FIELD}     //input[@class='o_searchview_input']
${SEARCH_NAME}      //span[@name='name']
${FIRST_RESULT_NAME}        //*[@class='o_kanban_record_title']//span[1]

${PRODUCT_RESULT}        //li[@class='ui-menu-item']//a[text()='TST']
${OPT_RES}      //li[@class='ui-menu-item']//a[text()='San Francisco: Receipts']

${CREATE_OPERATION_TYPE_BUTTON}     //button[@class='btn btn-primary']//span[text()='Create']
${CODE_FIELD}       //input[@name='sequence_code']
${SELECT_OPERATION_TYPE}        //select[@name='code']
${OPT_RECEIPT}      //select[@name='code']//option[text()='Receipt']
${OPT_DELIVERY}     //select[@name='code']//option[text()='Delivery']
${OPT_INTERNAL_TRANSFER}        //select[@name='code']//option[text()='Internal Transfer']
${SAVE_OPERATION_TYPE_BUTTON}      //button[@class='btn btn-primary']//span[text()='Save']
${CREATE_CONTACT_BUTTON}     //button[@class='btn btn-primary']//span[text()='Create']