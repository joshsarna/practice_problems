=begin

In the card game poker, a hand consists of five cards and are ranked, from lowest to highest, in the following way:

High Card: Highest value card.
One Pair: Two cards of the same value.
Two Pairs: Two different pairs.
Three of a Kind: Three cards of the same value.
Straight: All cards are consecutive values.
Flush: All cards of the same suit.
Full House: Three of a kind and a pair.
Four of a Kind: Four cards of the same value.
Straight Flush: All cards are consecutive values of same suit.
Royal Flush: Ten, Jack, Queen, King, Ace, in same suit.
The cards are valued in the order:
2, 3, 4, 5, 6, 7, 8, 9, 10, Jack, Queen, King, Ace.

If two players have the same ranked hands then the rank made up of the highest value wins; for example, a pair of eights beats a pair of fives (see example 1 below). But if two ranks tie, for example, both players have a pair of queens, then highest cards in each hand are compared (see example 4 below); if the highest cards tie then the next highest cards are compared, and so on.

Consider the following five hands dealt to two players:

Hand    Player 1          Player 2         Winner
1     5H 5C 6S 7S KD     2C 3S 8S 8D TD     Player 2
      Pair of Fives      Pair of Eights

2     5D 8C 9S JS AC     2C 5C 7D 8S QH     Player 1
      Highest card Ace.  Highest card Queen

3     2D 9C AS AH AC     3D 6D 7D TD QD     Player 2
      Three Aces         Flush with Diamonds

4     4D 6S 9H QH QC     3D 6D 7H QD QS     Player 1
      Pair of Queens     Pair of Queens
      Highest card Nine  Highest card Seven

5     2H 2D 4C 4D 4S     3C 3D 3S 9S 9D     Player 1
      Full House         Full House
      With Three Fours   with Three Threes

The file, poker.txt, contains one-thousand random hands dealt to two players. Each line of the file contains ten cards (separated by a single space): the first five are Player 1's cards and the last five are Player 2's cards. You can assume that all hands are valid (no invalid characters or repeated cards), each player's hand is in no specific order, and in each hand there is a clear winner.

How many hands does Player 1 win?

=end

@card_hierarchy = ["A", "K", "Q", "J", "T", "9", "8", "7", "6", "5", "4", "3", "2"]
@card_values = {
  "A" => 14,
  "K" => 13,
  "Q" => 12,
  "J" => 11,
  "T" => 10,
  "9" => 9,
  "8" => 8,
  "7" => 7,
  "6" => 6,
  "5" => 5,
  "4" => 4,
  "3" => 3,
  "2" => 2
}

def highest_card(hand, n = 1) # finds the nth highest card
  order = 0
  found = false
  card_index = 0
  while !found
    hand.each do |card|
      if card[0] == @card_hierarchy[card_index]
        order += 1
        if order == n
          return @card_hierarchy[card_index]
        end
      end
    end
    card_index += 1
  end
end

def of_a_kind(hand, n)
  values = hand.map{ | card | card[0] }
  value_counts = {}
  values.each do |value|
    if value_counts[value]
      value_counts[value] += 1
    else
      value_counts[value] = 1
    end
  end
  
  if value_counts.length == 5 # no duplicates
    return false

  elsif value_counts.length == 4
    if n == [2]
      value_counts.each do |key, value|
        if value == 2
          return key
        end
      end
    else
      return false
    end

  elsif value_counts.length == 3 # three of a kind or two pair
    first_pair = nil
    value_counts.each do |key, value|
      if value == 3 && n == [3]
        return key
      elsif value == 3
        return false
      elsif value == 2 && n == [2,2]
        if first_pair
          return [first_pair, key]
        else
          first_pair = key
        end
      end
    end
    return false

  elsif value_counts.length == 2 # four of a kind or full house
    pair = nil
    triplet = nil
    value_counts.each do |key, value|
      if value == 4 && n == [4]
        return key
      elsif value == 2 && n == [3,2]
        pair = key
        if triplet
          return [triplet, pair]
        end
      elsif value == 3 && n == [3,2]
        triplet = key
        if pair
          return [triplet, pair]
        end
      end
    end
    return false
  end
end

def straight?(hand)
  hand_values = [
    @card_values[highest_card(hand, 1)],
    @card_values[highest_card(hand, 2)],
    @card_values[highest_card(hand, 3)],
    @card_values[highest_card(hand, 4)],
    @card_values[highest_card(hand, 5)]
  ]

# wheels aren't specified in the instructions and don't affect the outcome
def wheel?(hand)
  hand_values = [
    @card_values[highest_card(hand, 1)],
    @card_values[highest_card(hand, 2)],
    @card_values[highest_card(hand, 3)],
    @card_values[highest_card(hand, 4)],
    @card_values[highest_card(hand, 5)]
  ]
  return hand_values == [14, 5, 4, 3, 2]
