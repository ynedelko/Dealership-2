require('rspec')
require ('vehicle')

describe(Vehicle) do
  before() do
    Vehicle.clear()
  end
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

describe(".all") do
  it("it creates an empty array for vehicles") do
    expect(Vehicle.all()).to(eq([]))
  end
end

describe("#save") do
  it("adds a vehicle to an array of vehicles") do
  test_vehicle = Vehicle.new("Toyota", "Yaris", 2013)
  test_vehicle.save()
  expect(Vehicle.all()).to(eq([test_vehicle]))
  end
end

describe(".clear") do
  it("clears out all the saved vehicles in the array") do
  Vehicle.new("Toyota", "Yaris", 2013).save()
  Vehicle.clear()
  expect(Vehicle.all()).to(eq([]))
  end
end
