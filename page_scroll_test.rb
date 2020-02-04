#load Selenium gems
require "selenium-webdriver"
require "webdrivers/chromedriver"

#create new instance of Chrome driver
driver = Selenium::WebDriver.for :chrome

driver.get "https://formy-project.herokuapp.com/scroll"

name = driver.find_element(id: "name")

driver.action.move_to(name).perform

name.send_keys "Wendy Lau"

date = driver.find_element(id: "date")

date.send_keys "01/01/2021"
