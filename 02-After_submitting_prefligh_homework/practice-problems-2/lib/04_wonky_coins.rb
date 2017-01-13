def wonky_coins(n)
  # use dynamic programming
  # to build up the result
  # from the bottom up
  _N= n
  
  answer= Array.new( _N + 1 ) # to memoize results for n in [0..n]
  answer[0]= 1
  
  1.upto _N do |n|
    answer[n]= answer[n/2] + answer[n/3] + answer[n/4]
  end
  
  answer[_N]
end