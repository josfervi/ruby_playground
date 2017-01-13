# did not correct in time to turn it in

# possibly much more efficient if the result is built up from the ground up
# a bottom up approach

def subsets(set)
  return [[]]      if set == []
  
  res= [[]]
  
  0.upto set.length-1 do |i|
    subsets(set[(i+1)..-1]).each do |subsubset|
      res << [set[i]] + subsubset
    end
  end
  
  res
end

# tests
puts subsets(["a", "b", "c"]) ==
[
  [],
  ["a"], ["a", "b"], ["a", "b", "c"], ["a", "c"],
  ["b"], ["b", "c"],
  ["c"]
]
puts subsets([1,2,3]) ==
[
  [],
  [1], [1, 2], [1, 2, 3], [1, 3],
  [2], [2, 3],
  [3]
]