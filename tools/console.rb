require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
#Customer.new(first_name, last_name
#Restaurant.new(name)
#Review.new(customer, restaurant, rating, content)
customer1 = Customer.new("Tim", "Smith")
customer2 = Customer.new("Ally", "Beans")
customer3 = Customer.new("Ron", "Brown")
customer4 = Customer.new("Joe", "Alson")
customer5 = Customer.new("Joe", "Benjamin")

res1 = Restaurant.new("Bam's Diner")
res2 = Restaurant.new("The Hut")
res3 = Restaurant.new("MatchaGame")
res4 = Restaurant.new("I'm Hungry")

rev1 = Review.new(customer1, res1, 5, "Amazing")
rev2 = Review.new(customer2, res2, 1, "Never coming back")
rev3 = Review.new(customer3, res3, 3, "Just OK")
rev4 = Review.new(customer4, res4, 4, "Pretty good, was hungry!")
rev5 = Review.new(customer1, res1, 5, "Still amazing")
rev6 = Review.new(customer1, res2, 2, "No good")
rev7 = Review.new(customer3, res2, 3, "Eh")

customer2.add_review(res3, "Love that Matcha", 5)
customer2.add_review(res3, "Still Love that Matcha", 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
