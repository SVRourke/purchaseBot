require 'selenium-webdriver'


# def login(driver, username, password)
#     url = "https://www.bestbuy.com/identity/global/signin"
    
#     username_element = '//*[@id="fld-e"]'
#     password_element = '//*[@id="fld-p1"]'
#     submit_button = '/html/body/div[1]/div/section/main/div[1]/div/div/div/div/form/div[3]/button'

#     account_proof = "/html/body/div[2]/div/div/div/header/div[2]/div[2]/div/nav[2]/ul/li[1]/button/div[2]/span"

#     driver.navigate.to url

#     # gets("Press Enter when logged in")

#     # driver.navigate.to url

#     sleep(10)
    
#     driver.find_element(:xpath, username_element).send_keys(username)
#     driver.find_element(:xpath, password_element).send_keys(password)
#     driver.find_element(:css, ".cia-form__controls > button").click()
    
#     sleep(10)
#     # check to make sure login was successfull
#     icon = driver.find_element(:xpath, account_proof)
    
#     if icon.text != "Account"
#         puts "success"
#     else
#         puts "FATAL LOGIN ERROR"
#     end
# end


driver = Selenium::WebDriver.for :firefox

def addToCart(driver, product)
    add_button = "button.add-to-cart-button"
    driver.navigate.to product
    sleep(10)
    puts driver.find_element(:css, add_button).click()
    sleep(10)
    driver.navigate.to "https://www.bestbuy.com/cart"
    sleep(10)
end

addToCart(driver, "https://www.bestbuy.com/site/sony-playstation-4-1tb-console-black/5850905.p?skuId=5850905")
addToCart(driver, "https://www.bestbuy.com/site/grand-theft-auto-v-premium-edition-playstation-4/6259297.p?skuId=6259297")

sleep(100)

puts "page title is: #{driver.title}"

driver.quit
"div.fulfillment-add-to-cart-button > div > button.add-to-cart-button"
# add to cart: /html/body/div[4]/main/div[1]/div[3]/div[2]/div/div/div[7]/div[1]/div/div/button

