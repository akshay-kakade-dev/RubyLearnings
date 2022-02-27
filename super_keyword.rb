# super program
class Parent
  def say(message)
    p message
  end
end

class Child < Parent
  def say(message)
    super
  end
end

Child.new.say('Hi Rubyist!') # => "Hi Rubyist!"


# super() program
class Parent
  def say
    p "I'm the parent"
  end
end

class Child < Parent
  def say(message)
    super()
  end
end

Child.new.say('Hi!') # => "I'm the parent"

# super with block
class Parent
  def say
    yield
  end
end

class Child < Parent
  def say
    super
  end
end

Child.new.say { p 'Hi! Glad to know you Parent!' } # => "Hi! Glad to know you Parent!"
