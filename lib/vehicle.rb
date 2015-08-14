class Vehicle
  define_method(:initialize) do |make, model, year|
    @make = make
  end

  define_method(:make) do
    @make
  end
end
