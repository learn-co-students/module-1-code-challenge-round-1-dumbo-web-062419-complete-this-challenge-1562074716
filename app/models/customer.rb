class Customer
  attr_reader :first_name, :last_name
@@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  
  def add_review(restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end

  def reviews
    Review.all.select do|reviews|
      reviews.customer == self
    end
  end

  def num_reviews
    reviews.count
  end

  def restaurants
    array = []
    reviews.collect do|r|
    array << r.restaurant
    end
    array.uniq
  end

  # def self.find_by_name(name)
  #   @@all.select do |n|
  #     binding.pry
      
  #   end
  # end




end
