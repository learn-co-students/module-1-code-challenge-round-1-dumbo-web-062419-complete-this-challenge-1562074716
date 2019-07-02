class Review

    attr_reader :restaurant, :customer
    attr_accessor :content

    @@all = []

    def initialize(customer, restaurant)
        @customer = customer
        @restaurant = restaurant
        @content = ''
        @@all << self 
    end

    def customer 
        #come back
    end

    def restaurant
        #come back
    end

    def rating
        #come back
    end 

    def content
        #come back
    end

    def self.all
        @all
    end

        
  
end

