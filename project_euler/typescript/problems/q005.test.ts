import { smallestDividable } from './q005'

describe('q005 tests', () => {
    it('finds the smallest number divisible by 1 through 10', () => {
        expect(smallestDividable(10)).toBe(2520)
    })

    it('finds the smallest number divisible by 1 through 20', () => {
        expect(smallestDividable(20)).toBe(232792560)
    })
})