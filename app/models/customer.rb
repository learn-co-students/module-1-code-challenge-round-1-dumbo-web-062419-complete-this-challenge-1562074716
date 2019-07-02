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

  def add_reviews(restaurant, content, rating)
    Review.new(self, restaurant,content,rating)
  end

  def num_reviews
    # total number of reviews for this customer
   Review.all.select {|reviews| reviews.customer == self}.length
  end

  def my_helper
    Review.all.select {|reviews| reviews.customer == self}
  end


  def restaurants
    #only return the same rest once - uniq
    my_helper.map {|restaurant| restaurant.restaurant}.uniq

  end
    

end

#one customer can have many reviews