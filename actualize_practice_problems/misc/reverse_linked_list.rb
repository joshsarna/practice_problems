class Link
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

fruits = ["apple", "banana", "grape", "kiwi"]
links = []

fruits.each do |fruit|
  links << Link.new(fruit, links[-1])
end

p links[-1]  # => #<Link:0x00007fc7898cc6e0 @value="kiwi", @next_node=#<Link:0x00007fc7898cc708 @value="grape", @next_node=#<Link:0x00007fc7898cc730 @value="banana", @next_node=#<Link:0x00007fc7898cc7a8 @value="apple", @next_node=nil>>>>

def reverse_linked_list(root)
  nodes = []
  node = root
  while node
    nodes << node
    node = node.next_node
  end
  
  i = 1
  while i <= nodes.length
    nodes[-i].next_node = nodes[-i - 1]
    i += 1
  end
  nodes[-1]
end

p reverse_linked_list(links[-1])  # => #<Link:0x00007fa84985bfa8 @value="apple", @next_node=#<Link:0x00007fa84985bf80 @value="banana", @next_node=#<Link:0x00007fa84985bf58 @value="grape", @next_node=#<Link:0x00007fa84985bf30 @value="kiwi", @next_node=nil>>>>

# linked list reversal is O(n)