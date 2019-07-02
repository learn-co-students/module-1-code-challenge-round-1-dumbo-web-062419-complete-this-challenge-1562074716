class Customer
  attr_reader :first_name, :last_name

  @@all =[]

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    full_name.find {|name| name == self}
  end 

  def self.find_all_by_first_name (name)
    self.all.select {|name| name.first_name==self}
  end

  def self.all_names
    self.all.full_name
  end

  def self.all
    @@all
  end



end
