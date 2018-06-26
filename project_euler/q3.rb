=begin

The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?

=end

number = 600851475143
largest_prime_factor = 0
i = 2
(number / 2).times do
  if number % i == 0
    # check whether number/i is prime
    i2 = 2
    prime = true
    big_number = number / i
    # if number/i is prime, largest_prime_number = it
    (big_number - 2).times do
      if big_number % i2 == 0
        prime = false
      else
        i2 += 1
      end
      break if prime == false
    end
    if prime == true
      largest_prime_factor = number/i
    end
  end
  break if largest_prime_factor > 0
  i += 1
end

p largest_prime_factor # => 6857

