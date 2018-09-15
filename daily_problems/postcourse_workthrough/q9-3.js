/*

Read about the JavaScript `filter` method. Then refactor the code below using `filter`.

var numbers = [1, 2, 4, 2];
var evenNumbers = [];
for (var i = 0; i < numbers.length; i++) {
  if (numbers[i] % 2 === 0) {
    evenNumbers.push(numbers[i]);
  }
}
console.log(evenNumbers);

*/

var numbers = [1, 2, 4, 2];
var evenNumbers = numbers.filter( x => x % 2 === 0 );
console.log(evenNumbers);  // => [ 2, 4, 2 ]