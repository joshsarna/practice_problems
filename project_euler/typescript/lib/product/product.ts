export const product = (numbers: number[]): number => {
    return numbers.reduce((total, number) => total * number)
}