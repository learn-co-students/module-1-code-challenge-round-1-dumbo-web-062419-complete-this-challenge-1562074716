require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

## ayana.add_review(olive, "serves its purpose")

john = Customer.new("John", "Fajardo")
rachael = Customer.new("Rachael", "Beseda")
lisset = Customer.new("Lisset", "Fajardo")
ada = Customer.new("Ada", "Carrasco")
annie = Customer.new("Annie", "Souza")
ayana = Customer.new("Ayana", "Zaire")

latino = Restaurant.new("El sabor latino")
lobster = Restaurant.new("the Red Lobster")
olive = Restaurant.new("Olive Garden")
estancia = Restaurant.new("La Estancia")
lecaca = Restaurant.new("Le caca de Brooklyn")

review1 = Review.new(john, latino, 5, "Amazing Hispanic food.")
review1 = Review.new(john, lobster, 4, "Only place to get real lobster.")
review2 = Review.new(rachael, estancia, 3, "Always awesome")
review3 = Review.new(ada, lecaca, 1, "The name speaks for itself")
review4 = Review.new(annie, olive, 3, "Nothing amazing, but not bad")
review5 = Review.new(ayana, lobster, 2, "I think they get their lobster straight from Maine")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line