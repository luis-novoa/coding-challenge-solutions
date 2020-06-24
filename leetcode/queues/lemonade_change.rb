# Runtime: 48ms, faster than 68.42%
# Memory usage: 10.3 MB, less than 53.33%

def lemonade_change(bills)
  stored_bills = {
    5 => 0,
    10 => 0
  }
  output = true
  bills.each do |e|
    if e == 5
      stored_bills[5] += 1
    elsif e == 10 && !stored_bills[5].zero?
      stored_bills[5] -= 1
      stored_bills[10] += 1
    elsif e == 20 && !stored_bills[5].zero? && !stored_bills[10].zero?
      stored_bills[5] -= 1
      stored_bills[10] -= 1
    elsif e == 20 && stored_bills[5] > 2
      stored_bills[5] -= 3
    else
      output = false
      break
    end
  end
  output
end