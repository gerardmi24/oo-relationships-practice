class Guests

    attr_accessor :name, :age
    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        Trips.all.select{|trip| trip.guest == self}
    end

    def listings
        self.trips.map {|gst| gst.listing}
    end

    def trip_count
        self.trips.count
    end

    def self.pro_traveller
        self.all.select{|pro| pro.trip_count > 1}
    end

    def self.find_all_by_name(name)
        self.all.select{|who| who.name == name}
    end

end