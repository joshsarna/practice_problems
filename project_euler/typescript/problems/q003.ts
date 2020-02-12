import { isPrime } from '../lib/isPrime/isPrime'

// The prime factors of 13195 are 5, 7, 13 and 29.

// What is the largest prime factor of the number 600851475143 ?

export const largestPrimeFactor = (number: number): number => {
    for (let possibleFactor = 2; possibleFactor <= Math.floor(number / 2); possibleFactor++) {
        if (number % possibleFactor === 0) {
            let complementaryFactor = number / possibleFactor
            if (isPrime(complementaryFactor)) {
                return complementaryFactor
            }
        }
    }
    return 1
}