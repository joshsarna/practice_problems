=begin

A permutation is an ordered arrangement of objects. For example, 3124 is one possible permutation of the digits 1, 2, 3 and 4. If all of the permutations are listed numerically or alphabetically, we call it lexicographic order. The lexicographic permutations of 0, 1 and 2 are:

012   021   102   120   201   210

What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?

=end

# the first 3! permutations are with the first seven digits in order and the last 3 digits in all their permutations:
# 0123456 789
# 0123456 798
# 0123456 879
# 0123456 897
# 0123456 978
# 0123456 987

# that is, to find the 6th lexicographic permutation, we do not need to move the first 10 - 3 = 7 values because 6 <= 3!
# what is the smallest n for which 1000000 <= n! ?

def factorial(n)
  return (1..n).inject(:*) || 1
end

smallest_n = 11
n = 1
while smallest_n > 10 do
  if factorial(n) > 1000000
    smallest_n = n
  end
  n += 1
end

# p smallest_n  # => 10; so no help there

# the first 9! permutations have the first digit of 0, the second 9! have the first digit of 1, and so on; therefore, 1000000 / 9! = the first digit

usable_digits = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
millionth_perm = []
i = 9
remainder = 999999
10.times do
  digit = remainder / factorial(i)
  remainder %= factorial(i)
  millionth_perm << usable_digits[digit]
  usable_digits.delete(usable_digits[digit])
  i -= 1
end

perm_as_integer = 0
millionth_perm.reverse.each_with_index do |digit, index|
  perm_as_integer += digit * (10 ** index)
end
p perm_as_integer  # => 2783915460