=begin

If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?


NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.

=end

# create a hash from which we can construct all numbers 1 through 1000 (with the addition of the "and" that we apparently need in order to comply with British usage)
numbers_to_words = {
  1000 => "thousand",
  100 => "hundred",
  90 => "ninety",
  80 => "eighty",
  70 => "seventy",
  60 => "sixty",
  50 => "fifty",
  40 => "forty",
  30 => "thirty",
  20 => "twenty",
  19 => "nineteen",
  18 => "eighteen",
  17 => "seventeen",
  16 => "sixteen",
  15 => "fifteen",
  14 => "fourteen",
  13 => "thirteen",
  12 => "twelve",
  11 => "eleven",
  10 => "ten",
  9 => "nine",
  8 => "eight",
  7 => "seven",
  6 => "six",
  5 => "five",
  4 => "four",
  3 => "three",
  2 => "two",
  1 => "one"
}

i = 1
number_of_letters = 0
1000.times do
  if i < 21  # 1 - 20
    number_of_letters += numbers_to_words[i].length
  elsif i < 100  # 21 - 99
    tens = i.to_s[0].to_i * 10
    ones = i.to_s[1].to_i
    number_of_letters += numbers_to_words[tens].length
    unless ones == 0
      number_of_letters += numbers_to_words[ones].length
    end
  elsif i < 1000  # 100 - 999
    hundreds = i.to_s[0].to_i
    number_of_letters += numbers_to_words[hundreds].length + numbers_to_words[100].length
    tens = i.to_s[1].to_i * 10
    unless tens == 0
      number_of_letters += numbers_to_words[tens].length
    end
    ones = i.to_s[2].to_i
    unless ones == 0
      number_of_letters += numbers_to_words[ones].length
    end
    unless ones == 0 && tens == 0
      number_of_letters += "and".length
    end
  else  # 1000
    number_of_letters += numbers_to_words[1].length + numbers_to_words[1000].length
  end
  i += 1
end

p number_of_letters  # => 21088
