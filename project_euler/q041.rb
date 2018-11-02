=begin

We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once. For example, 2143 is a 4-digit pandigital and is also prime.

What is the largest n-digit pandigital prime that exists?

=end

def prime?(number)
  i = 2
  if number == 2
    return true
  elsif number > 2
    (Math.sqrt(number).to_i).times do
      if number % i == 0
        return false
      end
      i += 1
    end
  else
    return false
  end
  true
end

def is_pandigital?(number)
  digits = ['1', '2', '3', '4', '5', '6', '7', '8', '9']
  i = 0
  string = number.to_s
  string.length.times do
    if !string.include?(digits[i])
      return false
    end
    i += 1
  end
  return true
end

highest_prime_pan = 987654321 + 2
continue = true

while continue
  highest_prime_pan -= 2
  if is_pandigital?(highest_prime_pan) && prime?(highest_prime_pan)
    continue = false
  end
end

p highest_prime_pan  # => 7652413