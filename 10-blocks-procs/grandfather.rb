def grandfatherClock(&hourSound)
  hour = Time.now.hour

  # Get hour between 1-12
  if hour == 0
    hour = 12
  elsif hour > 12 and hour < 24
    hour = hour % 12
  end

  hour.times do 
    hourSound.call
  end
end

grandfatherClock do
  puts "DONG!"
end

puts

grandfatherClock do
  puts "DING!"
end