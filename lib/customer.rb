class Customer
  
  attr_accessor :name, :age
  
  @@all = []
  
  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_meal(waiter, total, tip = 0)
    # uses the initialize form Meal class, so the self is this customer instance
    Meal.new(waiter, self, total, tip)
  end
  
  def meals
    Meal.all.select do |meal|
      meal.customer == self
    end
  end
  
  def waiters
    meals.map do |meal|
      meal.waiter
    end
  end
  
end