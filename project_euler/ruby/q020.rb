=begin

n! means n × (n − 1) × ... × 3 × 2 × 1

For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

Find the sum of the digits in the number 100!

=end

def factorial(n)
  return (1..n).inject(:*) || 1
end

number_string = factorial(100).to_s
sum = 0

i = 0
number_string.length.times do
  sum += number_string[i].to_i
  i += 1
end

p sum  # => 648