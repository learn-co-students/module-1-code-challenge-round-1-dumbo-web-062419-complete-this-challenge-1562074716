class Restaurant
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    @@all.select do |review|
      review.restaurant == self
    end
  end

  def average_star_rating
    reviews.all.select do |review|
    review += reviews.rating
    end 

end
