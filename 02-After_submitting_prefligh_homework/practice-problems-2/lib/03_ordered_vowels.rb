def ordered_vowel_words(str)
  ordered_vowel_words= []
  
  str.split.each do |word|
    ordered_vowel_words << word if ordered_vowel_word? word
  end
  
  ordered_vowel_words.join(" ")
end

def ordered_vowel_word? word
  
  greatest_vowel_so_far= 'a'
  
  word.chars.each do |char|
    next if char.is_not_a_vowel?
    vowel= char
    return false if vowel < greatest_vowel_so_far
    greatest_vowel_so_far= vowel
  end
  
  return true
end

class String
  # +self+:: +string of length 1+ a character
  def is_not_a_vowel?
    not /[aeiou]/.match self
  end
end