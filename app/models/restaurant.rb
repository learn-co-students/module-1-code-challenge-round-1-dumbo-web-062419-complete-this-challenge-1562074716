class Restaurant
  attr_reader :name, :review

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    # given a string of restaurant name, returns the first restaurant that matches
    sefl.all.find { |restaurant| restaurant.name == name}
  end


  def customers
    # Returns a unique list of all customers who have reviewed a particular restaurant.
  end

  def reviews
    # returns an array of all reviews for that restaurant
  end

  def average_star_rating
    # returns the average star rating for a restaurant based on its reviews
  end

  def longest_review
    # returns the longest review content for a given restaurant
  end
  


end
