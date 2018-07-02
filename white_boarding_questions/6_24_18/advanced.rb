# a

class Test
  def prime_numbers(n)
    @primes = []
    i = 2
    while @primes.length < n
      i_is_prime = true
      @primes.each do |found_prime|
        if i % found_prime == 0
          i_is_prime = false
        end
      end
      if i_is_prime == true
        @primes << i
      end
      i +=1
    end
    return @primes
  end
end

sample = Test.new
p sample.prime_numbers(50)

# b
class Test
  def descending_sort(array)
    index = 1
    (array.length - 1).times do
      lower = 1
      upper = 0
      x = array[index]
      index.times do
        if x > array[index - lower]
          array[index - upper] = array[index - lower]
          if index - lower == 0
            array[0] = x
          end
        else
          array[index - upper] = x
          break
        end
        upper += 1
        lower += 1
      end
      index += 1
    end
    return array
  end
end

sample = Test.new
p sample.descending_sort([1,8,2,7,3,6,4,5])

# c

class Test
  def tic_tac_toe_winner(matrix)
    unless matrix.length == 3 && matrix[0].length == 3 && matrix[1].length== 3 && matrix[2].length == 3
      puts "That is not a correctly sized matrix."
    end

    winner = "none"
    player = "X"
    2.times do
      i = 0
      3.times do
        if matrix[i] == [player,player,player]
          winner = player
        end
        if matrix[0][i] == player && matrix[1][i] == player && matrix[2][i] == player
          winner = player
        end
        i += 1
      end
      if matrix[1][1] == player
        if matrix[0][0] == player && matrix[2][2] == player
          winner = player
        elsif matrix[0][2] == player && matrix[2][0] == player
          winner = player
        end
      end
      player = "O"
    end
    return winner
  end
end

sample = Test.new
p sample.tic_tac_toe_winner([["O","X","X"],["X","O","X"],["X","O","O"]])