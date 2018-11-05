=begin

Pentagonal numbers are generated by the formula, Pn=n(3n−1)/2. The first ten pentagonal numbers are:

1, 5, 12, 22, 35, 51, 70, 92, 117, 145, ...

It can be seen that P4 + P7 = 22 + 70 = 92 = P8. However, their difference, 70 − 22 = 48, is not pentagonal.

Find the pair of pentagonal numbers, Pj and Pk, for which their sum and difference are pentagonal and D = |Pk − Pj| is minimised; what is the value of D?

=end

@pentagonals = [1, 5]

def find_d
  while true
    s = @pentagonals[-1]
    @pentagonals.each do |p1|
      if !(p1 == s)
        p2 = s - p1
        d = (p2 - p1).abs
        if @pentagonals.include?(p2) && @pentagonals.include?(d)
          return d
        end
      end
    end
    n = @pentagonals.length + 1
    @pentagonals << (n * (3 * n - 1) / 2)
  end
end

p find_d