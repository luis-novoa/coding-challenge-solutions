def erase_overlap_intervals(intervals)
  counter = 0
  intervals.each_with_index do |e1, i1|
      new_array = intervals[i1+1...intervals.size]
      break if new_array.empty?
      
      new_array.each_with_index do |e2, i2|
          if e1[1] < e2[0]
              interval1 = e1[1] - e1[0]
              interval2 = e2[1] - e2[0]
              if interval1 > interval2
                  intervals.delete(e1)
                  counter += 1
                  break
              elsif interval1 < interval2
                  intervals.delete(e2)
                  counter += 1
              end
          elsif e1 == e2
              intervals.delete(e1)
              counter += 1
          end
      end
  end
  counter
end

# Always delete the bigger interval
# [1,2] [2,3]
# [1,2] [1,3]
# Consider the end of the first(EF), and the beggining of the second(BS)
# If the EF >= BS, nothing
# If the EF < BS, calculate the interval of both, delete the biggest