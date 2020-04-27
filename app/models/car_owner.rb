class CarOwner

  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    CarOwner.all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select { |car_obj| car_obj.owner == self}
  end

  def mechanics
    cars.map { |car_obj| car_obj.mechanic }
  end

  def self.average_number_of_cars
    Car.all.size / CarOwner.all.size
  end
end

# - `CarOwner.all` Get a list of all owners

# - `CarOwner#cars` Get a list of all the cars that a specific owner has

# - `CarOwner#mechanics` Get a list of all the mechanics that a specific owner goes to

# - `CarOwner.average_number_of_cars` Get the average amount of cars owned for all owners