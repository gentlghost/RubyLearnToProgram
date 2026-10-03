# We can create our own methods and utilize them through the program
#   Methods are just a blocks of code that can be reused throughout
#   a program. By having the power to write our own methods, we can
#   reuse code without rewriting it over and over again.

# To create a method, we use the def keyword and give it a name.
def sayMoo
  puts 'Moo '
end

# To call the method, we call the method name.

sayMoo
sayMoo
puts 'coin-coin'
sayMoo
sayMoo
puts

# To pass in arguments into a method, we can create parameters 
# to pass in these arguments.
#   To separate parameters, use commas (,).

def sayMooN numberOfMoos
    puts 'Moo '*numberOfMoos
end

sayMooN 3
puts 'coin-coin'
# sayMooN       # Gives an error because there's no arguments.

# Variables can be declared within methods, however they will be
# local.
#   Local variables can only be access within the block of code
#   that is declared in.
#   Scope is the parts of code a variable has access to.

def doubleThis num
    numTimes2 = num*2
    puts num.to_s + ' doubled is ' + numTimes2.to_s
end

doubleThis 44
puts
# puts numTimes2.to_s   # Since numTimes is out-of-scope, this should error out.

# This allows us not to override variables outside of the method.
#   When passing arguments, the parameters create a copy of the
#   value it passed in.
def littlePest var
    var = nil
    puts 'HAHA! I ruined your variable!'
end

var = 'You can\'t even touch my variable!'
littlePest var
puts var
puts ''

# Also, we can return values after they were operated in a method.
#   You can do this by having a value be at the end of the method
#   or with the return keyword.

returnVal = puts 'puts returns: nil'
puts returnVal
puts

def sayMooN2 numberOfMoos
    puts 'Moo '*numberOfMoos
    'yellow submarine'  # Returns 'yellow submarine'
end

x = sayMooN2 2
puts x
puts

# NOTE: eslif or else-if allows us to further branch with a different condition.
def clamp(n, min, max)
    if n < min
        return min
    elsif n > max
        return max
    else
        return n
    end
end

min = 15
max = 20
n = 10

n = clamp(n, min, max)
puts n

# Recursion is the ability to call a function within itself.
#   It's useful when you want to repeat the same blocks of code
#   over and over again.

def fibonacci(n, prev, current)
    string = ''
    if n > 0
        n = n-1
        string = string + prev.to_s + ' '
        nex = prev + current
        string = string + fibonacci(n, current, nex)
    end

    string
end

puts fibonacci(10, 0, 1)