import { product } from './product'

describe('product tests', () => {
    it('finds the product of an array of numbers', () => {
        let numbers = [-1, 2, 3, 4]
        expect(product(numbers)).toBe(-24)
    })
})