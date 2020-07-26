class BestBuyInterface

    def initialize()
        @driver = Selenium::WebDriver.for :firefox
    end

    def login(username, password)
        @driver.navigate.to "https://www.bestbuy.com/identity/global/signin"
        @driver.find_element(:xpath, '//*[@id="fld-e"]').send_keys(username)
        @driver.find_element(:xpath, '//*[@id="fld-p1"]').send_keys(password)
        @driver.find_element(:css, 'button.cia-form__controls__submit').click()
        sleep(5)
        # check to make sure login was successfull
        icon = @driver.find_element(:xpath, "/html/body/div[2]/div/div/div/header/div[2]/div[2]/div/nav[2]/ul/li[1]/button/div[2]/span")
        if icon.text != "Account"
            puts "success"
        else
            puts "FATAL LOGIN ERROR"
            self.down()
        end
    end
    
    
    # ALWAYS RUN WHEN STOPPING PROGRAM
    def down
        @driver.quit
    end
end