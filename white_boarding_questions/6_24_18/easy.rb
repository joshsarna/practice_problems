# a

class Test
  def hundred
    @array = []
    i = 1
    100.times do
      @array << i
      i += 1   
    end
    @array
  end
end

sample = Test.new
p sample.hundred

# b

class Test
  def alternator
    @array = []
    i = 1
    50.times do
      @array << i
      i += 2   
    end
    @array
  end
end

sample = Test.new
p sample.alternator

# c

class Test
  def divisible_by_3
    @array = []
    i = 3
    333.times do
      @array << i
      i += 3   
    end
    @array
  end
end

sample = Test.new
p sample.divisible_by_3

# d

class Test
  def floor(array)
    @large_numbers = []
    array.each do |value|
      if value > 7
        @large_numbers << value
      end
    end
    @large_numbers
  end
end

sample = Test.new
p sample.floor([5, 8, 1, 7, 9, 10])

# e

class Test
  def number_of_55s(array)
    @counter = 0
    array.each do |value|
      if value == 55
        @counter += 1
      end
    end
    @counter
  end
end

sample = Test.new
p sample.number_of_55s([55, 4, 7, 55, 9, 1, 55, 2, 3, 55, 0])

# f

class Test
  def sum(array)
    @total = 0
    array.each do |value|
      @total += value
    end
    @total
  end
end

sample = Test.new
p sample.sum([1, 5, 7, 9, 2, 0])