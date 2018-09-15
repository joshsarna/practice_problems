/*

Use the `map` method to convert the array of objects

var items = [
  {id: 1, body: 'foo'},
  {id: 2, body: 'bar'},
  {id: 3, body: 'foobar'}
];

into an array that only contains the ids. The result should look like:

[1, 2, 3]

*/

var items = [
  {id: 1, body: 'foo'},
  {id: 2, body: 'bar'},
  {id: 3, body: 'foobar'}
];

var ids = items.map( x => x['id']);
console.log(ids);  // => [1, 2, 3]