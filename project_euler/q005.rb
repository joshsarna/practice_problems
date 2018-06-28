=begin
  
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

=end

i = 1
smallest_factorable_number = 0
not_done_yet = true
while not_done_yet == true
  range = 20
  not_done_yet = false
  range.times do
    unless i % range == 0
      not_done_yet = true
    end
    range -= 1
  end
  if not_done_yet == false
    smallest_factorable_number = i
  end
  i += 1
end

p smallest_factorable_number # => 232792560

