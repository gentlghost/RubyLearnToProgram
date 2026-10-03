# Control flow is the direction where the program is executing.
#   In programming, we have branching and loops

# Before we get to control flow, let's talk about Booleans!
#   Booleans are a type that represents a binary choice: 
#   (true or false, on or off, 1 or 0)
#   Booleans can hold either true or false values.

b1 = true
b2 = false

puts b1
puts b2
puts ''

# Comparison methods allows you to compare two values and get the
# results.
#   < - less than
#   > - greater than
#   <= - less than or equal to
#   >= - greater than or equal to
#   == - equals to
#   != - not equals to

puts 1 < 2
puts 1 > 2
puts 5 <= 5
puts 4 >= 5
puts 2 == 2
puts 2 != 2
puts ''

# With strings, it uses lexicographical ordering (dictionary order)
#   However, due to how computers work/ASCII, upercase letters has
#   are less than lowercase letters

puts 'cat' < 'dog'
puts 'ant' < 'Zoo'
puts ''

# There are other operators that help with Boolean logic:
#   and returns true if and only if both Booleans are true.
#   or returns true if one or the other Boolean is true.
#   not returns true if the Boolean is false.
lineWidth = 30

b1 = true
b2 = true
b3 = false
b4 = false

puts 'AND'.center(lineWidth)
puts '-' * lineWidth
puts 'true  and true  | ' + (b1 and b2).to_s
puts 'true  and false | ' + (b1 and b3).to_s
puts 'false and true  | ' + (b3 and b2).to_s
puts 'false and false | ' + (b3 and b4).to_s

puts 'OR'.center(lineWidth)
puts '-' * lineWidth
puts 'true  or true  | ' + (b1 or b2).to_s
puts 'true  or false | ' + (b1 or b3).to_s
puts 'false or true  | ' + (b3 or b2).to_s
puts 'false or false | ' + (b3 or b4).to_s

puts 'NOT'.center(lineWidth)
puts '-' * lineWidth
puts 'not true  | ' + (not b1).to_s
puts 'not false | ' + (not b3).to_s

puts ''
# Branching allows us to change the execution of the program based on
# a condition.
#   The main form of branching is with conditionals (if-statements).

# The if-statement executes a block of code if the condition is true.
# The end keyword ends a block of code.

puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'

if name == 'Chris'
  puts 'What a lovely name!'
end
puts ''

# The else-statement executes a block of code if the condition in the
# if-statement is false
puts 'I am a fortune-teller. Tell me your name:'
name = gets.chomp
if name == 'Chris'
  puts 'I see great things in your future.'
else
  puts 'Your future is... Oh my! Look at the time!'
  puts 'I really have to go, sorry!'
end
puts ''

# We can put conditions inside of other conditions
puts 'Hello, and welcome to 7th grade English.'
puts 'My name is Mrs. Guymon. And your name is...?'
name = gets.chomp

if name == name.capitalize
  puts 'Please take a seat, ' + name + '.'
else
  puts name + '? You mean ' + name.capitalize + ', right?'
  puts 'Don\'t you even know how to spell your own name?!'
  reply = gets.chomp

  if reply.downcase == 'yes'
    puts 'Well then, sit down.'
  else
    puts 'GET OUT!!'
  end
end

puts ''

# We can use the logic operators to add multiple conditions to the
# if-statement
puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'

if name == 'Chris' or name == 'Peter'
  puts 'What a lovely name!'
end
puts ''

# Loops allow us to repeat code as many times as we want.
#   while-loops run while a condition is true.
command = ''

while command.downcase != 'bye'
  puts command
  command = gets.chomp
end

puts 'Come again!'
puts ''


