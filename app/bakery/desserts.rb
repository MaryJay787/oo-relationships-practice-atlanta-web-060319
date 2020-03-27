class Dessert
    attr_reader :bakery
    attr_accessor :name
    @@all_desserts = []

    def initialize(name, bakery)
        @name = name 
        @bakery = bakery
        @@all_desserts << self 
    end

    def self.all
        @@all_desserts
    end

    def ingredients
        ##should return an array of ingredients for that dessert
    end

    def calories 
        ##a number totaling all the calories for all the ingredients included in that dessert.
    end

end