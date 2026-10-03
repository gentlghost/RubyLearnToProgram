# Did you know that the arithmetic operators are actually methods?
#   We can showcase this by putting the dot (.) notation, in front 
#   of the operators.
#   Since all data types are objects in Ruby, the operators are methods
#   that are contained in the object. 
#       This is why 'a' * 3 works while  3 * 'a' does not as we are 
#       saying 'a' repeat 3 times with 'a'.* 3 while we are saying
#       3 times 'a' with 3.* 'a'.

puts 'hello '.+ 'world'
puts 'pigs'.* 5
puts (10.* 9).+ 9
puts ''
# If all methods have to be contain in an object, what is puts'
# and gets' object?
#   self refers to the the current object we are in. In this case,
#   self is the program and puts and gets are the methods of the 
#   program's object.

self.puts 'to be or not to be'
puts ''

iCantBelieveIMadeAVariableNameSoLongJustToPointToA3 = 3
puts iCantBelieveIMadeAVariableNameSoLongJustToPointToA3
self.puts iCantBelieveIMadeAVariableNameSoLongJustToPointToA3
puts ''

# There's a few string methods we could use. Starting with reverse
# which reverses the string.

var1 = 'stop'
var2 = 'stressed'
var3 = 'Can you pronounce this sentence backwords?'

puts var1.reverse
puts var2.reverse
puts var3.reverse
puts var1
puts var2
puts var3
puts ''

# length gets the length of the string.
#   NOTE: Since length returns an integer, you need to use a
#   cast method to cast it to string.
puts 'What\'s your full name?'
name = gets.chomp
puts 'Your name is ' + name +'? There are ' + name.length.to_s +
     ' characters in your name!'
puts ''

# Here's a few more string methods that are self-explaintory
letters = 'aAbBcCdDeE'

puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize # Only capitalizes the first character
puts ' a'.capitalize
puts letters
puts ''

# We can format the text with center, ljust (left justify), and rjust (right justify).
#   All three methods require a line width as the parameter.

# NOTE: Parentheses are used here to clarify and separate parameters.
lineWidth = 50
puts(                'Old Mother Hubbard'.center(lineWidth))
puts(               'Sat in her cupboard'.center(lineWidth))
puts(         'Eating her curds an whey,'.center(lineWidth))
puts(          'When along came a spider'.center(lineWidth))
puts(        'Which sat down besider her'.center(lineWidth))
puts('And scared her poor shoe dog away.'.center(lineWidth))
puts ''

lineWidth = 40
str = '--> text <--'
puts str.ljust lineWidth
puts str.center lineWidth
puts str.rjust lineWidth
puts str.ljust(lineWidth/2) + str.rjust(lineWidth/2)
puts ''

# There are three math operators/methods we've haven't covered yet:
#   Exponentiation (**) allows us to raise a number to a power. (5^2 = 25)
#   Modulus (%) gets the remainder of two numbers being divided.
#   Absolute (.abs) gets the absolute value of a value
puts 5**3       # > 125 (5^3)
puts 64**0.5    # > 8.0 (64^(1/2) or sqrt(64))
puts 7/3        # > 2 (7/3 = 2r1)
puts 7%3        # > 1 (7/3 = 2r1)
puts 365%7
puts ''

puts((5-2).abs) # > 3
puts((2-5).abs) # > 3
puts ''

# The rand method creates a random numbers.
#   Without any parameters, it would generate a number between 0-1.
#   With an integer, it would generate an integer between 0 and the parameter.
puts rand
puts rand
puts rand
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(1))
puts(rand(1))
puts(rand(1))
puts(rand(99999999999999999999999999999999999999999999999))
puts('The weatherman said there is a ' + rand(101).to_s + '% chance of rain,')
puts('but you can never trust a weatherman.')
puts ''

#srand sets a seed for the rand method.
srand 1776
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts ''
srand 1776
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts ''

# The Math object has variables and methods pertaining to Math object
#   Constants like PI and E are accessed with the scope operator (::)
#   (We'll learn more later.)
puts(Math::PI)
puts(Math::E)
puts(Math.cos(Math::PI/3))
puts(Math.tan(Math::PI/4))
puts(Math.log(Math::E**2))
puts((1 + Math.sqrt(5))/2)