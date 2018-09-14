/*

Write a function called `findLongestWord`, which will accept a string as a parameter (usually a sentence), and return another string that will be the longest word in that sentence.

console.log(findLongestWord("What is the longest word in this phrase?"));  // "longest"

*/

function findLongestWord(sentence) {
  var words = sentence.split(' ');
  var longestWord = "";
  var wordLength = 0;
  for (var i in words) {
    if (words[i].length > wordLength) {
      wordLength = words[i].length;
      longestWord = words[i];
    }
  }
  return longestWord;
}

console.log(findLongestWord("What is the longest word in this phrase?"));  // "longest"