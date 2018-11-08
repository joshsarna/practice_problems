=begin

The arithmetic sequence, 1487, 4817, 8147, in which each of the terms increases by 3330, is unusual in two ways: (i) each of the three terms are prime, and, (ii) each of the 4-digit numbers are permutations of one another.

There are no arithmetic sequences made up of three 1-, 2-, or 3-digit primes, exhibiting this property, but there is one other 4-digit increasing sequence.

What 12-digit number do you form by concatenating the three terms in this sequence?

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

primes = []
[*1000..9999].each do |number|
  if prime?(number)
    primes << number
  end
end

differences = {}
sequences = []

primes.each do |prime|
  primes.each do |comparison_prime|
    if prime < comparison_prime
      if prime.to_s.split("").sort == comparison_prime.to_s.split("").sort

        # if it's already in there
        if differences[
          [
            comparison_prime - prime,
            prime.to_s.split("").sort
          ]
        ]
          # the start of the new one is the same as the end of the old one
          if  differences[[comparison_prime - prime, prime.to_s.split("").sort]] == prime
            sequences << [prime - (comparison_prime - prime), prime, comparison_prime]
          end
        else # if it's not in there
          differences[[comparison_prime - prime, prime.to_s.split("").sort]] = (comparison_prime)
        end
      end
    end
  end
end

sequence = sequences.select{ |sequence| sequence != [1487, 4817, 8147]}[0]
concatenated_sequence = ""
sequence.each do |number|
  concatenated_sequence << number.to_s
end

p concatenated_sequence.to_i  # => 296962999629