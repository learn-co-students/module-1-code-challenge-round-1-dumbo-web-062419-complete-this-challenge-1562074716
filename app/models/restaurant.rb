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
    Review.all.select { |review| review.restaurant == self }
  end

# if we wanted a more precise average_star_rating (as this currently rounds to the nearest whole number) I would convert the return value of the method like so:
# result.to_f (to float) to show decimals
  def average_star_rating
    ( self.reviews.map { |review| review.rating }.sum ) / self.reviews.count
  end

  #helper method
  def review_content
    self.reviews.map { |review| review.content }
  end

  def longest_review
    self.review_content.sort_by { |content| content.length }.last
  end

  def self.find_by_name(name)
    @@all.find { |restaurant| restaurant.name == name }
  end


end
