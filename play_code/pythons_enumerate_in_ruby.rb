# how to achieve python's enumerate(list) in ruby

arr= ["first", "second", "third"]

enu= arr.map # makes arr an enumerator, which is what .with_index expects

# c=   arr.with_index # .with_index expects an enumerator

enu2= enu.with_index #=> another enumerator

arr2= enu2.to_a # .to_a converts enumerator (and perhaps other stuff) into an array

# the following works
for val,idx in arr2
  puts "val: " + val.to_s + "idx: " + idx.to_s
end

# general technique
starting_idx= 0
for val, idx in arr.map.with_index(starting_idx)
  puts "idx: " + idx.to_s + " val: " + val.to_s
end