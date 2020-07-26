require 'selenium-webdriver'


def login(driver, username, password)
    url = "https://www.bestbuy.com/identity/global/signin"
    
    username_element = '//*[@id="fld-e"]'
    password_element = '//*[@id="fld-p1"]'
    submit_button = '/html/body/div[1]/div/section/main/div[1]/div/div/div/div/form/div[3]/button'

    account_proof = "/html/body/div[2]/div/div/div/header/div[2]/div[2]/div/nav[2]/ul/li[1]/button/div[2]/span"

    driver.navigate.to url

    # gets("Press Enter when logged in")

    # driver.navigate.to url

    sleep(10)
    
    driver.find_element(:xpath, username_element).send_keys(username)
    driver.find_element(:xpath, password_element).send_keys(password)
    driver.find_element(:css, ".cia-form__controls > button").click()
    
    sleep(10)
    # check to make sure login was successfull
    icon = driver.find_element(:xpath, account_proof)
    
    if icon.text != "Account"
        puts "success"
    else
        puts "FATAL LOGIN ERROR"
    end
end


driver = Selenium::WebDriver.for :firefox
# driver.manager.timeouts.implicit_wait = 10

puts "Email: "
email = gets.strip()
puts "Password:" 
puts "getting page"
passWord = gets.strip()
login(driver, email, passWord)
puts "page title is: #{driver.title}"
sleep(40)
# driver.find_element_by_id("LOGINBUTTONID").click()


# driver.quit



