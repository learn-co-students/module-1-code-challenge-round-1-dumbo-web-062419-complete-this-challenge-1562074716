require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console



#customers 
customer1 = Customer.new("Larry", "Sass")
customer2 = Customer.new("Tom", "Jones")
customer3 = Customer.new("Derek", "Jeter")
customer4 = Customer.new("Derek", "Billingsworth")
customer5 = Customer.new("Larry", "Sass")


#restaurants
restaurant1 = Restaurant.new("Pizza Hut")
restaurant2 = Restaurant.new("Taco Bell")
restaurant3 = Restaurant.new("Momofuku")
restaurant4 = Restaurant.new("Pizza Hut")


#reviews
customer1.add_review(restaurant1, "I hated it", 5)
customer1.add_review(restaurant2, "I loved it!!!!!!!", 10)
customer1.add_review(restaurant1, "I kind of like it this time actually", 8)

customer2.add_review(restaurant1, "Help me I am in hell", 6)

#to test my review methods 
review1 = Review.new(customer3, restaurant3, "lalala", 7)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line