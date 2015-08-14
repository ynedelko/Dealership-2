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
