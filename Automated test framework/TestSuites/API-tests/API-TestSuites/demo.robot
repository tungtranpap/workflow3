*** Settings ***
Library    RequestsLibrary
Library    Collections
Variables  ../Data/body.py
Suite Setup				Login
Suite Teardown          Delete All Sessions

*** Variables ***
${create_res_endpoint}			/dataset/call_kw/res.partner/create
${create_employee_endpoint}		/dataset/call_kw/hr.employee/create
${edit_res_endpoint}			/dataset/call_kw/res.partner/write
${edit_employee_endpoint}		/dataset/call_kw/hr.employee/write

*** Test Cases *** 
Create Contacts successful
	${resp}=    POST On Session    much  ${create_res_endpoint}   json=${data_test}
	Status Should Be    200    ${resp}
	
Create contacts unsuccessful when name is missing
	${resp}=    POST On Session    much  ${create_res_endpoint}   json=${data_test2}
	Log  ${resp.json()['error']['data']['message']}
	Should be equal  Contacts require a name	${resp.json()['error']['data']['message']}
	
Create employee successful
	${resp}=    POST On Session    much  ${create_employee_endpoint}   json=${data_test3}
	Status Should Be    200    ${resp}
	
Create employee unsuccessful when required field is missing
	${resp}=    POST On Session    much  ${create_employee_endpoint}   json=${data_test4}
	Status Should Be    200    ${resp}	
	Should be equal  Odoo Server Error	${resp.json()['error']['message']}
	
Edit contacts unsuccessful when contacts is not exist
	${resp}=    POST On Session    much  ${edit_res_endpoint}   json=${data_test5}
	Status Should Be    200    ${resp}	
	Should Contain  ${resp.json()['error']['data']['message']}	Record does not exist or has been deleted

	
Edit employee unsuccessful when contacts is not exist
	${resp}=    POST On Session    much  ${edit_employee_endpoint}   json=${data_test5}
	Status Should Be    200    ${resp}	
	Should Contain  ${resp.json()['error']['data']['message']}	Record does not exist or has been deleted

	
*** Keywords ***
Login
	Create Session    much  http://3.0.209.219:8069/web
	&{authen}	Create dictionary	db=odoo14_VietPham  login=viet.pham@muchconsulting.de  password=admin@123AA
	&{data}=    Create dictionary	jsonrpc=2.0		params=${authen}
	${resp}=    POST On Session    much  /session/authenticate   json=${data}  
	Log 	${resp.headers['Set-Cookie']}  

