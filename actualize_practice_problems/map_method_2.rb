items = [
  {id: 1, body: 'foo'},
  {id: 2, body: 'bar'},
  {id: 3, body: 'foobar'}
]

item_ids = items.map{|x| x[:id]}
p item_ids # => [1, 2, 3]