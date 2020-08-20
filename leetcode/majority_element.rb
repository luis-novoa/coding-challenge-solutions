def majority_element(nums)
  num_frequency = Hash.new
  answer = 0
  nums.each do |e|
      num_frequency[e] = 0 unless num_frequency[e]
      num_frequency[e] += 1
      if num_frequency[e] > nums.size/2
          answer = e
          break
      end
  end
  answer
end