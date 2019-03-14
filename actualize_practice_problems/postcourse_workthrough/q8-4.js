/*

Write a function called `mutation`, which will accept two strings as a parameter and return true if all the letters from the second string are contained within the first string, and false otherwise.

console.log(mutation("burly", "ruby"));    // true
console.log(mutation("burly", "python"));  // false

*/

function mutation(string1, string2) {
  var string2Letters = string2.split('');
  for (var i in string2Letters) {
    if (string1.indexOf(string2Letters[i]) < 0) {
      return false;
    }
  }
  return true;
}

console.log(mutation("burly", "ruby"));    // true
console.log(mutation("burly", "python"));  // false