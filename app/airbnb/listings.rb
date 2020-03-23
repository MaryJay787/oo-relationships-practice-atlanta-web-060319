class Listing
    attr_reader :cityname
    @@listings = []

    def initilaize(cityname)
        @cityname = cityname
        @@listings << self 
    end
    
    def self.all
        @@listings
    end

    def listing
        Trip.all.select {|trip| trip.listing == self}
    end

    def guests
        ## returns an array of all the guests who have stayed at a listing
        listing.map {|lis| lis.guest}
    end

    def trips
        ## returns an array of all the trips at the listing
        listing.map {|lis| lis.trip}
    end

    def trip_count
        ## returns the number of trips a guest has taken
        guests.map {|gue| gue.trip}.count
    end

    def self.find_all_by_city(city)
        @@listings.all.select {|list| list.cityname == self }
    end
    
    def
    end
end