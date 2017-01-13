# the return value of passed blocks can be obained with yield

# ABOUT yield
#  from the doc
#   yield - Called from inside a method body,
#   yields control to the code block (if any)
#   supplied as part of the method call. ...
#   The value of a call to yield is the value of the executed code block.
#   Yield can be used to call named blocks and also the defaul block.

# ABOUT blocks
# A block is a piece of code that is declared
# but not run in the place it's written.
# The idea is to leave is up to the receiver of the block to decide when to call it.

# ABOUT the default block
#  every method, no matter what its parameter list,
#  might get an optional magic block parameter
#  This is called "the default block" and the method can call it using yield

def reverser
  words= yield.split
  for word in words
    word.reverse!
  end
  words.join(" ")
end

def reverser_verbose(&blockThatReturnsAString)
  str= blockThatReturnsAString.call
  
  words= str.split
  
  for word in words
    word.reverse!   # word points to an element of words
  end
  
  words.join(" ")
end



def adder( addThisToYield= 1 )
  yield + addThisToYield
end

def adder_verbose( addThisToNumber= 1, &blockThatReturnsANumber )
  number= blockThatReturnsANumber.call
  
  number + addThisToNumber
end



def repeater( n= 1 )
  n.times do
    yield
  end
end

def repeater_verbose( n= 1, &repeatThisBlock )
  n.times do
    repeatThisBlock.call
  end
end