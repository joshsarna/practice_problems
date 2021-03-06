=begin

Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

Evaluate the sum of all the amicable numbers under 10000.

=end

def d(n)
  proper_divisors = []
  i = 1
  (n/2).times do
    if n % i == 0
      proper_divisors << i
    end
    i += 1
  end
  proper_divisors
end

sum = 0
number = 1
9999.times do
  d_number_sum = d(number).sum
  if d_number_sum != number && d(d_number_sum).sum == number
    sum += number
  end
  number += 1
end

p sum  # => 31626