class Review
  attr_reader :content, :customer, :restaurant
  attr_accessor :rating

  @@reviews = []

    def initialize(restaurant, content, customer, rating=0)
      @content = content
      @restaurant = restaurant
      @customer = customer
      @rating = rating

      @@reviews << self
    end

    #INSTANCE METHODS



    #CLASS METHODS
    def self.all
      @@reviews
    end


end
