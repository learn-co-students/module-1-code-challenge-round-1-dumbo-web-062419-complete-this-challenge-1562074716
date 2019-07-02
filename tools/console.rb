require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

C1 = Customer.new("Chris", "Evans")
C2 = Customer.new("Robert", "Downey Jr")
C3 = Customer.new("Mark", "Ruffalo")
C4 = Customer.new("Paul", "Rudd")

Res1 = Restaurant.new("Lickity Splits")
Res2 = Restaurant.new("Crouching Tiger, Hidden Peanut")
Res3 = Restaurant.new("A Box of Chocolate")
Res4 = Restaurant.new("Old Yeller's Mom")

Rev1 = Review.new(C1, Res2, 2.3, "Never did find that peanut")
Rev2 = Review.new(C3, Res4, 4, "Sweet Lady")
Rev3 = Review.new(C4, Res3, 1, "TLDR There's no chocolate")
Rev4 = Review.new(C2, Res1, 5, "Great Time and great Music!")
Rev4 = Review.new(C2, Res3, 2, "No chocolate, but great wings")
Rev4 = Review.new(C2, Res3, 3.5, "Better than last time")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line