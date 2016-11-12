# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.
#
# Difficulty: medium.

# space:   constant extra space
# time:    linear time in nums.length
# side fx: no side effects
def third_greatest(nums)
  
  first, second, third= nums[0..2].sort.reverse
  
  for num in nums[3..-1]
    if num>first
      # num>first
      first, second, third= num, first, second # #tricky
    # num<=first
    elsif num>second
      # second<num<=first
      second, third= num, second # #tricky
    # num<=second
    elsif num>third
      # third<num<=second
      third= num
    end
  end
  return third
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'third_greatest([5, 3, 7]) == 3: ' +
  (third_greatest([5, 3, 7]) == 3).to_s
)
puts(
  'third_greatest([5, 3, 7, 4]) == 4: ' +
  (third_greatest([5, 3, 7, 4]) == 4).to_s
)
puts(
  'third_greatest([2, 3, 7, 4]) == 3: ' +
  (third_greatest([2, 3, 7, 4]) == 3).to_s
)
puts(
  'third_greatest([3, 3, 3, 2, 1]) == 3: ' +
  (third_greatest([3, 3, 3, 2, 1]) == 3).to_s
)