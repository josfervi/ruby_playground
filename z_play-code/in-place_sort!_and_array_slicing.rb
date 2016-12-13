# ruby in-place sort!
# array slicing seems to create a copy

a=  [5,4,3,2,1,0]
aa= [5,4,3,2,1,0]

b=   a.sort  # sorts a copy of a                 and returns it (the copy), after this line a itself is not modified (sorted)
bb= aa.sort! # sorts           a itself in-place and returns it (a)       , after this line a itself is     modified (sorted)
             # noteworthy: aa and bb point to the same array

# slicing [5,4,3,2,1]

d=  [5,4,3,2,1,0]
dd= [5,4,3,2,1,0]

e=   d[0..2].sort
ee= dd[0..2].sort! # I expected this to sort the first three elements of dd in place,
                   # such that dd would be modified to [3,4,5,2,1,0];
                   # however, dd was left intact
                   # I think that means dd[0..2] creates a new array