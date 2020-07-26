class Interface

    def initialize(url)
        @url = url
        @driver = Selenium::WebDriver.for :firefox
    end

    def gotoSite(url)
        @driver.navigate.to url
    end
    
    # ALWAYS RUN WHEN STOPPING PROGRAM
    def down
        @driver.quit
    end
end