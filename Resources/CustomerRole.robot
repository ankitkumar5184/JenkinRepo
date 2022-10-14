**** settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py
Variables    ../TestData/Data.py

*** Keywords ***

Add Customer Role
    Set Selenium Implicit Wait    10 seconds
    Click Element    ${btn_customers}
    Click Element    ${btn_customerrole}
    Click Element    ${btn_addNew}
    Input Text    ${txt_name}    ${name}
    Select Checkbox  ${checkbox_active}
    Select Checkbox    ${checkbox_Tax}
    Input Text    ${txt_systemname}    ${systemName}

Saving and verifying Customer role added or note
    Click Element    ${btn_save}
    Page Should Contain    The new customer role has been added successfully.
