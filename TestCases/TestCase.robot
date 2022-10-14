*** Settings ***
Resource    ../Resources/Common.robot
Resource    ../Resources/LoginPage.robot
Resource    ../Resources/AddUser.robot
Resource    ../Resources/DeleteUser.robot
Resource    ../Resources/CustomerRole.robot


Test Setup    Common.Open my Browser
Test Teardown    Common.Close My Browser

*** Test Cases ***
Login In the Website
    [Documentation]    This Test case do the login into the website.
    [Tags]    Login
    LoginPage.Enter Login Credentials and verfiy the page
    Capture Page Screenshot
    LoginPage.Logout From the website


Adding Customer in the Website
   [Documentation]    This Test case add the new customer and verify that added or not.
   [Tags]    Adding Customer
   LoginPage.Enter Login Credentials and verfiy the page
   AddUser.Landing on Add Customer Page
   AddUser.Verifying that customers is deleted or not
   AddUser.Adding New Customer Details
   AddUser.Saving the customer
   LoginPage.Logout From the website


Deleting Customer from the website
   [Documentation]    This Test case delete the new customer and verify that deleted or not.
   [Tags]    Deleting Customer
   LoginPage.Enter Login Credentials and verfiy the page
   AddUser.Landing on Add Customer Page
   DeleteUser.Deleting the Saved Customer
   LoginPage.Logout From the website


Adding Customers roles
   [Documentation]    This Test will add customers role and verify that added or not.
   [Tags]    Adding Customer Role
   LoginPage.Enter Login Credentials and verfiy the page
   CustomerRole.Add Customer Role
   CustomerRole.Saving and verifying Customer role added or note
   LoginPage.Logout From the website

