import { firstNPrimes } from "./firstNPrimes";

describe('firstNPrimes tests', () => {
    it('gets the first 10 primes', () => {
        let primes: number[] = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
        expect(firstNPrimes(10)).toEqual(primes)
    })

    it('gets the first 0 primes', () => {
        expect(firstNPrimes(0)).toEqual([])
    })

    it('gets the first prime', () => {
        expect(firstNPrimes(1)).toEqual([2])
    })
})