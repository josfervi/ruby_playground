# Write a method that will take a string as input, and return a new
# string with the same letters in reverse order.
#
# Don't use String's reverse method; that would be too simple.
#
# Difficulty: easy.

# a tail recursive solution can always be converted into while loop solution (and vice-versa)
def reverse(string)
  acc= ""
  rem= string
  while rem != ""     # invariant: acc = rev(string - rem)
    acc= rem[0] + acc
    rem= rem[1..-1]
  end
  return acc
end

# uses tail recursive helper function
def tail_rec_reverse(string)
  return tail_rec_reverse_(string, "")
end

# recursive, tail recursive!
# principle of communicating vases
def tail_rec_reverse_(rem, acc)
  if rem == ""
    return acc
  end
  acc= rem[0] + acc
  rem= rem[1..-1]
  return tail_rec_reverse_(rem, acc)
end

# recursive, not tail recursive though
def rec_reverse(string)
  if string == ""
    return ""
  end
  return rec_reverse(string[1..-1]) + string[0]
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'reverse("abc") == "cba": ' + (reverse("abc") == "cba").to_s
)
puts(
  'reverse("a") == "a": ' + (reverse("a") == "a").to_s
)
puts(
  'reverse("") == "": ' + (reverse("") == "").to_s
)