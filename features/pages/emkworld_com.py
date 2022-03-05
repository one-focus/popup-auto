from selenium.webdriver.common.by import By

from features.pages.base_page import BasePage


# Inherits from BasePage
class EmkworldCom(BasePage):
    BUTTON_TOP_REQUEST_CALLBACK = By.XPATH, '(//a[@class="t-btn "])[1]'
    BUTTON_GET_AN_OFFER = By.XPATH, '//a[@href="#popup:offer"]'
    BUTTON_BOTTOM_REQUEST_CALLBACK = By.XPATH, '(//a[@class="t-btn "])[2]'

    # popup
    FIELD_NAME = By.XPATH, '//input[@name="Enter your name:"]'
    FIELD_COMPANY = By.XPATH, '//input[@name="company_name"]'
    FIELD_GOODS = By.XPATH, '//textarea[@name="order_desc"]'
    FIELD_EMAIL = By.XPATH, '//input[@name="company_email"]'
    FIELD_PHONE = By.XPATH, '//input[@class="t-input t-input-phonemask"]'

    BUTTON_COUNTRY_FLAG = By.XPATH, '//span[@class="t-input-phonemask__select-flag"]'
    BUTTON_RUSSIA = By.XPATH, '//div[@id="t-phonemask_ru"]'
    BUTTON_SUBMIT = By.XPATH, '//button[@class="t-submit"]'

    SECTION_CALLBACK_DIALOG = By.XPATH, '//div[@class="t-popup t-popup_show"]'
    SECTION_TOP = By.XPATH, '(//div[contains(@class, "r t-rec t-rec_pt_0")])[2]'
    SECTION_MIDDLE = By.XPATH, '(//div[contains(@class, "r t-rec")])[8]'
    SECTION_BOTTOM = By.XPATH, '(//div[contains(@class, "r t-rec t-rec_pt_0")])[7]'


def _verify_page(self):
    self.on_this_page(self.BUTTON_TOP_REQUEST_CALLBACK)