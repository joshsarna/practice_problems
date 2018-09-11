=begin

Use the `gsub` method with a regular expression to replace every word in the following sentence that starts with the letter "l" with the word "fake".

sentence = "You can live like a king but make sure it isn't a lie."

The result should be:

"You can fake fake a king but make sure it isn't a fake."

=end

sentence = "You can live like a king but make sure it isn't a lie."

new_sentence = sentence.gsub(/l\w+/, "fake")
p new_sentence  # => "You can fake fake a king but make sure it isn't a fake."