require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("john", "green")
customer2 = Customer.new("john", "green")
customer3 = Customer.new("billy", "joel")
customer4 = Customer.new("sally", "mae")

restaurant1 = Restaurant.new("cluckin' chicken")
restaurant2 = Restaurant.new("bangin' burgers")
restaurant3 = Restaurant.new("phenomenol' french fries")
restaurant4 = Restaurant.new("cluckin' chicken")
restaurant5 = Restaurant.new("restaurant 5")
restaurant6 = Restaurant.new("restaurant 6")

review1 = Review.new(customer1, restaurant1, 5, "cluckin' chicken is mother cluckin' good!")
review2 = Review.new(customer1, restaurant2, 4, "bangin burgers are bangin fo sho fo sho!")
review3 = Review.new(customer1, restaurant3, 5, "phenomenol french fries are phenom nom nom")
review4 = Review.new(customer2, restaurant1, 1, "pldldld")
review5 = Review.new(customer3, restaurant1, 2, "cluckin' chicken is mother cluckin' delicious!!!")
review6 = Review.new(customer4, restaurant1, 3, "short review")
customer1.add_review(restaurant3, 1, "you know what, its actually not that great")

reviews = customer1.reviews
num_reviews = customer1.num_reviews
restaurants = customer1.restaurants
found_customer = Customer.find_by_name("freddy mac")
found_customers = Customer.find_all_by_first_name("john")
all_names = Customer.all_names
cluckin = restaurant1.reviews
mother_cluckers = restaurant1.customers
avg_star = restaurant1.average_star_rating
longest = restaurant1.longest_review
rest = Restaurant.find_by_name("cluckin' chicken") # => first cluckin' chicken


binding.pry
0 #leave this here to ensure binding.pry isn't the last line