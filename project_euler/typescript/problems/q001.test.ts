import { sumOfMultiplesBelow } from './q001'

describe('q001 tests', () => {
  it('gives the sum of all multiples of 3 and 5 below 1000', () => {
    expect(sumOfMultiplesBelow(1000)).toBe(233168)
  })
})