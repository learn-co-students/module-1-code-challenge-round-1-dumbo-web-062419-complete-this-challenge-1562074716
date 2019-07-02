class Customer
  attr_reader :first_name, :last_name
  @@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end
  
  def self.find_by_name(name)
    #find first string of full name
    #first that matches
    Review.all.find do |name|
      
      
    end
  end

  def self.find_all_by_first_name(name)
    #returns an array containing all customers
    #with that first name


  end

  def self.all_names
    #return an array of all customer full names

  end

  def add_review(restaurant,content,rating)
    #creates a new review and associates
    #with that customer and restaurant

  end

  def num_reviews
    #returns the total number of reviews that
    #a customer has authored


  end

  def restaurants
    #returns a unique array of all restaurants
    #a customer has reviewed


  end
end
