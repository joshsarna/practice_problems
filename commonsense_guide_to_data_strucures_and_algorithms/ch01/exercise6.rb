# Use your favorite object-oriented programming language to create a class that represents an array-based set. It should include functions/methods that serve as the key operations: Read, search, insert, and delete. Ensure that the insert operation will not insert duplicate values.

class MySet
  def initialize(set)
    @set = set.uniq
  end

  def to_array
    @set
  end

  def read(index)
    @set[index]
  end

  def search(value)
    @set.index(value)
  end

  def insert(index, value)
    @set.insert(index, value) if !@set.index(value)
  end

  def delete(value)
    @set.delete(value)
    @set
  end

  def delete_at(index)
    first_half = (index == 0 ? [] : @set[0..(index - 1)])
    second_half = (index == @set.length - 1 ? [] : @set[(index + 1)..-1])
    @set = first_half + second_half
  end
end

my_set = MySet.new([1,2,3,4,5,2,3,4,8])
p my_set.to_array  # => [1, 2, 3, 4, 5, 8]
p my_set.read(2)  # => 3
p my_set.search(8)  # => 5
p my_set.search(9)  # => nil
p my_set.delete(4)  # => [1, 2, 3, 5, 8]
p my_set.delete_at(0)  # => [2, 3, 5, 8]
p my_set.delete_at(2)  # => [2, 3, 8]
p my_set.delete_at(2)  # => [2, 3]
