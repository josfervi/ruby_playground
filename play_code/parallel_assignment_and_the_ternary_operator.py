# parallel assignment and the ternary operator lead to ambiguities
# same is true in ruby

a= 1
b= 2

# a,b= a,b if a>b else b,a # ambiguous

# several interpretations, at least 3

# a,b= a, (b if a>b else  b,a)
# a,b= a,  b if a>b else (b,a)

# a,b= (a,b if a>b else b), a

# a,b= (a,b) if a>b else b,a
a,b= (a,b) if a>b else (b,a)