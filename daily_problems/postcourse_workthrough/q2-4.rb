=begin

Write a method called `reverse_a_string` that accepts a string as a parameter and returns the reverse. The one caveat: Don't use the reverse method that already comes with Ruby!

p reverse_a_string("abcde")  #=> "edcba"

=end

def reverse_a_string(string)
  new_string = ""
  i = string.length - 1
  while i >= 0 do
    new_string << string[i]
    i -= 1
  end
  new_string
end

p reverse_a_string("abcde")  #=> "edcba"