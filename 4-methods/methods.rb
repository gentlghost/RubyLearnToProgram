# Methods, or functions, are blocks of code that can be reused throughout a program.
#   So far, we've been looking at puts (put string), which takes in an object as a
#   argument and prints it as a string to the terminal.

# Casting methods converts the value from one data type to the other.
#   to_i converts the value to an integer.
#   to_f converts the value to a float.
#   to_s converts the value to a string.

var1 = 2
var2 = '5'

puts var1 + var2.to_i
puts var1.to_s + var2
puts ''

puts '15'.to_f
puts '99.999'.to_f
puts '99.999'.to_i   # NOTE: Trucation occurs when converting to integers
puts ''
# NOTE: to_i and to_f converts only the first part of the string if it's a number
puts '5 is my favorite number!'.to_i
puts '5545 is better!'.to_f
puts 'I prefer 7!'.to_i 
puts 'Who asked?'.to_f
puts ''
# NOTE: Casting to the same type does nothing.
puts 'stringy'.to_s
puts 3.to_i
puts ''

# gets (get string) gets the input from the user as a string.
puts gets
puts ''

# chomp removes any excess characters like spaces and new lines from a string.
puts 'Hello! What\'s your name?'
name = gets
puts name + ', huh? Nice to meet you!'
puts 'Sorry, I forgot to fix your name, ' + name.chomp + '.'
