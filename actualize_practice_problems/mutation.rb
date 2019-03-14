=begin

Write a method called `mutation?`, which will accept two strings as a parameter and return true if all the letters from the second string are contained within the first string, and false otherwise.

p mutation?("burly", "ruby")    #=> true
p mutation?("burly", "python")  #=> false

=end

def mutation?(reference, mutant)
  i = 1
  mutant.length.times do
    if reference.delete(mutant[-i]).length == reference.length
      return false
    end
    i += 1
  end
  true
end

p mutation?("burly", "ruby")    #=> true
p mutation?("burly", "python")  #=> false