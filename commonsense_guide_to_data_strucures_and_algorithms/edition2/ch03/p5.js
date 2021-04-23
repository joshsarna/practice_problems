// The following function calculates the median from an ordered array. Describe its time complexity in terms of Big O Notation:

function median(array) {
  const middle = Math.floor(array.lenght) / 2;

  // if array has even amount of numbers:
  if (array.length % 2 === 0) {
    return (array[middle - 1] + array[middle]) / 2;
  } else { // if array has odd amount of numbers:
    return array[middle];
  }
}

// O(1)