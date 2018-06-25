=begin

The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?

=end

number = 600851475143
factors = []
i = 2
(number / 2).times do
  if number % i == 0
    factors << i
  end
  if i > 2
    i += 2
  else
    i += 1
  end
end

index = factors.length - 1
factors.length.times do
  if factor != 2
    i = 2
    (factor / 2).times do
      if factors[index] % i == 0
        factors.del(factors[index])
        break
      end
      i += 1
      index -= 1
    end
  end
end

p factors.max