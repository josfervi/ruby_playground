# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.
#
# Difficulty: medium.

# [1] there exists a linear time two pointer algorithm for this problem when the input array, here: nums, is sorted
#
# without sorting, I think at best quadratic time can be achieved to solve this problem
#
# given that there are O(nlogn) sorting algorithms, it may be reasonable to preprocess--sort the input array.
# although an O(nlogn) penalty is incurred, we can then apply [1], the linear time algorithm
# for an overall O(nlogn) solution
#
# but that's overkill, so here's the O(n**2) (quadratic time) algorithm that works with unsorted input arrays
def two_sum(nums)
  # in python:
  # for first_idx, first in enumerate(nums[:-1]):
  #   for second_idx, second in enumerate(nums[first_idx+1:]):
  #     second_idx= first_idx+1+second_idx # convert from idx of nums[first_idx+1:] to idx of nums
  #                                        # can optionally be done in return statement instead to save a few ops
  #     if first + second == 0:
  #        return [first_idx, second_idx]
  
  # ruby's .with_index and .each_with_index is like python's enumerate
  for first, first_idx in nums[0..-2].map.with_index
    for second, second_idx in nums[first_idx+1..-1].map.with_index(first_idx+1) # with_index(first_idx+1) # second_idx starts at first_idx+1 instead starting at 0
      if first + second == 0
        return [first_idx, second_idx]
      end
    end
  end
  return nil
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'two_sum([1, 3, 5, -3]) == [1, 3]: ' + (two_sum([1, 3, 5, -3]) == [1, 3]).to_s
)
puts(
  'two_sum([1, 3, 5]) == nil: ' + (two_sum([1, 3, 5]) == nil).to_s
)