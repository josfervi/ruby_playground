# from https://pine.fm/LearnToProgram/chap_10.html

# Topics
#
# * procs
# * passing procs into methods
#   * mehtod which takes one proc
#   * method which takes one proc and one input
# * returning procs from methods

# So to pass in a block to a method,
# all we had to do was stick the block after the method.
# You can pass a block into any method this way,
# though many methods will just ignore the block.
# In order to make your method not ignore the block,
# but grab it and turn it into a proc,
# put the name of the proc at the end of your method's parameter list,
# preceded by an ampersand (&).

toast = Proc.new do
  puts 'Cheers!'
end

toast.call #=> Cheers!
toast.call #=> Cheers!
toast.call #=> Cheers!


# proc with one input
doYouLike = Proc.new do |aGoodThing|
  puts 'I *really* like '+aGoodThing+'!'
end

doYouLike.call 'chocolate' #=> I *really* like chocolate!
doYouLike.call 'ruby'      #=> I *really* like ruby!


# you can't pass methods into other methods (but you can pass procs into methods
# methods can't return other methods (but they can return procs

# Methods Which Take Procs

def doSelfImportantly someProc
  puts 'Everybody just HOLD ON!  I have something to do...'
  someProc.call
  puts 'Ok everyone, I\'m done.  Go on with what you were doing.'
end

sayHello = Proc.new do
  puts 'hello'
end

sayGoodbye = Proc.new do
  puts 'goodbye'
end

doSelfImportantly sayHello   #=> Everybody just HOLD ON!  I have something to do...
                             #   hello
                             #   Ok everyone, I'm done.  Go on with what you were doing.
doSelfImportantly sayGoodbye #=> Everybody just HOLD ON!  I have something to do...
                             #   goodbye
                             #   Ok everyone, I'm done.  Go on with what you were doing.


# You can also write methods which will determine how many times, or even if to call a proc.

# Here's a method which will call the proc passed in about half of the time
def maybeDo someProc
  if rand(2) == 0
    someProc.call
  end
end

# Here's a method which will call the proc passed in twice
def twiceDo someProc
  someProc.call
  someProc.call
end

wink = Proc.new do
  puts '<wink>'
end

glance = Proc.new do
  puts '<glance>'
end

maybeDo wink
maybeDo glance
twiceDo wink   #=> <wink>
               #   <wink>
twiceDo glance #=> <glance>
               #   <glance>

# Discussion:
#  Sure, you could write a method to wink twice,
#  but you couldn't write one to just do something twice!



# So far the procs we have passed in have been fairly similar to each other.
# This time they will be quite different, 
# so you can see how much such a method depends on the procs passed into it.

# Our method will take some object and a proc,
# and will call the proc on that object.
# If the proc returns false, we quit;
# otherwise we call the proc with the returned object.
# We keep doing this until the proc returns false
# (which it had better do eventually, or the program will crash).
# The method will return the last non-false value returned by the proc.

def doUntilFalse firstInput, someProc
  input  = firstInput
  output = firstInput

  while output
    input  = output
    output = someProc.call input
  end

  input
end

buildArrayOfSquares = Proc.new do |array|
  lastNumber = array.last
  if lastNumber <= 0
    false
  else
    array.pop                         # Take off the last number...
    array.push lastNumber*lastNumber  # ...and replace it with its square...
    array.push lastNumber-1           # ...followed by the next smaller number.
  end
end

alwaysFalse = Proc.new do |justIgnoreMe|
  false
end

puts doUntilFalse([5], buildArrayOfSquares).inspect #=> [25, 16, 9, 4, 1, 0]
puts doUntilFalse('Soccerly', alwaysFalse) #=> Soccerly

# Discussion
#  The inspect method is a lot like to_s,
#  except that the string it returns
#  tries to show you the ruby code for building the object you passed it.
#  Here it shows us the whole array returned by our first call to doUntilFalse.
#  Also, you might notice that we never actually squared that 0 on the end of that array,
#  but since 0 squared is still just 0, we didn't have to.
#  And since alwaysFalse was, you know, always false,
#  doUntilFalse didn't do anything at all the second time we called it;
#  it just returned what was passed in.



# Method that returns procs

# allows all sorts of crazy programming power
# (things with impressive names, like lazy evaluation, infinite data structures, and currying),
# but the fact is that I almost never do this in practice,
# nor can I remember seeing anyone else do this in their code.
# I think it's the kind of thing you don't usually end up having to do in Ruby,
# or maybe Ruby just encourages you to find other solutions; I don't know.
def compose proc1, proc2
  Proc.new do |x|
    proc2.call(proc1.call(x))
  end
end

squareIt = Proc.new do |x|
  x * x
end

doubleIt = Proc.new do |x|
  x + x
end

doubleThenSquare = compose doubleIt, squareIt
squareThenDouble = compose squareIt, doubleIt

puts doubleThenSquare.call(5) #=> 100
puts squareThenDouble.call(5) #=>  50



# A lot of the problem is that there are three steps you have to go through
# (defining the method, making the proc, and calling the method with the proc),
# when it sort of feels like there should only be two (defining the method,
# and passing the block right into the method, without using a proc at all),
# since most of the time you don't want
# to use the proc/block after you pass it into the method.
# Well, wouldn't you know, Ruby has it all figured out for us!
# In fact, you've already been doing it every time you use iterators.

class Array
  def eachEven(&wasABlock_nowAProc)
    # We start with "true" because arrays start with 0, which is even.
    isEven = true

    self.each do |object|
      if isEven
        wasABlock_nowAProc.call object
      end

      isEven = (not isEven)  # Toggle from even to odd, or odd to even.
    end
  end
end

['apple', 'bad apple', 'cherry', 'durian'].eachEven do |fruit|
  puts 'Yum!  I just love '+fruit+' pies, don\'t you?'
end                                                             #=> Yum!  I just love apple pies, don't you?
                                                                #   Yum!  I just love cherry pies, don't you?

# Remember, we are getting the even-numbered elements
# of the array, all of which happen to be odd numbers,
# just because I like to cause problems like that.
[1, 2, 3, 4, 5].eachEven do |oddBall|
  puts oddBall.to_s+' is NOT an even number!'
end                                           #=> 1 is NOT an even number!
                                              #   3 is NOT an even number!
                                              #   5 is NOT an even number!

# So to pass in a block to eachEven,
# all we had to do was stick the block after the method.
# You can pass a block into any method this way,
# though many methods will just ignore the block.
# In order to make your method not ignore the block,
# but grab it and turn it into a proc,
# put the name of the proc at the end of your method's parameter list,
# preceded by an ampersand (&).
# So that part is a little tricky,
# but not too bad, and you only have to do that once
# (when you define the method).
# Then you can use the method over and over again,
# just like the built-in methods which take blocks, like each and times.



def profile descriptionOfBlock, &block
  startTime = Time.now

  block.call

  duration = Time.now - startTime

  puts descriptionOfBlock+':  '+duration.to_s+' seconds'
end

profile '25000 doublings' do
  number = 1

  25000.times do
    number = number + number
  end

  # Show the number of digits in this HUGE number.
  puts number.to_s.length.to_s+' digits'
end

profile 'count to a million' do
  number = 0

  1000000.times do
    number = number + 1
  end
end