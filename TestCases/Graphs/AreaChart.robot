*** Settings ***
Library    SeleniumLibrary


*** Keywords ***


*** Variables ***
${Locator}=    ((//*[local-name()='svg']//*[local-name()='g' and @transform="translate(74,71) scale(1 1)"])//*[name()='path' and @class="highcharts-point highcharts-color-1"])
${Locator1}=    ((//*[local-name()='svg']//*[local-name()='g' and @transform="translate(74,71) scale(1 1)"])//*[name()='path' and @class="highcharts-point highcharts-color-0"])
${Locate}=    ((//*[local-name()='svg']//*[local-name()='g' and @data-z-index="8"])[1]//*[name()='text'])

*** Test Cases ***
Area chart with hover effect


     Open Browser    https://www.highcharts.com/docs/chart-and-series-types/area-chart   edge
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


     Select Frame    //iframe[@title="Highcharts example"]
     ${count1}    Get Element Count   ${Locator1}
     Log To Console    ${count1}
     Unselect Frame


     Reload Page


     FOR  ${i}  IN RANGE  1     ${count1}
        Select Frame    //iframe[@title="Highcharts example"]
        Mouse Over    ${Locator1} [${i}]
        ${count}    Get Element Count   ${Locate}
        FOR  ${j}  IN RANGE  ${count}
            ${Text}     Get Text    ${Locate}
            Log To Console    ${Text}
        END
        Unselect Frame
     END


     Close All Browsers
