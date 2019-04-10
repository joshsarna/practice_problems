def longest_increasing_subsequence_length(numbers)
  subs = []
  numbers.each do |number|
    add_to_subs = []
    subs.each do |sub|
      if number > sub[-1]
        add_to_subs << (sub + [number])
      end
    end
    add_to_subs << [number]
    subs += add_to_subs
  end
  subs.map{ | sub | sub.length }.max || 0
end

p longest_increasing_subsequence_length([0, 8, 4, 12, 2, 10, 6, 14, 1, 9, 5, 13, 3, 11, 7, 15])