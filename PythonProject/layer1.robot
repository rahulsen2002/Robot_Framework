*** Settings ***
Resource    layer2.robot

*** Test Cases ***
Flight Search
    [Tags]    flight    regression
    Given layer2.Open Application
    When layer2.Search Flight    Pune    Mumbai
    Then layer2.Close Application

Hotel Search
    [Tags]    hotel    smoke
    Given layer2.Open Application
    When layer2.Search Hotel    Delhi
    Then layer2.Close Application

Train Search
    [Tags]    train    regression
    Given layer2.Open Application
    When layer2.Search Train    Pune    Mumbai
    Then layer2.Close Application
