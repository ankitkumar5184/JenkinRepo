*** Settings ***
Library    SeleniumLibrary


*** Keywords ***


*** Variables ***
${Locator}=     ((//*[local-name()='svg']//*[local-name()='g' and @transform="translate(81,71) scale(1 1)"])//*[name()='path' and @class="highcharts-point highcharts-color-0"])
${Locator1}=    ((//*[local-name()='svg']//*[local-name()='g' and @transform="translate(81,71) scale(1 1)"])//*[name()='path' and @class="highcharts-point highcharts-color-4"])
${Locator2}=    ((//*[local-name()='svg']//*[local-name()='g' and @transform="translate(81,71) scale(1 1)"])//*[name()='path' and @class="highcharts-point highcharts-color-2"])
${Locator3}=    ((//*[local-name()='svg']//*[local-name()='g' and @transform="translate(81,71) scale(1 1)"])//*[name()='path' and @class="highcharts-point highcharts-color-1"])
# ${Locator4}=    ((//*[local-name()='svg']//*[local-name()='g' and @transform="translate(81,71) scale(1 1)"])//*[name()='path' and @class="highcharts-point highcharts-color-3"])


*** Test Cases ***
Line Chart with Hover effect


     Open Browser    https://www.highcharts.com/docs/chart-and-series-types/line-chart   chrome
     Maximize Browser Window
     Set Selenium Implicit Wait    10


     Click Link    Allow all cookies
     Select Frame    //iframe[@title="Highcharts example"]
     ${count}    Get Element Count   ${Locator}
     Log To Console    ${count}
     Unselect Frame


     Reload Page


     FOR  ${i}  IN RANGE  1    ${count}
        Select Frame    //iframe[@title="Highcharts example"]
        Set Selenium Speed    1
        Mouse Over    ${Locator} [${i}]
        Set Selenium Implicit Wait    10
        Unselect Frame
     END


      FOR  ${i}  IN RANGE  1  10
        Select Frame    //iframe[@title="Highcharts example"]
        Set Selenium Speed    1
        Mouse Over    ${Locator1} [${i}]
        Unselect Frame
     END


     FOR  ${i}  IN RANGE  1  10
        Select Frame    //iframe[@title="Highcharts example"]
        Set Selenium Speed    1
        Mouse Over    ${Locator2} [${i}]
        Unselect Frame
     END


     FOR  ${i}  IN RANGE  1  10
        Select Frame    //iframe[@title="Highcharts example"]
        Set Selenium Speed    1
        Mouse Over    ${Locator3} [${i}]
        Unselect Frame
     END


     Close All Browsers