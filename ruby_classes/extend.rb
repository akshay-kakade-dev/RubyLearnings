# extend is instance method of Object

module Mod
  def hello
    puts "Hello from Mod.\n"
  end
end

class Klass
  def hello
    puts "Hello from Klass.\n"
  end
end

k = Klass.new
k.hello         #=> "Hello from Klass.\n"
k.extend(Mod)   #=> #<Klass:0x401b3bc8>
k.hello         #=> "Hello from Mod.\n"
p Klass.ancestors #[Klass, Object, Kernel, BasicObject]


class Sample
  include Mod
end

s = Sample.new
s.hello # "Hello from Mod.\n"
p Sample.ancestors # [Sample, Mod, Object, Kernel, BasicObject]
#changes the ancestors