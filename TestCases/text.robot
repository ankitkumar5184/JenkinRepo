*** Settings ***
Library           OperatingSystem

*** Variables ***
#${PATH}           TEXTFILE/write_one_to_five.txt

*** Test Cases ***
For_Loop
#    Create File    ${PATH}    # Text file created at current directory
    FOR    ${i}    IN RANGE    1  1000
       log to console  ${i}
       ${b}=  Convert To String  ${i}
       Append To File    write_one_to_five.txt    \n${b}
       Log    Exited
    END