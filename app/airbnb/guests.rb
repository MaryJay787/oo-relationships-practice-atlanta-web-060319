class Guest
    attr_reader :trip
    attr_accessor :name 
    @@guests = []
    
    def initialize(name, trip)
        @name = name
        @trip = trip
        @@guests << self  
    end

    def self.all
        @@guests
    end

    def guests
        Trip.all.select {|tri| tri.guest == self }
    end

    def listings
        ## returns an array of all listings a guest has stayed at
        guests.map {|gue| gue.listing}
    end

    def trips 
        ## returns an array of all trips a guest has taken
        guests.map {|gue| gue.trips}    
    end

    def trip_count
        ## returns the number of trips a guest has taken
        trips.map {|tri| tri}.count
    end

    def self.pro_traveller
        ## returns an array of all guest who have made over 1 trip
      guests.find_all {|guest| a.count(guest.trips) > 1}
    end

    def self.find_all_by_name(name)
        ## takes an argument of a name and returns all guest with that name
    end

end