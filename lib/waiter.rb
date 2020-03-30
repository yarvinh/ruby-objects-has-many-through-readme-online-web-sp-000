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
    Meal.new_meal(customer,self,total,tip )
    # waiter = self
    # waiter.waiter = customer
    # waiter.total = total
    # waiter.tip = tip
    # waiter
  end
end
