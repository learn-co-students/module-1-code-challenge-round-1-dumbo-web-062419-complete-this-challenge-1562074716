require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


customer1 = Customer.new('first1', 'last1')
customer2 = Customer.new('first2', 'last2')
customer3 = Customer.new('first3', 'last3')
customer4 = Customer.new('first4', 'last4')

restaurant1 = Restaurant.new('name1')
restaurant2 = Restaurant.new('name2')
restaurant3 = Restaurant.new('name3')
restaurant4 = Restaurant.new('name4')

review1 = Review.new(customer1, 'eh1', 2, restaurant1)
review2 = Review.new(customer1, 'eh1', 3, restaurant2)
review3 = Review.new(customer1, 'eh1', 4, restaurant4)
review4 = Review.new(customer2, 'eh2', 5, restaurant1)
review5 = Review.new(customer2, 'eh2', 1, restaurant2)
review6 = Review.new(customer3, 'eh3', 2, restaurant1)
review7 = Review.new(customer3, 'eh3', 3, restaurant2)
review8 = Review.new(customer4, 'eh4', 4, restaurant1)
review9 = Review.new(customer4, 'eh4', 5,  restaurant4)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line