// Use Big O Notation to describe the time complexity of the following function that sums up all the numbers from a given array:

function arraySum(array) {
  let sum = 0;
  
  for (let i = 0; i < array.length; i++) {
    sum += array[i];
  }

  return sum;
}

// O(N)