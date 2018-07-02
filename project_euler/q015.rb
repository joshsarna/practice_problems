=begin

Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.

How many such routes are there through a 20×20 grid?

=end

# you must move 20 times to the right and 20 times down
# this is a permutation question

# of 40 moves, 20 are down, so we must calculate how many unique ways 20 indestinguishable down moves can be put into 20 slots

# (40!)/(20! * 20!)
# the first of the down moves can be in any of 40 spots, the second in any of the remaining 39, etc.
# if the down moves were distinguishable, there would be 40!/20! ways of arranging them (40*39*38...21)
# those 20 down moves, though, in a given arrangement can be in any order among themselves, that is the "first" one could be in any of 20 places, the "second" one could be in any of 19 places, etc.

# standard ruby library has no factorial method
class Number
  def factorial(n)
    return (1..n).inject(:*) || 1
  end
end

x = Number.new

answer = x.factorial(40) / x.factorial(20) ** 2
p answer  # => 137846528820