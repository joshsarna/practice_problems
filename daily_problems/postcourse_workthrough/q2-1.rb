=begin

Read about the Ruby `map` method. Then refactor the code below using `map`.

numbers = [1, 2, 4, 2]
doubled_numbers = []
numbers.each do |number|
  doubled_numbers << number * 2
end
p doubled_numbers

=end

numbers = [1, 2, 4, 2]
doubled_numbers = numbers.map{ |x| 2 * x }
p doubled_numbers  # => [2, 4, 8, 4]