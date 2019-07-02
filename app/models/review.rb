class Review
    attr_reader :customer, :resturant 
    attr_accessor :rating, :review

    @@all= []

  def initialize (customer,restaurant,rating, review)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @review = review
    @@all<< self
  end

  def self.all
    @@all
  end

  def customer
    #will comeback when I have time
  end
  
  def resturant
    #will comeback when I have time
  end


end

