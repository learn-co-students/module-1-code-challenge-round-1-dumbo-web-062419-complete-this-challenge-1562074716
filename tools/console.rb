require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
res1 = Restaurant.new('pelicana')
res2 = Restaurant.new('kfc')
res3 = Restaurant.new('popeyes')
cus1 = Customer.new('dennis', 'wang')
cus2 = Customer.new('gina', 'lee')
cus3 = Customer.new('marco','benzo')

cus1.add_review('kfc', 'its good', 3)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line