class Waiter
  attr_accessor :name, :years_experience, :customer
  @@all = []
  def initialize(name, years_experience)
  @name = name
  @years_experience = years_experience
  @@all << self
  end
  def self.all
    @@all
  end
  def new_meal(customer,total,tip = 0)
    Meal.new(self,customer,total,tip )
  end
  def meals
    Meal.all.select{|meal|meal.waiter == self}
  end
  def best_tipper
    waiter = []
    value = 0
    Meal.all.each{|meal|
      if meal.waiter == self
        if i > value
        value = i
      waiter << meal.customer
    end
      end
    }
     waiter
  end
end
