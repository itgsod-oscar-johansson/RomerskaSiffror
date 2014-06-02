# Public: The program is going to take a arabic number and translate it into roman number.
#
# Number = The arabic number used for the translation
#
# Examples:
#
# romanize(10)
# # => 'V'
#
# Returns the romanized nummer.

def romanize(number)
  # Will raise a argument error if the number is zero.
  raise ArgumentError,'can not encode zero' if number.zero?
  #Will raise a argument error if the number is negative.
  raise ArgumentError,'can not encode negative number' if number < 0


  # I created a hash with all the numbers and there conterpart to easy be accessed in our algorithm.
  library = {1 => 'I', 4 => 'IV', 5 => 'V', 9 => 'IX', 10 => 'X', 40 => 'XL', 50 => 'L', 90 => 'XC', 100 => 'C', 400 => 'CD', 500 => 'D', 900 =>'CM', 1000 =>'M'}
  new_number = ''

  # We will go over each key in the library hash.
  library.keys.sort.reverse.each do |key|
    # While the numbers are equal or bigger to the key it will loop.
      while number >= key
        #New_number is a empty string and it will add the value with help of the key.
        new_number += library[key]
        # Lastly we subtract the key from the starting number.
        number -= key
      end
  end
  return new_number
end