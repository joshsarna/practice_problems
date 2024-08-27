=begin

A perfect number is a number for which the sum of its proper divisors is exactly equal to the number. For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.

A number n is called deficient if the sum of its proper divisors is less than n and it is called abundant if this sum exceeds n.

As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be written as the sum of two abundant numbers is 24. By mathematical analysis, it can be shown that all integers greater than 28123 can be written as the sum of two abundant numbers. However, this upper limit cannot be reduced any further by analysis even though it is known that the greatest number that cannot be expressed as the sum of two abundant numbers is less than this limit.

Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.

=end

# let's benchmark this
start = Time.now

# set the ceiling provided by analysis
ceiling = 28123

# make a way of testing whether a number is abundant
def abundant?(number)
  proper_divisors = []
  abundant_i = 1
  (number/2).times do
    if number % abundant_i == 0
      proper_divisors << abundant_i
    end
    abundant_i += 1
  end
  proper_divisors.sum > number
end

# make a way of testing whether a number is the sum of two abundant numbers
def sum_of_array_elements?(number, array)
  sum_i = 0
  array.length.times do
    if array.include? (number - array[sum_i])
      return true
    end
    sum_i += 1
  end
  return false
end

# find all abundant numbers under 28123
abundant_numbers = []
i = 1
ceiling.times do
  if abundant?(i)
    abundant_numbers << i
  end
  i += 1
end

# find all numbers that are not a sum of two abundant numbers
not_sums = []
i = 1
ceiling.times do
  unless sum_of_array_elements?(i, abundant_numbers)
    not_sums << i
  end
  i += 1
end

# find the sum
p not_sums.sum  # => 4179871

finish = Time.now
p "That took #{finish - start} seconds to calculate."  # => "That took 1952.719231 seconds to calculate."