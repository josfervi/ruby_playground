# Write a method that takes in an integer (greater than one) and
# returns true if it is prime; otherwise return false.
#
# You may want to use the `%` modulo operation. `5 % 2` returns the
# remainder when dividing 5 by 2; therefore, `5 % 2 == 1`. In the case
# of `6 % 2`, since 2 evenly divides 6 with no remainder, `6 % 2 == 0`.
# More generally, if `m` and `n` are integers, `m % n == 0` if and only
# if `n` divides `m` evenly.
#
# You would not be expected to already know about modulo for the
# challenge.
#
# Difficulty: medium.

def is_prime?(number)
  
  if number   == 2 then  return true   end
  if number%2 == 0 then  return false  end
  if number   == 3 then  return true   end
  if number%3 == 0 then  return false  end
  
  square_root= Math.sqrt(number).to_i # .to_i is not necessary, but it doesn't hurt (9<9.5 is true)
  
  divisor= 5
  while divisor <= square_root
    
    if number%divisor == 0 then  return false  end
    
    divisor+= 2
    if number%divisor == 0 then  return false  end
    
    divisor+= 4
  end
  # note the sequence of divisors, 5,7,11,13,17,19,23,25,29,31... <- these are the set of numbers not divisible by either 2 or 3 or both
  
  return true
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('is_prime?(2) == true: ' + (is_prime?(2) == true).to_s)
puts('is_prime?(3) == true: ' + (is_prime?(3) == true).to_s)
puts('is_prime?(4) == false: ' + (is_prime?(4) == false).to_s)
puts('is_prime?(9) == false: ' + (is_prime?(9) == false).to_s)
puts('is_prime?(25) == false: ' + (is_prime?(25) == false).to_s)
puts('is_prime?(77) == false: ' + (is_prime?(77) == false).to_s)
puts('is_prime?(121) == false: ' + (is_prime?(121) == false).to_s)