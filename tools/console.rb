require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Nero", "Kai")
c2 = Customer.new("Ken", "Sur")
c3 = Customer.new("Eli", "Gord")
c4 = Customer.new("Lisa", "Dawn")
c5 = Customer.new("Lily", "Bay")

r1 = Restaurant.new("Misslilies", 5)
r2 = Restaurant.new("Estorandcarol")
r3 = Restaurant.new("Aged")
r4 = Restaurant.new("Schilars")
r5 = Restaurant.new("Palms")

review1 = Review.new(c1, r1)
review2 = Review.new(c2, r2)
review2.content = "Best drinks in LES!"
review3 = Review.new(c3, r3)
review4 = Review.new(c4, r4)
review5 = Review.new(c5, r5)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line