# Write a method that takes in two numbers. Return the greatest
# integer that evenly divides both numbers. You may wish to use the
# `%` modulo operation.
#
# Difficulty: medium.

def greatest_common_factor(number1, number2)
  a, b = number1, number2 # parallel assignment
  
  if a<b
    a, b = b, a
  end
  
  # {a >= b}
  
  while b != 0
    a, b = b, a%b
  end
  return a
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'greatest_common_factor(3, 9) == 3: ' +
  (greatest_common_factor(3, 9) == 3).to_s
)
puts(
  'greatest_common_factor(3, 9): ' +
  (greatest_common_factor(3, 9)).to_s
)
puts(
  'greatest_common_factor(16, 24) == 8: ' +
  (greatest_common_factor(16, 24) == 8).to_s
)
puts(
  'greatest_common_factor(16, 24): ' +
  (greatest_common_factor(16, 24)).to_s
)
puts(
  'greatest_common_factor(3, 5) == 1: ' +
  (greatest_common_factor(3, 5) == 1).to_s
)
puts(
  'greatest_common_factor(3, 5): ' +
  (greatest_common_factor(3, 5)).to_s
)