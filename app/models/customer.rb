class Customer

  @@all = []
  
  attr_reader :first_name, :last_name
  attr_accessor :restaurant, :content, :rating

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def add_review(restaurant, content, rating)
    Review.new(restaurant, self, content, rating)
  end

  def num_reviews
    my_reviews = Review.all.select do |review|
      if review.customer == self
        review.content
      end
    end
    my_reviews.length
  end

  def restaurants
    my_restaurants = Review.all.map do |review|
      if review.customer == self
        review.restaurant
      end
    end
    my_restaurants.uniq
    #binding.pry
  end

  def self.find_by_name(name)

  end

end
