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