class Dessert

    attr_accessor :name, :bakery
    @@all = []

    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @@all << self
    end

    def self.all
        @@all
    end
    
    def dessert_ingredients
        DessertIngredient.all.select { |item| item.dessert == self }
    end

    def ingredients
        self.dessert_ingredients.map {|dessert| dessert.ingredient }
    end

    def calories
        cal_sum = self.ingredients.map{|cals| cals.calorie_count}.sum 

        if cal_sum = 0
           return nil
        end 

        cal_sum
    end

end