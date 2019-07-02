require 'pry'


class Customer
  attr_reader :first_name, :last_name

  @@customers = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@customers << self
  end


  #INSTANCE METHODS
  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    new_review = Review.new(restaurant, content, self, rating)
    # binding.pry
  end

  def customer_reviews
    Review.all.select {|review| review.customer == self}
  end

  def num_reviews
    self.customer_reviews.length
  end

  def restaurants
    restaurants = []
    Review.all.select do |review|
      if review.customer == self
        restaurants << review.restaurant
      end
    end
    restaurants.uniq
  end


  #CLASS METHODS
  def self.all
    @@customers
  end

  def self.find_by_name(name)
    @@customers.find {|customer| customer.full_name == name}
  end

  def self.find_all_by_first_name(name)
    @@customers.find {|customer| customer.first_name == name}
  end

  def self.all_names
    full_names = []
    @@customers.each do  |customer|
      full_names << customer.full_name
    end
    full_names
  end

end
