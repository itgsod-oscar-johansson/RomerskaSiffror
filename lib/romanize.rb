def romanize(number)

  raise ArgumentError,'can not encode zero' if number.zero?
  raise ArgumentError,'can not encode negative number' if number < 0

  return('kött')

end