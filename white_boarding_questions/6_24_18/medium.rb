# a

class Test
  def hash_maker(array)
    output_hash = {}
    i = 0
    array.each do |element|
      output_hash[i] = element
      i += 1
    end
    return output_hash
  end
end

sample = Test.new
p sample.hash_maker(["a", "b", "c", "d", "e"])

# b

class Test
  def palindrome_tester(string)
    palindrome = false
    new_string = ""
    i = string.length - 1
    string.length.times do
      new_string << string[i]
      i -= 1
    end
    if string == new_string
      palindrome = true
    end
    return palindrome
  end
end

sample = Test.new
p sample.palindrome_tester("racecar")