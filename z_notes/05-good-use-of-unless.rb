# you can add methods to established classes
# as I have done with the String class
# to which I added the isOneOf? method

class Book
  
  attr_reader :title
  # ^ is equivalent to:
  #
  # def title
  #   @title
  # end
  
  def title=(new_title)
    @title= titleize(new_title)
  end
  
  def titleize(title)
    words= title.split(" ")
    
    # always capitalize the first word in the title
    words.first.capitalize!
    
    dont_capitalize_these_words= %w(a an and in of the)
    for word in words
      word.capitalize! unless word.isOneOf? dont_capitalize_these_words
    end
    
    words.join(" ")
  end
  
end

class String
  def isOneOf?( strings )
    strings.include? self
  end
end