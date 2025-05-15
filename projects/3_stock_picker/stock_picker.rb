# frozen_string_literal: true

# TO-DO simplify this, its too complex and using too many O(n) loops
def stock_picker(stocks)
  lowest = stocks[0]
  highest = stocks[0]
  best_day = Hash.new(0)
  best = []
  stocks.each_with_index do |value, index|
    lowest = value if lowest > value && stocks.find_index(value) > stocks.find_index(lowest)
    highest = value if highest < value && stocks.find_index(value) > stocks.find_index(lowest)
    if stocks.find_index(lowest) < stocks.find_index(highest)
      best_day[index] = [lowest, highest]
      best = best_day.max_by { |_, (buy, sell)| sell - buy }
    else
      highest = value
    end
  end
  p best
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
