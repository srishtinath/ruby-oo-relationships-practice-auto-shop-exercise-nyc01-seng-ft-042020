class Car
  attr_accessor :owner, :mechanic, :classification
  attr_reader :make, :model
  @@all = [ ]
  def initialize(make, model, classification)
    @make = make
    @model = model
    @classification = classification
    Car.all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    Car.all.map { |car_obj| car_obj.classification}.uniq
  end

  def self.find_mechanics_helper(class_input)
    Car.all.select { |car_obj| car_obj.classification == class_input}
  end

  def self.find_mechanics(class_input)
    Car.find_mechanics_helper(class_input).map {|car_obj| car_obj.mechanic}.uniq
  end
end

# - `Car.all` Get a list of all cars

#   - `Car.classifications` Get a list of all car classifications

#   - `Car.find_mechanics(classification)` Get a list of mechanics that have an expertise that matches the passed in car classification