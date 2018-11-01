=begin

An irrational decimal fraction is created by concatenating the positive integers:

0.12345678910(1)112131415161718192021...

It can be seen that the 12th digit of the fractional part is 1.

If dn represents the nth digit of the fractional part, find the value of the following expression.

d1 × d10 × d100 × d1000 × d10000 × d100000 × d1000000

=end

i = 1
fractional_part = "."
while fractional_part.length <= 1000000
  fractional_part << i.to_s
  i += 1
end

product = 1
place = 1
7.times do
  product *= fractional_part[place].to_i
  place *= 10
end

p product  # => 210