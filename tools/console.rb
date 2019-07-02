require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cust1 = Customer.new("Bob", "Marley")
cust2 = Customer.new("Luke", "Wen")
cust3 = Customer.new("Carl", "Warren")

rest1 = Restaurant.new("Amandas")
rest2 = Restaurant.new("Tops")
rest3 = Restaurant.new("Diner")

rev1 = Review.new(cust1, rest2,"great", 5)
rev2 = Review.new(cust1, rest3, "not so great", 2)
rev3 = Review.new(cust2, rest3, "had better", 5)
rev4 = Review.new(cust2, rest2, "amazing", 3 )
rev5 = Review.new(cust1, rest2, "eh", 1)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line