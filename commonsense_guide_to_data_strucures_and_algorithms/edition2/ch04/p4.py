# The following function finds the greatest single number within an array but has an efficiency of O(N^2):

def greatestNumber(array):
  for i in array:
    # assume for now that i is the greatest:
    isIValTheGreatest = True

    for j in array:
      # if we find another value that is greater than i,
      # i is not the greatest:
      if j > i:
        isIValTheGreatest = False

    # if, by the time we checked all the other numbers,
    # i is still the greatest,
    # it means that i is the greatest number:
    if isIValTheGreatest:
      return i

# Rewrite the function so that it becomes a speedy O(N):

def greatestNumber(array):
  greatestSoFar = array[0]

  for i in array:
    if i > greatestSoFar:
      greatestSoFar = i

  return greatestSoFar