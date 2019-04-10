=begin

It can be seen that the number, 125874, and its double, 251748, contain exactly the same digits, but in a different order.

Find the smallest positive integer, x, such that 2x, 3x, 4x, 5x, and 6x, contain the same digits.

=end

def sorted_digits(n)
  n.to_s.split("").sort
end

def find_sixable_number
  i = 10
  digit_count = 2
  while true
    if (i * 6) < (10 ** (digit_count - 1))
      if sorted_digits(i) == sorted_digits(2 * i) && sorted_digits(i) == sorted_digits(3 * i) && sorted_digits(i) == sorted_digits(4 * i) && sorted_digits(i) == sorted_digits(5 * i) && sorted_digits(i) == sorted_digits(6 * i)
        return i
      else
        i += 1
      end
    else
      i = 10 ** (digit_count - 1)
      digit_count += 1
    end
  end
end

p find_sixable_number. # => 142857