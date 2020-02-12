import { largestPrimeFactor } from './q003'

describe('q003 tests', () => {
    it('runs', () => {
        expect(largestPrimeFactor(600851475143)).toBe(6857)
    })
})