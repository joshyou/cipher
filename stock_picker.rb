def stock_picker(prices)
    best_profit = -10000
    best_days = []
    prices.each_with_index do |price, buy_day|
        (buy_day...prices.length).each do |sell_day|
            if (prices[sell_day] - price) > best_profit
                best_profit = (prices[sell_day] - price)
                best_days = [buy_day, sell_day]
            end
        end
    end
    puts best_days
end

stock_picker([999,3,6,9,15,8,6,1,0])