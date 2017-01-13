# Write a method that returns the `n`th prime number. Recall that only
# numbers greater than 1 can be prime.
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

def nth_prime(n)
  
  primes= [2,3]
  
  sixer= 6
  3.times do
    primes+= [sixer-1, sixer+1]
    sixer+= 6
  end
  
  # primes= [2,3 5,7, 11,13, 17,19]
  
  if n-1 < primes.length then  return primes[n-1]  end
  
  candidate= 23
  add2=      true
  until primes[n-1] do # awesome!!!, do is optional but I'll leave it, I like the way it reads!!!
  
    idx= 2
    prime= primes[2]
    square_root= Math.sqrt(candidate).to_i
    candidate_is_prime= true # unknown, but will be falsified in ln 57 if it's actually false
    
    while prime <= square_root
    
      if candidate%prime == 0
        # candidate is divisible by prime
        candidate_is_prime= false
        break
      end
      
      idx+= 1
      prime= primes[idx]
    end
    
    if candidate_is_prime then primes.push(candidate) end
    
    
    if add2 then candidate+= 2 else candidate+= 4 end
    add2= !add2 # toggle add2
  end
  
  return primes[n-1]
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('nth_prime(1) == 2: ' + (nth_prime(1) == 2).to_s)
puts('nth_prime(2) == 3: ' + (nth_prime(2) == 3).to_s)
puts('nth_prime(3) == 5: ' + (nth_prime(3) == 5).to_s)
puts('nth_prime(4) == 7: ' + (nth_prime(4) == 7).to_s)
puts('nth_prime(5) == 11: ' + (nth_prime(5) == 11).to_s)
puts('nth_prime(6) == 13: ' + (nth_prime(6) == 13).to_s)
puts('nth_prime(7) == 17: ' + (nth_prime(7) == 17).to_s)
puts('nth_prime(8) == 19: ' + (nth_prime(8) == 19).to_s)
puts('nth_prime(9) == 23: ' + (nth_prime(9) == 23).to_s)
puts('nth_prime(10) == 29: ' + (nth_prime(10) == 29).to_s)
puts('nth_prime(11) == 31: ' + (nth_prime(11) == 31).to_s)
puts('nth_prime(12) == 37: ' + (nth_prime(12) == 37).to_s)
puts('nth_prime(13) == 41: ' + (nth_prime(13) == 41).to_s)
puts('nth_prime(14) == 43: ' + (nth_prime(14) == 43).to_s)
puts('nth_prime(15) == 47: ' + (nth_prime(15) == 47).to_s)
puts('nth_prime(16) == 53: ' + (nth_prime(16) == 53).to_s)
puts('nth_prime(17) == 59: ' + (nth_prime(17) == 59).to_s)
puts('nth_prime(18) == 61: ' + (nth_prime(18) == 61).to_s)
puts('nth_prime(19) == 67: ' + (nth_prime(19) == 67).to_s)
puts('nth_prime(20) == 71: ' + (nth_prime(20) == 71).to_s)
puts('nth_prime(21) == 73: ' + (nth_prime(21) == 73).to_s)
puts('nth_prime(22) == 79: ' + (nth_prime(22) == 79).to_s)
puts('nth_prime(23) == 83: ' + (nth_prime(23) == 83).to_s)
puts('nth_prime(24) == 89: ' + (nth_prime(24) == 89).to_s)
puts('nth_prime(25) == 97: ' + (nth_prime(25) == 97).to_s)
puts('nth_prime(26) == 101: ' + (nth_prime(26) == 101).to_s)
puts('nth_prime(29) == 103: ' + (nth_prime(27) == 103).to_s)