=begin

Write a method called `is_balanced?` that takes a string of brackets and checks whether they are balanced or not. (This is a tough problem!)

p is_balanced?("{[()]}") #=> true
p is_balanced?("{[([)]]}") #=> false

=end

def is_balanced?(string)
  if string.length % 2 == 1
    return false
  end
  i = 1
  (string.length / 2).times do
    left = string[i - 1]
    right = string[-i]
    if 
      (left == "(" && right == ")") ||
      (left == "[" && right == "]") ||
      (left == "{" && right == "}")
      i += 1
    else
      return false
    end
  end
  return true
end

p is_balanced?("{[()]}") #=> true
p is_balanced?("{[([)]]}") #=> false