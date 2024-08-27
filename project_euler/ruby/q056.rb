=begin

A googol (10**100) is a massive number: one followed by one-hundred zeros; 100**100 is almost unimaginably large: one followed by two-hundred zeros. Despite their size, the sum of the digits in each number is only 1.

Considering natural numbers of the form, a**b, where a, b < 100, what is the maximum digital sum?

=end

def sum_of_digits(number)
  number.to_s.split('').map{ | digit | digit.to_i }.sum
end

highest = {a: 0, b: 0, sum: 0}

a = 1
99.times do
  b = 1
  99.times do
    sum = sum_of_digits(a ** b)
    if sum > highest[:sum]
      highest = {a: a, b: b, sum: sum}
    end
    b += 1
  end
  a += 1
end

p highest[:sum]  # => 972