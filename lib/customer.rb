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
    Meal.new_meal(self,waiter,total,tip = 0)
    # customer = self
    # customer.waiter = waiter
    # customer.total = total
    # customer.tip = tip
    # customer
  end
end

# describe "Customer" do
#   describe "#new_meal" do
#     it "initializes a meal using the current Customer instance, a provided Waiter instance and a total and tip" do
#       howard = Customer.new("Howard", 30)
#       terrance = Waiter.new("Terrance", 1)
#       howard.new_meal(terrance, 10, 1)
#
#       expect(Meal.all.first.waiter).to eq(terrance)
#       expect(Meal.all.first.customer).to eq(howard)
#     end
#   end
