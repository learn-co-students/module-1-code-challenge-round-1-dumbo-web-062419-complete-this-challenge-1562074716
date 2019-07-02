class Restaurant
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def customers
    #returns a UNIQUE list of all customers
    #who have reviewed that restaurant
    Review.all.customer.select do |cust|
      self.cust
    end

  end
  def self.find_by_name(name)

  end

  def reviews
    #returns an array of all reviews for
    #that restaurant


  end

  def average_star_rating
    #returns the average rating for a restaurant
    #based on its review


  end

  def longest_review
    #returns the longest review content for
    #a given restaurant


  end
end
