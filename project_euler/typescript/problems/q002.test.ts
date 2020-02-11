import { sumOfEvenValuedFibs } from './q002'

describe('q002 tests', () => {
  it('gives the sum of all even-valued numbers in the fibonacci sequence', () => {
    expect(sumOfEvenValuedFibs(4000000)).toBe(4613732)
  })
})