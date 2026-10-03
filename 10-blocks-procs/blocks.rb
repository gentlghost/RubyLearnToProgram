# A procedure (proc) is the ability to wrap a block of code in an object
# and execute it.
#   Block are encapsulated in the do statement.
#   The call method runs the proc.

cheers = Proc.new do
  puts 'Cheers!'
end

cheers.call
cheers.call
cheers.call

puts

# We can pass in variables into the proc via the pipes
doYouLike = Proc.new do |thing|
  puts 'I *really* love ' + thing + '!'
end

doYouLike.call 'chocolate'
doYouLike.call 'Ruby'

puts

# Procs allow us to pass in blocks of code in a method.
#   If we pass in a method, we only get the return method.
#   Similar to closures in other languages.

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

doSelfImportantly sayHello
doSelfImportantly sayGoodbye

puts

def maybeDo someProc
  if rand(2) == 0
    someProc.call
  end
end

def twiceDo someProc
  someProc.call
  someProc.call
end

wink = Proc.new do
  puts '<wink>'
end

glace = Proc.new do
  puts '<glace>'
end

maybeDo wink
maybeDo glace
twiceDo wink
twiceDo glace

puts

# We can even return values like methods
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

# Note: inspect is like to_s where it prints out the Ruby code used to execute it
puts doUntilFalse([5], buildArrayOfSquares).inspect
puts doUntilFalse('I\'m writing this at 3:00 am; someone knock me out!', alwaysFalse)

puts

# Methods can even return procs.
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

puts doubleThenSquare.call(5)
puts squareThenDouble.call(5)

puts

# You can even just pass in the block itself!
#   However, in order for it to work, you need to create a proc
#   in the method. Otherwise, the block will be ignored.
#   This is exactly how iterators like each and times work!
#   We declare blocks with the & symbol

class Array
  def eachEven(&blockToProc)
    isEven = true

    self.each do |object|
      if isEven
        blockToProc.call object
      end

      isEven = (not isEven)
    end

  end
end

['apple', 'bad apple', 'cherry', 'durian'].eachEven do |fruit|
  puts 'Yum!  I just love '+fruit+' pies, don\'t you?'
end

# Remember, we are getting the even-numbered elements
# of the array, all of which happen to be odd numbers,
# just because I like to cause problems like that.
[1, 2, 3, 4, 5].eachEven do |oddBall|
  puts oddBall.to_s+' is NOT an even number!'
end

puts

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