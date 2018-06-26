=begin

The sum of the squares of the first ten natural numbers is,

1**2 + 2**2 + ... + 10**2 = 385
The square of the sum of the first ten natural numbers is,

(1 + 2 + ... + 10)**2 = 55**2 = 3025
Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

=end

range = 100
sum_of_squares = 0
i = 1
range.times do
  sum_of_squares += i ** 2
  i += 1
end

square_of_sums = 0
i = 1
range.times do
  square_of_sums += i 
  i += 1
end
square_of_sums **= 2

difference = square_of_sums - sum_of_squares
p difference  # => 25164150