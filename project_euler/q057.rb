=begin

It is possible to show that the square root of two can be expressed as an infinite continued fraction.

√ 2 = 1 + 1/(2 + 1/(2 + 1/(2 + ... ))) = 1.414213...

By expanding this for the first four iterations, we get:

1 + 1/2 = 3/2 = 1.5
1 + 1/(2 + 1/2) = 7/5 = 1.4
1 + 1/(2 + 1/(2 + 1/2)) = 17/12 = 1.41666...
1 + 1/(2 + 1/(2 + 1/(2 + 1/2))) = 41/29 = 1.41379...

The next three expansions are 99/70, 239/169, and 577/408, but the eighth expansion, 1393/985, is the first example where the number of digits in the numerator exceeds the number of digits in the denominator.

In the first one-thousand expansions, how many fractions contain a numerator with more digits than denominator?

=end

# numerators = [3, 7, 17, 41]

# denominators = [2, 5, 12, 29]

# recursive: self = 1/(2 + self)

# 1 + 1/(2 + 1/(2 + 1/(2 + 1/(2 + 1/2))))

# num[i] = den[i] + den[i - 1]
# den[i] = den[i - 1] + num[i - 1]

@numerators = [3]
@denominators = [2]

def denominator(i)
  if !@denominators[i - 1]
    @denominators[i - 1] = @denominators[i - 2] + @numerators[i - 2]
  end
  @denominators[i - 1]
end

def numerator(i)
  if !@numerators[i - 1]
    @numerators[i - 1] = @denominators[i -1] + @denominators[i - 2]
  end
  @numerators[i - 1]
end

count = 0
i = 1
1000.times do
  if denominator(i).to_s.length < numerator(i).to_s.length
    count += 1  # denominator(i) must be called before numerator(i)
  end
  i += 1
end

p count  # => 153