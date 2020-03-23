class Trip
    attr_reader :listing, :guest
    @@trips = []

    def initialize(listing, guest)
        @listing = listing
        @guest = guest
        @@trips << self     
    end

    def self.all
        @@trips
    end

    def listing
        ## returns the listing object for that trip 
        @@trips.all.select {|tri| tri.trip}
    end

    def guest
        ## returns the guest object for that trip
        @@trips.all.select {|tri| tri.guest }
    end

end