module Test
  def self.add()
    puts "added"
  end

  def minus()
    puts "minus"
  end
end

class Sample
  include Test
  def print_something
    puts "hello"
  end
end

s = Sample.new
s.print_something
s.minus
s.add