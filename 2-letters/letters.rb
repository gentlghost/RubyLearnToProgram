#A string is a group of characters listed together.
#   In Ruby, we use the single-quotes ('')

puts 'Hello World'
puts ''
puts 'Good-bye.'

# + concatenates two strings together, while * repeats strings a number of times.
puts 'I like ' + 'apple pie'
puts 'blink ' * 6
# NOTE: You cannot do 3 * 'str'
#puts 3 * 'pig'

# NOTE: You cannot add a number to a string, and you cannot multiply a string with a string
puts 2 + 2
puts '2' + '2'
puts '2 + 2'
#puts '2' + 2 # TypeError: No implicit conversion of Interger into String

puts 2 * 5
puts '2' * 5
puts '2 * 5'
#puts '2' * '5' # TypeError: No implicit conversion of Interger into String

# Escape characters allow us to use characters that have been reserved by the programming
# language.
#   \' and \" are the most common to use in strings since those characters are used for string.
#   \\ gives us a back slash.
puts 'You\'re swell!'
puts 'Backslash: \\'
puts 'up\\down'
puts 'up\down'
