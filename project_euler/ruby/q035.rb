=begin

The number, 197, is called a circular prime because all rotations of the digits: 197, 971, and 719, are themselves prime.

There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.

How many circular primes are there below one million?

=end

def prime?(number)
  i = 2
  if number == 2
    return true
  elsif number > 1
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

def circular_prime?(number)
  number_string = number.to_s
  number_string.length.times do
    if !prime?(number_string.to_i)
      return false
    end
    number_string = number_string[-1] + number_string[0..-2]
  end
  return true
end

i = 1
circ_prime_count = 0
1000000.times do # 1 is not prime, so the 1,000,000th time will not count
  if circular_prime?(i)
    circ_prime_count += 1
  end
  i += 1
end

p circ_prime_count  # => 55