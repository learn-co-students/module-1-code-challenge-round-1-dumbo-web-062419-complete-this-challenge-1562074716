class Customer
  attr_reader :first_name, :last_name
  @@all = []
  @@all_fullnames = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all_fullnames << "#{first_name} #{last_name}"
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all_names
    @@all_fullnames
  end

  def self.all
    @@all
  end

  def restaurants
    Review.all.select{|review| review.customer == self}.uniq
  end

  def add_review(title, restaurant, content, rating)
    Review.new(title, restaurant, content, rating, self)
  end

  def self.find_by_name(full_name)
    @@all_fullnames.find{|customer| customer == full_name}
  end

  def self.find_by_first_name(name)
    @@all.find{|customer| customer.first_name == name}
  end


end
