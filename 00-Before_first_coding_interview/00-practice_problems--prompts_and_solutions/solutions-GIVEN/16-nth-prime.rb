# Write a method that returns the `n`th prime number. Recall that only
# numbers greater than 1 can be prime.
#
# Difficulty: medium.

# You may use our `is_prime?` solution.
def is_prime?(number)
  if number <= 1
    # only numbers > 1 can be prime.
    return false
  end

  idx = 2
  while idx < number
    if (number % idx) == 0
      return false
    end

    idx += 1
  end

  return true
end

def nth_prime(n)
  prime_num = 0

  i = 2
  while true
    if is_prime?(i)
      prime_num += 1
      if prime_num == n
        return i
      end
    end

    i += 1
  end
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