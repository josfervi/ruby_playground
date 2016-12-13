# http://prepwork.appacademy.io/coding-test-1/introduction-to-programming-1/

# Following along to Intro to Programming by App Academy
#  learned about the following methods:
    # +     (num + num) or (string + string)
    # -
    # *
    # /     (int div)
    # puts  (print  )
    # gets  (prompt ) name= gets # name gets a newline at the end consequence of user pressing enter after they typed in the prompt response
    # to_i  (to int )   string.to_i, float.to_i, both work
    # to_s  (to string)
    # chomp (string.chomp returns a copy of string without trailing newlines present in the original string)

# type "ruby <name of this file>.rb" (e.g. "ruby first_program.rb") to run/execute the program

puts "Hello World!"
puts "Type in your name!"
name= gets # = gets() 
           # there is no variable named gets, so Ruby looks for a method named gets, which it then runs with no input.
           # common practice in Ruby: not to use () when calling a method with no arguments. Rubyists do this because they think it looks cleaner
puts name

seven= "4".to_i + "3".to_i() # To convert a string to an integer, we can use the to_i method
puts seven # 7

not_seven= "4" + "3" # string concatenation
puts not_seven # 43

puts "8.0 = "
puts 8.0 # 8.0
# puts "8.0.to_i = " + 8.0.to_i # Type error can't use string + int or int + string, likely also true for string, float combos
puts "8.0.to_i = "
puts 8.0.to_i # 8
puts "8.5.to_i = "
puts 8.5.to_i # 8

puts 1.to_s + 3.to_s + " is unlucky, if you believe in luck."

puts "1.to_s + 3= " + 1.to_s + "3"

# puts 4 + "3" # TypeError
# puts "4" + 3 # TypeError

name= "Ned"
puts "Hello " + name + "!" # prints "Hello Ned!" (w/o quotes)

puts "Type in 'Ned' (w/o quotes) and press enter"
name= gets
puts "Hello " + name + "!" # prints "Hello Ned\n!" (w/o quotes) because gets captures the enter too - as a newlin.

puts "Type in 'Ned' (w/o quotes) and press enter"
name= gets.chomp  # interpreted as gets().chomp()
                  # The chomp method is called on a string and removes any newlines at the end of the string
puts "Hello " + name + "!" # prints "Hello Ned!" (w/o quotes)

# The chomp method produces a new string without the newline; it does not modify or change the original string. The following would not fix the original problem:
puts("Type in your name!")
name = gets
# Creates a new string without the newline, but does not change the
# original string referenced by the variable `name`. In this program,
# the result of name.chomp is not stored or used anywhere, so this
# line is superfluous.
name.chomp

puts("Hello " + name + "!")


# We could fix this by reassigning name:
puts("Type in your name!")
name = gets

# Reassign name to refer to the new string returned by `name.chomp`
name = name.chomp

puts("Hello " + name + "!")

puts

puts"Hiya"
puts("Hello")
puts ("Hi")

puts

puts 42
puts(43)

puts

puts 3+4

puts 5-7

puts

puts 3 * 4
puts 8 / 2

puts

puts 7 / 2 # 3 (integer division)
puts 7./ 2 # 3

puts

puts 7.0/2 # 3.5
puts 7/2.0 # 3.5
puts 7.fdiv(2) # 3.5

puts

puts 11/4 # 2
puts 11%4 # 3

variable_name= 1

# puts 7 / 2. # syntax error
# puts (7/2.) # syntax error