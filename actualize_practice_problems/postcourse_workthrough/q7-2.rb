=begin

Use the `scan` method with a regular expression to find every word in the following sentence that has 4 letters and starts with the letter "l" and ends with the letter "e".

sentence = "You can live like a king but make sure it isn't a lie."

The result should be:

["live", "like"]

=end

sentence = "You can live like a king but make sure it isn't a lie."
words = sentence.scan(/l[a-z][a-z]e/)
p words  # => ["live", "like"]