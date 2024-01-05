def stock_picker(stock_prices)
  profits = []
  max_profit_info = [nil, nil]

  stock_prices.each_with_index do |buy_price, buy_date_index|
    stock_prices.each_with_index do |sell_price, sell_date_index|
      next if sell_date_index <= buy_date_index
      profit = sell_price - buy_price
      max_profit_info = [profit, [buy_date_index, sell_date_index]] if max_profit_info[0].nil? || profit > max_profit_info[0]
      profits << [sell_price - buy_price, [buy_date_index, sell_date_index]]
    end
  end

  max_profit_info[1]
end


p stock_picker([17,3,6,9,15,8,6,1,10])
