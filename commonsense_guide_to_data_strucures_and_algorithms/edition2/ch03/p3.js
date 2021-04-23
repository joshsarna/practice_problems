// Use Big O Notation to describe the time complexity of the following function:

function chessboardSpace(numberOfGrains) {
  let chessboardSpaces = 1;
  let placedGrains = 1;

  while (placedGrains < numberOfGrains) {
    placedGrains *= 2;
    chessboardSpaces += 1;
  }
  
  return chessboardSpaces;
}

// O(logN)