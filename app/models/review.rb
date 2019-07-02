class Review
  
    attr_accessor :title, :restaurant, :content, :rating, :customer
    @@all =[]
    
    def initialize(title, restaurant, content, rating, customer)
        @title = title
        @restaurant = restaurant
        @content = content
        @rating = rating
        @customer = customer
        @@all << self
    end

    def self.all
        @@all
    end    

    


end

