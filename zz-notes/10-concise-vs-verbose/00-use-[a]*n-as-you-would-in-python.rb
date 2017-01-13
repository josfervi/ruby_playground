# Repetas the string n times, separating each pair of instances with a space
# +str+:: the string
# +n+:: +positive integer >=0+ the number of times
def repeat(str, n = 2)
  ([str] * n).join(" ")
end


def repeat_verbose(str, n = 2)
  if n == 0
    return ""
  end
  
  res= str
  
  (n-1).times do
    res+= " " + str
  end
  
  res
end