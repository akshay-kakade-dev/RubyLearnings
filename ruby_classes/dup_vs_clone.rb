module Foo
  def foo
    p 'foo'
  end
end

class Klass
  include Foo
  attr_accessor :str
end

s1 = Klass.new #=> #<Klass:0x401b3a38>
# s1.extend(Foo) #=> #<Klass:0x401b3a38>
s1.foo #=> "foo"
puts s1.object_id

s2 = s1.clone #=> #<Klass:0x401b3a38>
s2.foo #=> "foo"
puts s2.object_id


s3 = s1.dup #=> #<Klass:0x401b3a38>
puts s3.object_id
s3.foo #=> NoMethodError: undefined method `foo' for #<Klass:0x401b3a38>