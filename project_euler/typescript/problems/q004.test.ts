import { largestPalindrome } from './q004'

describe('largestPalindrome tests', () => {
    it('returns the largest palindrome that is the product of two two-digit numbers', () => {
        expect(largestPalindrome(2)).toBe(9009)
    })

    it('returns the largest palindrome that is the product of two three-digit numbers', () => {
        expect(largestPalindrome(3)).toBe(906609)
    })
})