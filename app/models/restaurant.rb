class Restaurant
  attr_reader :name

  @@restaurants = []

  def initialize(name)
    @name = name
    @@restaurants << self
  end

  #INSTANCE METHODS

  def customers
    customers = []
    Review.all.select do |review|
      if review.restaurant == self
        customers << review.customer
      end
    end
    customers.uniq
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def average_star_rating
    sum_of_rating = 0
    review_count = 0
    Review.all.select do |review|
      if review.restaurant == self
        sum_of_rating += review.rating
        review_count += 1
      end
    end
    sum_of_rating/review_count
  end

  def longest_review
    longest_review.length = 0
    longest_review = nil
    Review.all.select do |review|
      if review.restaurant == self
        if review.content.length > longest_review
          review = longest_review
        end
      end
    end
    longest_review
  end



  #CLASS METHODS
  def self.all
    @@restaurants
  end

  def self.find_by_name(name)
    @@restaurants.find {|restaurant| restaurant.name == name}
  end

end



# - `Restaurant#longest_review`
#   - returns the longest review content for a given restaurant
