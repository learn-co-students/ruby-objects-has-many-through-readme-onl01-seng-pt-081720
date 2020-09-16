class Customer
  
  attr_accessor :name, :age 
  
  @@all = []
  
  def initialize(name, age)
    @name = name 
    @age = name 
    @@all << self
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_meal(waiter, total, tip=0)
    
  end 
  
  
  
  
end