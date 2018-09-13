/*

Start with the array:

var array = [["a", "b", "z"], ["c", "d"], ["e", "f"], ["g", "h", "i", "j"]];

Use a JavaScript loop within a loop to take each of those letters and put them into a brand new one dimensional array. The result should be:

["a", "b", "z", "c", "d", "e", "f", "g", "h", "i", "j"]

end

*/

var arrays = [["a", "b", "z"], ["c", "d"], ["e", "f"], ["g", "h", "i", "j"]];

var newArray = [];
for (var i in arrays) {
  for (var n in arrays[i]) {
    newArray.push(arrays[i][n]);
  }
}

console.log(newArray);  // => [ 'a', 'b', 'z', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j' ]