// Use Big O Notation to describe the time complexity of the following function that determines whether a given year is a leap year:

function isLeapYear(year) {
  return (year % 100 === 0) ? (year % 400 === 0) : (year % 4 === 0);
}

// O(1)