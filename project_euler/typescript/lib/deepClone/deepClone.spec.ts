import { deepClone } from './deepClone'

describe('deepClone tests', () => {
  it('clones an object', () => {
    let fruitColors = {bananas: 'yellow'}
    let clonedFruitColors = deepClone(fruitColors)
    clonedFruitColors['apples'] = 'red'
    expect(Object.keys(fruitColors)).toEqual(['bananas'])
    expect(Object.keys(clonedFruitColors)).toEqual(['bananas', 'apples'])
  })

  it('clones an array', () => {
    let numbers = [1, 2, 3]
    let clonedNumbers = deepClone(numbers)
    clonedNumbers.push(4)
    expect(clonedNumbers.length).toBeGreaterThan(numbers.length)
  })
})
