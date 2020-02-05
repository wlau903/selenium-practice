require "selenium-webdriver"
require "webdrivers/chromedriver"

driver = Selenium::WebDriver.for :chrome

driver.get "https://formy-project.herokuapp.com/switch-window"

new_tab_button = driver.find_element(id: "new-tab-button")
new_tab_button.click

driver.switch_to.window(driver.window_handles[1])

driver.switch_to.window(driver.window_handles[0])

alert_button = driver.find_element(id: "alert-button")
alert_button.click

driver.switch_to.alert.accept
