*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}        chrome
${URL}            https://www.makemytrip.com/
${FROM_CITY}      Pune
${TO_CITY}        Mumbai

*** Test Cases ***
Search Flight On MakeMyTrip
    [Documentation]    This test opens MakeMyTrip, closes login popup, and searches for flights.
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    5s    # wait for login popup to appear

     # Close login popup (different sites load slightly different locators)
    Run Keyword And Ignore Error    Click Element    xpath=//span[@class='commonModal__close']
    Run Keyword And Ignore Error    Click Element    xpath=//p[@data-cy='closeModal']
    Run Keyword And Ignore Error    Click Element    xpath=//span[text()='×']

    # Select FROM city
    Click Element    xpath=//label[@for='fromCity']
    Wait Until Element Is Visible    xpath=//input[@placeholder='From']    10s
    Input Text    xpath=//input[@placeholder='From']    ${FROM_CITY}
    Wait Until Element Is Visible    xpath=//p[contains(text(),'${FROM_CITY}')]    10s
    Click Element    xpath=//p[contains(text(),'${FROM_CITY}')]

    # Select TO city
    Click Element    xpath=//label[@for='toCity']
    Wait Until Element Is Visible    xpath=//input[@placeholder='To']    10s
    Input Text    xpath=//input[@placeholder='To']    ${TO_CITY}
    Wait Until Element Is Visible    xpath=//p[contains(text(),'${TO_CITY}')]    10s
    Click Element    xpath=//p[contains(text(),'${TO_CITY}')]
    Sleep    2s
    Click Element    xpath=//div[@aria-label='Thu Sep 18 2025']//div[@class='dateInnerCell']


    # Click Search button
    Click Element    xpath=//a[@class='primaryBtn font24 latoBold widgetSearchBtn ']

    Sleep    10s
    Capture Page Screenshot
    Close Browser
