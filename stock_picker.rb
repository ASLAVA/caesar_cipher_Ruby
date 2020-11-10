# frozen_string_literal: true

def stock_picker(input_arr)
  best_buy = 0
  best_sell = 0
  best_buy_check = 0
  best_sell_check = 0
  # Go through input_arr to compare values
  (0...input_arr.length).each do |i|
    best_buy_check = i
    best_sell_check = i
    # if new buy value is lower, find its best sell day and compare to current best buy/sell
    next unless input_arr[best_buy] > input_arr[best_buy_check]

    # Going through arr to find best sell date for new buy value
    (i...input_arr.length).each do |x|
      best_sell_check = x if input_arr[best_sell_check] < input_arr[x]
    end
    # if new buy/sell days create bigger value, update best_buy and best_sell
    next unless input_arr[best_sell] - input_arr[best_buy] < input_arr[best_sell_check] - input_arr[best_buy_check]

    # puts "here"
    best_buy = best_buy_check
    best_sell = best_sell_check
  end

  puts "[#{best_buy},#{best_sell}]"
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10, 15, 16])
# ,9,15,8,6,1,10])
