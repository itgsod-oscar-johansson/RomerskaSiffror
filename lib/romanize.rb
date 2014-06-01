def romanize(number)

  raise ArgumentError,'can not encode zero' if number.zero?
  raise ArgumentError,'can not encode negative number' if number < 0


  library = {1 => 'I', 4 => 'IV', 5 => 'V', 9 => 'IX', 10 => 'X', 40 => 'XL', 50 => 'L', 90 => 'XC', 100 => 'C', 400 => 'CD', 500 => 'D', 900 =>'CM', 1000 =>'M'}
  new_number = ''

  library.keys.sort.reverse.each do |key|
      while number >= key
        new_number += library[key]
        
        number -= key
      end
  end
  return new_number
end