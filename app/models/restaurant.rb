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
    my_customers = Review.all.map do |review|
      if review.restaurant == self
        review.customer
      end
    end
    my_customers.uniq
  end


  def reviews
    Review.all.select do |review| 
      if review.restaurant == self
        review.content
      end
    end
  end

  def average_star_rating

  end

  def longest_review

  end

  #- given a string of restaurant name, 
  #returns the first restaurant that matches
  def self.find_by_name(name)
    Restaurant.all.find { |restaurant| restaurant.name == name }
  end


end
