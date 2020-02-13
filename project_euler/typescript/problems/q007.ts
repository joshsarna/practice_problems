import { firstNPrimes } from "../lib/firstNPrimes/firstNPrimes";

export const nthPrime = (n: number): number => {
    let primes = firstNPrimes(n)
    return primes[primes.length - 1]
}