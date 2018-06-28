=begin

A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.

=end

i1 = 100
largest = 0
899.times do
  i2 = 100
  899.times do
    product = i1 * i2
    if product.to_s == product.to_s.reverse && product > largest
      largest = product
    end
    i2 += 1
  end
  i1 += 1
end

p largest # => 906609