class Restaurant
  attr_reader :name

  @@all= []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def customers
    my_review=Review.all.select do |review|
      review.customer == self
    end
    my_review.uniq
  end

  def reviews
    my_reivew= Review.all.select do |reviews|
      reviews.resturant == self 
      my_reivew.map {|review| review}
    end
  end

  def average_star_rating
      restult= 0
    Review.all.select do |rating|
      rating.rating == self
      result += rating
    end
      result/ @@all.length 
  end

  def longest_review
     #" will come back to this because it needs to look at the length of the review"
  end

  def self.find_by_name(name)
    @@all.name.find {|name| name.name == self}
  end

end
