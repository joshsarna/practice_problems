/*

Read about the JavaScript `map` method. Then refactor the code below using `map`.

var numbers = [1, 2, 4, 2];
var doubledNumbers = [];
for (var i = 0; i < numbers.length; i++) {
  doubledNumbers.push(numbers[i] * 2);
}
console.log(doubledNumbers);

*/

var numbers = [1, 2, 4, 2];
var doubledNumbers = numbers.map( x => x * 2);
console.log(doubledNumbers); // => [ 2, 4, 8, 4 ]