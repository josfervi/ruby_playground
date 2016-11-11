# http://prepwork.appacademy.io/coding-test-1/introduction-to-programming-2/
# Following along to App Academy intro to prog II

# We saw that when you call (or invoke) the to_i or to_s method, you call them on an object:
# object.method

# Equivalent to 5 + 5
ten = 5.+(5)
# Equivalent to 9 - 2
seven = 9.-(2)
# Equivalent to 4 * 3
twelve = 4.*(3)
# Equivalent to 8 / 4
two = 8./(4)

# Even puts and gets are methods. When you call them, the object is implicit, which means we can leave it out.

# Comparison
# <  >  ==  !=
# note ruby booleans are 'true' (w/o quotes) and 'false' (w/o quotes)
puts("Three" == "Three") # == for string

# Code branching
puts("Type in a number")

# In one line, we use `gets` to read a string from the user, then
# immediately call `to_i` on the string to return an integer.
num = gets.to_i # if I type "1", gets = "1\n", then "1\n".to_i ignores the newline?

puts num + 1 # 2 ; it seems like to_i ignores the newline indeed
puts "12\n".to_i # 12 ; to_i does ignore the newline


# The if has two parts: the test/condition (num < 10) and the body (puts("That's not a big number!"))
if num < 10
  puts("That's not a big number!") # unlike python, indentation is optional, but strongly recommended for visual clarity
end # note the end

# 
# if condition
#   body
# else
#   body
# end

#
# if condition
#   body
# elsif condition
#   body
# elsif condition
#   body
# else
#   body
# end

# Logical Connectives
#   && (python's and)
#   || (python's or)  (short circuited? yes)
#   !  (python's not)
# 'nil' and 'false' are the false values
# nuanced ||
# The way the || operator works in Ruby is that
# it returns the left operand (the 7 in 7 || anything) if it is "truthy"
# (anything except nil or false),
# otherwise it returns the right operand (e.g, 13 in false || 13).
# Therefore, (7 || 13) == 7, since 7 is truthy.

puts "7 || 13 = "
puts  7 || 13 # 7
puts "false || 13 = "
puts  false || 13 # 13

# concatenate a string and a number
puts "thirteen is " + 13.to_s # Question: is there a shorter form???

#
# while condition
#   body
# end

# ctrl - c to exit ruby program
# At any time while your program is running, you can hold the Ctrl key and press C to stop it. Ruby will print a somewhat nasty error, but your program will stop. That's the best way to stop the program if you think it has entered an infinite loop.

# Arrays
cool_things = ["Racecars", "Lasers", "Aeroplanes"]
four_primes = [2, 3, 5, 7]
four_primes[1] # 3 # 0-indexed
an_empty_array = []
four_primes.length # 4

array_of_mixed_types= [1, false, "string"]