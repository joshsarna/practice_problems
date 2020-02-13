import { nthPrime } from "./q007";

describe('q007 tests', () => {
    it('finds the 6th prime number', () => {
        expect(nthPrime(6)).toBe(13)
    })

    it('finds the 10001st prime number', () => {
        expect(nthPrime(10001)).toBe(104743)
    })
})