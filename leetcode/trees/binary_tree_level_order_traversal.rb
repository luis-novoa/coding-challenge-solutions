def max_area(height)
  cloned_height = height.clone
  cloned_height.shift
  biggest_area = 0
  height.each_with_index do |e1, i1|
      n = 1
      cloned_height.each do |e2|
          val = [e1, e2]
          i2 = i1 + n
          n += 1
          area = val.min * (i2 - i1)
          biggest_area = area if area > biggest_area
      end
      cloned_height.shift
  end
  biggest_area
end