class Waiter
    attr_reader :name, :years_exp
    @@all = []

    def initialize(name, years_exp)
        @name = name
        @years_exp = years_exp
        @@all << self
    end

    def self.all
        @@all
    end

    def new_meal(customer, total, tip)
        Meal.new(self, customer, total, tip)
    end

    def meals
        Meal.all.select {|x| x.waiter == self}
    end

    def best_tipper
        max_num = 0
        max_tipper = ""
        Meal.all.each do |x|
            if  x.tip > max_num
                max_tipper = x.customer
                max_num = x.tip
            end
        end
        max_tipper
    end
end