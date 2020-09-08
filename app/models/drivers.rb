class Drivers

    attr_accessor :name, :years_of_experience
    @@all = []

    def initialize(name, years_of_experience)
        @name = name
        @years_of_experience = years_of_experience
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        Rides.all.select{|ride| ride.driver == self}
    end

    def passengers
        self.rides.map {|driv| driv.passenger}
    end
    
    def total_distance
        self.rides.sum {|miles| miles.distance}
    end

    def self.mileage_cap(distance)
        self.all.select{|trip| trip.total_distance > distance} 
    end
    
end