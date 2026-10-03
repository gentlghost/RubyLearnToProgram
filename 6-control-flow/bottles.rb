bottles = 99
lineWidth = 50

while bottles > 0
  if bottles == 1
    puts(       ('One bottle of beer on the wall').center(lineWidth))
    puts(                   ('One bottle of beer').center(lineWidth))
    puts(       ('Take it down, pass it around').center(lineWidth))
    puts(('No more bottles of beer on the wall').center(lineWidth))
    puts ''
    bottles = bottles - 1
  else
    puts((bottles.to_s + ' bottles of beer on the wall').center(lineWidth))
    puts(            (bottles.to_s + ' bottles of beer').center(lineWidth))
    puts(             ( 'Take one down, pass it around').center(lineWidth))
    bottles = bottles-1
    puts((bottles.to_s + ' bottles of beer on the wall').center(lineWidth))
    puts ''
  end
end