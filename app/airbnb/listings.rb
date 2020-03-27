class Listing
    attr_reader :city
    @@listings = []

    def initilaize(city)
        @city = city
        @@listings << self 
    end
    
    def self.all
        @@listings
    end

    def guests
        ## returns an array of all the guests who have stayed at a listing
        trips.map {|tps| tps.guest}
    end

    def trips
        ## returns an array of all the trips at the listing
        Trip.all.select {|trip| trip.listing == self}
    end

    def trip_count
        ## returns the number of trips a guest has taken
        guests.map {|gue| gue.trip}.count
    end

    def self.find_all_by_city(city)
        @@listings.find {|lists| lists.city == city}
    end

end