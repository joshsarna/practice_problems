=begin

Implement the `is_prime?` method which takes in a number and returns true if the number is prime and false if it is not. (A prime number is a number that is only divisible by itself and the number 1.)

p is_prime?(10)   #=> false
p is_prime?(11)   #=> true
p is_prime?(12)   #=> false

=end

def is_prime?(n)
  return true if n == 2
  i = 2
  Math.sqrt(n).to_i.times do
    if n % i == 0
      return false
    end
    i += 1
  end
  return true
end

p is_prime?(2)    #=> true
p is_prime?(10)   #=> false
p is_prime?(11)   #=> true
p is_prime?(12)   #=> false