class Product
    attr_accessor :url, :title, :availability, :all
    @@all = Array.new()

    def initialize(seeds)
        seeds.each do |key, value|
            self.send("#{key}=", value)
        end
        @@all << self
    end

    def self.all
        @@all
    end

    def self.any_available?
        @@all.any? {|p| p.availability == true}
    end
end