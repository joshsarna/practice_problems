=begin

In England the currency is made up of pound, £, and pence, p, and there are eight coins in general circulation:

1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).
It is possible to make £2 in the following way:

1×£1 + 1×50p + 2×20p + 1×5p + 1×2p + 3×1p
How many different ways can £2 be made using any number of coins?

=end

coin_values = [200, 100, 50, 20, 10, 5, 2, 1]

double_pounders = []
lightweights = [[]]

def deep_copy(o)
  Marshal.load(Marshal.dump(o))
end

coin_values.each do |coin_value|
  @new_lightweights = deep_copy(lightweights)
  lightweights.each do |coin_combo|
    (200/coin_value).times do
      coin_combo << coin_value
      if coin_combo.sum == 200
        double_pounders << deep_copy(coin_combo)
      elsif coin_combo.sum < 200
        @new_lightweights << deep_copy(coin_combo)
      end
    end
  end
  lightweights = @new_lightweights
  if !lightweights.index([])
    lightweights << []
  end
end

p double_pounders.length  # => 73682