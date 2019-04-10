def rotate_matrix(matrix)
  n = matrix.length
  m = matrix[0].length
  new_matrix = []
  m.times do
    add_array = []
    n.times do
      add_array << []
    end
    new_matrix << add_array
  end
  matrix.each_with_index do |row, row_i|
    row.each_with_index do |col, col_i|
      new_matrix[col_i][-row_i - 1] = col
    end
  end
  return new_matrix
end

def word_search(input_matrix, search_term, recursion_counter = 0, count = 0)
  # if recursion_counter == 4
  return count if recursion_counter == 4
  # end
  matrix = Marshal.load(Marshal.dump(input_matrix))
  # 4.times do
  matrix.each_with_index do |row, row_i|
    row.each.with_index do |col, col_i|
      word_present = true
      search_term.each_char.with_index do |letter, letter_i|
        if matrix[row_i][col_i + letter_i] != search_term[letter_i]
          word_present = false
          break
        end
      end
      if word_present == true
        count += 1
      end
    end
  end
  word_search(rotate_matrix(matrix), search_term, recursion_counter + 1, count)
    # matrix = rotate_matrix(matrix)
  # end
end

# p word_search([["n", "o"], ["n", "o"]], "no")  # => 2
# p word_search([["n", "o"], ["n", "o"]], "hi")  # => 0
# p word_search([["n", "o"], ["o", "n"]], "no")  # => 4

def bendy_word_search(matrix, search_term)
  finds = []
  matrix.each.with_index do |row, row_i|
    row.each.with_index do |col, col_i|
      if col == search_term[0]
        finds << [row_i, col_i]
      end
    end
  end

  search_term[1..-1].each_char do |letter|
    new_finds = []
    finds.each do |find|
      test_next_letters = [[find[0] + 1, find[1]], [find[0] - 1, find[1]], [find[0], find[1] + 1], [find[0], find[1] - 1]].select{ | tnl | tnl.min >= 0 && tnl[0] < matrix.length && tnl[1] < matrix[0].length }
      test_next_letters.each do |test_next_letter|
        if matrix[test_next_letter[0]][test_next_letter[1]] == letter
          new_finds << test_next_letter
        end
      end
    end
    finds = new_finds
  end
  finds.count
end

p bendy_word_search([
  ['B', 'N', 'E', 'Y', 'S'],
  ['H', 'E', 'D', 'E', 'S'],
  ['S', 'G', 'N', 'D', 'E']], 'DES')