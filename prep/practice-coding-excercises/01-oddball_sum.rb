# Write a function oddball_sum(numbers), which takes in an array of integers and returns the sum of all the odd elements.

def oddball_sum(numbers)
  
  oddball_sum= 0
  for number in numbers
    if number % 2 == 1
      oddball_sum+= number
    end
  end
  
  return oddball_sum
end

puts oddball_sum([1,2,3,4,5]) == 9 # => 1 + 3 + 5 == 9
puts oddball_sum([0,6,4,4]) == 0
puts oddball_sum([1,2,1]) == 2