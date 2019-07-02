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
    puts "Hi, my name is #{first_name}  #{last_name}"
  end

  def add_review(restuarant, content, rating)
    #come back
  end

  def num_reviews
    #come back
  end

  def restuarant
    #come back
    #return a unique(i.e map) array of all restaurants a customer has reveiw
    restaurant.map do |restaurant|
      restaurant.customer == self 
    end
  end

  def self.find_by_name(name)
    #come back
  end

  def self.find_all_by_first_name(name)
    #come back
  end

  def self.all_names
    #come back
  end


end
