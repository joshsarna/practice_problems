=begin

The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.

=end

primes = []
i = 2
1000000.times do
  # p i # this slows down the program a little, but it's a good way of monitoring how close you're getting to the end
  prime_check = true
  primes.each do |prime|
    if i % prime == 0
      prime_check = false
    end
  end
  if prime_check == true
    primes << i
  end
  if i == 2
    i += 1
  else
    i += 2
  end
end

p primes.sum  # => 142913828922
# took about 