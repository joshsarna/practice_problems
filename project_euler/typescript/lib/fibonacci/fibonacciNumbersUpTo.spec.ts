import { fibonacciNumbersUpTo } from './fibonacciNumbersUpTo'

describe('fibonacciNumbersUpTo tests', () => {
  it('finds the first ten numbers of the fibonacci sequence', () => {
    let fibonacci: number[] = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]

    expect(fibonacciNumbersUpTo(35, [0, 1])).toEqual(fibonacci)
  })

  it('handles incomplete input arrays', () => {
    expect(fibonacciNumbersUpTo(2)).toEqual([0, 1, 1])
    expect(fibonacciNumbersUpTo(2, [1])).toEqual([1, 1])
    expect(fibonacciNumbersUpTo(2, [0])).toEqual([0, 1, 1])
  })
})