class Customer
  attr_reader :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
  	@@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
  	Review.new(self, restaurant, content, rating)
  end

  def reviews
  	Review.all.select{|review| review.customer == self}
  end

  def num_reviews
  	reviews.length
  end

  def restaurants
  	reviews.map{|my_review| my_review.restaurant}.uniq
  end

  def self.find_by_name(name)
    # - given a string of a **full name**, returns the **first customer** whose full name matches
    self.all.find{|customer| customer.full_name == name}
  end
  def self.find_all_by_first_name(name)
    # - given a string of a first name, returns an **array** containing all customers with that first name
    self.all.select{|customer| customer.first_name == name}
  end
  def self.all_names
    # - should return an **array** of all of the customer full names
    self.all.map{|customer| customer.full_name}
  end
end
