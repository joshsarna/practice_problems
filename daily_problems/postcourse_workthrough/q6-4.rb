=begin

Implement the `is_prime?` method which takes in a number and returns true if the number is prime and false if it is not. (A prime number is a number that is only divisible by itself and the number 1.)

p is_prime?(10)   #=> false
p is_prime?(11)   #=> true
p is_prime?(12)   #=> false

=end

def is_prime?(number)
  i = 2
  Math.sqrt(number).floor.times do
    if number % i == 0
      return false
    end
    i += 1
  end
  return true
end

p is_prime?(9)    #=> false
p is_prime?(10)   #=> false
p is_prime?(11)   #=> true
p is_prime?(12)   #=> false