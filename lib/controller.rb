
class BotController

    def initialize()
        @bbx = BestBuyInterface.new()

    end

    def sproutProducts(array)
        array.each do |url|
            info = @bbx.product_info(url)
            Product.new(info)
        end
    end

    def check_products
        Product.all.each do |p|
            if @bbx.product_available?(p)
                p.availability = true
            end
        end
        Product.all.select {|p| p.availability == true}
    end

    def none_available?
        Product.any_available? ? false : true
    end
end


# add to cart
# change qty
# notify
# purchase
            

    