# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.

def dasherize_number(num)
  
  digits= num.to_s.split('').map{ |digit_character| digit_character.to_i } # an array of the digits in num, e.g. if num=123, digits=[1,2,3]
  
  res= ''
  
  first_digit= digits[0] # the most significat digit of num, e.g. if num=123, first_digit=1
  
  res+= first_digit.to_s
  
  if first_digit % 2 == 1
    res+= '-'
  end
  
  for digit in digits[1..-2]
    if digit % 2 == 1
      # the current digit is odd
      if res[-1] == '-'
        res+=       digit.to_s + '-' # when the previous digit was     also odd
      else
        res+= '-' + digit.to_s + '-' # when the previous digit was not also odd
      end
    else
      # the current digit is not odd
      res+=         digit.to_s
    end
  end
  
  last_digit= digits[-1] # the least significant digit of num, e.g. if num=123, last_digit=3
  
  if last_digit % 2 == 1
    # the last digit is odd
    if res[-1] == '-'
                # when the second-to-last digit was     also odd
    else
      res+= '-' # when the second-to-last digit wal not also odd
    end
  end
  
  res+= last_digit.to_s
  
  return res
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'dasherize_number(203) == "20-3": ' +
  (dasherize_number(203) == '20-3').to_s
)
puts(
  'dasherize_number(303) == "3-0-3": ' +
  (dasherize_number(303) == '3-0-3').to_s
)
puts(
  'dasherize_number(333) == "3-3-3": ' +
  (dasherize_number(333) == '3-3-3').to_s
)
puts(
  'dasherize_number(3223) == "3-22-3": ' +
  (dasherize_number(3223) == '3-22-3').to_s
)