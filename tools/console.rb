require 'pry'

require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("Olga", "Rosas")
customer2 = Customer.new("Joaquin", "Moreta")
customer3 = Customer.new("Olivia", "Moreta")
customer4 = Customer.new("Fernando","Moreta")

restaurant1 = Restaurant.new("Red Lobster")
restaurant2 = Restaurant.new("Chilli's")
restaurant3 = Restaurant.new("Olive Garden")
restaurant4 = Restaurant.new("Cheesecake Factory")
restaurant5 = Restaurant.new("Macaroni Grill")
restaurant6 = Restaurant.new("Famous Dave's")

review1 = Review.new(restaurant1, customer1, "Awful place", 2)
review2 = Review.new(restaurant1, customer2, "Not bad", 4)
review3 = Review.new(restaurant1, customer4, "Unlikely to come again", 1)
review4 = Review.new(restaurant4, customer1, "Liked it!", 4)
review5 = Review.new(restaurant3, customer1, "Meh", 3)
review6 = Review.new(restaurant2, customer2, "I've been to better restaurants", 2)
review7 = Review.new(restaurant4, customer3, "Enjoyed thoroughly", 3)
review8 = Review.new(restaurant2, customer2, "Shoul have stayed at home", 1)
review9 = Review.new(restaurant1, customer1, "Wasn't as bad this time around", 3)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line