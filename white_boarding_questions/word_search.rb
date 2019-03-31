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

p word_search([["n", "o"], ["n", "o"]], "no")  # => 2
p word_search([["n", "o"], ["n", "o"]], "hi")  # => 0
p word_search([["n", "o"], ["o", "n"]], "no")  # => 4
# p word_search([['B', 'N', 'E', 'Y', 'S'], ['H', 'E', 'D', 'E', 'S'], ['S', 'G', 'N', 'D', 'E']], 'DES')