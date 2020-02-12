export const isPalindrome = (input: string | number): boolean => {
    let sanitizedInput = input.toString()
    let reversedInput = sanitizedInput.split('').reverse().join('')

    return sanitizedInput === reversedInput
}