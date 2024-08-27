=begin

2**15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

What is the sum of the digits of the number 2**1000?

=end

large_number = 2 ** 1000
large_string = large_number.to_s
i = 0
x = large_string[i]
sum = 0

while x do
  sum += x.to_i
  i += 1
  x = large_string[i]
end

p sum  # => 1366