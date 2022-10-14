**** settings ***
Library    SeleniumLibrary
Variables    ../TestData/Data.py

*** Keywords ***

Open my Browser
    Open Browser    ${site}    ${browser}    Headless Chrome
    Maximize Browser Window

Close My Browser
    Close All Browsers


