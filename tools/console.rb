require 'pry'
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console



restaurant1 = Restaurant.new("Golden Punjab")
restaurant2 = Restaurant.new("Punjabi Dhaba")
restaurant3 = Restaurant.new("Atlantic Farm")

customer1 = Customer.new("Amritpal", "Singh")
customer2 = Customer.new("Gurjit","Kaur")

customer1.add_review(restaurant1,"Great",5)
customer1.add_review(restaurant2,"Dope",3)
customer1.add_review(restaurant3,"good",3)

customer2.add_review(restaurant2,"Its nice",5)
customer2.add_review(restaurant1,"Amazing food",5)







binding.pry
0 #leave this here to ensure binding.pry isn't the last line