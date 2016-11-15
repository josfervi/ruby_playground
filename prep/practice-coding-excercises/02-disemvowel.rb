# Write a function disemvowel(string), which takes in a string, and returns that string with all the vowels removed. Treat "y" as a consonant.

def disemvowel(string)
  
  res= ''
  
  letters= string.split('')
  for letter in letters
    if letter == 'a' || letter == 'e' || letter == 'i' || letter == 'o' || letter == 'u'
      next 
    end
    res+= letter
  end
  
  return res
end

puts disemvowel("foobar") == "fbr"
puts disemvowel("ruby") == "rby"
puts disemvowel("aeiou") == ""