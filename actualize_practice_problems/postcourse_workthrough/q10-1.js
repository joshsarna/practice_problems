/*

Read about the JavaScript `reduce` method. Then refactor the code below using `reduce`.

var numbers = [1, 2, 4, 2];
var sum = 0;
for (var i = 0; i < numbers.length; i++) {
  sum += numbers[i];
}
console.log(sum);

*/

var numbers = [1, 2, 4, 2];
var sum = numbers.reduce( (total, number) => total + number );
console.log(sum);  // => 9