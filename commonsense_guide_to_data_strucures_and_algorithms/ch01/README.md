1) For an array with a size of 100 elements:
  
  a) reading takes 1 step
  
  b) searching takes 100 steps (worst case)
  
  c) insertion at the very beginning of the array takes 101 steps
  
  d) insertion at the very end of the array takes 1 step
  
  e) deletion at the very beginning of the array takes 100 steps
  
  f) deletion at the very end of the array takes 1 step

2) For an array-based set with a size of 100 elements:
  
  a) reading takes 1 step
  
  b) searching takes 100 steps (worst case)
  
  c) insertion at the very beginning of the array takes 201 steps
  
  d) insertion at the very end of the array takes 101 step
  
  e) deletion at the very beginning of the array takes 100 steps
  
  f) deletion at the very end of the array takes 1 step

3) For an array, searching for all instances of an item would take N steps (for a set, the worst case would stay the same, but the best case would be 1 step regardless of size)

4) Deleting the 72s from the array [72, 44, 66, 2019, 72, 55, 101, 72, 99, 2] would take 26 steps:
  * 10 to check whether each element is 72
  * 3 to delete the 72s
  * 2 to move over the 99 and 2 after the last 72 is deleted
  * 4 to move over the 55, 101, 99, and 2 after the middle 72 is deleted
  * 7 to move over the 44, 66, 2019, 55, 101, 99, and 2 after the first 72 is deleted
  * we delete right to left so as not to spend steps moving 72s that will later be deleted anyway

5) Inserting a 44 at both the beginning and end of the array [5, 6, 7, 8, 9, 10] would take 8 steps
  * 6 to move all elements to the left
  * 1 to insert 44 at index 1
  * 1 to insert 44 at index 7
  * we move before inserting the 44 at the end so as not to have to move it too