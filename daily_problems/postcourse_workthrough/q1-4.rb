=begin

The following code will run 100 times, and each time it will ask the user for their name. The code will break early if the user’s name is Bob.

100.times do
  puts "What is your name?"  
  name = gets.chomp
  if name == "Bob"
    break
  end
end

puts "Hi, Bob!"

Rewrite the code using a while loop so the program will run *forever* unless the user enters a name of Bob.

=end

name = ""
while name != "Bob" do
  puts "What is your name?"  
  name = gets.chomp
end
puts "Hi, Bob!"