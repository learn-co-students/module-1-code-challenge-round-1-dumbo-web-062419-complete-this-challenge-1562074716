class Restaurant
  attr_reader :name, :ratings

  @@all = []

  def initialize(name)
    @name = name
    @ratings = []
    @@all << self
  end

  def self.all
    @all
  end

  #given a string of restaurant name, returns 
  #the first restaurant that matches
  def self.find_by_name(name)
    @@all.find do |restaurant|
      restaurant.name == name
  end


  #Returns a unique list of all customers 
  #who have reviewed a particular restaurant.
  def customers
    Review.all.customers find { |customer| customers == self }
  end

  #returns an array of all reviews for that restaurant
  def reviews
    Review.all.select {|restaurant| restaurant.reviews}

  end

  # returns the average star rating for a restaurant 
  #based on its reviews
  def average_star_rating

  end

  #returns the longest review content for a 
  #given restaurant
  def longest_review

  end

end
