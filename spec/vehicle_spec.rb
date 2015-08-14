require('rspec')
require ('vehicle')

describe(Vehicle) do
end

describe('#make') do
  it("returns the make of the vehicle") do
  test_vehicle = Vehicle.new("Toyota", "Yaris", 2013)
  expect(test_vehicle.make()).to(eq("Toyota"))
  end
end

describe('#model') do
  it("returns the model of the vehicle") do
  test_vehicle = Vehicle.new("Toyota", "Yaris", 2013)
  expect(test_vehicle.model()).to(eq("Yaris"))
  end
end

describe('#year') do
  it("returns the year of the vehicle") do
  test_vehicle = Vehicle.new("Toyota", "Yaris", 2013)
  expect(test_vehicle.year()).to(eq(2013))
  end
end
