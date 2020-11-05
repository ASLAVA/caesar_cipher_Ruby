def stock_picker(input_arr)
    best_buy = 0
    best_sell = 0
    best_buy_check = 0
    best_sell_check = 0
    #Go through input_arr to compare values
    for i in 0...input_arr.length()
        best_buy_check = i
        best_sell_check = i
        #if new buy value is lower, find its best sell day and compare to current best buy/sell
        if input_arr[best_buy] > input_arr[best_buy_check]
            #Going through arr to find best sell date for new buy value
            for x in i...input_arr.length()
                if input_arr[best_sell_check] < input_arr[x]
                    best_sell_check = x
                end
            end
            #if new buy/sell days create bigger value, update best_buy and best_sell
            if input_arr[best_sell] - input_arr[best_buy] < input_arr[best_sell_check] - input_arr[best_buy_check]
                #puts "here"
                best_buy = best_buy_check
                best_sell = best_sell_check
            end
        end

    end

    
    puts "[#{best_buy},#{best_sell}]"

end

stock_picker([17,3,6,9,15,8,6,1,10,15,16])
#,9,15,8,6,1,10])

