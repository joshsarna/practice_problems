=begin

Using names.txt (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.

For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.

What is the total of all the name scores in the file?

=end

input = File.open('./../resources/p022_names.txt', File::RDONLY){|f| f.read }
# array = input.lines.map{|l| l.split.map(&:to_f) }
array = input.split('","')
array.first[0] = ''
array.last[array[array.length - 1].length - 1] = ''
array = array.sort
# p array

alphabetical_value = {
  "a" => 1,
  "b" => 2,
  "c" => 3,
  "d" => 4,
  "e" => 5,
  "f" => 6,
  "g" => 7,
  "h" => 8,
  "i" => 9,
  "j" => 10,
  "k" => 11,
  "l" => 12,
  "m" => 13,
  "n" => 14,
  "o" => 15,
  "p" => 16,
  "q" => 17,
  "r" => 18,
  "s" => 19,
  "t" => 20,
  "u" => 21,
  "v" => 22,
  "w" => 23,
  "x" => 24,
  "y" => 25,
  "z" => 26
}

name_i = 0
total_sum = 0
array.length.times do
  letter_i = 0
  name_sum = 0
  array[name_i].length.times do
    name_sum += alphabetical_value[array[name_i][letter_i].downcase]
    letter_i += 1
  end
  total_sum += name_sum * name_i
  name_i += 1
end

p total_sum  # => 870873746