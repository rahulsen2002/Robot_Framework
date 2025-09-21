*** Settings ***
Resource    layer3.robot

*** Keywords ***
Open Application
    layer3.Open Application

Search Flight
    [Arguments]    ${from}    ${to}
    layer3.Search Flight    ${from}    ${to}

Search Hotel
    [Arguments]    ${city}
    layer3.Search Hotel    ${city}

Search Train
    [Arguments]    ${from}    ${to}
    layer3.Search Train    ${from}    ${to}

Close Application
    layer3.Close Application
