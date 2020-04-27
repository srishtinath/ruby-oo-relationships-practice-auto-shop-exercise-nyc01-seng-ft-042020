require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Car (make, model, classification)
#Owner (name)
#Mechanic (name, specialty)

carowner1 = CarOwner.new("Floyd")
carowner2 = CarOwner.new("Roger")
carowner3 = CarOwner.new("Isabella")
carowner4 = CarOwner.new("Gina")
mechanic1 = Mechanic.new("Mark", "antique")
mechanic2 = Mechanic.new("Mason", "clunker")
mechanic3 = Mechanic.new("Michael", "truck")
mechanic4 = Mechanic.new("Moe", "exotic")
fancy_new_thang = Car.new("Lamborghini", "Aventador", "exotic")
fancy_new_thang.owner = carowner3
fancy_new_thang.mechanic = mechanic4
aston_martin = Car.new("Aston Martin", "Rapide", "exotic")
aston_martin.owner = carowner2
aston_martin.mechanic = mechanic4
jeep_wrangler = Car.new("Jeep", "Wrangler", "truck")
jeep_wrangler.owner = carowner3
jeep_wrangler.mechanic = mechanic3
fancy_new_thang2 = Car.new("Lamborghini", "Aventador", "exotic")
fancy_new_thang3 = Car.new("Lamborghini", "Aventador", "exotic")
fancy_new_thang4 = Car.new("Lamborghini", "Aventador", "exotic")
fancy_new_thang5 = Car.new("Lamborghini", "Aventador", "exotic")
fancy_new_thang6 = Car.new("Lamborghini", "Aventador", "exotic")


binding.pry
puts "Car stuff recorded"

# **CarOwner**

#   - `CarOwner.all` Get a list of all owners

#   - `CarOwner#cars` Get a list of all the cars that a specific owner has

#   - `CarOwner#mechanics` Get a list of all the mechanics that a specific owner goes to

#   - `CarOwner.average_number_of_cars` Get the average amount of cars owned for all owners

# **Car**

#   - `Car.all` Get a list of all cars

#   - `Car.classifications` Get a list of all car classifications

#   - `Car.find_mechanics(classification)` Get a list of mechanics that have an expertise that matches the passed in car classification

# **Mechanic**

#   - `Mechanic.all` Get a list of all mechanics

#   - `Mechanic#cars` Get a list of all cars that a mechanic services

#   - `Mechanic#car_owners` Get a list of all the car owners that go to a specific mechanic

#   - `Mechanic#car_owners_names` Get a list of the names of all car owners who go to a specific mechanic