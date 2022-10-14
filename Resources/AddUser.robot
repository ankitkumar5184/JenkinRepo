**** settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py
Variables    ../TestData/Data.py

*** Keywords ***
Landing on Add Customer Page
    Click Element    ${btn_customers}
    Sleep    5 seconds
    Click Element    ${btn_customers1}

Verifying that customers is deleted or not
    Set Selenium Speed    1
    Select From List By Value    ${select_dropdown}    100
    ${contains}    Input Text    ${txt_searchmail}    ${mail}
    Click Element    ${btn_search}
    ${usersCount}    Get Element Count    //td[normalize-space()='Edit']
    Run Keyword If    ${usersCount} == 0  No data Found in Table  ELSE IF  ${usersCount} >= 1  If user exist then delete it

If user exist then delete it
    Click Link    Edit
    Click Element    ${btn_delete}
    Set Selenium Implicit Wait    10 seconds
    Click Element    ${btn_float_delete}
    Page Should Contain    The customer has been deleted successfully.

No data Found in Table
    Page Should Contain    No data available in table 

Adding New Customer Details
    Click Element    ${btn_addNew}    
    Input Text    ${txt_mail}    ${mail}
    Input Text    ${txt_pwd}    ${pwd}

Saving the customer
    Set Selenium Speed    1
    Input Text    ${txt_fistname}    ${firstname}
    Input Text    ${txt_lastname}    ${lastname} 
    Select Radio Button    Gender    M
    Input Text    ${txt_dob}    ${dob}
    Click Button    ${btn_save}
    Page Should Contain    The new customer has been added successfully.
    Reload Page
    Select From List By Value    ${select_dropdown}    100
    Page Should Contain    ${mail}
 
    
  




    