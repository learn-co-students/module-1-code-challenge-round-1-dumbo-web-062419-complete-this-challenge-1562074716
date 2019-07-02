class Customer
  attr_accessor :customer
  attr_reader :first_name, :last_name
  @@all = []
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

  def add_review(customer, restaurant, content, rating)
    Review.new(customer, restaurant, content, rating)
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def num_reviews
    reviews.size
  end


    
  def self.find_by_name(name)
    customers = @@all.select do |customer|
      customer.name == name
    end
    customers
  end


  def self.find_all_by_first_name(name)
    @@all.select do |customer|
      customer.name == first_name
    end
  end

  def self.all_names
  end


end
