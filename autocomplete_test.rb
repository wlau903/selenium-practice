#load Selenium gems
require "selenium-webdriver"
require "webdrivers/chromedriver"

#create new instance of Chrome driver
driver = Selenium::WebDriver.for :chrome

driver.get "https://formy-project.herokuapp.com/autocomplete"

input_field = driver.find_element(id: "autocomplete")

input_field.send_keys "1 Dr Carlton B Goodlett Pl, San Francisco, CA 94102"

#implicit wait - wait applies to all elements in the script
driver.manage.timeouts.implicit_wait = 3

#explicit wait - wait until a specific condition or element appears
wait = Selenium::WebDriver::Wait.new(timeout: 3)
wait.until { driver.find_element(class: 'pac-item').displayed? }

result = driver.find_element(class: 'pac-item')
result.click
