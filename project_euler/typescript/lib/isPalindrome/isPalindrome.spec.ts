import { isPalindrome } from "./isPalindrome";

describe('isPalindrome tests', () => {
    it('checks whether a string is a palindrome', () => {
        expect(isPalindrome('hello')).toBe(false)
        expect(isPalindrome('a')).toBe(true)
        expect(isPalindrome('racecar')).toBe(true)
    })

    it('checks whether a number is a palindrome', () => {
        expect(isPalindrome(123)).toBe(false)
        expect(isPalindrome(1)).toBe(true)
        expect(isPalindrome(9009)).toBe(true)
    })
})