*** Settings ***
Resource    ../Resources/Common.robot
Resource    ../Resources/LoginPage.robot
Resource    ../Resources/AddUser.robot




Test Setup    Common.Open my Browser
Test Teardown    Common.Close My Browser

*** Test Cases ***
Login In the Website
   LoginPage.Enter Login Credentials and verfiy the page

   AddUser.Landing on Add Customer Page
   AddUser.Verifying that customers is deleted or not
   AddUser.Adding New Customer Details
   AddUser.Saving the customer
   LoginPage.Logout From the website
