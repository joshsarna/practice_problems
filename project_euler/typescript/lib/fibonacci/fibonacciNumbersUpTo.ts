import { deepClone } from '../deepClone/deepClone'

export const fibonacciNumbersUpTo = (
  n: number,
  sequenceSoFar: number[] = [0, 1]
): number[] => {
  let sequence: number[] = deepClone(sequenceSoFar)

  if (sequence.length === 0) {
    sequence = [0, 1]
  } else if (sequence.length === 1) {
    sequence[1] = sequence[0] || 1
  }

  if (sequence.length > n) {
    return sequence.slice(0, n)
  }
  let lastNumber = sequence[sequence.length - 1]
  let previousNumber = sequence[sequence.length - 2]
  while (lastNumber + previousNumber < n) {
    sequence.push(lastNumber + previousNumber)
    lastNumber = sequence[sequence.length - 1]
    previousNumber = sequence[sequence.length - 2]
  }

  return sequence
}