class Listings

    attr_accessor :city, :type_of_listing, :price
    @@all = []

    def initialize(city, type_of_listing, price)
        @city = city
        @type_of_listing = type_of_listing
        @price = price
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        Trips.all.select{|trip| trip.listing == self}
    end

    def guests
        self.trips.map {|list| list.guest}
    end

    def trip_count
        self.trips.count
    end

    def self.find_all_by_city(city)
        self.all.select{|list| list.city == city}
    end

#    def self.most_popular
#should return house3 "Cali"
#        self.all.find{|list| list.trip_count}
#    end

end