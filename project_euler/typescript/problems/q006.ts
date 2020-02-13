export const sumSquareDifference = (ceiling: number) => {
    let sumOfSquares: number = 0
    let sum: number = 0
    for (let i = 1; i <= ceiling; i++) {
        sumOfSquares += i ** 2
        sum += i
    }

    return sum ** 2 - sumOfSquares
}