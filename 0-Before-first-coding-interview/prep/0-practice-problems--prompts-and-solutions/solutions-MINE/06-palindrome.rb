# Write a method that takes a string and returns true if it is a
# palindrome. A palindrome is a string that is the same whether written
# backward or forward. Assume that there are no spaces; only lowercase
# letters will be given.
#
# Difficulty: easy.

# tail recursive because && short circuits
def palindrome?(string)
    if string == "" || string.length == 1
        return true
    end
    return (string[0] == string[-1]) && palindrome?(string[1..-2])
  # ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^because && short circs, the above is equivalent to
    #  if string[0] == string[-1]: return false
    #  return palindrome?(string[1..-2)
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('palindrome?("abc") == false: ' + (palindrome?('abc') == false).to_s)
puts('palindrome?("abcba") == true: ' + (palindrome?('abcba') == true).to_s)
puts('palindrome?("z") == true: ' + (palindrome?('z') == true).to_s)