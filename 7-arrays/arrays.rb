# An array is a list of objects stored in memory.
#   In Ruby, we use the square brackets ([]) to represent arrays.
#   Elements can be separated with a comma (,).
#   Arrays don't need to hold the same type of object.

[]                  # Empty array
[5]                 # This array has one element of type integer
['Hello', 'Goodbye']# This array has two elements of type string

flavor = 'vanilla' # We can pass the value of a variable into an array.
[89.9, flavor, [true, false]] # This array has a float, string, and array.

# To access the elements in the array, we index them starting at 0.
#   Think of it as we're pointing to the current memory address, and
#   we add 1 to access the next block of memory. (This is why programmers
#   start at 0.)
#   Also, most mathematicians start at 0.
#   If we try to access an index either greater than or equal to the length
#   of the array, or use negative numbers, we will return nil.
names = ['Ada', 'Belle', 'Chris']
puts names
puts names[0]
puts names[1]
puts names[2]
puts names[3]  # Index out of range
puts ''

# nil is a type of object that represents no object.
#   Basically, nil is used to check if a variable contains nothing.
puts nil
puts ''

# The each method allows us to iterate through each element of the array.
#    Iterators are methods that allow us to iterate through a loop a number
#    of times.
#    In Ruby, we indicate a iterator with the do keyword at the beginning
#    of the block.
#    The pipes allow acts as a parameter for each element.

languages = ['C', 'C#', 'Ruby', 'Python']
languages.each do |lang|
  puts 'I love ' + lang + '!'
  puts 'Do you?'  
end

puts 'And let\'s here it for C++!'
puts '...'
puts ''

# The times method is an iterator method for integers that allows us to
# repeat a number of times (hence the name).
3.times do 
  puts 'Hip-Hip-Hooray'
end

# Here's a few more array methods:
#   + adds another array to the end of the array
#   * repeats the elements of the array a number of times.
#   length gets the length the array.
#   reverse reverses the array.
#   last gets the last element of the array.
#   join is like to_s, but sepparates each element with a string.
#   push adds an element to the end of the array.
#   pop removes the last element of the array.
#   sort sorts the array.

foods = ['apple', 'banana', 'chocolate']
foods2 = ['donut', 'eggplant', 'fish']

puts foods
puts
puts foods + foods2
puts
puts foods * 3
puts
puts foods.to_s
puts
puts foods.join(', ')

favorites = []
favorites.push 'raindops on roses'
favorites.push 'whiskey on kittens'

puts favorites[0]
puts favorites.last
puts favorites.length

puts favorites.pop
puts favorites
puts favorites.length

# puts prints out each element of the array, so if there's nothing
# in the array, it would do nothing.
200.times do
  puts []
end