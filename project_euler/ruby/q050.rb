=begin

The prime 41, can be written as the sum of six consecutive primes:

41 = 2 + 3 + 5 + 7 + 11 + 13
This is the longest sum of consecutive primes that adds to a prime below one-hundred.

The longest sum of consecutive primes below one-thousand that adds to a prime, contains 21 terms, and is equal to 953.

Which prime, below one-million, can be written as the sum of the most consecutive primes?

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

def primes_below(ceiling)
  primes = [2]
  number = 3
  (ceiling / 2).times do
    primes << number if prime?(number)
    number += 2
  end
  primes << ceiling if prime?(ceiling)
  primes
end

primes = primes_below(1000000)

# the longest sum must be composed of at least 21 terms, so its first term can't be more than 1000000/21 = 47619

def deep_copy(o)
  Marshal.load(Marshal.dump(o))
end

answer = {sum: 2, consecutive_terms: [2], number_of_terms: 1}

starting_index = 0
while primes[starting_index] <= (1000000 / answer[:number_of_terms])
  n = primes[starting_index]
  current = {sum: n, consecutive_terms: [n], number_of_terms: 1}

  i = 1
  while current[:sum] < 1000000
    if primes.include?(current[:sum])
      if current[:number_of_terms] > answer[:number_of_terms]
        answer = deep_copy(current)
      end
    end
    current[:sum] += primes[starting_index + i]
    current[:consecutive_terms] << primes[starting_index + i]
    current[:number_of_terms] += 1
    i += 1
  end
  starting_index += 1
end

p answer[:sum]  # => 997651