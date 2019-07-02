require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

restaurant1 = Restaurant.new('kfc')
restaurant2 = Restaurant.new('subway')
restaurant3 = Restaurant.new('chilis')
customer3 = Customer.new('ariah', 'noetzel')
customer1 = Customer.new('dan', 'voigt')
customer2 = Customer.new('jon', 'smith')
customer1.add_review('was bad',restaurant1, 'bad', 2)
customer1.add_review('delish', restaurant2, 'good', 10)
customer2.add_review('alright',restaurant1, 'ok', 5)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line