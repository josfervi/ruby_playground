nums= [1,2,3,4]

puts nums.inject(:+) #=> 10 # Observation
puts nums.inject(:*) #=> 24

# HOW inject works, the following is equivalent to nums.inject(:+)
puts nums.inject() {|accum, element| accum + element} # => 10
puts nums.inject() {|accum, element| accum * element} # => 24

# if you do not explicitly specify an initial value, then
# the initial value of the accumulator becomes the first value
# of the array

puts nums.inject(1000) {|accum, element| accum + element} # => 1010 # accum is initially set to 1000, the method argument

# We pass inject an initial value and a block.
# The code block takes the current accumulator value and
# the next element in the Enumerable. The block is run,
# and the accumulator value is updated with the block's result.
# When all elements have been processed,
# the accumulator value is returned.

# inject is sometimes hard to understand, consider using loops instead