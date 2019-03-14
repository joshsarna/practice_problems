=begin

Use the `select` method with the following array of hashes

movies = [
  {id: 1, title: "Die Hard", rating: 5.0},
  {id: 2, title: "Bad Boys", rating: 4.0},
  {id: 3, title: "The Chamber", rating: 3.0},
  {id: 4, title: "Fracture", rating: 2.0}
]

to create a new array of hashes that only contain movies with a rating less than 4.0.

=end

movies = [
  {id: 1, title: "Die Hard", rating: 5.0},
  {id: 2, title: "Bad Boys", rating: 4.0},
  {id: 3, title: "The Chamber", rating: 3.0},
  {id: 4, title: "Fracture", rating: 2.0}
]

bad_movies = movies.select{|movie| movie[:rating] < 4}
p bad_movies  # => [{:id=>3, :title=>"The Chamber", :rating=>3.0}, {:id=>4, :title=>"Fracture", :rating=>2.0}]

# the select method does an each loop
# # with an each loop
# bad_movies = []
# movies.each do |movie|
#   if movie[:rating] < 4
#     bad_movies << movie
#   end
# end

# # with a times loop
# bad_movies = []
# i = 0
# 4.times do
#   if movies[i][:rating] < 4
#     bad_movies << movies[i]
#   end
#   i += 1
# end

