=begin

Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:

1634 = 1**4 + 6**4 + 3**4 + 4**4
8208 = 8**4 + 2**4 + 0**4 + 8**4
9474 = 9**4 + 4**4 + 7**4 + 4**4
As 1 = 1**4 is not a sum it is not included.

The sum of these numbers is 1634 + 8208 + 9474 = 19316.

Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.

=end

# 7 * 9 ** 5 = 413343, that is 7 digit numbers yield six digit numbers at most when their digits are put to the fifth power and summed; therefore we need only test up to 6-digit numbers

i = 2
numbers_that_work = []
999999.times do
  i_string = i.to_s
  index = 0
  sum = 0
  i_string.length.times do
    sum += ((i_string[index].to_i) ** 5)
    index += 1
  end
  if sum == i
    numbers_that_work << i
  end
  i += 1
end

p numbers_that_work.sum  # => 443839
