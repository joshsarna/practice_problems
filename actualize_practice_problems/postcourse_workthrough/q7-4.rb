=begin

Implement the highest_prime_number_under method below. It should accept a number as an argument and return the highest prime number under that number. For example, the highest prime number under 10 is 7. (This is a tough problem!)

p highest_prime_number_under(10)  #=> 7
p highest_prime_number_under(11)  #=> 7
p highest_prime_number_under(12)  #=> 11

=end

def prime?(number)
  if number == 2
    return true
  end
  i = 2
  Math.sqrt(number).floor.times do
    if number % i == 0 
      return false
    end
    i += 1
  end
  true
end

def highest_prime_number_under(number)
  while true
    number -= 1
    if prime?(number)
      return number
    end
  end
end

p highest_prime_number_under(10)  #=> 7
p highest_prime_number_under(11)  #=> 7
p highest_prime_number_under(12)  #=> 11