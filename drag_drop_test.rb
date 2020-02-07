require "selenium-webdriver"
require "webdrivers/chromedriver"

driver = Selenium::WebDriver.for :chrome

driver.get "https://formy-project.herokuapp.com/dragdrop"

image = driver.find_element(id: "image")

box = driver.find_element(id: "box")

driver.action.drag_and_drop(image, box).perform
