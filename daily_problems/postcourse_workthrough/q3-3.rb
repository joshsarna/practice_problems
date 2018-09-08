=begin

Use the `select` method combined with the `map` method to convert the array of hashes

movies = [
  {id: 1, title: "Die Hard", rating: 4.0},
  {id: 2, title: "Bad Boys", rating: 5.0},
  {id: 3, title: "The Chamber", rating: 3.0},
  {id: 4, title: "Fracture", rating: 2.0}
]

into an array of hashes that only contain movie ids of the movies with the letter 'b' in the title (case insensitive). The result should look like:

[2, 3]


=end

movies = [
  {id: 1, title: "Die Hard", rating: 4.0},
  {id: 2, title: "Bad Boys", rating: 5.0},
  {id: 3, title: "The Chamber", rating: 3.0},
  {id: 4, title: "Fracture", rating: 2.0}
]

b_movies = movies.select{ |movie| movie[:title].index("b") || movie[:title].index("B")}
movie_ids = b_movies.map{ |movie| movie[:id] }

p movie_ids  # => [2, 3]