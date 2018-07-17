=begin

Euler discovered the remarkable quadratic formula:

n**2+n+41

It turns out that the formula will produce 40 primes for the consecutive integer values 0≤n≤39. However, when n=40,40**2+40+41=40(40+1)+41 is divisible by 41, and certainly when n=41,41**2+41+41 is clearly divisible by 41.

The incredible formula n**2−79n+1601 was discovered, which produces 80 primes for the consecutive values 0≤n≤79. The product of the coefficients, −79 and 1601, is −126479.

Considering quadratics of the form:

n**2+an+b, where |a|<1000 and |b|≤1000

where |n| is the modulus/absolute value of n
e.g. |11|=11 and |−4|=4

Find the product of the coefficients, a and b, for the quadratic expression that produces the maximum number of primes for consecutive values of n, starting with n=0.

=end

def prime?(number)
  i = 2
  if number > 0
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

def creates_prime?(a,b,n)
  result = n**2 + a*n + b
  prime?(result)
end

# p creates_prime?(1,41,0)
# p creates_prime?(1,41,1)
# p creates_prime?(1,41,39)
# p creates_prime?(1,41,40)

def number_of_primes(a,b)
  n = 0
  continue = true
  while continue do
    new_n = n
    continue = creates_prime?(a,b,n)
    n += 1
  end
  n
end

# p number_of_primes(1,41)

a = -999
b = -1000
largest_number = 0
a_of_largest = -1000
b_of_largest = -1001

1998.times do
  2000.times do
    if number_of_primes(a,b) > largest_number
      largest_number = number_of_primes(a,b)
      a_of_largest = a
      b_of_largest = b
    end
    b += 1
  end
  a += 1
end

p a_of_largest * b_of_largest