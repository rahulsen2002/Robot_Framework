# URLs
URL = "https://www.makemytrip.com/"

# Common locators
LOGIN_CLOSE_1 = "//span[@class='commonModal__close']"
LOGIN_CLOSE_2 = "//p[@data-cy='closeModal']"
LOGIN_CLOSE_3 = "//span[text()='×']"

# Flight
FROM_LABEL = "//label[@for='fromCity']"
FROM_INPUT = "//input[@placeholder='From']"
TO_LABEL = "//label[@for='toCity']"
TO_INPUT = "//input[@placeholder='To']"
FLIGHT_DATE = "//div[@aria-label='Fri Sep 20 2025']//div[@class='dateInnerCell']"
FLIGHT_SEARCH = "//a[text()='Search']"

# Hotel
HOTEL_TAB = "//span[normalize-space()='Hotels']"
HOTEL_INPUT = "//input[@placeholder='Where do you want to stay?']"
HOTEL_DATE1 = "//div[@aria-label='Fri Sep 19 2025']"
HOTEL_DATE2 = "//div[@aria-label='Sat Sep 20 2025']"
HOTEL_SEARCH = "//button[@id='hsw_search_button']"

# Train
TRAIN_TAB = "//span[contains(@class,'chTrains')]"
TRAIN_FROM = "//input[@placeholder='From']"
TRAIN_TO = "//input[@placeholder='To']"
TRAIN_DATE = "//div[@aria-label='Sat Sep 20 2025']"
TRAIN_CLASS = "//li[normalize-space()='All Class']"
TRAIN_SEARCH = "//a[contains(@class,'primaryBtn')]"
