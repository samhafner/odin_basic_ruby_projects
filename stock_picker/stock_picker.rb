def stock_picker(stock_prices)
  profits = []

  stock_prices.each_with_index do |buy_price, buy_date_index|
    stock_prices.each_with_index do |sell_price, sell_date_index|
      next if sell_date_index <= buy_date_index
      profits << [sell_price - buy_price, [buy_date_index, sell_date_index]]
    end
  end

  max_profit = profits.sort { |a, b| b[0] <=> a[0] }.find { |a| a[1][0] < a[1][1] }

  max_profit[1]
end


p stock_picker([17,3,6,9,15,8,6,1,10])
