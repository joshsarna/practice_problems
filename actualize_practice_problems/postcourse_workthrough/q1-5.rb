=begin

Write a method called `average` that takes in an array of numbers and returns the average (the sum divided by the total number of numbers). Write it first using a `while` loop, then write it again using an `each` loop. (Hint - if you’re having issues with missing decimals, you may need the .to_f method…)

p average([2, 1, 7, 5])  #=> 3.75

=end

# while loop
def average(numbers)
  sum = 0
  i = 0
  while i < numbers.length do
    sum += numbers[i]
    i += 1
  end
  sum.to_f / numbers.length
end

# each loop
def average_again(numbers)
  sum = 0
  numbers.each do |number|
    sum += number
  end
  sum.to_f / numbers.length
end

p average([2, 1, 7, 5])  #=> 3.75
p average_again([2, 1, 7, 5])  #=> 3.75