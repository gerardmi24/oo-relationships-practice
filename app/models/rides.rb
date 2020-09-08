class Rides

    attr_accessor :destination, :distance
    attr_reader :passenger, :driver
    @@all = []

    def initialize(destination, distance = 0, passenger, driver)
        @destination = destination
        @distance = distance
        @passenger = passenger
        @driver = driver
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        self.all.map {|trip| trip.distance}.sum / self.all.count.to_f
    end

end