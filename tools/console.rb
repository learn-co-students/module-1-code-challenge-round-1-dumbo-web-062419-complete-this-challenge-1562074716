require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

  restaurant1 = Restaurant.new("Blossom")
  restaurant2 = Restaurant.new("Papaya")
  restaurant3 = Restaurant.new("Chipotle")
  restaurant4 = Restaurant.new("KFC")

  customer1 = Customer.new("Anna", "Hobler")
  customer2 = Customer.new("Steph", "Santana")
  customer3 = Customer.new("Shruti", "Nayar")

  review1 = Review.new(restaurant1, "This was awesome vegan food", customer1, 5)
  review2 = Review.new(restaurant2, "Too oily, no!", customer3, 2)
  review3 = Review.new(restaurant4, "love me some chicken", customer2, 4)
  review4 = Review.new(restaurant1, "never knew vegan food was this great", customer3, 5)

  #instance methods
  customer1.add_review(restaurant4, "I don't eat chicken", 1)
  customer1.add_review(restaurant1, "OMG can't get enough of this", 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
