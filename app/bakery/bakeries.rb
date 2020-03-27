class Bakery
    attr_accessor :name
    @@all_bakeries = []

    def initilalize(name)
        @name = name
        @@all_bakeries << self 
    end

    def self.all
        @@all_bakeries
    end

    def ingredients
        ##should return an array of ingrediances for that desert.
    end

    def deserts
        ##should return an array of desserts that baker makes
    end

    def average_calories
        ##should return a number totaling the average number of calories for the deserts sold at that bakery.
    end

    def shopping_list
        ##should return a string of names for the ingredients for the bakery. 
    end

end