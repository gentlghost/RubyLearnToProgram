lineWidth = 70

chapters = [
  ['Chapter 1: Numbers'             , 'page 1'],
  ['Chapter 2: Letters'             , 'page 5'],
  ['Chapter 3: Variables'           , 'page 9'],
  ['Chapter 4: Mixing It Up'        , 'page 13'],
  ['Chapter 5: More About Methods'  , 'page 17'],
  ['Chapter 6: Flow Control'        , 'page 23'],
  ['Chapter 7: Arrays and Iterators', 'page 27'],
]

puts 'Table of Contents'.center(lineWidth)
puts ''

chapters.each do |chapter|
  puts chapter[0].ljust(lineWidth/2) + chapter[1].rjust(lineWidth/2)
end