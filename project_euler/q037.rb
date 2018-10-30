=begin

The number 3797 has an interesting property. Being prime itself, it is possible to continuously remove digits from left to right, and remain prime at each stage: 3797, 797, 97, and 7. Similarly we can work from right to left: 3797, 379, 37, and 3.

Find the sum of the only eleven primes that are both truncatable from left to right and right to left.

NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes.

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

def truncatable_prime?(number)
  i = 0
  trunc = true
  number.to_s.length.times do
    if !( prime?(number.to_s[i..-1].to_i) && prime?(number.to_s[0..-1-i].to_i) )
      trunc = false
    end
    i += 1
  end
  trunc
end

truncatable_primes = []
number = 10
while truncatable_primes.length < 11
  if truncatable_prime?(number)
    truncatable_primes << number
  end
  number += 1
end

p truncatable_primes.sum  # => 748317