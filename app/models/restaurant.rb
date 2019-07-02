class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def customers
    #Returns a **unique** list of all customers who have reviewed a particular restaurant.
  end


 def reviews
  #returns an array of all reviews for that restaurant
  end

  def average_star_rating
    #returns the average star rating for a restaurant based on its reviews
  end

  def longest_review
  #returns the longest review content for a given restaurant

  end


  def self.all 
    @@all
  end



end
