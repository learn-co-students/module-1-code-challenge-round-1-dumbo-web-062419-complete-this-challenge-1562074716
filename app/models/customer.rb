class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

    def self.all
      @all
    end

    #given a string of a full name, returns 
    #the first customer whose full name matches
    def self.find_by_name(name)
      @all.find { |customer| customer.full_name == name}
    end

    #given a string of a first name, returns an array 
    #containing all customers with that first name
    def self.find_all_by_first_name(name)
      @all.select { |customer| customer.first_name }
    end

    #should return an array of all of the customer 
    #full names
    def self.all_names
      full_names = []
      @all.each do |customer|
        full_names << customer.full_name
      end
      full_names
    end

    #given a restaurant object, some review content 
    #(as a string), and a star rating (as an integer),
    #creates a new review and associates it with that 
    #customer and restaurant.
    def add_review(restaurant, content, rating=0)
      r1 = Review.new(self, restaurant, content, rating)
    end

    #Returns the total number of reviews that a 
    #customer has authored
    def num_review
      result = Review.all.select { |review| review.customer == self }
      result.count
    end

    #Returns a unique array of all restaurants a 
    #customer has reviewed
    def restaurant
      Review.all.select { |review| review.restaurant  }

    end

end
