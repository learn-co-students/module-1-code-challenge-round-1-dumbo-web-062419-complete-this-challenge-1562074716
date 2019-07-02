class Review
    attr_writer :customer, :restaurant 

    @@all = []

    def initialize(customer, review, star_rating, restaurant)
        @customer = customer
        @review = review 
        @star_rating = star_rating
        @restaurant = restaurant
        self.class.all << self
    end

    def self.all
        @@all
    end

    def customer
        # returns the customer object for that given review Once a review is created, I should not be able to change the author
        Customer.all.select { |customer| customer.review == self}
    end

    def restaurant 
        # returns the restaurant object for that given review. Once a review is created, I should not be able to change the restaurant
        Restaurant.all.select { |restaurant| restaurant.review == self}
    end

    def rating
        # returns the star rating for a restaurant. This should be an integer from 1-5
        restaurant.each do |restaurant| 
            if restaurant.review == self
                restaurant.review.star_rating
            end
        end
    end

    def content
        # returns the review content, as a string, for a particular review
    end

  
end

