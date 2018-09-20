=begin

The fraction 49/98 is a curious fraction, as an inexperienced mathematician in attempting to simplify it may incorrectly believe that 49/98 = 4/8, which is correct, is obtained by cancelling the 9s.

We shall consider fractions like, 30/50 = 3/5, to be trivial examples.

There are exactly four non-trivial examples of this type of fraction, less than one in value, and containing two digits in the numerator and denominator.

If the product of these four fractions is given in its lowest common terms, find the value of the denominator.

=end

special_fractions = []

a = 1
9.times do
  b = 1
  9.times do
    c = 1
    9.times do
      if (a * 10 + b) * 100 == 100 * (c * 10 + b) * a / c && (a * 10 + b) < (c * 10 + b)
        # both sides are multiplied by 100 to avoid ruby rounding errors in the process of division
        special_fractions << "#{a}#{b}/#{c}#{b}"
      end
      if (a * 10 + b) * 100 == 100 * (b * 10 + c) * a / c && (a * 10 + b) < (b * 10 + c)
        special_fractions << "#{a}#{b}/#{b}#{c}"
      end
      if (a * 10 + b) * 100 == 100 * (a * 10 + c) * b / c && (a * 10 + b) < (a * 10 + c)
        special_fractions << "#{a}#{b}/#{a}#{c}"
      end
      if (a * 10 + b) * 100 == 100 * (c * 10 + a) * b / c && (a * 10 + b) < (c * 10 + a)
        special_fractions << "#{a}#{b}/#{c}#{a}"
      end
      c += 1
    end
    b += 1
  end
  a += 1
end

numerator = 1
denominator = 1
special_fractions.each do |fraction|
  numerator *= fraction[0..1].to_i
  denominator *= fraction[3..4].to_i
end

p denominator / numerator.gcd(denominator)  # => 100