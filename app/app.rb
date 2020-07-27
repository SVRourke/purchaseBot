require_relative "./../environment.rb"

app = BotController.new()
alert = Notifier.new
puts app.class

seeds = [
    'https://www.bestbuy.com/site/nintendo-switch-32gb-console-neon-red-neon-blue-joy-con/6364255.p?skuId=6364255',
    # 'https://www.bestbuy.com/site/nintendo-switch-32gb-console-gray-joy-con/6364253.p?skuId=6364253',
    # 'https://www.bestbuy.com/site/nintendo-geek-squad-certified-refurbished-switch-neon-red-neon-blue-joy-con/6377113.p?skuId=6377113',
    # 'https://www.bestbuy.com/site/hp-25x-24-5-led-fhd-monitor-gray-green/6280605.p?skuId=6280605',
    'https://www.bestbuy.com/site/razer-kraken-x-wired-stereo-gaming-headset-for-pc-ps4-xbox-one-nintendo-switch-and-mobile-devices-black/6342891.p?skuId=6342891'
]

running = true
app.sproutProducts(seeds)

while running

    update = app.check_products
    
    if update
        update.each {|p| alert.notify(p.title)}
        puts "NOTIFIED"
    end

    sleep(20)
    puts "checking again"
end
