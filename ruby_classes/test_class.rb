#multiple class methods without having self keyword

class TestClass
  # bad
  def TestClass.some_method
    # body omitted
    puts "some method"
  end

  # good
  def self.some_other_method
    # body omitted
    puts "some other method"
  end

  # Also possible and convenient when you
  # have to define many class methods.
  class << self
    def first_method
      # body omitted
      puts "first method"
    end

    def second_method_etc
      # body omitted
      puts "second method"
    end
  end
end

TestClass.some_method
TestClass.some_other_method
TestClass.first_method
TestClass.second_method_etc
