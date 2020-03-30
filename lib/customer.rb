class Customer
  attr_accessor :name ,:age, :waiter, :total , :tip
  @@all
  def initialize(name,age)
    @name = name
    @age = age
    @@all << self
  end
  def self.all
    @@all
  end
  def new_meal(waiter,total,tip = 0)
    Meal.new(waiter,self,total,tip )
  end
  def meals
    
  end
end

# it "returns an Array of Meal instances associated with this customer" do
#   howard = Customer.new("Howard", 30)
#   daniel = Customer.new("Daniel", 30)
#   terrance = Waiter.new("Terrance", 1)
#   joe = Waiter.new("Joe", 10)
#   esmery = Waiter.new("Esmery", 2)
#   andrew = Waiter.new("Andrew", 3)
#   
#   howard.new_meal(terrance, 15, 2)
#   howard.new_meal(joe, 15, 4)
#   howard.new_meal(andrew, 15, 5)
#   daniel.new_meal(terrance, 20, 1)
#   daniel.new_meal(esmery, 15, 3)
#   
#   expect(Meal.all.length).to eq(5)
#   expect(howard.meals.length).to eq(3)
#   expect(daniel.meals.length).to eq(2)