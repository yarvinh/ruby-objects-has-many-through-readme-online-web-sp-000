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
end
