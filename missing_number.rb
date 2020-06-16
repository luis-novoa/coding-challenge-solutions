require 'set'

def missing_number(nums)
    max = nums.max
    set = (0..max).to_a.to_set
    nums.each do |e|
        set.delete(e) if set.include?(e)
    end
    set = set.to_a
    if set[0].nil?
        return max + 1
    else
        return set[0]
    end
end