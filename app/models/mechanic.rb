class Mechanic

  attr_reader :name, :specialty
  @@all = []
  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    Mechanic.all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select { |car_obj| car_obj.mechanic == self}
  end

  def car_owners
    cars.map { |car_obj| car_obj.owner}
  end

  def car_owners_names
    cars.map { |car_obj| car_obj.owner.name}
  end
end

# - `Mechanic.all` Get a list of all mechanics

#   - `Mechanic#cars` Get a list of all cars that a mechanic services

#   - `Mechanic#car_owners` Get a list of all the car owners that go to a specific mechanic

#   - `Mechanic#car_owners_names` Get a list of the names of all car owners who go to a specific mechanic
