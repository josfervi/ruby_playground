# http://prepwork.appacademy.io/coding-test-1/
# Following along to App Academy's Intro to Prog III

array= []
array.push(1) # appends 1
array.push(2) # appends 2
# array = [1, 2]
array.unshift(3) # prepends 3 # like enqueue
# array = [3, 1, 2]

num= array.shift # removes item form front of array and returns it
                 # like dequeue

num= array.pop   # removes item from back of array and returns it

# stack= []
#   - to push do   stack.push(item)
#   - to pop  do   stack.pop(item)
#   - in this case we consider the back of the array to be the top of the stack

# oddly enough we can also implement a stack using shift (to pop) and unshift (to push)
# and we would consider the front of the array to the top of the stack
# however, using .pop and .push is more efficient

# shift   moves the array to the left
# unshift moves the array to the right

# QUEUE
#   # can be implemented two ways:             enqueue   dequeue
#   # 1. front of Queue is front of array      .unshift  .pop
#   # 2. front of Queue is back  of array      .push     .shift   (preferred if shift is O(1)
#   in a given problem, whichever impl minimizes unshift/shift operations is more efficient
#   as unshift is almost certainly an O(n) op. Shift on the other hand may indeed be a O(1) op depending on impl (just move a ptr) but it's unclear: it may be O(n).


array= [0,1,2,3]
i= 5
out_of_bounds= array[i] # = nil # no out of bounds error
puts out_of_bounds # puts nil # prints a blank line # equivalent to puts by itself (i.e. w/ no argument)

puts "next line"


# strings are like arrays
str= "abc"

puts str[0] # a
puts "abc" == ["a", "b", "c"] # false ; even though strings are similar to arrays of letters, they are not really the same. same happens in python

# "this is a sentence".split == ["this", "is", "a", "sentence"]
["this", "is", "a", "sentence"].join(" ") == "this is a sentence" # this the exact reverse of python: in python it'd be " ".join(["this", "is", "a", "sentence"])
                                # I happen to prefer ruby's version since it's the string array that's acted upon


# methods
# The body is not yet run when the method is defined. The body describes what to do when someone calls the foo method.
# def foo(args)
#     if condition
#           return # returning early is allowed ofc
#     end
#     body
#
#     return res # optional return
# end

# break   to break out of loops


# IN THE FUTURE:
#  special array methods
#  classes, objects
#  HASH class, dictionaries
#  procs or "blocks"
#  importing files