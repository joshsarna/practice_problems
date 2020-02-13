import { isPrime } from '../isPrime/isPrime'

export const firstNPrimes = (n: number): number[] => {
    if (n === 0) {
        return []
    } else if (n === 1) {
        return [2]
    }
    let primes: number[] = [2]
    let i: number = 3
    while (primes.length < n) {
        if (isPrime(i)) {
            primes.push(i)
        }
        i += 2
    }

    return primes
}
