words = []

while true
  word = gets.chomp
  puts
  
  words.push(word)  
  # words.sort

  # Bubble Sort
  i = 0
  j = 0
  while i < words.length - 1
    j = i + 1
    
    while j < words.length - i - 1
      if words[j] > words[j + 1]
        temp = words[j]
        words[j] = words[j + 1]
        words[j + 1] = temp
      end
      
      j = j + 1
    end 

    i = i + 1
  end

  puts words
  puts
end