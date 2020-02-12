import { isPalindrome } from '../lib/isPalindrome/isPalindrome'

// A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

// Find the largest palindrome made from the product of two 3-digit numbers.

export const largestPalindrome = (numberOfDigits: number) => {
    let floor = 10 ** (numberOfDigits - 1)
    let ceiling = 10 ** numberOfDigits - 1

    let largestPalindromeProduct: number = 0
    for (let i = floor; i <= ceiling; i++) {
        for (let j = i; j <= ceiling; j++) {
            let product = i * j
            if (product > largestPalindromeProduct) {
                if (isPalindrome(product)) {
                    largestPalindromeProduct = product
                }
            }
        }
    }
    return largestPalindromeProduct
}