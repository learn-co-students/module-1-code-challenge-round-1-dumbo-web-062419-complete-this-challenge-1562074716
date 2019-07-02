require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("Sponge","Bob")
customer2 = Customer.new("Gordon", "Ramsay")
customer3 = Customer.new("Gordon", "Ramsay Jr.")

restaurant1 = Restaurant.new("Krusty Patty")
restaurant2 = Restaurant.new("Burger King")

review1 = Review.new(customer1,restaurant1, "Krabby Patties are the best! But this place is dirty...", 2)

########## Class Methods and Properties ##########
Customer.find_by_name("Sponge Bob")
Customer.find_by_name("Gordon Ramsay Jr.")
Customer.find_all_by_first_name("Gordon")
Customer.all_names

Restaurant.find_by_name("Krusty Patty")
Restaurant.find_by_name("Burger King")

review1.customer
# review1.customer = customer2
review1.restaurant
# review1.restaurant = restaurant2
review1.rating
# review1.rating = 4
review1.content
# review1.content = "They're changing the place!"

########## Associations and Aggregate Methods ##########
review2 = customer1.add_review(restaurant1, "I still love Krabby Patties! They cleaned this place up! I'm going to leave a verrrrrrrrrry long review for this place now!", 5)
customer1.reviews
customer1.num_reviews

restaurant1.reviews
restaurant1.average_star_rating
restaurant1.longest_review

binding.pry
0 #leave this here to ensure binding.pry isn't the last line