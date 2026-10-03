puts 'Starting year:'
year = gets.chomp.to_i
puts 'Ending year:'
endYear = gets.chomp.to_i

puts 'Leap years:'
while year <= endYear
    if year % 4 == 0 and not(year % 100 == 0)
        puts '  ' + year.to_s
    end

    year = year + 1
end