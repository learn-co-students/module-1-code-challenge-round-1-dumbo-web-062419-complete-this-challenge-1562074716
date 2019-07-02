class Review
  @@all = []

  def initialize(customer, restaurant, content, rating)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @rating = rating
    customer.reviews << self
    restaurant.reviews << self
    @@all << self
  end

  def customer
    @customer
  end

  def restaurant
    @restaurant
  end

  def rating
    @rating
  end

  def content
    @content
  end

  def Review.all
    @@all
  end

end

