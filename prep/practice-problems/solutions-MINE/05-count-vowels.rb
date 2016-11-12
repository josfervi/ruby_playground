# Write a method that takes a string and returns the number of vowels
# in the string. You may assume that all the letters are lower cased.
# You can treat "y" as a consonant.
#
# Difficulty: easy.

# using while loop
def count_vowels(string)
  cnt= 0
  chr_idx= 0
  chr=     nil
  while chr_idx < string.length
    chr= string[chr_idx]
    if chr== 'a' || chr == 'e' || chr == 'i' || chr == 'o' || chr == 'u' # "a" is equiv to 'a'
      cnt+= 1
    end
    chr_idx+= 1
  end
  return cnt
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('count_vowels("abcd")== 1: ' + (count_vowels('abcd') == 1).to_s)
puts('count_vowels("color")== 2: ' + (count_vowels('color') == 2).to_s)
puts('count_vowels("colour")== 3: ' + (count_vowels('colour') == 3).to_s)
puts('count_vowels("cecilia")== 4: ' + (count_vowels('cecilia') == 4).to_s)

