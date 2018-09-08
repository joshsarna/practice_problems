=begin

Write a method called `find_longest_word`, which will accept a string as a parameter (usually a sentence), and return another string that will be the longest word in that sentence.

p find_longest_word("What is the longest word in this phrase?")  #=> "longest"

=end

def find_longest_word(sentence)
  words = sentence.split(" ")
  longest_word = ""
  longest_word_length = 0
  words.each do |word|
    if word.length > longest_word_length
      longest_word = word
      longest_word_length = word.length
    end
  end
  longest_word
end

p find_longest_word("What is the longest word in this phrase?")  #=> "longest"