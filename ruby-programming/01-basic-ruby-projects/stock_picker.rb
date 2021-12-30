def stock_picker(stocks)
  low_price = stocks[0]
  low_index = 0
  profit = 0
  picked_days = []

  stocks.each_with_index  do |price, index|
    if price < low_price
      low_price = price
      low_index = index
    end
    
    if (price - low_price) > profit
      profit = price - low_price
      picked_days = [low_index, index]
    end
  end
  p picked_days
  picked_days
end

stock_picker([17,3,6,9,15,8,6,1,10])