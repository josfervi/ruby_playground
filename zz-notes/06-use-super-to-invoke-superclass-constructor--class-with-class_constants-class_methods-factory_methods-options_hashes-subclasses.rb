# # Topics:
# * class constants
# * class methods
# * factory methods via class methods
# * instances / objects
#   * instance attributes
#   * instance constructors
#     * options hashes 
# * subclasses and inheritance
#
# good use of ||
#   obj || X   evaluates to obj
#   nil || obj evaluates to obj
#
# in ln 37, 'Temperature.'' is optional
#           that is 'new(:c => temp_in_celsius)' works
#
# in ln 54, 'Temperature.' is not optional
#           for ref: ln 54:
#           @in_fahrenheit= options[:f] || Temperature.ctof( options[:c] )

class Temperature
  
  # class constants
  FREEZING_POINT_IN_C=  0.0
  FREEZING_POINT_IN_F= 32.0
  
  C_OVER_F= 5.0/9.0 #   (BOILING_POINT_IN_C- FREEZING_POINT_IN_C) \
                    # / (BOILING_POINT_IN_F- FREEZING_POINT_IN_F)
  
  F_OVER_C= 9.0/5.0
  
  # class methods
  def self.ftoc( temp_in_fahrenheit )
    C_OVER_F * (temp_in_fahrenheit - FREEZING_POINT_IN_F)
  end
  
  def self.ctof( temp_in_celsius )
    (F_OVER_C * temp_in_celsius) + FREEZING_POINT_IN_F
  end
  
  # Factory methods implemented via class methods
  def self.from_celsius(temp_in_celsius)
    Temperature.new(:c => temp_in_celsius)
  end
  
  def self.from_fahrenheit(temp_in_fahrenheit)
    Temperature.new(:f => temp_in_fahrenheit)
  end
  
  # instance attributes
  attr_reader :in_fahrenheit, :in_celsius
  
  # instance constructor
  def initialize options
    @in_fahrenheit= options[:f] || Temperature.ctof( options[:c] )
    @in_celsius=    options[:c] || Temperature.ftoc( options[:f] )
  end
end

class Celsius < Temperature
  def initialize( temp_in_celsius )
    super(:c => temp_in_celsius)
  end
end

class Fahrenheit < Temperature
  def initialize( temp_in_fahrenheit )
    super(:f => temp_in_fahrenheit)
  end
end