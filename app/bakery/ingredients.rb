class Ingredient
    attr_reader :dessert, :bakery
    attr_accessor :calorie_count, name
    @@all_ingredients = []

    def initialize(name, dessert, bakery, calorie_count)
        @name = name 
        @dessert = dessert
        @bakery = bakery
        @calorie_count = calorie_count
        @@all_ingredients << self 
    end

    def self.all
        @@all_ingredients
    end

    def self.find_all_by_name(name)
        @@all_ingredients.find {|ingreds| ingreds.name == name}
    end


end