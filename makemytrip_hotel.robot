Search Hotels On MakeMyTrip
    ${driver_path}=    Get Chrome Driver Path
    Open Browser    ${URL_H}    chrome    executable_path=${driver_path}

    Maximize Browser Window
    Sleep    5s
     # Close login popup (different sites load slightly different locators)
    Run Keyword And Ignore Error    Click Element    xpath=//span[@class='commonModal__close']
    Run Keyword And Ignore Error    Click Element    xpath=//p[@data-cy='closeModal']
    Run Keyword And Ignore Error    Click Element    xpath=//span[text()='×']
    Click Element        //span[@class='headerIconTextAlignment chNavText darkGreyText'][normalize-space()='Hotels']

    # Select FROM city
    Wait Until Element Is Visible    xpath=//input[@placeholder='Where do you want to stay?']
    Click Element    xpath=//input[@placeholder='Where do you want to stay?']
    Wait Until Element Is Visible    xpath=//input[@placeholder='Where do you want to stay?']    10s
    Input Text    xpath=//input[@placeholder='Where do you want to stay?']    ${STAY_CITY}


    Click Element    xpath=//div[@aria-label='Fri Sep 19 2025']
    Click Element    xpath=//div[@aria-label='Sat Sep 20 2025']


    # Click Search button
    Click Element    xpath=//button[@id='hsw_search_button']

    Sleep    10s
    Capture Page Screenshot
    Close Browser
