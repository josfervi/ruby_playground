def nearest_larger(arr, idx )
  
  l= nearest_larger_on_left(arr, idx)
  r= nearest_larger_on_right(arr, idx)
  
  return l || r if l.nil? || r.nil?
  
  dist_left=  idx - l
  dist_right= r - idx
  
  return l if dist_left <  dist_right
  return l if dist_left == dist_right
  return r #  dist_right < dist_left
end

def nearest_larger_on_left(arr, idx)
  
  return nil if idx == 0
  
  target= arr[idx]
  
  (idx-1).downto 0 do |l|
    num= arr[l]
    return l if num > target
  end
  
  return nil
end

def nearest_larger_on_right(arr, idx)
  
  return nil if idx == arr.length - 1
  
  target= arr[idx]
  
  (idx+1).upto arr.length-1 do |r|
    num= arr[r]
    return r if num > target
  end
  
  return nil
end