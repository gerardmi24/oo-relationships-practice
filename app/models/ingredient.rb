class Ingredient

    attr_accessor :name, :description
    attr_reader :calorie_count
    @@all = []

    def initialize(name, description, calorie_count)
        @name = name
        @description = description
        @calorie_count = calorie_count.to_f
        @@all << self
    end

    def self.all
        @@all
    end
     
    def dessert_ingredients
        DessertIngredient.all.select { |item| item.ingredient == self }
    end

    def dessert
        self.dessert_ingredients.map { |item| item.dessert }
    end

    def bakeries
        self.dessert.map { |item| item.bakery }
    end

    def self.find_all_by_name(ingredient)
        self.all.select do |ingred| 
            ingred.name.include?(ingredient)
            # ingred.name.include?(ingredient)
        end
    end

end