# resources/locators.py
URL  = "https://www.makemytrip.com/"
# Close login popups
CLOSE_LOGIN = [
    "//span[@class='commonModal__close']",
    "//p[@data-cy='closeModal']",
    "//span[text()='×']"
]

# Flight locators
FROM_CITY_INPUT = "//input[@placeholder='From']"
TO_CITY_INPUT   = "//input[@placeholder='To']"
SEARCH_FLIGHT   = "//a[@class='primaryBtn font24 latoBold widgetSearchBtn ']"

# Hotel locators
HOTELS_TAB      = "//span[@class='headerIconTextAlignment chNavText darkGreyText'][normalize-space()='Hotels']"
HOTEL_INPUT     ="//label[@for='city']"
HOTELS_CITY     = "//input[@placeholder='Where do you want to stay?']"
APP_BTN = "//button[normalize-space()='APPLY']"
HOTELS_SEARCH   = "//button[@id='hsw_search_button']"

# Train locators
TRAINS_TAB      = "//span[@class='chNavIcon appendBottom2 chSprite chTrains inactive']"
TRAIN_FROM      = "//input[@placeholder='From']"
TRAIN_TO        = "//input[@placeholder='To']"
TRAIN_SEARCH    = "//a[contains(@class,'primaryBtn')]"
# Flight date
DATE_FLIGHT = "//div[@aria-label='Wed Sep 24 2025']//div[@class='dateInnerCell']"

# Hotel check-in/out
HOTEL_CHECKIN = "//div[@aria-label='Wed Sep 24 2025']"
HOTEL_CHECKOUT = "//div[@aria-label='Fri Sep 26 2025']"

# Train date/class
TRAIN_DATE = "//div[@aria-label='Wed Sep 24 2025']"
TRAIN_CLASS = "//li[normalize-space()='All Class']"
