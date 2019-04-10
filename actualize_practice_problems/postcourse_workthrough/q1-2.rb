=begin

Write a method called `double_numbers` that takes in an array and returns a new array with each number doubled. Use an `each` loop in the method.

p double_numbers([4, 1, 3])  #=> [8, 2, 6]

=end

def double_numbers(numbers)
  new_numbers = []
  numbers.each do |number|
    new_numbers << number * 2
  end
  new_numbers
end

p double_numbers([4, 1, 3])  #=> [8, 2, 6]