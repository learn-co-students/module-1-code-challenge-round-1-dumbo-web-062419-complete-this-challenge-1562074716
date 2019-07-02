class Restaurant
  attr_reader :name
  attr_accessor :rating

  @@all = []

  def initialize(name)
    @name = name
    @rating =  
    @@all << self
  end

  def self.all
    @@all
  end 

  def customers
    #come back
  end

  def reviews
    #come back
  end

  def average_star_rating
    #come back
  end

  def longest_review
    #come back
  end

  def self.find_by_name(name)
    #come back
  end

end
