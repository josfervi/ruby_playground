# Write a method that takes in a string of lowercase letters (no
# uppercase letters, no repeats). Consider the *substrings* of the
# string: consecutive sequences of letters contained inside the string.
# Find the longest such string of letters that is a palindrome.
#
# Note that the entire string may itself be a palindrome.
#
# You may want to use Array's `slice(start_index, length)` method,
# which returns a substring of length `length` starting at index
# `start_index`:
#
#     "abcd".slice(1, 2) == "bc"
#     "abcd".slice(1, 3) == "bcd"
#     "abcd".slice(2, 1) == "c"
#     "abcd".slice(2, 2) == "cd"
#
# Difficulty: hard.

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

def longest_palindrome(string)
  
  max_len= 0
  max_pal= ''
  
  starting_idx= 0 # starting index of longest palindrome candidate
  
  while starting_idx + max_len < string.length
    
    len= string.length - starting_idx # length of longest palindrome candidate
    
    while len > max_len
      candidate= string[starting_idx, len] #.slice(starting_idx, len) # longest palindrom candidate
      if palindrome?(candidate)
        max_len= len
        max_pal= candidate
        break
      end
      
      len-= 1
    end
    
    starting_idx+= 1
  end
  
  return max_pal
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'longest_palindrome("abcbd") == "bcb": ' +
  (longest_palindrome('abcbd') == 'bcb').to_s
)
puts(
  'longest_palindrome("abba") == "abba": ' +
  (longest_palindrome('abba') == 'abba').to_s
)
puts(
  'longest_palindrome("abcbdeffe") == "effe": ' +
  (longest_palindrome('abcbdeffe') == 'effe').to_s
)
