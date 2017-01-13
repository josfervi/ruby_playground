# class Fraction
#   attr_reader :numerator, :denominator
#   def initialize(numerator, denominator)
#     @numerator, @denominator = numerator, denominator
#   end
# end

# puts Fraction.new(3, 6) == Fraction.new(3, 6) # => false <- WRONG!!!
# puts Fraction.new(3, 6) == Fraction.new(1, 2) # => false <- WRONG!!!

# must define an == method for the Fraction class

class Fraction
  attr_reader :numerator, :denominator
  def initialize(numerator, denominator)
    @numerator, @denominator = numerator, denominator
  end
  
  def ==(other)
    return false if not other.is_a? Fraction
    
    return (numerator.fdiv denominator) == (other.numerator.fdiv other.denominator)
  end
end

puts Fraction.new(3, 6) == Fraction.new(3, 6) # => true
puts Fraction.new(3, 6) == Fraction.new(1, 2) # => true

puts Fraction.new(1, 2) == Fraction.new(1, 3) # => true <- WRONG!!!