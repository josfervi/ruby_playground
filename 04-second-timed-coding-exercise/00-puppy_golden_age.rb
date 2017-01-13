# did the brute force solution
# app academy said it was fine to do the brute force solution
# and I was not fast enough to think about a better solution

def puppy_golden_age_brute_forced(gains)
  
  # brute force solution
  
  if gains.empty?
    return nil
  end
  
  golden_age_so_far= [0, 0]
  value_so_far=      sum(gains[0..0])
  
  0.upto (gains.length-1) do |i|
    i.upto (gains.length-1) do |j|
      if sum(gains[i..j]) > value_so_far
        value_so_far= sum(gains[i..j])
        golden_age_so_far= [i, j]
      end
    end
  end
  
  golden_age_so_far
end

def sum(numbers)
  numbers.inject (:+)
end

# tests
# puts puppy_golden_age([100, -101, 200, -3, 1000]) == [2, 4]
# puts puppy_golden_age([5, 3, -5, 1, 19, 2, -4]) == [0, 5]
# puts puppy_golden_age([-1, -1, -1, 100, -1]) == [3, 3]
# puts puppy_golden_age([-4, -3, -5, -3, -1]) == [4, 4]