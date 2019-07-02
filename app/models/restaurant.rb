class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @reviews = []
    @@all << self
  end

  def customers
    self.reviews.map do |review|
      review.customer
    end.uniq
  end

  def reviews
    @reviews
  end

  def average_star_rating
    sum = 0.0
    count = 0.0
    self.reviews.each do |review|
      sum += review.rating
      count += 1
    end
    return sum / count
  end

  def longest_review
    longest_review = ""
    max = 0
    self.reviews.each do |review|
      if review.content.length > max
        max = review.content.length
        longest_review = review.content
      end
    end
    return longest_review
  end

  def Restaurant.all
    @@all
  end

  def Restaurant.find_by_name(name)
    Restaurant.all.find do |restaurant|
      restaurant.name == name
    end
  end

end
