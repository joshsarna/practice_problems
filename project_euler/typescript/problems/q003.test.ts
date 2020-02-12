import { largestPrimeFactor } from './q003'

describe('q003 tests', () => {
    it('finds the largest prime factor of 13195', () => {
        expect(largestPrimeFactor(13195)).toBe(29)
    })

    it('finds the largest prime factor of 600851475143', () => {
        expect(largestPrimeFactor(600851475143)).toBe(6857)
    })
})