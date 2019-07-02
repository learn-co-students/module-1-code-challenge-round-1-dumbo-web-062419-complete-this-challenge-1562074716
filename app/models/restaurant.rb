class Restaurant
  attr_reader :name
@@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do|reviews|
      reviews.restaurant == self
    end
  end

  def customers
    array = []
    reviews.collect do|r|
    array << r.customer
    end
    array.uniq
  end

  def average_star_rating
    array = []
    reviews.collect do|r|
      array << r.rating
    end
    array.inject{ |sum, el| sum + el }.to_f / array.size
  end

  # def longest_review
  #   reviews.each do|r|
  #     # binding.pry
  #     r.content.length
      
     
  #   end
  # end

end
