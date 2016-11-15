# Write a function lucky_sevens?(numbers), which takes in an array of integers and returns true if any three consecutive elements sum to 7.
# Make sure your code correctly checks for edge cases (i.e. the first and last elements of the array).

# there exists a quadratic time algorithm, once numbers are sorted in O(nlogn)
# (see: https://github.com/josfervi/interviewbit_workspace/blob/master/Two%20Pointers/3_sum.py)
# but the following cubic time solution looks like a cool gun, so why mess with that!?

# constant extra space
# cubic time in numbers.length
# no side effects
def lucky_sevens?(numbers)
  
  for first, first_idx in numbers[0..-3].map.with_index
    for second, second_idx in numbers[first_idx+1..-2].map.with_index(first_idx+1)
      for third in numbers[second_idx+1..-1]
        if first+second+third == 7
          return true
        end
      end
    end
  end
  
  return false
end

puts lucky_sevens?([2,1,5,1,0]) == true # => 1 + 5 + 1 == 7
puts lucky_sevens?([0,-2,1,8]) == true # => -2 + 1 + 8 == 7
puts lucky_sevens?([7,7,7,7]) == false
puts lucky_sevens?([3,4,3,4]) == false