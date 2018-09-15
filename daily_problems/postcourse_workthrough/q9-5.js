/*

Use the `filter` method with the following array of objects

var movies = [
  {id: 1, title: "Die Hard", rating: 4.0},
  {id: 2, title: "Bad Boys", rating: 5.0},
  {id: 3, title: "The Chamber", rating: 3.0},
  {id: 4, title: "Fracture", rating: 2.0}
];

to create a new array of objects that only contain movies with a rating less than 4.0.

*/

var movies = [
  {id: 1, title: "Die Hard", rating: 4.0},
  {id: 2, title: "Bad Boys", rating: 5.0},
  {id: 3, title: "The Chamber", rating: 3.0},
  {id: 4, title: "Fracture", rating: 2.0}
];

var badMovies = movies.filter( movie => movie['rating'] < 4.0 );
console.log(badMovies);  // => [ { id: 3, title: 'The Chamber', rating: 3 }, { id: 4, title: 'Fracture', rating: 2 } ]