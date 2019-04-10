=begin

Write a method called `find_the_most_letter_a` which takes in an array of strings and returns the string with the most a’s.

p find_the_most_letter_a(["alphabet", "aardvark", "anarchy"])  #=> "aardvark"

=end

def find_the_most_letter_a(strings)
  most = {string_text: "", as: 0}
  strings.each do |string|
    count = 0
    i = 0
    string.length.times do
      if string[i] == "a"
        count += 1
      end
      i += 1
    end
    if count > most[:as]
      most = {string_text: string, as: count}
    end
  end
  most[:string_text]
end

p find_the_most_letter_a(["alphabet", "aardvark", "anarchy"])  #=> "aardvark"