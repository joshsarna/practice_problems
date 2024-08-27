=begin

Take the number 192 and multiply it by each of 1, 2, and 3:

192 × 1 = 192
192 × 2 = 384
192 × 3 = 576
By concatenating each product we get the 1 to 9 pandigital, 192384576. We will call 192384576 the concatenated product of 192 and (1,2,3)

The same can be achieved by starting with 9 and multiplying by 1, 2, 3, 4, and 5, giving the pandigital, 918273645, which is the concatenated product of 9 and (1,2,3,4,5).

What is the largest 1 to 9 pandigital 9-digit number that can be formed as the concatenated product of an integer with (1,2, ... , n) where n > 1?

=end

def is_pandigital?(number)
  string = number.to_s
  return string.include?("1") && string.include?("2") && string.include?("3") && string.include?("4") && string.include?("5") && string.include?("6") && string.include?("7") && string.include?("8") &&string.include?("9")
end

def conc_pan(number)
  n = 1
  continue = true
  while continue
    concatenated = ""
    i = 1
    n.times do
      concatenated << (number * i).to_s
      i += 1
    end
    if concatenated.length == 9 && is_pandigital?(concatenated)
      # p "#{number} conactenated 1 through #{n} gives #{concatenated}"
      continue = false
      return concatenated.to_i
    elsif concatenated.length > 9
      return false
    end
    n += 1
  end
end

# 100000 / 2 = 50000 is the largest number we could use, since "50000" + "100000" = "50000100000", which has too high a length

index = 1
largest_conc = 0
50000.times do
  concatenated_pan = conc_pan(index)
  if concatenated_pan && concatenated_pan > largest_conc
    largest_conc = concatenated_pan
  end
  index += 1
end

p largest_conc  # => 932718654