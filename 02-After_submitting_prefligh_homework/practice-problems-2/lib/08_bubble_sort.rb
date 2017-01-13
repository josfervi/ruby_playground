def bubble_sort(arr)
  
  _bubble_sort(arr, arr.length)
  
end

# sort arr using bubble sort
# +arr+:: +arr[r..-1] is sorted and arr[r..-1] >= arr[0...r] meaning it does not need to be touched+
#                                   ^ means each individual element in arr[r..-1] is greater than or equal 
#                                        to each individual element in arr[0...r]
def _bubble_sort(arr, r)
  
  # this method is tail recursive:
  # so it can be made into an iterative method instead of a recursive one
  
  return arr if r == 1
  
  no_swaps_so_far= true
  
  1.upto r-1 do |i|
    if arr[i-1] > arr[i]
      arr[i-1], arr[i] = arr[i], arr[i-1]
      no_swaps_so_far= false
    end
  end
  
  did_not_swap= no_swaps_so_far
  return arr if did_not_swap
  
  return _bubble_sort(arr, r-1)
end