require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("Ben", "Kush")
customer2 = Customer.new("Amy", "Kush")
customer3 = Customer.new("Little", "Kush")

rest1 = Restaurant.new("Olive Garden")
rest2 = Restaurant.new("T.G.I. Firday's")
rest3 = Restaurant.new("Cake Factory")

review1 = Review.new(customer1, rest2, 4.5, "Clean enviornment but the food was poorly cooked")
review2 = Review.new(customer2, rest1, 4, "the AC was working and I was hungry that's why I ate the food")
review3 = Review.new(customer3, rest1, 8.9, "Loud music, but I like the cakes")
review4 = Review.new(customer2, rest3, 7, "nice food")
review5 = Review.new(customer1, rest3, 9, "Yummy salad")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line