import { isPrime } from '../lib/isPrime/isPrime'
import { product } from '../lib/product/product'

// 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

// What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

export const smallestDividable = (ceiling: number) => {
    let factors: number[] = []
    for (let i = 2; i <= ceiling; i++) {
        if (isPrime(i)) {
            let factor = i
            while (factor <= ceiling) {
                factor *= i
            }
            factor /= i

            factors.push(factor)
        }
    }

    return product(factors)
}