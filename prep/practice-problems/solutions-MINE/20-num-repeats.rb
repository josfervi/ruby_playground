# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
#
# Difficulty: hard.

def num_repeats(string)
  letter_cnt= {}        # an empty Hash
  letter_cnt.default= 0 # Hashes have a default value that is returned when accessing keys that do not exist in the hash. If no default is set nil is used.
  
  letters= string.split('') # converts string into array of characters/one-letter-strings
  
  for letter in letters
    letter_cnt[letter]+= 1
  end
    
  num_repeats= 0
  letter_cnt.each do |key, value| # key is a letter, value is that letter's count
    num_repeats+= (value>1)? 1:0
  end
  
  return num_repeats
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('num_repeats("abdbc") == 1: ' + (num_repeats('abdbc') == 1).to_s)
# one character is repeated
puts('num_repeats("aaa") == 1: ' + (num_repeats('aaa') == 1).to_s)
puts('num_repeats("abab") == 2: ' + (num_repeats('abab') == 2).to_s)
puts('num_repeats("cadac") == 2: ' + (num_repeats('cadac') == 2).to_s)
puts('num_repeats("abcde") == 0: ' + (num_repeats('abcde') == 0).to_s)