=begin

Use the ternary operator with the `reduce` method to find the minimum number in an array of numbers. (Note - do not use the `min` method for this exercise)

=end


def min(numbers)
  not_min = numbers[0] + 1
  minimum = numbers.reduce(not_min) { |current_min, number| number < current_min ? number : current_min }
end

numbers = [6, 2, 8, -4, 634, 4]
p min(numbers)  # => -4