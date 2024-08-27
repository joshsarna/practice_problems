=begin

We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once; for example, the 5-digit number, 15234, is 1 through 5 pandigital.

The product 7254 is unusual, as the identity, 39 × 186 = 7254, containing multiplicand, multiplier, and product is 1 through 9 pandigital.

Find the sum of all products whose multiplicand/multiplier/product identity can be written as a 1 through 9 pandigital.

HINT: Some products can be obtained in more than one way so be sure to only include it once in your sum.

=end

a = 1
products = []
99999.times do
  b = 1
  (99999 / a).times do
    digits = []
    c = a * b
    a_s = a.to_s
    b_s = b.to_s
    c_s = c.to_s
    a_s.split('').each do |letter|
      digits << letter
    end
    b_s.split('').each do |letter|
      digits << letter
    end
    c_s.split('').each do |letter|
      digits << letter
    end
    if digits.sort == ["1","2","3","4","5","6","7","8","9"]
      products << c
    end
    b += 1
  end
  a += 1
end

sum_of_unique_products = products.uniq.sum
p sum_of_unique_products  # => 45228