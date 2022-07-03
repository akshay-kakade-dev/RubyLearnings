module Ieat
  def eats
    "spinach"
  end
end

class Human
end

Human.extend Ieat # add class methods from Ieat

puts Human.eats # -> spinach
