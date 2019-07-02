class Customer
  attr_reader :first_name, :last_name, :reviews

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @reviews = []
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    self.reviews.length
  end

  def restaurants
    self.reviews.map do |review|
      review.restaurant
    end.uniq
  end

  def Customer.all
    @@all
  end

  def Customer.find_by_name(full_name)
    Customer.all.find do |customer|
      customer.full_name == full_name
    end
  end

  def Customer.find_all_by_first_name(first_name)
    Customer.all.select do |customer|
      customer.first_name == first_name
    end
  end

  def Customer.all_names
    Customer.all.map do |customer|
      customer.full_name
    end
  end

end
