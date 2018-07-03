=begin
  
Write a method called `reverse_a_string` that accepts a string as a parameter and returns the reverse. The one caveat: Don’t use the reverse method that already comes with Ruby!

p reverse_a_string("abcde")  #=> "edcba"

=end

def reverse_a_string(input_string)
  output_string = ""
  i = input_string.length
  input_string.length.times do
    i -= 1
    output_string << input_string[i]
  end
  output_string
end

p reverse_a_string("abcde")  # => "edcba"