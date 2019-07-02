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
      #all reviews for this restaurant
      Review.all.select {|review| review.restaurant == self}
    end

    def customers
      reviews.map {|review| review.customer}.uniq
    end

    def average_star_rating
      #average for restaurant devide total number by number of reviews

      tot = reviews.map {|review| review.rating}.sum
      tot / reviews.map {|review| review.customer}.length

    end

    def longest_review

      #the longest review for a rest

     longest_one = reviews.map {|review| review.content}.max
    end


end

#a restaurant can have many reviews
