# Variables allow you to store and reuse data. We can assign a value using the
# assignment operator (=).

myString = '...you can say that again...'
puts myString
puts myString

# We can operate on variables like the data types they are assigned to.
name = 'Patricia Rosanna Mildred Oppenheiner'
puts 'My name is ' + name + '.'
puts 'Wow! ' + name + ' is a very long name!'

# Furthermore, we can reassign a varible to a different value.
composer = 'Mozart'
puts composer + ' was "da bomb" in his day.'

composer = 'Beethoven'
puts "But, I prefer " + composer + ', personally.'

# In Ruby, we can reassign a varible to a different object entirely!
#   Ruby is what we'd like to call a dynamic language.
var = 'just another string.'
puts var

var = 5 * (1+2)
puts var

# We can assign variables to different variables!
#   With numbers and strings, they will create a copy of the varible, and
#   the values will not be affected if the variable's value changes.
var1 = 8
var2 = var1

puts var1 # > 8
puts var2 # > 8

var1 = 'eight'

puts var1 # > eight
puts var2 # > 8