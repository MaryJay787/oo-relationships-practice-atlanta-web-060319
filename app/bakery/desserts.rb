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
        Ingredient.all.select {|ingre| ingre.dessert == self}
    end

    def calories 
        ##a number totaling all the calories for all the ingredients included in that dessert.
        ingredients.map {|ingre| ingre.dessert.calorie_count}
    end

end