*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}        chrome
${URL}            https://www.makemytrip.com/


${FROM_CITY}      Pune
${TO_CITY}        Mumbai
${STAY_CITY}      Delhi

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
Search Hotels On MakeMyTrip
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    5s
     # Close login popup (different sites load slightly different locators)
    Run Keyword And Ignore Error    Click Element    xpath=//span[@class='commonModal__close']
    Run Keyword And Ignore Error    Click Element    xpath=//p[@data-cy='closeModal']
    Run Keyword And Ignore Error    Click Element    xpath=//span[text()='×']
    Click Element        //span[@class='headerIconTextAlignment chNavText darkGreyText'][normalize-space()='Hotels']

    # Navigate to Hotels section
    Wait Until Element Is Visible    xpath=//span[normalize-space()='Hotels']    10s
    Click Element                    xpath=//span[normalize-space()='Hotels']

    # Input city
    Wait Until Element Is Visible    xpath=//input[@id='city']    15s
    Click Element                    xpath=//input[@id='city']
    Sleep                             1s
    Input Text                       xpath=//input[@id='city']    ${STAY_CITY}
    Sleep                             2s
    Press Keys                       xpath=//input[@id='city']    ARROW_DOWN
    Press Keys                       xpath=//input[@id='city']    ENTER

    # Select check-in / check-out dates
    Wait Until Element Is Visible    xpath=//div[@aria-label='Fri Sep 19 2025']    10s
    Click Element                    xpath=//div[@aria-label='Fri Sep 19 2025']
    Wait Until Element Is Visible    xpath=//div[@aria-label='Sat Sep 20 2025']    10s
    Click Element                    xpath=//div[@aria-label='Sat Sep 20 2025']

    # Click Search button
    Wait Until Element Is Visible    xpath=//button[@id='hsw_search_button']    10s
    Click Element                    xpath=//button[@id='hsw_search_button']

    Sleep    10s
    Capture Page Screenshot
    Close Browser

Train Search
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    5s
    Run Keyword And Ignore Error    Click Element    xpath=//span[@class='commonModal__close']
    Run Keyword And Ignore Error    Click Element    xpath=//p[@data-cy='closeModal']
    Run Keyword And Ignore Error    Click Element    xpath=//span[text()='×']
    Wait Until Element Is Visible    xpath=//span[@class='chNavIcon appendBottom2 chSprite chTrains inactive']  10s
    Click Element    xpath=//span[@class='chNavIcon appendBottom2 chSprite chTrains inactive']
     # Click FROM label to activate input
    Wait Until Element Is Visible    xpath=//label[@for='fromCity']    15s
    Click Element                    xpath=//label[@for='fromCity']

    # Now type in the input
    Wait Until Element Is Visible    xpath=//input[@placeholder='From']    10s
    Input Text                       xpath=//input[@placeholder='From']    ${FROM_CITY}
    Sleep    2s
    Press Keys                       xpath=//input[@placeholder='From']    ARROW_DOWN
    Press Keys                       xpath=//input[@placeholder='From']    ENTER

    # TO city
    Wait Until Element Is Visible    xpath=//input[@placeholder='To']    10s
    Click Element                    xpath=//input[@placeholder='To']
    Input Text                       xpath=//input[@placeholder='To']    ${TO_CITY}
    Sleep    2s
    Press Keys                       xpath=//input[@placeholder='To']    ARROW_DOWN
    Press Keys                       xpath=//input[@placeholder='To']    ENTER
    Click Element    xpath=//div[@aria-label='Sat Sep 20 2025']
    Click Element    xpath=//li[normalize-space()='All Class']

    # Search button
    Wait Until Element Is Visible    xpath=//a[contains(@class,'primaryBtn')]    10s
    Click Element                    xpath=//a[contains(@class,'primaryBtn')]

    Sleep    10s
    Capture Page Screenshot
    Close Browser
