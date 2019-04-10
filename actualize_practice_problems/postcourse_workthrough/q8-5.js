/*

Write a function called `findTheMostLetterA` which takes in an array of strings and returns the string with the most a’s.

console.log(findTheMostLetterA(["alphabet", "aardvark", "anarchy]));  // "aardvark"

*/

function findTheMostLetterA(strings) {
  var mostA = 0;
  var mostAWord = "";
  for (var i in strings) {
    var asInWord = 0;
    var letters = strings[i].split('');
    for (var n in letters) {
      if (letters[n] === "a") {
        asInWord ++;
      }
    }
    if (asInWord > mostA) {
      mostA = asInWord;
      mostAWord = strings[i];
    }
  }
  return mostAWord;
}

console.log(findTheMostLetterA(["alphabet", "aardvark", "anarchy"]));  // "aardvark"