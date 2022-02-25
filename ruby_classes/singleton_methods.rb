# Ruby’s singleton methods are the methods that can be defined for a
# specific object only i.e. it works for a single object. These kinds of methods
# belong to the singleton class or eigenclass and are available exclusively for a single object,
# unlike the other methods which are available for all the instances of the class.
# This feature is more useful where there is a need for the object to possess some unique
# behavior or methods which the other objects of the class do not own.

class Vehicle
  def wheels
    puts "There are many wheels"
  end
end
  
# Object train
train = Vehicle.new 
  
# Object car
car = Vehicle.new   
  
# Singleton method for car object
def car.wheels   
  puts "There are four wheels"
end
  
puts "Singleton Method Example"
puts "Invoke from train object:"
train.wheels         
puts "Invoke from car object:"
car.wheels
