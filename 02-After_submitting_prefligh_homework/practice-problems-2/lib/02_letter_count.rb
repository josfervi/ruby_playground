def letter_count(str)
  letter_count= Hash.new(0) # empty has with 0 (instead of nil) for default values
  
  str.chars.each do |char|
    letter_count[char]+= 1 if char != ' '
  end
  
  letter_count
end