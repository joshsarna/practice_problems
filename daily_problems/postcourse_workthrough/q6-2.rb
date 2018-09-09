=begin

Use the ternary operator with the `map` method to convert the array of names

sentences = ["hello", "old friend", "today", "mac and cheese"]

into a new array of sentences where the first letter is capitalized only if there is more than one word in the sentence. The result should be:

["hello", "Old friend", "today", "Mac and cheese"]

=end

sentences = ["hello", "old friend", "today", "mac and cheese"]

new_sentences = sentences.map{ |x| x.index(" ") ? x.capitalize : x }
p new_sentences