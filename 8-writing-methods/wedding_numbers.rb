def weddingNumber number
  if (number < 0) or (number > 9999)
    return 'Year has to be between 0 and 9999'
  end
  
  if number == 0
    return 'zero'
  end

  numString  = ''
  onesPlace  = ['one'  , 'two'  , 'three', 'four' , 'five' ,
                'six'  , 'seven', 'eight', 'nine' ]
  tensPlace  = ['ten'   , 'twenty' , 'thirty', 'forty' , 'fifty' ,
                'sixty' , 'seventy', 'eighty', 'ninety' ]
  teenagers  = ['eleven'  , 'twelve'   , 'thirteen', 'fourteen', 'fifteen' ,
                'sixteen' , 'seventeen', 'eighteen', 'nineteen']

  left = number
  write = left/100
  left  = left - write*100

  if write > 0
    digitText = weddingNumber write
    numString = numString + digitText + ' hundred'
  
    if left > 0
      numString = numString + ' and '
    end
  end

  # Handle the tens places
  write = left/10
  left  = left - write*10
  
  if write > 0
    if (write == 1) and (left > 0)
      numString = numString + teenagers[left-1]
      left = 0
    else
      numString = numString + tensPlace[write-1]
    end

    if left > 0
      numString = numString + ' and '
    end
  end

  write = left
  left = 0

  if write > 0
    numString = numString + onesPlace[write-1]
  end

  numString
end

puts weddingNumber(  0)
puts weddingNumber(  9)
puts weddingNumber( 10)
puts weddingNumber( 11)
puts weddingNumber( 17)
puts weddingNumber( 32)
puts weddingNumber( 88)
puts weddingNumber( 99)
puts weddingNumber(100)
puts weddingNumber(101)
puts weddingNumber(234)
puts weddingNumber(1984)
puts weddingNumber(3211)