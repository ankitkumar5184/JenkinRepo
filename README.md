# RobotFrameworkImplementation


Robot-FrameWork - Used for acceptance testing and for RPA(Robotics Process automation)

In the project,Used robot framework to automate the website i.e. https://admin-demo.nopcommerce.com

This is the Hybrid framework(Data driven,POM, Reporting).
There are some commands by using that project will be executable.

Robot Framework setup in the system:-
    1. pip install Python
    2. pip install PyCharm IDE
    3. pip install Selenium
    4. pip install Robot Framework
    5. pip install Robot Framework Selenium library
    6. pip install allure-robotframework
    7. pip install robotframework-datadriver

Commands used to run the Project:

1. robot TestFoldername\Testcasename.robot --- This is used to run Specific test case.
2. robot TestFoldername -- used to execute all test cases present in TestFoldername
3. robot --listener allure_robotframework TestFoldername;allure serve output\allure  - This command used to run all the test cases and after execution will generate a report that represent the graphical information related to passed,failed and skipped test cases.
4. robot -d results -i Smoke TestCases - running particular test case with tags
5. robot -d results -e Smoke TestCases - this will not execute test cases with tag name "smoke"





