class Passengers

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

    def rides
        Rides.all.select{|ride| ride.passenger == self}
    end

    def drivers
        self.rides.map {|pass| pass.driver}
    end

    def total_distance
        self.rides.sum {|miles| miles.distance}
    end

    def self.premium_members
        self.all.find_all{|prem| prem.total_distance > 100} 
    end

end