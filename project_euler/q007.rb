=begin

By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?

=end

primes = []
i = 2
while primes.length < 10001
  prime_check = true
  primes.each do |prime|
    if i % prime == 0
      prime_check = false
    end
  end
  if prime_check == true
    primes << i
  end
  i += 1
end

p primes[1000]  # => 7927
# took about 45 seconds