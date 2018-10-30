=begin

The decimal number, 585 = 1001001001(base2) (binary), is palindromic in both bases.

Find the sum of all numbers, less than one million, which are palindromic in base 10 and base 2.

(Please note that the palindromic number, in either base, may not include leading zeros.)

=end

def binary(number)
  binary_number = 0
  digits = Math.log(number, 2).to_i + 1
  (Math.log(number, 2).to_i + 2).times do
    binary_number *= 10
    if number / (2**digits) == 1
      binary_number += 1
      number -= 2**digits
    end
    digits -= 1
  end
  binary_number
end

sum = 0
i = 1
999999.times do
  bin = binary(i)
  if i.to_s == i.to_s.reverse && bin.to_s == bin.to_s.reverse
    sum += i
  end
  i += 1
end

p sum  # => 872187