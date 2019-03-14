# numbers = [1, 2, 4, 2]
# doubled_numbers = []
# numbers.each do |number|
#   doubled_numbers << number * 2
# end
# p doubled_numbers

numbers = [1, 2, 4, 2]
doubled_numbers = numbers.map {|x| x * 2}
p doubled_numbers