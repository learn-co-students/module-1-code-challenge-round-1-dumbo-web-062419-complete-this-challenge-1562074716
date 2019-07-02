class Customer
  attr_reader :first_name, :last_name, :restaurant
  attr_accessor :content, :rating

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self

  end


  def add_review(restaurant, content, rating)
    @restaurant = restaurant
    @content = content
    @rating = rating
    @@all << self
  end

  #Returns the total number of reviews that a customer has authored
  def num_reviews
    @@all.select do |review|
      review.restaurant == self

    end
  end

  def restaurants
    #Returns a **unique** array of all restaurants a customer has reviewed

  end



  

  def self.all 
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
