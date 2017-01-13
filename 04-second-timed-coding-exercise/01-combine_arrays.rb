# Merge sorts nums and other_nums
# +nums+:: +sorted array+
# +other_nums+:: +sorted array+
def combine_arrays(nums, other_nums)
  
  return nums if other_nums.empty? # not necessary, but good to have
  return other_nums if nums.empty? # not necessary, but good to have
  
  res= []
  
  i, j = 0, 0
  
  while i < nums.length && j < other_nums.length
    a, b = nums[i], other_nums[j]
    
    if a <= b
      res << a
      i+= 1
    else
      res << b
      j+= 1
    end
  end
  
  if j == other_nums.length
    # other_nums was exhausted, but there still remain
    # elements in nums to process
    res.push( *nums[i..-1] )
  elsif i == nums.length
    # nums was exhausted, but there still remain
    # elements in nums to process
    res.push( *other_nums[j..-1] )
  end
  
  res
end

# tests
# puts combine_arrays([1, 3, 5], [2, 4, 6]) == [1, 2, 3, 4, 5, 6]
# puts combine_arrays([1,2,3], [4,5,6]) == [1, 2, 3, 4, 5, 6]
# puts combine_arrays([4,5,6], [1,2,3]) == [1, 2, 3, 4, 5, 6]
# puts combine_arrays([2, 4, 6], [1, 3, 5]) == [1, 2, 3, 4, 5, 6]
# puts combine_arrays([], [1,2,3]) == [1,2,3]
# puts combine_arrays([1,2,3], []) == [1,2,3]
p combine_arrays([], [])