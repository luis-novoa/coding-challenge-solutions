require 'set'
def single_number(nums)
    numbers = Set.new
    nums.each do |num|
        if numbers.include?(num)
            numbers.delete(num)
        else
            numbers.add(num)
        end
    end
    numbers.to_a[0]
end