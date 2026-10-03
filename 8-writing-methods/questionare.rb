def ask question
  goodAnswer = false
  while (not goodAnswer)
    puts question
    
    reply = gets.chomp.downcase
    
    if (reply == 'yes' or reply == 'no')
      goodAnswer = true
      if reply == 'yes'
        answer = true
      else
        answer = false
      end
    else
      puts 'Please answer "yes" or "no".'
    end
  
  end
  answer
end

puts 'Hello, and thank you for taking the time to'
puts 'help me with this experiment.  My experiment'
puts 'has to do with the way people feel about'
puts 'Mexican food.  Just think about Mexican food'
puts 'and try to answer every question honestly,'
puts 'with either a "yes" or a "no".  My experiment'
puts 'has nothing to do with bed-wetting.'
puts

# We ask these questions, but we ignore their answers.

#goodAnswer = false
#while (not goodAnswer)
#  puts 'Do you like eating tacos?'
#  answer = gets.chomp.downcase
#  if (answer == 'yes' or answer == 'no')
#    goodAnswer = true
#  else
#    puts 'Please answer "yes" or "no".'
#  end
#end

ask 'Do you like eating tacos?'

#goodAnswer = false
#while (not goodAnswer)
#  puts 'Do you like eating burritos?'
#  answer = gets.chomp.downcase
#  if (answer == 'yes' or answer == 'no')
#    goodAnswer = true
#  else
#    puts 'Please answer "yes" or "no".'
#  end
#end

ask 'Do you like eating burritos?'

# We pay attention to *this* answer, though.
#goodAnswer = false
#while (not goodAnswer)
#  puts 'Do you wet the bed?'
#  answer = gets.chomp.downcase
#  if (answer == 'yes' or answer == 'no')
#    goodAnswer = true
#    if answer == 'yes'
#      wetsBed = true
#    else
#      wetsBed = false
#    end
#  else
#    puts 'Please answer "yes" or "no".'
#  end
#end
wetsBed = ask 'Do you wet the bed?'

#goodAnswer = false
#while (not goodAnswer)
#  puts 'Do you like eating chimichangas?'
#  answer = gets.chomp.downcase
#  if (answer == 'yes' or answer == 'no')
#    goodAnswer = true
#  else
#    puts 'Please answer "yes" or "no".'
#  end
#end

ask 'Do you like eating chimichangas?'

puts 'Just a few more questions...'

#goodAnswer = false
#while (not goodAnswer)
#  puts 'Do you like eating sopapillas?'
#  answer = gets.chomp.downcase
#  if (answer == 'yes' or answer == 'no')
#    goodAnswer = true
#  else
#    puts 'Please answer "yes" or "no".'
#  end
#end

ask 'Do you like eating sopapillas?'

# Ask lots of other questions about Mexican food.

puts
puts 'DEBRIEFING:'
puts 'Thank you for taking the time to help with'
puts 'this experiment.  In fact, this experiment'
puts 'has nothing to do with Mexican food.  It is'
puts 'an experiment about bed-wetting.  The Mexican'
puts 'food was just there to catch you off guard'
puts 'in the hopes that you would answer more'
puts 'honestly.  Thanks again.'
puts
puts wetsBed