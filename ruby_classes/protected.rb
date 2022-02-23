# private method
class Guy   
  # public method
  def hows_it_going?
      how_are_your_underpants_feeling?
  end

  private

  def how_are_your_underpants_feeling? # private method
    puts "oh dear, i'm in great pain!"
  end
end

obj = Guy.new
obj.hows_it_going?



# protected example
class Person
    
  protected

  def gimme_your_credit_card! # protected method
    puts "Fine. Whatever. Here it is: 1234-4567-8910"
  end
end

class Akshay < Person
  def print_bank_balance(p)
    p.gimme_your_credit_card!
  end
end

p = Person.new
a = Akshay.new
a.print_bank_balance(p)
a.gimme_your_credit_card!

