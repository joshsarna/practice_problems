def fizzbuzz(n)
  (1..n).each do |i|
    if i % 5 == 0 && i % 3 == 0
      p "fizzbuzz"
    elsif i % 3 == 0
      p "fizz"
    elsif i % 5 == 0
      p "buzz"
    else
      p i
    end
  end
end

fizzbuzz(20)