=begin

Return the missing letter from a given range of letters passed into the method as a string. If there is no missing letter, the method should return nil. bonus: returns a string of all missing letters as a string. ex: find_missing_letter("ace") would return "bd", write your own test.

p find_missing_letter("opqrsuv")  #=> "t"
p find_missing_letter("xyz")      #=> nil

=end

def find_missing_letter(string)
  letters = "abcdefghijklmnopqrstuvwxyz"
  letters_in_string = string.split("")
  complete_string = letters.slice(letters.index(letters_in_string[0])..letters.index(letters_in_string[-1])).split("")
  missing_letters = complete_string - letters_in_string
  missing = ""
  missing_letters.each do |letter|
    missing << letter
  end
  if missing == ""
    return nil
  else
    return missing
  end
end

p find_missing_letter("opqrsuv")  #=> "t"
p find_missing_letter("xyz")      #=> nil
p find_missing_letter("ace")      #=> "bd"