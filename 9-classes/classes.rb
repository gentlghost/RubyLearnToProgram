# Every object in Ruby is contained in a class. A class is a blueprint of an object.
#   To create a new object, we can use the new method after calling a class.
#       Except for Integer and Float - they are special cases.
#   Classes in Ruby starts with a capital letter.

# i = Integer.new # Doesn't work
a = Array.new + [12345]
s = String.new + 'Hello World'

puts a.to_s
puts s
puts

# The Time class allows us to date and time.
#   When we create a new Time object, it gets the current time in seconds.
#   You can add/subtract an amount in seconds.
time = Time.new
time2 = Time.new + 60 # One Mintue Later
puts time
puts time2
puts

# If you want to get the exact time at a curtain date, we can use the mktime
# (make time) method.
y2k = Time.mktime(2000, 1, 1)
birth = Time.mktime(2001, 9, 15, 23, 12)

puts y2k
puts birth
puts

# The Hash class is similar to arrays, however, instead of an integer index, the index (or key) is
# can be whatever object.
#   Instead of [] we use curly brackets {} to represent a hash.
#   Arrays are stored in a row in memory, and its index is the memory address plus the slot we want. 
#       arr[4] = memory address of arr + 4 slots
#   Hashs are stored not in a row, therefore it can give us some flexability.

colorArray = []
colorHash = {}

colorArray[0]         = 'red'
colorArray[1]         = 'green'
colorArray[2]         = 'blue'

# We index the value with the key value
colorHash['strings']  = 'red'
colorHash['numbers']  = 'green'
colorHash['keywords'] = 'blue'

colorArray.each do |color|
  puts color
end

# The each method is the same with arrays, but the first argument is the key
colorHash.each do |codeType, color|
  puts codeType + ':  ' + color
end

# This is a valid hash.
weirdHash = Hash.new

weirdHash[12] = 'monkeys'
weirdHash[[]] = 'emptiness'
weirdHash[Time.new] = 'no time like the present'

puts

# What if we want to extend the existing classes? Well, we can do that.
#   We can insert methods into a class by using the class keyword and
#   use the class name we want to extend.
#   Remember: self refers to the object itself.

# We'll use the method we made last time to make to_eng
class Integer 
    private # Makes methods local to the object
    def getDigits(number, digits, digitStr)
        left  = number
        write = left/digits
        left  = left - write*digits

        numString = ''

        if write > 0
            digitText = write.to_eng
            numString = numString + digitText + digitStr
  
            if left > 0
                numString = numString + ' '
            end
        end

        # Return both the remaining value and string
        [left, numString]
    end

    public # Makes methods viewable outside the object.
            # By default methods are public.
    def to_eng
        number = self
        
        if number == 0
            return 'zero'
        end

        numString  = ''
        onesPlace  = ['one'  , 'two'  , 'three', 'four' , 'five' ,
                        'six'  , 'seven', 'eight', 'nine' ]
        tensPlace  = ['ten'   , 'twenty' , 'thirty', 'forty' , 'fifty' ,
                        'sixty' , 'seventy', 'eighty', 'ninety' ]
        teenagers  = ['eleven'  , 'twelve'   , 'thirteen', 'fourteen', 'fifteen' ,
                        'sixteen' , 'seventeen', 'eighteen', 'nineteen']
        highPlaces = [' sextillion' , ' quintillion', 
                        ' quadrillion', ' trillion'  ,
                        ' billion'    , ' million'   ,
                        ' thousand']

        if number < 0
            numString = 'negative '
            number = number * -1
        end

        left = number
                        
        if left > 1000
            digits = 1000000000000000000000
            # For each higher place, get the digits
            highPlaces.each do |place|
                ret = getDigits(left, digits, place)
                left = ret[0]
                numString = numString + ret[1]
                digits = digits/1000
            end
        end

        ret = getDigits(left, 100, ' hundred')
        left = ret[0]
        numString = numString + ret[1]

        # Handle the tens places
        write = left/10
        left  = left - write*10
        
        if write > 0
            if (write == 1) and (left > 0)
                numString = numString + teenagers[left-1]
                left = 0
            else
                numString = numString + tensPlace[write-1]
            end

            if left > 0
                numString = numString + '-'
            end
        end

        write = left
        left = 0

        if write > 0
            numString = numString + onesPlace[write-1]
        end

        numString
    end
end

s = -2128.to_eng
puts s
puts

# To create our own classes, we can just use the same syntax.
class Die
    # The initialize method creates the object via .new and
    # runs code when the object is created
    def initialize
        roll
    end
    
    def roll
        # @ creates a variable that is used while the object 
        # is not destroyed. Unlike local variables, it is not
        # destroyed when the method is done.
        @showedNumber = 1 + rand(6)
    end

    def show
        @showedNumber
    end
end

dice = [Die.new, Die.new]
dice.each do |die|
    die.roll
    puts die.show
end

puts Die.new.show
puts

class Dragon

  # You can pass in variables in the "constructor" method.
  def initialize name
    @name = name
    @asleep = false
    @stuffInBelly     = 10  # He's full.
    @stuffInIntestine =  0  # He doesn't need to go.

    puts @name + ' is born.'
  end

  def feed
    puts 'You feed ' + @name + '.'
    @stuffInBelly = 10
    passageOfTime
  end

  def walk
    puts 'You walk ' + @name + '.'
    @stuffInIntestine = 0
    passageOfTime
  end

  def putToBed
    puts 'You put ' + @name + ' to bed.'
    @asleep = true
    3.times do
      if @asleep
        passageOfTime
      end
      if @asleep
        puts @name + ' snores, filling the room with smoke.'
      end
    end
    if @asleep
      @asleep = false
      puts @name + ' wakes up slowly.'
    end
  end

  def toss
    puts 'You toss ' + @name + ' up into the air.'
    puts 'He giggles, which singes your eyebrows.'
    passageOfTime
  end

  def rock
    puts 'You rock ' + @name + ' gently.'
    @asleep = true
    puts 'He briefly dozes off...'
    passageOfTime
    if @asleep
      @asleep = false
      puts '...but wakes when you stop.'
    end
  end

  private

  # "private" means that the methods defined here are
  # methods internal to the object.  (You can feed
  # your dragon, but you can't ask him if he's hungry.)

  def hungry?
    # Method names can end with "?".
    # Usually, we only do this if the method
    # returns true or false, like this:
    @stuffInBelly <= 2
  end

  def poopy?
    @stuffInIntestine >= 8
  end

  def passageOfTime
    if @stuffInBelly > 0
      # Move food from belly to intestine.
      @stuffInBelly     = @stuffInBelly     - 1
      @stuffInIntestine = @stuffInIntestine + 1
    else  # Our dragon is starving!
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' is starving!  In desperation, he ate YOU!'
      exit  # This quits the program.
    end

    if @stuffInIntestine >= 10
      @stuffInIntestine = 0
      puts 'Whoops!  ' + @name + ' had an accident...'
    end

    if hungry?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + '\'s stomach grumbles...'
    end

    if poopy?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' does the potty dance...'
    end
  end

end

pet = Dragon.new 'Norbert'
pet.feed
pet.toss
pet.walk
pet.putToBed
pet.rock
pet.putToBed
pet.putToBed
pet.putToBed
pet.putToBed