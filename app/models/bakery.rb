class Bakery
attr_accessor :name
@@all = []

def initialize (name)
    @name = name
    @@all << self
end

def self.all
    @@all
end


def desserts
    Dessert.all.filter{|dess| dess.bakery == self}
end

def ingredients
    self.desserts.map{|dess| dess.ingredients}
    #Dessert.map do |dessert|
    #dessert.ingredient
    #end
end


# - #average_calories
#   - should return a float totaling the average number of calories for the desserts sold at this bakery
# - .all
#   - should return an array of all bakeries
def total_calories
    desserts.map { |dess| dess.calorie_count }.sum
end

def average_calories # *** !!

        self.desserts.sum{|dessert| dessert.calories} / self.desserts.length.to_f
        # Ashab's Blessings ^


    # total_calories
    # self.desserts.map{||}

    # self.desserts.map{|ing| ing.calorie_count}.sum / desserts.length
    #self.ingredients.sum{|ingredient| ingredient.calorie_count} / self.ingredients.length
end




# - #shopping_list
#   - should return a string of names for ingredients for the bakery -->

def shopping_list # *** !!
    #.name .to_s
    self.ingredients.map do |list|
        list.name
    end.join(", ")
end 
end