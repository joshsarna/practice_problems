/*

Implement the `is_prime?` method which takes in a number and returns true if the number is prime and false if it is not. (A prime number is a number that is only divisible by itself and the number 1.)

p is_prime?(10)   #=> false
p is_prime?(11)   #=> true
p is_prime?(12)   #=> false

*/

// def is_prime?(n)
//   return true if n == 2
//   i = 2
//   Math.sqrt(n).to_i.times do
//     if n % i == 0
//       return false
//     end
//   end
//   return true
// end

// p is_prime?(2)    #=> true
// p is_prime?(10)   #=> false
// p is_prime?(11)   #=> true
// p is_prime?(12)   #=> false

function is_prime(n) {
  if (n === 2) {
    return true;
  }
  for (i = 2; i <= Math.sqrt(n); i++) {
    if (n % i === 0) {
      return false;
    }
  }
  return true;
}

console.log(is_prime(2))
console.log(is_prime(10))
console.log(is_prime(11))
console.log(is_prime(12))