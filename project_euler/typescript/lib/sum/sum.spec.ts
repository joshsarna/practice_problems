import { sum } from './sum'

describe('sum tests', () => {
  it('sums an array of numbers', () => {
    let numbers = [1, 2, 3]
    expect(sum(numbers)).toBe(6)
  })
})