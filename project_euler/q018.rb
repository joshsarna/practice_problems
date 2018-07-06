=begin

By starting at the top of the triangle below and moving to adjacent numbers on the row below, the maximum total from top to bottom is 23.

   3
  7 4
 2 4 6
8 5 9 3

That is, 3 + 7 + 4 + 9 = 23.

Find the maximum total from top to bottom of the triangle below:
          
                           75
                          95 64
                        17 47 82
                      18 35 87 10
                    20 04 82 47 65
                  19 01 23 75 03 34
                88 02 77 73 07 63 67
              99 65 04 28 06 16 70 92
            41 41 26 56 83 40 80 70 33
          41 48 72 33 47 32 37 16 94 29
        53 71 44 65 25 43 91 52 97 51 14
      70 11 33 28 77 73 17 78 39 68 17 57
    91 71 52 38 17 14 91 43 58 50 27 29 48
  63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23

NOTE: As there are only 16384 routes, it is possible to solve this problem by trying every route. However, Problem 67, is the same challenge with a triangle containing one-hundred rows; it cannot be solved by brute force, and requires a clever method! ;o)

=end

triangle = "75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23"

# ********* for use in prob 67*****************

# # find smallest and largest value
# test_value = ""
# largest_value = 0
# smallest_value = 100
# i = 0
# test_value = triangle[i..i+1]
# test_value_i = test_value.to_i
# while test_value do
#   if test_value_i > largest_value
#     largest_value = test_value_i
#   end
#   if test_value_i < smallest_value
#     smallest_value = test_value_i
#   end
#   i +=3
#   test_value = triangle[i..i+1]
#   test_value_i = test_value.to_i
# end

# # find a threshhold for abandoning routes
# remaining_rows = 15
# threshhold = remaining_rows * (largest_value - smallest_value)

# **********************************************

# create a method for dublicating routes that isn't a shallow copy
def deep_copy(o)
  Marshal.load(Marshal.dump(o))
end

# find routes
routes = [{route: [triangle[0..1].to_i], sum: 0, last_index: 0}]

row = 0
14.times do
  row += 1  # row number is the same as the number of items in the row
  route_number = 0
  routes.length.times do
    first_accessible_item = routes[route_number][:last_index] + row * 3
    new_route = deep_copy(routes[route_number])
    routes.insert(route_number + 1, new_route)
    routes[route_number][:route] << triangle[first_accessible_item..first_accessible_item+1].to_i
    routes[route_number][:last_index] = first_accessible_item
    routes[route_number + 1][:route] << triangle[first_accessible_item+3..first_accessible_item+4].to_i
    routes[route_number + 1][:last_index] = first_accessible_item + 3
    route_number += 2
  end
  # remaining_rows -= 1
end

# p routes

largest_sum = 0
index_of_largest = 0
loop_index = 0
routes.length.times do
  if routes[loop_index][:route].sum > largest_sum
    largest_sum = routes[loop_index][:route].sum
    index_of_largest = loop_index
  end
  loop_index += 1
end

p "The route with the largest sum is #{routes[index_of_largest][:route]}, and it's sum is #{largest_sum}."  # => "The route with the largest sum is [75, 64, 82, 87, 82, 75, 73, 28, 83, 32, 91, 78, 58, 73, 93], and it's sum is 1074."