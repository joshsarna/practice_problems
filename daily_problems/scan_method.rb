=begin

Use the `scan` method with a regular expression to find every word in the following sentence that has 4 letters and starts with the letter “l” and ends with the letter “e”.

sentence = "You can live like a king but make sure it isn't a lie."

The result should be:
["live", "like"]

=end

sentence = "You can live like a king but make sure it isn't a lie."
chosen_words = []

sentence.scan(/\w+/).each do |word|
  if word.length == 4 && word[0] == "l" && word[3] == "e"
    chosen_words << word
  end
end

p chosen_words