class Meal
  attr_accessor  :waiter, :customer, :total, :tip, :new_meal
  @@all = []
  def initialize(waiter,customer,total,tip = 0)
    @waiter = waiter
    @customer = customer
    @total = total
    @tip = tip
    @@all << self
  end
  def self.all
    @@all
  end
  def new_meal(cutomer,waiter,total,tip = 0)
    meal = self
    meal.waiter = waiter
    meal.total = total
    meal.tip = tip
    meal.customer = customer
    meal
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
