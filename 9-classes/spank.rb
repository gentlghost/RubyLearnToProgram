def get_int(prompt, min, max)
  valid = false
  while not valid
    puts prompt
    i = gets.to_i

    if (i < min) or (i > max)
      puts 'Number has to be between ' + min.to_s + ' and ' + max.to_s + '.'
    else
      valid = true
    end
  end

  i
end

month = get_int('What month were you born in?', 1, 12)
day   = get_int('What day in the month?', 1, 31)
year  = get_int('What year?', 1900, 2100)

puts month.to_s + '/' + day.to_s + '/' + year.to_s