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

def duplicates?(array)
  reference_values = {}
  array.each do |element|
    if reference_values[element]
      return true
    else
      reference_values[element] = true
    end
  end
  return false
end

p duplicates?([9, 7, 8, 3, 3, 1, 2, 4])  # => true
p duplicates?([9, 7, 8, 3, 1, 2, 4])  # => false