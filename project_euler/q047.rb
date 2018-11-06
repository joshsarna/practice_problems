=begin

The first two consecutive numbers to have two distinct prime factors are:

14 = 2 × 7
15 = 3 × 5

The first three consecutive numbers to have three distinct prime factors are:

644 = 2² × 7 × 23
645 = 3 × 5 × 43
646 = 2 × 17 × 19.

Find the first four consecutive integers to have four distinct prime factors each. What is the first of these numbers?

=end

require 'set'

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

@primes = [2, 3] # this is outside the method to avoid duplicate work
def prime_factors(number)
  factors = []
  i = 0
  if prime?(number)
    return [number]
  else
    new_prime = @primes[-1] + 1
    while @primes[-1] * 2 <= number
      if prime?(new_prime)
        @primes << new_prime
      end
      new_prime += 1
    end
    while @primes[i] * 2 <= number
      if number % @primes[i] == 0
        factors << @primes[i]
        number /= @primes[i]
        i = 0
      else
        i += 1
      end
    end
    factors << number
  end
  return factors
end

i = 2
continue = true
while continue
  factors1 = prime_factors(i)
  factors2 = prime_factors(i + 1)
  factors3 = prime_factors(i + 2)
  factors4 = prime_factors(i + 3)
  if factors1.to_set.length >= 4 &&
    factors2.to_set.length >= 4 &&
    factors3.to_set.length >= 4 && 
    factors4.to_set.length >= 4
    continue = false
  else
    i += 1
  end
end

p i  # => 134043