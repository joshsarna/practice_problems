# Use Big O Notation to describe the time complexity of the following function. It finds the greatest product of any pair of two numbers within a given array:

def greatestProduct(array):
  greatestProductSoFar = array[0] * array[1]

  for i, iVal in enumerate(array):
    for j, jVal in enumerate(array):
      if i != j and iVal * jVal > greatestProductSoFar:
        greatestProductSoFar = iVal * jVal

  return greatestProductSoFar

  # O(N^2)