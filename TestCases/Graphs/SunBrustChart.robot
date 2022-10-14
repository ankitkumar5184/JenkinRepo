*** Settings ***
Library    SeleniumLibrary


*** Keywords ***


*** Variables ***
${Locator}=    ((//*[local-name()='svg']//*[local-name()='g' and @transform="translate(10,71) scale(1 1)"])//*[name()='path'])
${Locate}=    ((//*[local-name()='svg']//*[local-name()='g' and @data-z-index="8"])[1]//*[name()='text'])

*** Test Cases ***
Area chart with hover effect


     Open Browser    https://www.highcharts.com/docs/chart-and-series-types/sunburst-series   chrome
     Maximize Browser Window
     Set Selenium Implicit Wait    10


     Click Link    Allow all cookies


     Reload Page


     Select Frame    //iframe[@title="Highcharts example"]
     ${count}    Get Element Count   ${Locator}
     Log To Console    ${count}
     Unselect Frame


     Reload Page


     FOR  ${i}  IN RANGE  1    ${count}
        Select Frame    //iframe[@title="Highcharts example"]
        Mouse Over    ${Locator} [${i}]
        ${count}    Get Element Count   ${Locate}
        FOR  ${j}  IN RANGE  ${count}
            ${Text}     Get Text    ${Locate}
            Log To Console    ${Text}
        END
        Unselect Frame
     END


     Close Browser