=begin

A unit fraction contains 1 in the numerator. The decimal representation of the unit fractions with denominators 2 to 10 are given:

1/2 =   0.5
1/3 =   0.(3)
1/4 =   0.25
1/5 =   0.2
1/6 =   0.1(6)
1/7 =   0.(142857)
1/8 =   0.125
1/9 =   0.(1)
1/10  =   0.1
Where 0.1(6) means 0.166666..., and has a 1-digit recurring cycle. It can be seen that 1/7 has a 6-digit recurring cycle.

Find the value of d < 1000 for which 1/d contains the longest recurring cycle in its decimal fraction part.

=end

# all unit fractions are either terminating or recurring decimals; none are irrational

# make a method for calculating recurring cycle length
def rec_cycle_length(n)
  decimals = []
  remainder = 1
  remainders = []
  continue = true
  while continue do
    remainders << remainder
    remainder = (remainder * 10 % n)
    if remainders.include? remainder
      continue = false
    end
  end
  remainders.length - remainders.find_index(remainder)
end

# termindating decimals are treated as having a recurring cycle of (0); this does not affect the answer to this question

# loop through 1 - 1000 to find longest recurring cycle
i = 2
max_length = 0
i_with_max = 1
998.times do
  if rec_cycle_length(i) > max_length
    max_length = rec_cycle_length(i)
    i_with_max = i
  end
  i += 1
end

p i_with_max  # => 983
p max_length  # => 982