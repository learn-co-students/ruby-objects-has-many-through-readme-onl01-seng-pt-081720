require 'pry'
class Customer
  attr_reader :name, :age
  @@all = []

  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end

  def new_meal(waiter, total, tip)
    Meal.new(waiter, self, total, tip)
  end

  def meals
    Meal.all.select {|x| x.customer == self}
  end

  def waiters
    wait = []
    Meal.all.each do |x|
        if x.customer == self
            wait << x.waiter
        end
      end
      wait
  end




end