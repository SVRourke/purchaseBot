require_relative "./../environment.rb"

app = BotController.new()

puts app.class

seeds = [
    'https://www.bestbuy.com/site/nintendo-switch-32gb-console-neon-red-neon-blue-joy-con/6364255.p?skuId=6364255',
    'https://www.bestbuy.com/site/nintendo-switch-32gb-console-gray-joy-con/6364253.p?skuId=6364253',
    'https://www.bestbuy.com/site/nintendo-geek-squad-certified-refurbished-switch-neon-red-neon-blue-joy-con/6377113.p?skuId=6377113'
]

app.sproutProducts(seeds)
puts app.none_available?
while app.none_available?
    puts app.check_products
    puts "waiting"
    sleep(20)
    puts "checking again"
    puts ""    
end



    # for each product
        # update
        # if update different
            # add to cart
            # change qty
            # notify
            # purchase
            
    # wait x minutes
# end