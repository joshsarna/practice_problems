=begin

145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.

Find the sum of all numbers which are equal to the sum of the factorial of their digits.

Note: as 1! = 1 and 2! = 2 are not sums they are not included.

=end

# first, we need to determine a reasonable ceiling
# 9! = 362880, so 999999 would have a factorial sum of 6 x (362880) > 999999, but 9999999 (7 nines) would have a factorial sum of 7 x (362880) = 2540160 < 9999999; 2540160'll be our ceiling (9999999 would also work)

# second, we can write a factorial method
def factorial(n)
  if n == 0
    return 1
  end
  (1..n).inject(:*)
end

# third, we can write a method for determing whether a number is the sum of the factorial of its digits
class Integer
  def digit(n)
    if n > self.to_s.length
      return nil
    else
      return self.to_s[n].to_i
    end
  end
end

def sum_of_factorials?(number)
  i = 0
  sum = 0
  number.to_s.length.times do
    sum += factorial(number.digit(i))
    i += 1
  end
  return sum == number
end

# finally, we'll loop through all numbers under our ceiling and above two
sum = 0
[*(3..2540160)].each do |number|
  if sum_of_factorials?(number)
    sum += number
  end
end

p sum  # => 40730