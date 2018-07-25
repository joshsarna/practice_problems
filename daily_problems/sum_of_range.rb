=begin

Write a method called `sum_of_range`, which will accept an array containing two numbers, and return the sum of all of the whole numbers within the range of those numbers, inclusive.

p sum_of_range([1, 4])  #=> 10
p sum_of_range([4, 1])  #=> 10

=end

def sum_of_range(range)
  sum = 0
  i = range.min
  while i <= range.max
    sum += i
    i += 1
  end
  sum
end

p sum_of_range([1, 4])  #=> 10
p sum_of_range([4, 1])  #=> 10