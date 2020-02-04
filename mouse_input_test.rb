#load Selenium gems
require "selenium-webdriver"
require "webdrivers/chromedriver"

#create new instance of a Chrome driver
driver = Selenium::WebDriver.for :chrome

driver.get "http://google.com"

element = driver.find_element(name: "q")

element.send_keys "Hello Selenium"

sleep 3

element.submit

sleep 3

driver.quit
