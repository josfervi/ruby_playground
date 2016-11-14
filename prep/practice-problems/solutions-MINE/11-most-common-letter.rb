# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)
  letter_cnt= {}        # an empty Hash
  letter_cnt.default= 0 # Hashes have a default value that is returned when accessing keys that do not exist in the hash. If no default is set nil is used.
  
  letters= string.split('') # converts string into array of characters/one-letter-strings
  
  for letter in letters
    letter_cnt[letter]+= 1
  end
  
  max_cnt= 0
  max_let= ''        # key  val
  letter_cnt.each do  |let, cnt|
    if cnt>max_cnt
      max_cnt= cnt
      max_let= let
    end
  end
  
  return [max_let, max_cnt]
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)
