=begin

Write a method called `find_the_most_letter_a` which takes in an array of strings and returns the string with the most a’s.

p find_the_most_letter_a(["alphabet", "aardvark", "anarchy"])  #=> "aardvark"

=end

def find_the_most_letter_a(strings)
  biggest_number = 0
  index_of_choice = -1
  i = 0
  strings.each do |string|
    as = string.split("").length - (string.split("") - ["a"]).length
    if as > biggest_number
      biggest_number = as
      # p biggest_number
      index_of_choice = i
    end
    i += 1
  end
  strings[index_of_choice]
end

p find_the_most_letter_a(["alphabet", "aardvark", "anarchy"])  #=> "aardvark"