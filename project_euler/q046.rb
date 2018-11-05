=begin

It was proposed by Christian Goldbach that every odd composite number can be written as the sum of a prime and twice a square.

9 = 7 + 2×1**2
15 = 7 + 2×2**2
21 = 3 + 2×3**2
25 = 7 + 2×3**2
27 = 19 + 2×2**2
33 = 31 + 2×1**2

It turns out that the conjecture was false.

What is the smallest odd composite that cannot be written as the sum of a prime and twice a square?

=end

@primes = [2, 3]
@double_squares = [2, 8]

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


def goldbach(n)
  # make sure there are large enough numbers in the two component arrays
  new_prime = @primes[-1] + 1
  while n > @primes[-1]
    if prime?(new_prime)
      @primes << new_prime
    end
    new_prime += 1
  end
  while n > @double_squares[-1]
    @double_squares << 2 * (@double_squares.length + 1) ** 2
  end
  # check whether n is a sum of one number in each array
  @double_squares.each do |double_square|
    @primes.each do |prime|
      if double_square + prime == n
        return true
      end
    end
  end
  return false
end

n = 7
exception_found = false
while !exception_found
  n += 2
  if !prime?(n) && !goldbach(n)
    exception_found = true
  end
end

p n  # => 5777