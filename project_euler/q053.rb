=begin

There are exactly ten ways of selecting three from five, 12345:

123, 124, 125, 134, 135, 145, 234, 235, 245, and 345

In combinatorics, we use the notation, 5C3 = 10.

In general,

nCr = (n!) / (r!(n−r)!)

where r ≤ n, n! = n×(n−1)×...×3×2×1, and 0! = 1.
It is not until n = 23, that a value exceeds one-million: 23C10 = 1144066.

How many, not necessarily distinct, values of  nCr, for 1 ≤ n ≤ 100, are greater than one-million?

=end

def factorial(n)
  if n == 0
    return 1
  end
  (1..n).inject(:*)
end

def c(n, r)
  if n < r
    return nil
  end
  factorial(n) / (factorial(r) * factorial(n - r))
end

count = 0

n = 23
while n <= 100
  r = 1
  while r <= n
    if c(n,r) > 1000000
      count += 1
    end
    r += 1
  end
  n += 1
end

p count  # => 4075