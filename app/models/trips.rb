class Trips

    attr_reader :name, :listing, :guest
    @@all = []

    def initialize (name, listing, guest)
        @name = name
        @listing = listing
        @guest = guest
        @@all << self
    end

    def self.all
        @@all
    end

end