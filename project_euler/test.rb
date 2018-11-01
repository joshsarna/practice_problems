# start = Time.now

# divisors =[]
# current_triangle = 0
# natural_number = 1
# while divisors.length <= 150 do
#   current_triangle += natural_number
#   natural_number += 1
#   divisors = []
#   i = 1
#   (current_triangle/2).times do
#     if current_triangle % i == 0
#       divisors << i
#     end
#     i += 1
#   end
#   divisors << current_triangle
# end

# p current_triangle

# finish = Time.now
# p finish - start

# n = 4
# i = 2
# n.times {
#   if i < 3
#     p "i is less than 3"
#   end
# }

# a = [3,2,1,0]
# a.each {|elt|
#   print elt+1
# }

# p nil.to_s
# p nil.to_i

# require 'set'

# def duplicate_check(array)
#   array.length == array.to_set.length
# end

# p duplicate_check([1,2,3,4,5,6,4])

# def duplicates?(array)
#   ref_index = 0
#   array.each do |reference_value|
#     check_index = 0
#     array.each do |check_value|
#       unless ref_index == check_index
#         if reference_value == check_value
#           return true
#         end
#       end
#       p "check is #{check_index}"
#       check_index += 1
#     end
#     p "ref is #{ref_index}"
#     ref_index += 1
#   end
#   return false
# end

# def duplicates?(array)
#   reference_values = {}
#   array.each do |element|
#     if reference_values[element]
#       return true
#     else
#       reference_values[element] = true
#     end
#   end
#   return false
# end

# p duplicates?([9, 7, 8, 3, 3, 1, 2, 4])  # => true
# p duplicates?([9, 7, 8, 3, 1, 2, 4])  # => false

# def find_longest_word(input_string)
#   arr_input = input_string.split
#   p arr_input
#   longest_word = ""
#    # I do not know how to filter out the question mark from 'phrase?' so I reviewed the master solutions. I'll keep the `gsub` method in mind for next time.
#   arr_input.each do |word|
#     if longest_word.length < word.length
#       longest_word = word
#     end
#   end
#    return longest_word
# end
#  # 5 
# p find_longest_word("What is the longest word in this phrase?")

def recursive_fib(n)
  if n < 2
    return n
  else
    recursive_fib(n - 1) + recursive_fib(n - 2)
  end
end

p recursive_fib(10)  # => 55
# start = Time.now
# p "#{(Time.now - start)} seconds"

# def fibonacci(n)
#   fib_sequence = [0,1]
#   i = 2
#   while i <= n
#     fib_sequence[i] = fib_sequence[-1] + fib_sequence[-2]
#     i += 1
#   end
#   return fib_sequence[-1]
# end

# start = Time.now
# p fibonacci(10)
# p "#{(Time.now - start)} seconds"

# def recursive_counter(n, end_point)
#   p n
#   if n == end_point
#     return "complete"
#   else
#     return recursive_counter(n + 1, end_point)
#   end
# end

# p recursive_counter(5, 12)