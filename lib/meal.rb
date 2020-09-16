class Meal

    @@all = []

    def initialize(cust,waiter,total,tip)
        @cust = cust
        @waiter = waiter
        @total = total
        @tip = tip
        @@all << self
    end

    def self.all
        @@all
    end

end