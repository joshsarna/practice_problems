=begin

Write a function that accepts an array of strings and returns a new array containing every other string from the original array. For example, if the input is [“a”, “b”, “c”, “d”, “e”, “f”], the output should be [“a”, “c”, “e”].

=end

class ArrayTool
  def half_string(array)
    fewer_letters = []
    i = 0
    ((array.length + 1)/ 2).times do
      fewer_letters << array[i]
      i += 2
    end
    return fewer_letters
  end
end

array_tool = ArrayTool.new
odd_array = ["a", "b", "c", "d", "e", "f", "g"]
even_array = ["a", "b", "c", "d", "e", "f"]

p array_tool.half_string(odd_array)
p array_tool.half_string(even_array)