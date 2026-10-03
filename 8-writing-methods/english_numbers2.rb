def getDigits(number, digits, digitStr)
  left  = number
  write = left/digits
  left  = left - write*digits

  numString = ''

  if write > 0
    digitText = englishNumber write
    numString = numString + digitText + digitStr
  
    if left > 0
      numString = numString + ' '
    end
  end

  # Return both the remaining value and string
  [left, numString]
end

def englishNumber number
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
  highPlaces = [' sextillion' , ' quintillion', 
                ' quadrillion', ' trillion'  ,
                ' billion'    , ' million'   ,
                ' thousand']

  if number < 0
    numString = 'negative '
    number = number*-1
  end

  left = number
                
  if left > 1000
    digits = 1000000000000000000000
    # For each higher place, get the digits
    highPlaces.each do |place|
        ret = getDigits(left, digits, place)
        left = ret[0]
        numString = numString + ret[1]
        digits = digits/1000
    end
  end

  ret = getDigits(left, 100, ' hundred')
  left = ret[0]
  numString = numString + ret[1]

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
      numString = numString + '-'
    end
  end

  write = left
  left = 0

  if write > 0
    numString = numString + onesPlace[write-1]
  end

  numString
end

puts englishNumber(  0)
puts englishNumber(  9)
puts englishNumber( 10)
puts englishNumber( 11)
puts englishNumber( 17)
puts englishNumber( 32)
puts englishNumber( 88)
puts englishNumber( 99)
puts englishNumber(100)
puts englishNumber(101)
puts englishNumber(234)
puts englishNumber(3211)
puts englishNumber(999999)
puts englishNumber(1000000000000)
puts englishNumber(9999999999999999999999)
puts englishNumber(-9999999999999999999999)