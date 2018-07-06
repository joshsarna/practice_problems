=begin

Write a method called `find_longest_word`, which will accept a string as a parameter (usually a sentence), and return another string that will be the longest word in that sentence.

p find_longest_word("What is the longest word in this phrase?")  #=> "longest"

=end

@allowed_characters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

def find_longest_word(sentence)
  words = sentence.split(" ")
  longest_word = ""
  words.each do |word|
    i = 0
    word.length.times do
      if @allowed_characters.include? word[i].downcase 
        i += 1
      else
        word[i] = ""
      end
    end
    if word.length > longest_word.length
      longest_word = word
    end
  end
  longest_word
end

p find_longest_word("What is the longest word in this phrase??")