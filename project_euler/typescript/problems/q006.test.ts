import { sumSquareDifference } from './q006'

describe('q006 tests', () => {
    it('finds the difference between the squre of the sum of the first 10 natural numbers and the sum of squares', () => {
        expect(sumSquareDifference(10)).toBe(2640)
    })

    it('finds the difference between the squre of the sum of the first 100 natural numbers and the sum of squares', () => {
        expect(sumSquareDifference(100)).toBe(25164150)
    })
})