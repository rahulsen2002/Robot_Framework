*** Settings ***
Library    SeleniumLibrary
Variables  resources/Locators.py

*** Keywords ***
Open Application
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Sleep    5s
    Run Keyword And Ignore Error    Click Element    ${CLOSE_LOGIN}[0]
    Run Keyword And Ignore Error    Click Element    ${CLOSE_LOGIN}[1]
    Run Keyword And Ignore Error    Click Element    ${CLOSE_LOGIN}[2]

# ---------- Flights ----------
Search Flight
    [Arguments]    ${from}    ${to}
    Click Element    xpath=//label[@for='fromCity']
    Wait Until Element Is Visible    ${FROM_CITY_INPUT}    10s
    Input Text    ${FROM_CITY_INPUT}    ${from}
    Wait Until Element Is Visible    //p[contains(text(),'${from}')]    10s
    Click Element    //p[contains(text(),'${from}')]

    Click Element    xpath=//label[@for='toCity']
    Wait Until Element Is Visible    ${TO_CITY_INPUT}    10s
    Input Text    ${TO_CITY_INPUT}    ${to}
    Wait Until Element Is Visible    //p[contains(text(),'${to}')]    10s
    Click Element    //p[contains(text(),'${to}')]

    Sleep    2s
    Click Element    xpath=//div[@aria-label='Sun Sep 21 2025']//div[@class='dateInnerCell']
    Click Element    ${SEARCH_FLIGHT}
    Sleep    10s
    Capture Page Screenshot

# ---------- Hotels ----------
Search Hotel
    [Arguments]    ${city}
    Wait Until Element Is Visible    ${HOTELS_TAB}    10s
    Click Element    ${HOTELS_TAB}
   


    # Enter city
    Wait Until Element Is Visible    ${HOTEL_INPUT}    10s
    Click Element    ${HOTEL_INPUT}
    Wait Until Element Is Visible    ${HOTELS_CITY}    8s
    Input Text    ${HOTELS_CITY}    ${city}
    Sleep    2s
    Press Keys    ${HOTELS_CITY}    ARROW_DOWN
    Press Keys    ${HOTELS_CITY}    ENTER

    Wait Until Element Is Visible    //div[@aria-label='Sat Sep 20 2025']    10s
    Click Element    //div[@aria-label='Sat Sep 20 2025']
    Wait Until Element Is Visible    //div[@aria-label='Sun Sep 21 2025']    10s
    Click Element    //div[@aria-label='Sun Sep 21 2025']
    Wait Until Element Is Visible    ${APP_BTN}    10s       
    Click Element    ${APP_BTN}

    Wait Until Element Is Visible    ${HOTELS_SEARCH}    10s
    Click Element    ${HOTELS_SEARCH}
    Sleep    10s
    Capture Page Screenshot

# ---------- Trains ----------
Search Train
    [Arguments]    ${from}    ${to}
    Wait Until Element Is Visible    ${TRAINS_TAB}    10s
    Click Element    ${TRAINS_TAB}

    Wait Until Element Is Visible    xpath=//label[@for='fromCity']    15s
    Click Element    xpath=//label[@for='fromCity']

    Wait Until Element Is Visible    ${TRAIN_FROM}    10s
    Input Text    ${TRAIN_FROM}    ${from}
    Sleep    2s
    Press Keys    ${TRAIN_FROM}    ARROW_DOWN
    Press Keys    ${TRAIN_FROM}    ENTER

    Wait Until Element Is Visible    ${TRAIN_TO}    10s
    Input Text    ${TRAIN_TO}    ${to}
    Sleep    2s
    Press Keys    ${TRAIN_TO}    ARROW_DOWN
    Press Keys    ${TRAIN_TO}    ENTER

    Click Element    xpath=//div[@aria-label='Sat Sep 20 2025']
    Click Element    xpath=//li[normalize-space()='All Class']
    Wait Until Element Is Visible    ${TRAIN_SEARCH}    10s
    Click Element    ${TRAIN_SEARCH}
    Sleep    10s
    Capture Page Screenshot

Close Application
    Close Browser
