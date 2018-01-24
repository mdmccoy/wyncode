#
# def stock_picker(array)
#   best_sell = 0
#   i = 0
#   while i < array.length
#     j = 0 + i
#     while j < array.length
#         profit = array[i] - array[j]
#         best_sell = profit  if profit > 0 && profit > best_sell
#       j+=1
#     end
#     i+=1
#   end
#   best_sell
# end

def stock_picker(array)
  max_profit = 0
  #take an element from the array, and then compare it to all elements that come after it. Return the largest or least small difference.
  (array).each_with_index do |earlier_price,earlier_time|
    (array[earlier_time+1..-1]).each do |later_price|

      [earlier_price,later_price]
      potential_profit = later_price - earlier_price

      max_profit = [max_profit,potential_profit].max

    end
  end
  max_profit
end


stock_prices_yesterday = [10, 7, 5, 4, 3, 2]
p stock_picker(stock_prices_yesterday)
#stock_prices_yesterday = [10, 7, 5, 8, 11, 9]
#p stock_picker(stock_prices_yesterday)
