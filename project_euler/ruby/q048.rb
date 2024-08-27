=begin

The series, 1**1 + 2**2 + 3**3 + ... + 10**10 = 10405071317.

Find the last ten digits of the series, 1**1 + 2**2 + 3**3 + ... + 1000**1000.

=end

sum = 0
[*1..1000].each do |number|
  sum += number ** number
end

p sum.to_s[-10..-1]  # => "9110846700"