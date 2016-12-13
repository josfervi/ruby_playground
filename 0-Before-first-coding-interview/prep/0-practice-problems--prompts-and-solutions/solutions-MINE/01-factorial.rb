# Write a method that takes an integer `n` in; it should return
# n*(n-1)*(n-2)*...*2*1. Assume n >= 0.
#
# As a special case, `factorial(0) == 1`.
#
# Difficulty: easy.

# a tail recursive solution can always be converted into while loop solution (and vice-versa)
def factorial(n)
  acc= 1
  i=   n
  while i != 0
    acc= acc*i # acc*= i
    i=   i-1   # i-=   1
  end
  return acc
end

# uses tail recursive helper function
def tail_rec_factorial(n)
  return tail_rec_factorial_(n, 1)
end

# recursive, tail recursive!
# principle of communicating vases
def tail_rec_factorial_(i, acc)
  if i == 0
    return acc
  end
  acc= acc*i # acc*= i
  i=   i-1   # i-=   1
  return tail_rec_factorial_(i, acc)
end

# recursive, not tail recursive though
def rec_factorial(n)
  if n==0
    return 1
  end
  return rec_factorial(n-1)*n
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'factorial(0) == 1: ' + (factorial(0) == 1).to_s
)
puts(
  'factorial(1) == 1: ' + (factorial(1) == 1).to_s
)
puts(
  'factorial(2) == 2: ' + (factorial(2) == 2).to_s
)
puts(
  'factorial(3) == 6: ' + (factorial(3) == 6).to_s
)
puts(
  'factorial(4) == 24: ' + (factorial(4) == 24).to_s
)