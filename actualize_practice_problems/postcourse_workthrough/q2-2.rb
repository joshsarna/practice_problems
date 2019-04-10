=begin

Use the `map` method to convert the array of hashes

items = [
  {id: 1, body: 'foo'},
  {id: 2, body: 'bar'},
  {id: 3, body: 'foobar'}
]

into an array that only contains the ids. The result should look like:

[1, 2, 3]

=end

items = [
  {id: 1, body: 'foo'},
  {id: 2, body: 'bar'},
  {id: 3, body: 'foobar'}
]

ids = items.map{ | item | item[:id] }
p ids  # => [1, 2, 3]