# puts object.inspect
# is equivalent to
# print out object.inspect.to_s
# which is probably equivalent to
# p object
# which is equivalent to
# print out object.inspect


# NO SIDE EFFECT
# integers= [1,2,3,4]
#
# p integers               #=> [1, 2, 3, 4]
# p integers.map {|i| i*i} #=> [1, 4, 9, 16]
# p integers               #=> [1, 2, 3, 4]
# puts


# SIDE EFFECT
integers= [1,2,3,4]

p integers                #=> [1, 2, 3, 4]
p integers.map! {|i| i*i} #=> [1, 4, 9, 16]
p integers                #=> [1, 4, 9, 16]
puts


# NO SIDE EFFECT
# integers= [1,2,3,4]
#
# p integers                #=> [1, 2, 3, 4]
# p integers.each {|i| i*i} #=> [1, 2, 3, 4]
# p integers                #=> [1, 2, 3, 4]
# puts


# NO SIDE EFFECT
# integers= [1,2,3,4]
#
# p integers                   #=> [1, 2, 3, 4]
# p integers.each {|i| i= i*i} #=> [1, 2, 3, 4]
# p integers                   #=> [1, 2, 3, 4]
# puts


# SIDE EFFECT
letters= ['a','b','c','d']

p letters                                #=> ["a", "b", "c", "d"]
p letters.each {|letter| letter.upcase!} #=> ["A", "B", "C", "D"]
p letters                                #=> ["A", "B", "C", "D"]
puts


# SIDE EFFECT
letters= ['a','b','c','d']

p letters                               #=> ["a", "b", "c", "d"]
p letters.map {|letter| letter.upcase!} #=> ["A", "B", "C", "D"]
p letters                               #=> ["A", "B", "C", "D"]
puts


# SIDE EFFECT
# letters= ['a','b','c','d']
#
# p letters                                       #=> ["a", "b", "c", "d"]
# p letters.each {|letter| letter= letter.upcase} #=> ["a", "b", "c", "d"]
# p letters                                       #=> ["a", "b", "c", "d"]