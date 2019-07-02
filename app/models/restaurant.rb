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

  def self.find_by_name(name)
    @@all.find { |restaurant| restaurant.name == name}
  end

  def reviews
    Review.all.select { |review| review.restaurant == self }
  end

  def customers
    all_reviews.select { |review| }
  end

  def average_star_rating
    total_stars = 0
    total_reviews = reviews.length

    reviews.each do |review|
      total_stars += review.rating
    end

    total_stars / total_reviews
  end

  def longest_review
    reviews.sort_by! { |review| review.content.length }
    reviews[-1]
  end

end
