def max_profit_from_here(prices, start)
  max_profit_end_arr = prices[start + 1, prices.length - 1].each_with_index.max
  if max_profit_end_arr == nil
    return nil
  end
  max_profit = max_profit_end_arr[0] - prices[start]
  max_profit_end_index = max_profit_end_arr[1] + start + 1
  return [start, max_profit_end_index, max_profit]
end

def stock_picker(prices)
  max_profit = prices[-1] - prices[0]
  max_begin = 0
  max_end = -1
  prices.each_with_index do |price, day|
    curr_arr = max_profit_from_here(prices, day)
    next if curr_arr == nil
    curr_start, curr_end, curr_profit = curr_arr
    if curr_profit > max_profit
      max_profit = curr_profit
      max_begin = curr_start
      max_end = curr_end
    end
  end
  if max_end == -1
    max_end = prices.length - 1
  end
 # puts "For max profit, start with #{max_begin} and end with #{max_end} and you earn #{max_profit}"
  return [max_begin, max_end]
end

#tests
# p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
# p stock_picker([58, 41, 77, 84, 30, 45, 93, 86, 1, 33])
# p stock_picker([0, 1, 2, 3])
# p stock_picker([3, 2, 1, 0])
# p stock_picker([92, 84, 198, 42, 92, 47, 579])
# p stock_picker([94, 64, 102, 37, 5, 9, 74, 98, 1])