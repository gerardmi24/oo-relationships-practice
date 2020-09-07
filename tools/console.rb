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

house1 = Listings.new("Seattle", "3 bed 2 bath house", 425000)
house2 = Listings.new("Cleveland", "4 bed 1.5 bath house", 375000)
house3 = Listings.new("Cali", "4 bed, 3 bath mansion", 860000)
app1 = Listings.new("New York", "2 bed 1 bath apartment", 475000)
app2 = Listings.new("Seattle", "1 bed, 1 bath apartment", 200000)

steve = Guests.new("Steve", 28)
brandy = Guests.new("Brandy", 34)
belle = Guests.new("Belle", 41)
dan = Guests.new("Dan", 46)
timmy = Guests.new("Timmy", 30)

vaca1 = Trips.new("Business", app1, belle)
vaca2 = Trips.new("Business", house3, steve)
vaca3 = Trips.new("Personal", app2, dan)
vaca4 = Trips.new("Family vaca", house1, timmy)
vaca5 = Trips.new("Work conference", house2, brandy)
vaca6 = Trips.new("School vaca", house3, belle)
vaca7 = Trips.new("Fun", house3, dan)

binding.pry
