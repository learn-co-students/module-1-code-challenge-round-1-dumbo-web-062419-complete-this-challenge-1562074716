class Review
    attr_accessor :content, :rating
    attr_reader :customer, :restaurant

    @@all = []

    def initialize(customer, restaurant, content, rating)
        @customer = customer
        @restaurant = restaurant
        @content = content
        @rating = rating
        @@all << self
    end

    def self.all
        @all
    end

    #returns the customer object for that given review.
    #Once a review is created, I should not be able 
    #to change the customer
    def customer
        self.customer
    end

    #returns the restaurant object for that given review.
    #Once a review is created, I should not be able 
    #to change the restaurant
    def restaurant
        self.restaurant
    end

    #returns the star rating for a restaurant. 
    #This should be an integer from 1-5
    def rating
        self.restaurant

    end

    #returns the review content, as a string, 
    #for a particular review
    def content
        self.review
    end
  
end

