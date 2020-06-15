def max_profit(prices)
  best_transaction = 0
  prices.each_with_index do |e1, i|
      sub = prices[i+1...prices.size]
      break if sub.empty?
      next if e1 > sub.max
      best_transaction = sub.max - e1 if sub.max - e1 > best_transaction
  end
  best_transaction
end