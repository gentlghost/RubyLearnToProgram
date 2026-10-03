command = ''
year = 1930
byeCount = 0

while byeCount < 3
  command = gets.chomp
  if command == command.upcase
    if command == 'BYE'
      byeCount = byeCount + 1
      
      if byeCount >= 3
        puts 'BYE SWEETIE!'
      end
    
    else
      puts 'NO, NOT SINCE ' + (year + rand(21)).to_s
      byeCount = 0
    end
  else
    puts 'HUH?! SPEAK UP, SONNY!'
    byeCount = 0
  end
end