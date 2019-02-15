=begin

By replacing the 1st digit of the 2-digit number *3, it turns out that six of the nine possible values: 13, 23, 43, 53, 73, and 83, are all prime.

By replacing the 3rd and 4th digits of 56**3 with the same digit, this 5-digit number is the first example having seven primes among the ten generated numbers, yielding the family: 56003, 56113, 56333, 56443, 56663, 56773, and 56993. Consequently 56003, being the first member of this family, is the smallest prime with this property.

Find the smallest prime which, by replacing part of the number (not necessarily adjacent digits) with the same digit, is part of an eight prime value family.

=end

def prime?(number)
  i = 2
  if number == 2
    return true
  elsif number > 2
    (Math.sqrt(number).to_i).times do
      if number % i == 0
        return false
      end
      i += 1
    end
  else
    return false
  end
  true
end

def all_combinations(max)
  index_places = *(0..max)
  (1..max).flat_map{ |size| index_places.combination(size).to_a }
end

def add_leading_zeros(base_numbers, x)
  new_base_numbers = base_numbers
  new_base_numbers.each_with_index do |num, index|
    while num.length < x
      new_num = "0#{num}"
      new_base_numbers[index] = new_num
      num = new_num
    end
  end
  new_base_numbers
end

def check_for8_in(x)
  base_numbers = [[""]]
  (1..(x-1)).each do |y|
    y_length_numbers = *(0..10 ** y - 1).map{ |i| i.to_s }
    base_numbers << y_length_numbers
  end

  base_numbers.each do |base_number_set|
    base_number_set = add_leading_zeros(base_number_set, x)
  end

  replacement_combos = all_combinations(x)
  replacement_combos.each do |replacement_combo|
    trial = "x" * x
    replacement_combo.each do |digit_index|
      trial[digit_index] = "*"
    end

    base_numbers[-(replacement_combo.length)].each do |base_digits|
      # sample base_digits = "234"
      # sample trial = "x**xx*"
      # we want: "2**34*"
      i_trial = 0
      i_base_digits = 0
      trial.length.times do 
        if trial[i_trial] == "x"
          trial[i_trial] = base_digits[i_base_digits]
          i_base_digits += 1
        end
        i_trial += 1
      end

      # count primes
      prime_count = 0
      (0..9).each do |sub|
        prime_trial = trial.gsub('*', sub.to_s)
        if prime?(prime_trial.to_i)
          prime_count += 1
        end
      end

      if prime_count == 8
        return [base_number, combo]
      end
    end
  end
  return nil
end

# def check_for8_in(x)
#   base_numbers = *(0..10 ** x - 1).map{ |i| i.to_s }
#   replacement_combos = all_combinations(x)
#   base_numbers = add_leading_zeros(base_numbers)

#   base_numbers.each do |base_number|
#     digit_index = 0
#     base_number.length.times do

#       replacement_combos.each do |combo|
#         prime_count = 0
#         # sub some numbers
#         (0..9).each do |sub|
#           trial = base_number
#           combo.each do |index|
#             trial[index] = sub.to_s
#           end

#           # test
#           if prime?(trial.to_i)
#             prime_count += 1
#           end
#         end

#         if prime_count == 8
#           return [base_number, combo]
#         end
#       end
#       digit_index += 1
#     end
#   end
#   return nil
# end

def search_for8 # calls check_for8_in() as many times as is necessary
  i = 1
  family_of8_found = false
  while !family_of8_found
    p "testing x = #{i}"
    check_method_return = check_for8_in(i)
    if check_method_return.class == NilClass
      i += 1
    else
      family_of8_found = true
    end
  end
  check_method_return
end

def first_of8(search_method_return) # processes info from search_for8
  mutatable_base = search_method_return[0]
  search_method_return[1].each do |index_to_replace|
    mutatable_base[index_to_replace] = 'x'
  end

  i = 0
  while !prime?(mutatable_base.gsub('x', i.to_s))
    i += 1
  end
  mutatable_base.gsub('x', i.to_s).to_i
end

p first_of8(search_for8)