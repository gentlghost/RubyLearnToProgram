# # indicates a comment. Comments are not read by the interpretor

# puts outputs text to the console
# There are two types of number data types in Ruby: Integers and Floats
#     Integers are positive and negative whole numbers.
#         2, 3, 9999999999, -42, 0
#     Floats (floating point numbers) are positive and negative decimal numbers.
#         2.5, 3.1415926, -8.07, 0.0

puts 1+2          # > 3

# There are four main types of arithmetic operators: addition (+), subtraction (-), 
# multiplication (*), and division (/).
puts 1.0+2.0    # > 3.0
puts 5.0-8.0    # > -3.0
puts 2.0*3.0    # > 6.0
puts 9.0/2.0    # > 4.5

# For integers, division will round down from the result. This is called truncation. 
puts 1+2        # > 3
puts 5-8        # > -3
puts 2*3        # > 6
puts 9/2        # > 4

puts 5 * (12 - 8) + -15 # = 5
puts 98 + (59872 / (13 * 8)) * -52 # = -29802