end

  return hand_values[0] - hand_values[1] == 1 && hand_values[0] - hand_values[2] == 2 && hand_values[0] - hand_values[3] == 3 && hand_values[0] - hand_values[4] == 4 || wheel?(hand)
end

def flush?(hand)
  hand.map{ | card | card[1] }.uniq.length == 1
end

def straight_flush?(hand)
  flush?(hand) && straight?(hand)
end

def royal_flush?(hand)
  straight_flush?(hand) && highest_card(hand) == "A"
end

def settle_with_highest_card(player1, player2)
  i = 1
  while i <= 5
    if @card_values[highest_card(player1, i)] > @card_values[highest_card(player2, i)]
      return 1
    elsif @card_values[highest_card(player2, i)] > @card_values[highest_card(player1, i)]
      return 2
    else
      i += 1
    end
  end
  return 0
end

def settle_two_pair_hands(player1, player2)
  player1_card_values = [
    @card_values[of_a_kind(player1, [2,2])[0]],
    @card_values[of_a_kind(player1, [2,2])[1]]
  ]
  player2_card_values = [
    @card_values[of_a_kind(player2, [2,2])[0]],
    @card_values[of_a_kind(player2, [2,2])[1]]
  ]
  if player1_card_values.max > player2_card_values.max
    return 1
  elsif player1_card_values.max < player2_card_values.max
    return 2
  elsif player1_card_values.min > player2_card_values.min
    return 1
  elsif player1_card_values.min < player2_card_values.min
    return 2
  else
    return settle_with_highest_card(player1, player2)
  end
end

def who_wins(player1, player2)
  if royal_flush?(player1) && royal_flush?(player2)
    return 0
  elsif royal_flush?(player1)
    return 1
  elsif royal_flush?(player2)
    return 2
  elsif straight_flush?(player1) && straight_flush?(player2)
    return settle_with_highest_card(player1, player2)
  elsif straight_flush?(player1)
    return 1
  elsif straight_flush?(player2)
    return 2
  elsif of_a_kind(player1, [4]) && of_a_kind(player2, [4])
    if @card_values[of_a_kind(player1, [4])] > @card_values[of_a_kind(player2, [4])]
      return 1
    else # since players can't have four of the same kind
      return 2
    end
  elsif of_a_kind(player1, [4])
    return 1
  elsif of_a_kind(player2, [4])
    return 2
  elsif of_a_kind(player1, [3,2]) && of_a_kind(player2, [3,2])
    if @card_values[of_a_kind(player1, [3,2])[0]] > @card_values[of_a_kind(player2, [3,2])[0]]
      return 1
    else # since players can't have three of the same kind
      return 2
    end
  elsif of_a_kind(player1, [3,2])
    return 1
  elsif of_a_kind(player2, [3,2])
    return 2
  elsif flush?(player1) && flush?(player2)
    return settle_with_highest_card(player1, player2)
  elsif flush?(player1)
    return 1
  elsif flush?(player2)
    return 2
  elsif straight?(player1) && straight?(player2)
    return settle_with_highest_card(player1, player2)
  elsif straight?(player1)
    return 1
  elsif straight?(player2)
    return 2
  elsif of_a_kind(player1, [3]) && of_a_kind(player2, [3])
    if @card_values[of_a_kind(player1, [3])] > @card_values[of_a_kind(player2, [3])]
      return 1
    else # since players can't have three of the same kind
      return 2
    end
  elsif of_a_kind(player1, [3])
    return 1
  elsif of_a_kind(player2, [3])
    return 2
  elsif of_a_kind(player1, [2,2]) && of_a_kind(player2, [2,2])
    return settle_two_pair_hands(player1, player2)
  elsif of_a_kind(player1, [2,2])
    return 1
  elsif of_a_kind(player2, [2,2])
    return 2
  elsif of_a_kind(player1, [2]) && of_a_kind(player2, [2])
    if @card_values[of_a_kind(player1, [2])] > @card_values[of_a_kind(player2, [2])]
      return 1
    elsif @card_values[of_a_kind(player1, [2])] < @card_values[of_a_kind(player2, [2])]
      return 2
    else
      return settle_with_highest_card(player1, player2)
    end
  elsif of_a_kind(player1, [2])
    return 1
  elsif of_a_kind(player2, [2])
    return 2
  else
    return settle_with_highest_card(player1, player2)
  end
end


input = File.open('./../resources/p054_poker.txt', File::RDONLY){|f| f.read }
hands = input.split("\n").map{ | hand | hand.split(' ') }

game_outcomes = {1 => 0, 2 => 0, 0 => 0}

hands.each do |game|
  player1 = game[0..4]
  player2 = game[5..9]
  game_outcomes[who_wins(player1, player2)] += 1
end

  p game_outcomes[1] # => 376