# Write a method that takes in a string of lowercase letters and
# spaces, producing a new string that capitalizes the first letter of
# each word.
#
# You'll want to use the `split` and `join` methods. Also, the String
# method `upcase`, which converts a string to all upper case will be
# helpful.
#
# Difficulty: medium.

def capitalize_words(string)
  
  words= string.split(' ')
  
  for idx in 0..words.length-1
    word= words[idx]
    word[0]= word[0].upcase
  end
    
  # for word,idx in words.map.with_index
  #   words[idx]= word[0].upcase + word[1..-1] # requires unnecessary slicing and concatenation which lns 16 and 17 do not
  # end
  
  return words.join(' ')
  
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'capitalize_words("this is a sentence") == "This Is A Sentence": ' +
  (capitalize_words("this is a sentence") == "This Is A Sentence").to_s
)
puts(
  'capitalize_words("mike bloomfield") == "Mike Bloomfield": ' +
  (capitalize_words("mike bloomfield") == "Mike Bloomfield").to_s
)
