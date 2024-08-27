=begin

A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a**2 + b**2 = c**2
For example, 3**2 + 4**2 = 9 + 16 = 25 = 5**2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.

=end

# a < b < c, so a < 333 and b < 500

a = 1
pyth_trip = [0, 0, 0]
333.times do
  b = 1
  500.times do
    c = 1000 - a - b
    unless c < b || b < a
      if c**2 == a**2 + b**2
        pyth_trip = [a, b, c]
      end
    end
    b += 1
  end
  a += 1
end

p pyth_trip # => [200, 375, 425]
p pyth_trip[0] * pyth_trip[1] * pyth_trip [2] # => 31875000