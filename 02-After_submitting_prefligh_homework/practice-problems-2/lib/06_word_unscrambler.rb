# def word_unscrambler(str, words)
  
#   anagrams= [] # maintains a list of known anagrams of str
  
#   words.each do |word|
#     anagrams << word if str.is_an_anagram_of? word # one piece of wasted performance in this line: str is sorted each time
#   end                                              # this is the price of making String#is_an_anagram_of?(word) more robust/commutative
#                                                   # by sorting self instead of assuming self is a sorted string
  
#   anagrams
# end

# using the select method
def word_unscrambler(str, words)
  words.select {|word| str.is_an_anagram_of? word}
end

class String
  def sort
    self.chars.sort.join
  end
  
  def is_an_anagram_of? word
    self.sort.eql? word.sort
  end
end