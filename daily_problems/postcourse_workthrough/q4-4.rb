=begin

Write a method called `mutation?`, which will accept two strings as a parameter and return true if all the letters from the second string are contained within the first string, and false otherwise.

p mutation?("burly", "ruby")    #=> true
p mutation?("burly", "python")  #=> false

=end

def mutation?(string1, string2)
  i = 0
  while i < string2.length do
    if !string1.index(string2[i])
      return false
    end
    i += 1
  end
  return true
end

p mutation?("burly", "ruby")    #=> true
p mutation?("burly", "python")  #=> false