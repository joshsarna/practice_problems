=begin

Write a method called `split_array`, with two parameters, the first being an array, and the second being an integer. The method will then create an array of other arrays, each one being the size of the indicated by the second parameter.

p split_array([0, 1, 2, 3, 4, 5], 2)  #=> [[0, 1], [2, 3], [4, 5]]
p split_array([0, 1, 2, 3, 4, 5], 3)  #=> [[0, 1, 2], [3, 4, 5]]

=end

def split_array(input_values, size)
  if input_values.length % size != 0
    return "I can't work under these conditions"
  end
  microarrays = []
  i = 0
  while i < input_values.length
    microarrays << input_values[i..i+size-1]
    i += size
    # p i
  end
  microarrays
end

p split_array([0, 1, 2, 3, 4, 5], 2)  #=> [[0, 1], [2, 3], [4, 5]]
p split_array([0, 1, 2, 3, 4, 5], 3)  #=> [[0, 1, 2], [3, 4, 5]]