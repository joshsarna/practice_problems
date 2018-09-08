=begin

Write a method called `palindrome?` which should accept a string as a parameter and return a boolean that indicates whether the string is a palindrome. A palindrome is a word that reads the same both forwards and backwards. Examples: eye, madam, racecar

p palindrome?("racecar")   #=> true
p palindrome?("wazzzzup")  #=> false

=end

def palindrome?(string)
  i = string.length - 1
  new_string = ""
  while i >= 0 do
    new_string << string[i]
    i -= 1
  end
  string == new_string
end

p palindrome?("racecar")   #=> true
p palindrome?("wazzzzup")  #=> false