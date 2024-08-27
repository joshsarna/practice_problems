=begin

If p is the perimeter of a right angle triangle with integral length sides, {a,b,c}, there are exactly three solutions for p = 120.

{20,48,52}, {24,45,51}, {30,40,50}

For which value of p ≤ 1000, is the number of solutions maximised?

=end

def legs_have_int_hypot(a,b)
  c = Math.sqrt(a**2 + b**2)
  if c % 1 == 0
    return c.to_i
  else
    return false
  end
end

# 1000 / 2 = 500, which is the longest any leg can be

triangles = {}
max_leg = 500

a = 1
while a <= max_leg
  b = a
  while b <= max_leg
    c = legs_have_int_hypot(a,b)
    if c
      if triangles[a + b + c]
        triangles[a + b + c] << [a, b, c]
      else
        triangles[a + b + c] = [[a, b, c]]
      end
    end
    b += 1
  end
  a += 1
end

p_value = 0
most_solutions = 0
triangles.each do |key,value|
  if value.length > most_solutions
    p_value = key
    most_solutions = value.length
  end
end

p p_value  # => 840
p most_solutions  # => 8