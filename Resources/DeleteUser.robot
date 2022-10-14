**** settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py
Variables    ../TestData/Data.py


*** Keywords ***

Deleting the Saved Customer
    Reload Page
    Set Selenium Speed    1
    Select From List By Value    ${select_dropdown}    100
    Input Text    ${txt_searchmail}    ${mail}
    Click Element    ${btn_search}
    Click Link    Edit
    Click Element    ${btn_delete}
    Set Selenium Implicit Wait    10 seconds
    Click Element    ${btn_float_delete}
    Page Should Contain    The customer has been deleted successfully.

