require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Rashad","Walcott")
c2 = Customer.new("Cindy","Harryram")
c3 = Customer.new("Monica","Venture")
c4 = Customer.new("John","Walcott")
c5 = Customer.new("Jehan","Cortez")


r1 = Restaurant.new("Da Nugget Spot")
r2 = Restaurant.new("Tu Casa")
r3 = Restaurant.new("Lemon and Ginger Grass")
r4 = Restaurant.new("Hurricane Grill")
r5 = Restaurant.new("Chicken Spot")


r1 = Review.new(c2.full_name,r3,"Food was good", 8)
r2 = Review.new(c2,r3,"Not worth it", 3)
r3 = Review.new(c2,r3,"Amazing", 9)
r4 = Review.new(c2,r3,"Garbage", 1)
r5 = Review.new(c2,r3,"So so", 6)




binding.pry

0 #leave this here to ensure binding.pry isn't the last line