require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


prestanos = Bakery.new("Prestanos")
guisseppes = Bakery.new("Guisseppes")
tommys = Bakery.new("Tommys")

flour = Ingredient.new("Flour", "flaky", 200.15)
flour_butter = Ingredient.new("Flour Butter", "tasty", 120.15)
icing = Ingredient.new("Icing", "decorative", 175.75)
sugar = Ingredient.new("Sugar", "sweet", 500.8)
jelly = Ingredient.new("Jelly", "flavor", 456.789)

cookie = Dessert.new("Cookie", prestanos)
cake = Dessert.new("Cake", guisseppes)
muffin = Dessert.new("Muffin", tommys)
donut = Dessert.new("Donut", prestanos)

food0 = DessertIngredient.new(cookie, icing)
food1 = DessertIngredient.new(muffin, flour)
food2= DessertIngredient.new(cookie, icing)
food3 = DessertIngredient.new(donut, jelly)


binding.pry
