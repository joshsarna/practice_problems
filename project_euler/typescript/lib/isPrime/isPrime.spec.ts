import { isPrime } from './isPrime'

describe('isPrime tests', () => {
    it('returns true for prime numbers', () => {
        expect(isPrime(2)).toBe(true)
        expect(isPrime(3)).toBe(true)
        expect(isPrime(5953)).toBe(true)
    })

    it('returns false for nonprime numbers', () => {
        expect(isPrime(0)).toBe(false)
        expect(isPrime(9)).toBe(false)
        expect(isPrime(5957)).toBe(false)
    })

    it('returns false for non-integer numbers', () => {
        expect(isPrime(2.1)).toBe(false)
    })
})