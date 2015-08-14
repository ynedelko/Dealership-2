class Vehicle
  @@vehicles = []

  define_method(:initialize) do |make, model, year|
    @make = make
    @model = model
    @year = year
    @id = @@vehicles.length.+(1)
  end

  define_method(:make) do
    @make
  end

  define_method(:model) do
    @model
  end

  define_method(:year) do
    @year
  end

  define_singleton_method(:all) do
    @@vehicles
  end

  define_method(:save) do
    @@vehicles.push(self)
  end

  define_singleton_method(:clear) do
    @@vehicles = []
  end

  define_method(:id) do
    @id.to_i()
  end

  define_singleton_method(:find) do |id|
    found_vehicle = nil
    @@vehicles.each() do |vehicle|
      if vehicle.id().eql?(id)
        found_vehicle = vehicle
      end
    end
    found_vehicle
  end
end
