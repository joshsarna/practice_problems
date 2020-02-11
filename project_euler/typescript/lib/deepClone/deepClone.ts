export const deepClone = (objectToClone: any): any => {
  let newObject = {}
  Object.keys(objectToClone).forEach((key) => {
    if (typeof objectToClone[key] === 'object') {
      newObject[key] = deepClone(objectToClone[key])
    } else {
      newObject[key] = objectToClone[key]
    }
  })

  if (Array.isArray(objectToClone)) {
    return Object.keys(newObject).map((key) => newObject[key])
  } else {
    return newObject
  }
}
