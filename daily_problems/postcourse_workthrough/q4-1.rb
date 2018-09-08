=begin

Read about the Ruby `reduce` method. Then refactor the code below using `reduce`.

numbers = [1, 2, 4, 2]
sum = 0
numbers.each do |number|
  sum += number
end
p sum

=end

numbers = [1, 2, 4, 2]
sum = numbers.reduce(:+)
p sum  # => 9