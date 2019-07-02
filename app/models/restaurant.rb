class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
   array = reviews.map {|review| review.customer}
   array.uniq
  end

  def average_star_rating
    total = 0
    reviews.each {|review| total += review.rating}
    total / reviews.length
  end

 

  def longest_review
    my_content = reviews.map {|review| review.content}
    sorted_content = my_content.sort_by {|content| content.length}
    sorted_content[-1]
    end

  def self.find_by_name(name)
    @@all.find {|restaurant| restaurant.name == name}
  end

  def self.all
    @@all
  end
end
