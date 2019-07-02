require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cust1 = Customer.new("Peter", "Lin")
cust2 = Customer.new("Bob", "the Builder")
cust3 = Customer.new("Professor", "Proton")
cust4 = Customer.new("Peter", "Pan")
cust5 = Customer.new("Peter", "Rabbit")
rest1 = Restaurant.new("Chipotle")
rest2 = Restaurant.new("McDonalds")
rest3 = Restaurant.new("Eataly")
cust1.add_review(rest1, "I love Chipotle", 5)
cust1.add_review(rest1, "I really love Chipotle", 5)
cust1.add_review(rest2, "I also love McDonalds", 4)
cust2.add_review(rest3, "I build things", 4)
cust2.add_review(rest3, "Yes we can!", 4)
cust3.add_review(rest2, "I can make potato clock out of these french fries", 4.6)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line